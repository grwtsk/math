-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SolverMode.Variant122f01e2c8a75b2e3b8a5b1782f045c1bed925753b16907b6f240b4f765444fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"122f01e2c8a75b2e3b8a5b1782f045c1bed925753b16907b6f240b4f765444fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SolverMode.Variant122f01e2c8a75b2e3b8a5b1782f045c1bed925753b16907b6f240b4f765444fc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"122f01e2c8a75b2e3b8a5b1782f045c1bed925753b16907b6f240b4f765444fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Syntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Init.Simproc
public import Init.Grind.Tactics
public import Init.MetaTypes
import Init.Data.Nat.Bitwise.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SolverMode.Variant122f01e2c8a75b2e3b8a5b1782f045c1bed925753b16907b6f240b4f765444fc

@[expose] public section

set_option linter.missingDocs true -- keep it documented

namespace Lean.Elab.Tactic.BVDecide

/--
The various kinds of configurations offered for the SAT solver.
-/
inductive SolverMode where
  /--
  Set SAT solver options to improve proof search.
  -/
  | proof
  /--
  Set SAT solver options to improve counterexample search.
  -/
  | counterexample
  /--
  Don't set additional SAT solver flags.
  -/
  | default

/--
The configuration options for `bv_decide`.
-/
structure BVDecideConfig where
  /-- The number of seconds that the SAT solver is run before aborting. -/
  timeout : Nat := 10
  /-- Whether to run the trimming algorithm on LRAT proofs. -/
  trimProofs : Bool := true
  /--
  Whether to use the binary LRAT proof format.
  -/
  binaryProofs : Bool := true
  /--
  Canonicalize with respect to associativity and commutativity.
  -/
  acNf : Bool := false
  /--
  Split hypotheses of the form `h : (x && y) = true` into `h1 : x = true` and `h2 : y = true`.
  This has synergy potential with embedded constraint substitution. Because embedded constraint
  substitution is the only use case for this feature it is automatically disabled whenever embedded
  constraint substitution is disabled.
  -/
  andFlattening : Bool := true
  /--
  Look at all hypotheses of the form `h : x = true`, if `x` occurs in another hypothesis substitute
  it with `true`.
  -/
  embeddedConstraintSubst : Bool := true
  /--
  Split up local declarations of structures that are collections of other supported types into their
  individual parts automatically.
  -/
  structures : Bool := true
  /--
  Enable preprocessing with the `int_toBitVec` simp set to reduce `UIntX`/`IntX` to `BitVec` and
  thus make them accessible for `bv_decide`.
  -/
  fixedInt : Bool := true
  /--
  Handle equality on enum inductives by turning them into `BitVec`.
  -/
  enums : Bool := true
  /--
  Output the AIG of bv_decide as graphviz into a file called aig.gv in the working directory of the
  Lean process.
  -/
  graphviz : Bool := false
  /--
  The maximum number of subexpressions to visit when performing simplification.
  -/
  maxSteps : Nat := Lean.Meta.Simp.defaultMaxSteps
  /--
  Short-circuit multiplication as an abstraction-style optimization that triggers
  if matching multiplications are not needed to proof a goal.
  -/
  shortCircuit : Bool := false
  /--
  The SAT solver configuration to use. Defaults to `.proof` as that is the most relevant use case
  for `bv_decide`.
  -/
  solverMode : SolverMode := .proof

end Lean.Elab.Tactic.BVDecide


namespace Lean.Parser

namespace Tactic

/--
This tactic works just like `bv_decide` but skips calling a SAT solver by using a proof that is
already stored on disk. It is called with the name of an LRAT file in the same directory as the
current Lean file:
```
bv_check "proof.lrat"
```
-/
syntax (name := bvCheck) "bv_check " optConfig str : tactic

@[tactic_alt bvDecideMacro]
syntax (name := bvDecide) "bv_decide" optConfig : tactic


@[tactic_alt bvTraceMacro]
syntax (name := bvTrace) "bv_decide?" optConfig : tactic

@[tactic_alt bvNormalizeMacro]
syntax (name := bvNormalize) "bv_normalize" optConfig : tactic

end Tactic

/--
Theorems tagged with the `bv_normalize` attribute are used during the rewriting step of the
`bv_decide` tactic.
-/
syntax (name := bv_normalize) "bv_normalize" (Tactic.simpPre <|> Tactic.simpPost)? unicode("← ", "<- ")? (ppSpace prio)? : attr

/--
Auxiliary attribute for builtin `bv_normalize` simprocs.
-/
syntax (name := bvNormalizeProcBuiltinAttr) "builtin_bv_normalize_proc" (Tactic.simpPre <|> Tactic.simpPost)? : attr

macro_rules
  | `($[$doc?:docComment]? $kind:attrKind builtin_simproc $[$pre?]? [bv_normalize] $n:ident ($pattern:term) := $body) => do
    `($[$doc?:docComment]? builtin_simproc_decl $n ($pattern) := $body
      attribute [$kind builtin_bv_normalize_proc $[$pre?]?] $n)

end Lean.Parser
