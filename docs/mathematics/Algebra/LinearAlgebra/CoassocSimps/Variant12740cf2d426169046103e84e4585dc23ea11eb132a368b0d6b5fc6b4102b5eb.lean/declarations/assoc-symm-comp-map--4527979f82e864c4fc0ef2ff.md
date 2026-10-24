# assoc_symm_comp_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16248e02-631f-76e8-e02a-f71be3371dd7",
  "kind": "lemma",
  "lexical_name": "assoc_symm_comp_map",
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
  "slug": "assoc-symm-comp-map--4527979f82e864c4fc0ef2ff",
  "source": {
    "blob": "08014b84de919f19bd76326af2d8b53238359012",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 243,
    "path": "GRWTSK/Algebra/LinearAlgebra/CoassocSimps/Variant12740cf2d426169046103e84e4585dc23ea11eb132a368b0d6b5fc6b4102b5eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4527979f82e864c4fc0ef2ffe5cdb1f66dafc4fba4e8166f8e44b19440bb6f1f",
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

Occurrence: `result:16248e02-631f-76e8-e02a-f71be3371dd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma assoc_symm_comp_map
    (f₁ : M₁ →ₗ[R] N₁) (f₂₃ : M →ₗ[R] M₂ ⊗[R] M₃) :
    α⁻¹ ∘ₗ (f₁ ⊗ₘ f₂₃) = ((f₁ ⊗ₘ .id) ⊗ₘ .id) ∘ₗ α⁻¹ ∘ₗ (.id ⊗ₘ f₂₃) := by
  rw [← LinearMap.comp_assoc, map_map_comp_assoc_symm_eq]
  simp only [coassoc_simps]

/-- Simproc version of `assoc_symm_comp_map` that only fires when `f₁ ≠ id`. -/
simproc_decl assoc_symm_comp_map_simproc
    ((TensorProduct.assoc _ _ _ _).symm.toLinearMap ∘ₗ (_ ⊗ₘ _)) := .ofQ fun _ t e ↦ do
  let_expr LinearMap R _ _ _ _ T₁ T₂ _ _ _ _ ←  t
    | return .continue
  let_expr TensorProduct _ instR M₁ M instM₁ instM instRM₁ instRM ←  T₁
    | return Lean.Meta.Simp.StepQ.continue
  let_expr TensorProduct _ _ T₃ M₃ _ instM₃ _ instRM₃ ←  T₂
    | return Lean.Meta.Simp.StepQ.continue
  let_expr TensorProduct _ _ N₁ M₂ instN₁ instM₂ instRN₁ instRM₂ ←  T₃
    | return Lean.Meta.Simp.StepQ.continue
  let .succ u₁ := (← Lean.Meta.inferType R).sortLevel! | return .continue
  let .succ u₂ := (← Lean.Meta.inferType M).sortLevel! | return .continue
  let .succ u₃ := (← Lean.Meta.inferType M₁).sortLevel! | return .continue
  let .succ u₄ := (← Lean.Meta.inferType M₂).sortLevel! | return .continue
  let .succ u₅ := (← Lean.Meta.inferType M₃).sortLevel! | return .continue
  let .succ u₆ := (← Lean.Meta.inferType N₁).sortLevel! | return .continue
  have R  : Q(Type u₁) := R
  have M  : Q(Type u₂) := M
  have M₁ : Q(Type u₃) := M₁
  have M₂ : Q(Type u₄) := M₂
  have M₃ : Q(Type u₅) := M₃
  have N₁ : Q(Type u₆) := N₁
  have : Q(CommSemiring $R) := instR
  have : Q(AddCommMonoid $M) := instM
  have : Q(AddCommMonoid $M₁) := instM₁
  have : Q(AddCommMonoid $M₂) := instM₂
  have : Q(AddCommMonoid $M₃) := instM₃
  have : Q(AddCommMonoid $N₁) := instN₁
  have : Q(Module $R $M) := instRM
  have : Q(Module $R $M₁) := instRM₁
  have : Q(Module $R $M₂) := instRM₂
  have : Q(Module $R $M₃) := instRM₃
  have : Q(Module $R $N₁) := instRN₁
  have e : Q($M₁ ⊗[$R] $M →ₗ[$R] $N₁ ⊗[$R] $M₂ ⊗[$R] $M₃) := e
  match e with
  | ~q((TensorProduct.assoc «$R» «$N₁» «$M₂» «$M₃»).symm.toLinearMap ∘ₗ ($f₁ ⊗ₘ $f₂₃)) =>
  match_expr f₁ with
  | LinearMap.id _ _ _ _ _ => return .continue
  | _ =>
  return .visit (e := e) <| .mk q((($f₁ ⊗ₘ id) ⊗ₘ id) ∘ₗ
    (TensorProduct.assoc _ _ _ _).symm.toLinearMap ∘ₗ (id ⊗ₘ $f₂₃))
      (some q(assoc_symm_comp_map ..))

attribute [coassoc_simps] assoc_symm_comp_map_simproc

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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CoassocSimps/Variant12740cf2d426169046103e84e4585dc23ea11eb132a368b0d6b5fc6b4102b5eb.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08014b84de919f19bd76326af2d8b53238359012` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
