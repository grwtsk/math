import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.ScopedNatLeTransExpression

/-!
# Exact binder abstraction for scoped Nat.le_trans

Local attribution: grwtsk contributors. MIT.

A restricted local-source expression for Nat.le_trans has five arguments:
a,b,c : Nat, hab : a ≤ b, hbc : b ≤ c. This module gives a fully
explicit, closed de Bruijn representation of its five-binder lambda and
dependent forall type, with a source-level closed-syntax check. The
indices are not inferred from names: they are the actual positions of
the bound variables after all five binders are introduced.

The MetaM comparison takes an already checked local expression witness,
abstracts precisely those five local variables in the original order,
rejects any remaining free variables, universe parameters, metavariables
or loose bound variables, checks the *exact* implicit/explicit binder
profile, compares the result and its type with the actual Nat.le_trans
declaration and attempts a kernel check in the current Lean environment.
This is unexecuted observer source, not an audited kernel receipt.

The independent typed mathematical counterpart reuses the existing
InstantiatedApplication, proving that its complete premise predicate
is equivalent to the CONJUNCTION a ≤ b AND b ≤ c. A metadata label,
an Expr syntax check or a Meta definitional-equality result does not by
itself create a theorem proof term or authenticate Git source bytes.

SOURCE_PROOF_CANDIDATE. Native compilation, MetaM execution, fresh kernel
replay, transitive axiom audit and source-to-Git authentication: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

open Lean

/-- The exact proposition constructor used at each dependent binder. -/
def natLeTransLeExpr (left right : Lean.Expr) : Lean.Expr :=
  Lean.mkApp2 (Lean.mkConst ``Nat.le) left right

/-- After binding a,b,c,hab,hbc in that order, de Bruijn positions are
a=4, b=3, c=2, hab=1, hbc=0. This source term keeps both proof arguments. -/
def canonicalNatLeTransBody : Lean.Expr :=
  makeNatLeTransExpr (.bvar 4) (.bvar 3) (.bvar 2)
    (.bvar 1) (.bvar 0)

/-- Explicit closed lambda, preserving *all* five binders, rather than
eta-erasing any premise or treating indices as unrelated constants. -/
def canonicalNatLeTransLambda : Lean.Expr :=
  .lam `a (Lean.mkConst ``Nat)
    (.lam `b (Lean.mkConst ``Nat)
      (.lam `c (Lean.mkConst ``Nat)
        (.lam `hab (natLeTransLeExpr (.bvar 2) (.bvar 1))
          (.lam `hbc (natLeTransLeExpr (.bvar 2) (.bvar 1))
            canonicalNatLeTransBody .default)
          .default)
        .implicit)
      .implicit)
    .implicit

/-- The original Nat.le_trans type and canonical lambda both have three
*implicit* Nat binders, followed by precisely two explicit proof binders. The final result
references a=4 and c=2 in the five-variable telescope. -/
def canonicalNatLeTransForall : Lean.Expr :=
  .forallE `a (Lean.mkConst ``Nat)
    (.forallE `b (Lean.mkConst ``Nat)
      (.forallE `c (Lean.mkConst ``Nat)
        (.forallE `hab (natLeTransLeExpr (.bvar 2) (.bvar 1))
          (.forallE `hbc (natLeTransLeExpr (.bvar 2) (.bvar 1))
            (natLeTransLeExpr (.bvar 4) (.bvar 2)) .default)
          .default)
        .implicit)
      .implicit)
    .implicit

/-- Binder-info is **not** a consequence of definitional equality. This
strict source-shape guard checks the first three implicit Nat parameters and
both explicit proof arguments on a five-binder lambda. -/
def natLeTransLambdaBinderInfos : Lean.Expr → Bool
  | .lam _ _
      (.lam _ _
        (.lam _ _
          (.lam _ _
            (.lam _ _ _ .default) .default) .implicit) .implicit) .implicit => true
  | _ => false

/-- The dependent theorem type has exactly the same binder-info profile. -/
def natLeTransForallBinderInfos : Lean.Expr → Bool
  | .forallE _ _
      (.forallE _ _
        (.forallE _ _
          (.forallE _ _
            (.forallE _ _ _ .default) .default) .implicit) .implicit) .implicit => true
  | _ => false

theorem canonicalNatLeTransLambda_binderInfos :
    natLeTransLambdaBinderInfos canonicalNatLeTransLambda = true := by decide

theorem canonicalNatLeTransForall_binderInfos :
    natLeTransForallBinderInfos canonicalNatLeTransForall = true := by decide

