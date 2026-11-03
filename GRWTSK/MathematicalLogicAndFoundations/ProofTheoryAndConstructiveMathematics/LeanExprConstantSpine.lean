import Lean
import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.InstantiatedRuleCertificates

/-!
# Restricted extraction of exact Lean expression application spines

Local attribution: grwtsk contributors. MIT.

An elaborated Lean.Expr is not itself a proof of a proposed finite Rule.
This module recognizes ONLY expressions obtained by applying a named constant
to explicit argument expressions. Its indexed witness reconstructs the entire
original expression without rewriting argument order, declared universe levels,
or the constant head. An additional restrictive guard rejects heads outside an explicit allowlist,
metavariables, free/bound variables, binders, projections, and metadata wrappers.
The separate Meta observer must reject undeclared or ill-typed expressions.

The optional MetaM observer asks Lean.Meta.isTypeCorrect before recording an
inferred type; type inference alone is not an adequate check, and Meta.check
is not a replacement for adding a theorem to the kernel. The observer is
environment-dependent and does not authenticate a Git commit or source file.

The proof-bearing InstantiatedApplication model imported here remains distinct:
the missing refinement must connect each elaborated premise, proof term,
binder instantiation and interpreted atom to that model. No SourceClaim
string gains proof authority from successful syntactic recognition.

SOURCE_PROOF_CANDIDATE. Native compilation, fresh kernel replay, axiom
audit, source-provenance verification and extractor refinement: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

open Lean

/-- A small lossless grammar: a real constant head and zero or more
left-associated explicit applications, not arbitrary Lean.Expr syntax. -/
inductive NamedConstantSpine : Lean.Expr → Type where
  | head (name : Lean.Name) (universes : List Lean.Level) :
      NamedConstantSpine (.const name universes)
  | apply {fn : Lean.Expr} (prior : NamedConstantSpine fn) (arg : Lean.Expr) :
      NamedConstantSpine (.app fn arg)

def NamedConstantSpine.headName {source : Lean.Expr} :
    NamedConstantSpine source → Lean.Name
  | .head name _ => name
  | .apply prior _ => prior.headName

def NamedConstantSpine.universes {source : Lean.Expr} :
    NamedConstantSpine source → List Lean.Level
  | .head _ levels => levels
  | .apply prior _ => prior.universes

/-- The actual left-to-right application argument order is preserved. -/
def NamedConstantSpine.arguments {source : Lean.Expr} :
    NamedConstantSpine source → List Lean.Expr
  | .head _ _ => []
  | .apply prior arg => prior.arguments ++ [arg]

def rebuildConstantSpine (name : Lean.Name) (levels : List Lean.Level)
    (args : List Lean.Expr) : Lean.Expr :=
  args.foldl Lean.Expr.app (.const name levels)

/-- Indexing by the input Expr plus induction over the syntax witness
proves exact reconstruction: this is an object equality, not a string match. -/
theorem NamedConstantSpine.rebuild {source : Lean.Expr}
    (spine : NamedConstantSpine source) :
    rebuildConstantSpine spine.headName spine.universes spine.arguments = source := by
  induction spine with
  | head _ _ => rfl
  | apply prior arg ih =>
      simpa [NamedConstantSpine.headName, NamedConstantSpine.universes,
        NamedConstantSpine.arguments, rebuildConstantSpine, List.foldl_append] using
        congrArg (fun x : Lean.Expr => Lean.Expr.app x arg) ih

/-- Total structural recognizer. A missing head, a lambda, a projection,
or a free variable at head position is rejected rather than guessed. -/
def parseNamedConstantSpine :
    (source : Lean.Expr) → Option (NamedConstantSpine source)
  | .const name levels => some (.head name levels)
  | .app fn arg =>
      match parseNamedConstantSpine fn with
      | none => none
      | some prior => some (.apply prior arg)
  | _ => none

/-- Permit only closed, explicit universe levels: no universe parameters or
unresolved metavariables are accepted in this *restricted* source class. -/
def supportedLevel : Lean.Level → Bool
  | .zero => true
  | .succ u => supportedLevel u
  | .max u v => supportedLevel u && supportedLevel v
  | .imax u v => supportedLevel u && supportedLevel v
  | _ => false

