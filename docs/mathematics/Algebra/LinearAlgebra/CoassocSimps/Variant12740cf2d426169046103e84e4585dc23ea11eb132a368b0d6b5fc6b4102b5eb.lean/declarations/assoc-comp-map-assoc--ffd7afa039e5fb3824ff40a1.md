# assoc_comp_map_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8abb2737-5a84-9c68-8560-4e866eacaee4",
  "kind": "lemma",
  "lexical_name": "assoc_comp_map_assoc",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "assoc-comp-map-assoc--ffd7afa039e5fb3824ff40a1",
  "source": {
    "blob": "08014b84de919f19bd76326af2d8b53238359012",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 183,
    "path": "GRWTSK/Algebra/LinearAlgebra/CoassocSimps/Variant12740cf2d426169046103e84e4585dc23ea11eb132a368b0d6b5fc6b4102b5eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffd7afa039e5fb3824ff40a109eb7ec5b34c915cc0893e4863dd917314c98bc4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CoassocSimps/Variant12740cf2d426169046103e84e4585dc23ea11eb132a368b0d6b5fc6b4102b5eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8abb2737-5a84-9c68-8560-4e866eacaee4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma assoc_comp_map_assoc (f₃ : M₃ →ₗ[R] N₃)
    (f₁₂ : M →ₗ[R] M₁ ⊗[R] M₂) (f : P →ₗ[R] M ⊗[R] M₃) :
    α ∘ₗ (f₁₂ ⊗ₘ f₃) ∘ₗ f = (id ⊗ₘ (id ⊗ₘ f₃)) ∘ₗ α ∘ₗ (f₁₂ ⊗ₘ id) ∘ₗ f := by
  rw [← LinearMap.comp_assoc]
  simp only [coassoc_simps]

/-- Simproc version of `assoc_comp_map_assoc` that only fires when `f₃ ≠ id`. -/
simproc_decl assoc_comp_map_assoc_simproc
    ((TensorProduct.assoc _ _ _ _).toLinearMap ∘ₗ (_ ⊗ₘ _) ∘ₗ _) := .ofQ fun _ _ e ↦ do
  let_expr LinearMap.comp R _ _ P _ T₂ _ _ _ instP _ _ instRP _ _ _ _ _ _ _ e' ←  e
    | return .continue
  let_expr LinearMap.comp _ _ _ _ T₁ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ←  e'
    | return Lean.Meta.Simp.StepQ.continue
  let_expr TensorProduct _ instR M M₃ instM instM₃ instRM instRM₃ ←  T₁
    | return Lean.Meta.Simp.StepQ.continue
  let_expr TensorProduct _ _ M₁ T₃ instM₁ _ instRM₁ _ ←  T₂
    | return Lean.Meta.Simp.StepQ.continue
  let_expr TensorProduct _ _ M₂ N₃ instM₂ instN₃ instRM₂ instRN₃ ←  T₃
    | return Lean.Meta.Simp.StepQ.continue
  let .succ u₁ := (← Lean.Meta.inferType R).sortLevel! | return .continue
  let .succ u₂ := (← Lean.Meta.inferType M).sortLevel! | return .continue
  let .succ u₃ := (← Lean.Meta.inferType M₁).sortLevel! | return .continue
  let .succ u₄ := (← Lean.Meta.inferType M₂).sortLevel! | return .continue
  let .succ u₅ := (← Lean.Meta.inferType M₃).sortLevel! | return .continue
  let .succ u₆ := (← Lean.Meta.inferType N₃).sortLevel! | return .continue
  let .succ u₇ := (← Lean.Meta.inferType P).sortLevel! | return .continue
  have R  : Q(Type u₁) := R
  have M  : Q(Type u₂) := M
  have M₁ : Q(Type u₃) := M₁
  have M₂ : Q(Type u₄) := M₂
  have M₃ : Q(Type u₅) := M₃
  have N₃ : Q(Type u₆) := N₃
  have P  : Q(Type u₇) := P
  have : Q(CommSemiring $R) := instR
  have : Q(AddCommMonoid $M) := instM
  have : Q(AddCommMonoid $M₁) := instM₁
  have : Q(AddCommMonoid $M₂) := instM₂
  have : Q(AddCommMonoid $M₃) := instM₃
  have : Q(AddCommMonoid $N₃) := instN₃
  have : Q(AddCommMonoid $P)  := instP
  have : Q(Module $R $M) := instRM
  have : Q(Module $R $M₁) := instRM₁
  have : Q(Module $R $M₂) := instRM₂
  have : Q(Module $R $M₃) := instRM₃
  have : Q(Module $R $N₃) := instRN₃
  have : Q(Module $R $P) := instRP
  have e : Q($P →ₗ[$R] $M₁ ⊗[$R] ($M₂ ⊗[$R] $N₃)) := e
  match e with
  | ~q((TensorProduct.assoc «$R» «$M₁» «$M₂» «$N₃»).toLinearMap ∘ₗ
      ($f₁₂ ⊗ₘ $f₃) ∘ₗ ($f : _ →ₗ[_] «$M» ⊗ «$M₃»)) =>
  match_expr f₃ with
  | LinearMap.id _ _ _ _ _ => return .continue
  | _ =>
  return .visit (e := e) <| .mk q((id ⊗ₘ (id ⊗ₘ $f₃)) ∘ₗ (TensorProduct.assoc _ _ _ _).toLinearMap
    ∘ₗ ($f₁₂ ⊗ₘ id) ∘ₗ $f) (some q(assoc_comp_map_assoc ..))

attribute [coassoc_simps] assoc_comp_map_assoc_simproc

-- This loops when tagged as a simp lemma,
-- so we turn it into a simproc that only fires when `f₁ ≠ id`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CoassocSimps/Variant12740cf2d426169046103e84e4585dc23ea11eb132a368b0d6b5fc6b4102b5eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CoassocSimps/Variant12740cf2d426169046103e84e4585dc23ea11eb132a368b0d6b5fc6b4102b5eb.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08014b84de919f19bd76326af2d8b53238359012` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