/-- An all-explicit outer lambda cannot be substituted for an implicit
theorem parameter, even when its body is definitionally equal. -/
theorem natLeTransLambda_explicit_outer_rejected (body : Lean.Expr) :
    natLeTransLambdaBinderInfos
      (.lam `a (Lean.mkConst ``Nat) body .default) = false := rfl

/-- The same hostile boundary applies to the quantified type. -/
theorem natLeTransForall_explicit_outer_rejected (body : Lean.Expr) :
    natLeTransForallBinderInfos
      (.forallE `a (Lean.mkConst ``Nat) body .default) = false := rfl

/-- Pure structural de Bruijn scope check, independent of MetaM and Git.
A free variable, metavariable, unsupported level or metadata wrapper is
rejected. Binder bodies are checked one level deeper. -/
def closedBinderSyntaxAt (depth : Nat) : Lean.Expr → Bool
  | .bvar index => decide (index < depth)
  | .sort level => supportedLevel level
  | .const _ levels => levels.all supportedLevel
  | .lit _ => true
  | .app fn arg => closedBinderSyntaxAt depth fn && closedBinderSyntaxAt depth arg
  | .lam _ ty body _ =>
      closedBinderSyntaxAt depth ty && closedBinderSyntaxAt (depth + 1) body
  | .forallE _ ty body _ =>
      closedBinderSyntaxAt depth ty && closedBinderSyntaxAt (depth + 1) body
  | _ => false

/-- Five binders genuinely close the source term at the prescribed indices. -/
theorem canonicalNatLeTransLambda_closed :
    closedBinderSyntaxAt 0 canonicalNatLeTransLambda = true := by
  decide

/-- The dependent theorem type is also closed with no unbound de Bruijn index. -/
theorem canonicalNatLeTransForall_closed :
    closedBinderSyntaxAt 0 canonicalNatLeTransForall = true := by
  decide

/-- A raw, unabstracted source body must not be mistaken for a closed proof. -/
theorem canonicalNatLeTransBody_unbound :
    closedBinderSyntaxAt 0 canonicalNatLeTransBody = false := by
  decide

/-- The indexed original source is preserved when the Meta observer returns
a proposed closed abstraction; this theorem uses only the existing
source-identity field, not the Meta type checks. -/
structure ScopedNatLeTransAbstraction (source : Lean.Expr) where
  observed : ScopedNatLeTransObservation source
  abstracted : Lean.Expr
  quantifiedType : Lean.Expr
  abstractedType : Lean.Expr
  declarationType : Lean.Expr

theorem scopedNatLeTransAbstraction_source_exact
    {source : Lean.Expr} (a : ScopedNatLeTransAbstraction source) :
    source = makeNatLeTransExpr a.observed.spine.a
      a.observed.spine.b a.observed.spine.c
      a.observed.spine.hab a.observed.spine.hbc :=
  a.observed.spine.source_eq

/-- Observer: form the genuine lambda and forall telescope from the local
context before comparing their elaborated types against the imported
Nat.le_trans declaration. Definitional equality is an environment-dependent
MetaM result, NOT a Prop-level kernel certificate. Callers cannot elevate it
to a proof without independent validation of the actual expression and env. -/
def inspectNatLeTransAbstraction (source : Lean.Expr) :
    Lean.Meta.MetaM (Option (ScopedNatLeTransAbstraction source)) := do
  let some observed ← inspectScopedNatLeTrans source | return none
  let w := observed.spine
  let locals := #[w.a, w.b, w.c, w.hab, w.hbc]
  let abstracted ← Lean.Meta.mkLambdaFVars locals source
  let quantifiedType ← Lean.Meta.mkForallFVars locals observed.conclusionType
  if abstracted.hasFVar || abstracted.hasMVar ||
      abstracted.hasLevelParam || abstracted.looseBVarRange != 0 then
    return none
  if quantifiedType.hasFVar || quantifiedType.hasMVar ||
      quantifiedType.hasLevelParam || quantifiedType.looseBVarRange != 0 then
    return none
  -- Binder-info is a separate syntactic obligation; Meta.isDefEq alone
  -- must not certify the exact implicit/explicit parameter profile.
  unless natLeTransLambdaBinderInfos abstracted do return none
  unless natLeTransForallBinderInfos quantifiedType do return none
  unless (← Lean.Meta.isTypeCorrect abstracted) do return none
  let abstractedType ← Lean.Meta.inferType abstracted
  let declarationType ← Lean.Meta.inferType (Lean.mkConst ``Nat.le_trans)
  unless (← Lean.Meta.isDefEq abstracted canonicalNatLeTransLambda) do
    return none
  unless (← Lean.Meta.isDefEq quantifiedType canonicalNatLeTransForall) do
    return none
  unless (← Lean.Meta.isDefEq abstractedType quantifiedType) do
    return none
  unless (← Lean.Meta.isDefEq abstractedType declarationType) do
    return none
  -- This is an actual kernel check only WHEN this MetaM function runs.
  -- Its debug-oriented API checks the current environment and local context,
  -- not the full transitive axiom trust closure or source-Git authenticity.
  try
    Lean.Meta.checkWithKernel abstracted
  catch _ =>
    return none
  return some {
    observed := observed
    abstracted := abstracted
    quantifiedType := quantifiedType
    abstractedType := abstractedType
    declarationType := declarationType
  }