/-- For now, argument terms are restricted to closed applications,
constants, sorts, and literals. In particular, a local free-variable
proof is not silently treated as a globally valid closed argument.
Binders can be supported later only with an explicit scoped certificate. -/
def supportedClosedExpr : Lean.Expr → Bool
  | .sort level => supportedLevel level
  | .const _ levels => levels.all supportedLevel
  | .lit _ => true
  | .app fn arg => supportedClosedExpr fn && supportedClosedExpr arg
  | _ => false

/-- Every accepted spine has an actual head from the caller's finite allowlist,
fully explicit closed universes and supported closed arguments. The allowlist
is only caller input, NOT an authenticated repository declaration registry. -/
structure RecognizedClosedSpine (allowed : List Lean.Name) (source : Lean.Expr) where
  spine : NamedConstantSpine source
  head_allowed : spine.headName ∈ allowed
  universes_supported : spine.universes.all supportedLevel = true
  arguments_supported : spine.arguments.all supportedClosedExpr = true

def recognizeClosedSpine (allowed : List Lean.Name) (source : Lean.Expr) :
    Option (RecognizedClosedSpine allowed source) :=
  match parseNamedConstantSpine source with
  | none => none
  | some spine =>
      if hh : spine.headName ∈ allowed then
        if hu : spine.universes.all supportedLevel = true then
          if ha : spine.arguments.all supportedClosedExpr = true then
            some {
              spine := spine
              head_allowed := hh
              universes_supported := hu
              arguments_supported := ha
            }
          else none
        else none
      else none

/-- Syntactically accepted applications reconstruct the exact original Expr.
No claimed source label is needed or accepted for the equality proof. -/
theorem recognizedClosedSpine_exact {allowed : List Lean.Name}
    {source : Lean.Expr} (r : RecognizedClosedSpine allowed source) :
    rebuildConstantSpine r.spine.headName r.spine.universes
      r.spine.arguments = source :=
  r.spine.rebuild

/-- The result retains the original constant name and all universe levels.
This proves literal syntactic custody, NOT that the constant denotes the
expected theorem in an independently pinned environment. -/
theorem recognizedClosedSpine_head_in_allowlist
    {allowed : List Lean.Name} {source : Lean.Expr}
    (r : RecognizedClosedSpine allowed source) :
    r.spine.headName ∈ allowed := r.head_allowed

/-- Optional elaboration-environment observation. A failed structure check,
allowlist match, closedness check or Meta type check returns no result.
A returned type is an observed MetaM result, not kernel acceptance or proof
that the certificate Rule faithfully represents this Expr. -/
def observeMetaTypedClosedSpine (allowed : List Lean.Name) (source : Lean.Expr) :
    Lean.Meta.MetaM (Option (RecognizedClosedSpine allowed source × Lean.Expr)) := do
  match recognizeClosedSpine allowed source with
  | none => return none
  | some spine =>
      if ← Lean.Meta.isTypeCorrect source then
        let observedType ← Lean.Meta.inferType source
        return some (spine, observedType)
      else
        return none

/-- A free-variable head has no named-constant application spine. -/
theorem reject_free_variable_head (allowed : List Lean.Name)
    (id : Lean.FVarId) :
    parseNamedConstantSpine (.fvar id) = none := rfl

/-- A metavariable head is not a source theorem name. -/
theorem reject_metavariable_head (id : Lean.MVarId) :
    parseNamedConstantSpine (.mvar id) = none := rfl

/-- Binder terms are rejected by the restricted head parser; the future
elaboration extractor must explicitly account for local context and scope. -/
theorem reject_lambda_head (name : Lean.Name) (ty body : Lean.Expr)
    (info : Lean.BinderInfo) :
    parseNamedConstantSpine (.lam name ty body info) = none := rfl

/-- A raw expression may be structurally recognized yet remain ill-typed.
For example, Nat.zero is not a function taking a Nat.zero argument.
The Meta observer, unlike the structural parser, must reject such an Expr. -/
def malformedApplication : Lean.Expr :=
  .app (.const ``Nat.zero []) (.const ``Nat.zero [])

/-- The parser makes no promise of type correctness. -/
theorem malformed_has_constant_spine :
    (parseNamedConstantSpine malformedApplication).isSome = true := by
  decide

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite
