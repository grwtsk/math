# exists_dual_of_fixedReduce_ne_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c09ebf517eda0c3de8a5828a1bbe938f71e700f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 306,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/162948d53ad19328761ce1c363e136ca1daf597f1f16656b579fd1fce2dc9ad7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:302b8075-9fe8-b060-8c53-09378bdd89af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4fb433c-5dab-4f5c-93d6-1e2d23cbd0a7",
  "kind": "theorem",
  "lexical_name": "exists_dual_of_fixedReduce_ne_smul",
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
  "slug": "exists-dual-of-fixedreduce-ne-smul--bb9e15f555a4c949a31054f6",
  "source": {
    "blob": "c09ebf517eda0c3de8a5828a1bbe938f71e700f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 306,
    "path": "GRWTSK/Algebra/LinearAlgebra/Generation/Variant162948d53ad19328761ce1c363e136ca1daf597f1f16656b579fd1fce2dc9ad7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb9e15f555a4c949a31054f6b31895150ef6c756148cabbbaee2b0ebfd5d6293",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Generation/Variant162948d53ad19328761ce1c363e136ca1daf597f1f16656b579fd1fce2dc9ad7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4fb433c-5dab-4f5c-93d6-1e2d23cbd0a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exists_dual_of_fixedReduce_ne_smul
    (he : ∀ a : K, ∃ x, e.fixedReduce x ≠ a • x)
    (h : 1 < finrank K (V ⧸ e.fixedSubmodule)) :
    ∃ (f : Dual K V) (v : V),
      LinearIndependent K ![e.fixedSubmodule.mkQ v, e.fixedReduce (e.fixedSubmodule.mkQ v)] ∧
        e.fixedSubmodule ⊔ K ∙ (e v - v) ≤ LinearMap.ker f ∧ f v = 1 := by
  -- Since `e.fixedReduce` is not a homothety, there is `v : V ⧸ e.fixedSubmodule` such
  -- that `v` and `e.fixedReduce v` are linearly independent.
  have : ∃ v, LinearIndependent K ![v, e.fixedReduce v] := by
    contrapose! he
    obtain ⟨a, ha⟩ :=
      LinearMap.exists_mem_center_apply_eq_smul_of_forall_notLinearIndependent h.ne' he
    refine ⟨a, fun x ↦ by
      simp only [← coe_toLinearMap, ha, LinearMap.smul_apply, one_apply, Subring.smul_def]⟩
  obtain ⟨v, hu⟩ := this
  -- We lift `v` to `u : V`.
  obtain ⟨u, rfl⟩ := e.fixedSubmodule.mkQ_surjective v
  -- We can take `f : Dual K V` which vanishes on `e.fixedSubmodule ⊔ K ∙ (e u - u)`
  -- and satisfies `f u ≠ 0`, and we rescale `u` to `v` so that `f v = 1`.
  obtain ⟨f, hfu, hf⟩ :=
    exists_dual_map_eq_bot_of_notMem (apply_notMem_sup_of_linearIndependent hu) inferInstance
  replace hfu : f u ≠ 0 := by
    contrapose hfu
    rw [← hfu, ← sub_eq_zero, ← map_sub, ← Submodule.mem_bot K, ← hf]
    exact mem_map_of_mem (mem_sup_right (mem_span_singleton_self _))
  set v := (f u)⁻¹ • u with v_def
  have hspan : K ∙ (e v - v) = K ∙ (e u - u) := by
    simp only [Submodule.span_singleton_eq_span_singleton]
    use (Ne.isUnit hfu).unit
    simp [v_def, _root_.map_smul, Units.smul_isUnit, smul_sub,
      ← mul_smul, mul_inv_cancel₀ hfu]
  rw [← hspan, ← le_ker_iff_map] at hf
  refine ⟨f, v, ?_, hf,
    by simp only [_root_.map_smul, smul_eq_mul, v_def, inv_mul_cancel₀ hfu]⟩
  rw [← LinearIndependent.pair_smul_smul_iff (Ne.isUnit hfu).inv (Ne.isUnit hfu).inv] at hu
  simpa only [← LinearMap.map_smul, ← LinearEquiv.map_smul, ← v_def] using hu

variable {e} in
/-- Auxiliary lemma for the second non-exceptional case in Dieudonné's theorem:
with the notation of the proof of
`mem_transvections_pow_mul_dilatransvections_of_fixedReduce_ne_smul_id`,
the reductions of `auxTransvection hf * e` and `auxTransvection hg * e`
cannot both be homotheties. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Generation/Variant162948d53ad19328761ce1c363e136ca1daf597f1f16656b579fd1fce2dc9ad7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Generation/Variant162948d53ad19328761ce1c363e136ca1daf597f1f16656b579fd1fce2dc9ad7.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09ebf517eda0c3de8a5828a1bbe938f71e700f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