/-- A source-level probe in an actual local context. It has not been run.
The independent operational verifier must separately invoke the kernel
checker and collect an exact-source trust/axiom audit. -/
def inspectFreshNatLeTransAbstraction : Lean.Meta.MetaM Bool :=
  Lean.Meta.withLocalDecl `a .implicit (Lean.mkConst ``Nat) fun a =>
  Lean.Meta.withLocalDecl `b .implicit (Lean.mkConst ``Nat) fun b =>
  Lean.Meta.withLocalDecl `c .implicit (Lean.mkConst ``Nat) fun c =>
  Lean.Meta.withLocalDeclD `hab
    (natLeTransLeExpr a b) fun hab =>
  Lean.Meta.withLocalDeclD `hbc
    (natLeTransLeExpr b c) fun hbc => do
    return (← inspectNatLeTransAbstraction
      (makeNatLeTransExpr a b c hab hbc)).isSome

/-- The actual proof-bearing finite rule's premises mean the conjunction,
not an OR. All parameter dependence remains in one fixed interpretation. -/
theorem scopedNatLeTrans_premises_iff (a b c : Nat) :
    (∀ p, p ∈ (ScopedOrderExample.orderTransitivity a b c).rule.premises →
      ScopedOrderExample.Meaning a b c p) ↔ (a ≤ b ∧ b ≤ c) := by
  change (∀ p, p ∈
    [ScopedOrderExample.premiseAB, ScopedOrderExample.premiseBC] →
    ScopedOrderExample.Meaning a b c p) ↔ (a ≤ b ∧ b ≤ c)
  constructor
  · intro hp
    exact ⟨hp ScopedOrderExample.premiseAB (by simp),
      hp ScopedOrderExample.premiseBC (by simp)⟩
  · rintro ⟨hab, hbc⟩ p hp
    have hmem : p = ScopedOrderExample.premiseAB ∨
        p = ScopedOrderExample.premiseBC := by
      simpa only [List.mem_cons, List.not_mem_nil, or_false] using hp
    rcases hmem with heq | heq
    · subst p
      exact hab
    · subst p
      exact hbc

/-- The complete two-premise interpretation gives the original source
conclusion, using the existing certificate rather than a new assumption. -/
theorem scopedNatLeTrans_certificate_return (a b c : Nat)
    (h : a ≤ b ∧ b ≤ c) : a ≤ c :=
  (ScopedOrderExample.orderTransitivity a b c).consequence
    ((scopedNatLeTrans_premises_iff a b c).mpr h)

/-- A fixed interpretation of the original Nat.le_trans source theorem
has exactly the same implication interface as the instantiated two-premise
rule. This is a logical correspondence, NOT a reflection from raw Lean.Expr. -/
theorem scopedNatLeTrans_implication_iff (a b c : Nat) :
    ((∀ p, p ∈ (ScopedOrderExample.orderTransitivity a b c).rule.premises →
      ScopedOrderExample.Meaning a b c p) →
      ScopedOrderExample.Meaning a b c ScopedOrderExample.conclusionAC) ↔
      (a ≤ b → b ≤ c → a ≤ c) := by
  constructor
  · intro consequence hab hbc
    exact consequence ((scopedNatLeTrans_premises_iff a b c).mpr ⟨hab, hbc⟩)
  · intro consequence hp
    obtain ⟨hab, hbc⟩ := (scopedNatLeTrans_premises_iff a b c).mp hp
    exact consequence hab hbc

/-- A source shape alone cannot supply the missing second premise.
This is a concrete hostile countermodel, not a kernel proof of the
MetaM comparison's operational behavior. -/
theorem scopedNatLeTrans_missing_hbc_not_sound :
    ¬ (∀ a b c : Nat, a ≤ b → a ≤ c) := by
  intro h
  have bad : (1 : Nat) ≤ 0 := h 1 2 0 (by decide)
  exact (by decide : ¬ ((1 : Nat) ≤ 0)) bad

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite
