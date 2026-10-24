# not_forall_fixedReduce_eq_smul

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
      "line": 349,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/162948d53ad19328761ce1c363e136ca1daf597f1f16656b579fd1fce2dc9ad7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc187b9b-8ab5-866a-6736-f8622303f313",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b202530f-e058-6337-d8b4-cb4e66d3e466",
  "kind": "theorem",
  "lexical_name": "not_forall_fixedReduce_eq_smul",
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
  "slug": "not-forall-fixedreduce-eq-smul--cc53a2904a6cb873187e7004",
  "source": {
    "blob": "c09ebf517eda0c3de8a5828a1bbe938f71e700f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 349,
    "path": "GRWTSK/Algebra/LinearAlgebra/Generation/Variant162948d53ad19328761ce1c363e136ca1daf597f1f16656b579fd1fce2dc9ad7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc53a2904a6cb873187e7004fd8adbf36e52c37399a17bbea806a963c6e7d790",
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

Occurrence: `result:b202530f-e058-6337-d8b4-cb4e66d3e466`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem not_forall_fixedReduce_eq_smul {f g : Dual K V} {v : V} {a b : K}
    (hv : LinearIndependent K
      ![e.fixedSubmodule.mkQ v, e.fixedReduce (e.fixedSubmodule.mkQ v)])
    {hf : e.fixedSubmodule ⊔ K ∙ (e v - v) ≤ LinearMap.ker f} (hfv : f v = 1)
    {hg : e.fixedSubmodule ⊔ K ∙ (e v - v) ≤ LinearMap.ker (f + g)} (hfgv : (f + g) v = 1)
    (hg0 : g ≠ 0) (hne_top : e.fixedSubmodule ⊔ K ∙ (e v - v) ⊔ K ∙ v < ⊤)
    (ha : ∀ x, (auxTransvection hf * e).fixedReduce x = a • x)
    (hb : ∀ x, (auxTransvection hg * e).fixedReduce x = b • x) :
    False := by
  simp only [fixedReduce_eq_smul_iff, auxTransvection_mul_fixed hfv] at ha
  simp only [fixedReduce_eq_smul_iff, auxTransvection_mul_fixed hfgv] at hb
  /- Since `auxTransvection hf = transvection f (v - e v)` and
    `auxTransvection hg = transvection (f + g) (v - e v)`,
    subtracting the relations `ha` and `hb` gives the following: -/
  set c := b - a with hc
  have key (x : V) : g (e x) • (v - e v) - c • x ∈ e.fixedSubmodule ⊔ K ∙ v := by
    have ha := ha x
    have hb := hb x
    simp only [LinearEquiv.mul_apply, transvection.apply, auxTransvection] at ha hb
    rw [LinearMap.add_apply, add_smul, ← add_assoc] at hb
    convert Submodule.sub_mem _ hb ha using 1
    -- should be taken care by a `module` tactic that handles noncommutative rings
    simp only [add_comm _ (g (e x) • _), ← add_assoc]
    rw [sub_eq_add_neg]
    simp only [add_sub_assoc, add_assoc, add_right_inj, sub_smul, smul_sub, hc]
    abel
  -- To get the contradiction, we distinguish whether `a = b` or not.
  rcases eq_or_ne c 0 with hc0 | hc0
  · -- When `c = 0`, we contradict the linear independence given by `hv`
    apply one_ne_zero (α := K)
    rw [LinearIndependent.pair_iff] at hv
    have hmem : v - e v ∈ e.fixedSubmodule ⊔ K ∙ v := by
      simp only [hc0, zero_smul, sub_zero] at key
      obtain ⟨w, hw⟩ : ∃ w, g w ≠ 0 := by
        contrapose! hg0
        exact LinearMap.ext hg0
      simpa [hw] using key ((g w)⁻¹ • e⁻¹ w)
    simp only [mem_sup, mem_span_singleton, exists_exists_eq_and] at hmem
    obtain ⟨y, hy, k, hk⟩ := hmem
    refine (hv (k - 1) 1 ?_).right
    simp only [Submodule.mkQ_apply, fixedReduce_mk]
    simp only [← e.fixedSubmodule.mkQ_apply, ← LinearMap.map_smul, ← map_add,
      ← LinearMap.mem_ker, Submodule.ker_mkQ]
    rw [← Submodule.neg_mem_iff] at hy
    convert hy using 1
    rw [eq_comm, ← sub_eq_iff_eq_add] at hk
    rw [← hk]
    simp only [sub_smul, one_smul]
    abel
  · -- When `c ≠ 0`, we contradict `hne_top`
    refine hne_top.ne ?_
    rw [eq_top_iff]
    intro x _
    have h1 : g (e x) • (v - e v) ∈ K ∙ (e v - v) :=
      mem_span_singleton.mpr ⟨-g (e x), by rw [neg_smul, smul_sub, smul_sub, neg_sub]⟩
    have hle : e.fixedSubmodule ⊔ K ∙ v ≤ e.fixedSubmodule ⊔ K ∙ (e v - v) ⊔ K ∙ v :=
      sup_le_sup_right le_sup_left _
    have h2 : c • x ∈ e.fixedSubmodule ⊔ K ∙ (e v - v) ⊔ K ∙ v := by
      rw [show c • x = g (e x) • (v - e v) - (g (e x) • (v - e v) - c • x) by abel]
      exact Submodule.sub_mem _ (mem_sup_left (mem_sup_right h1)) (hle (key x))
    simpa [smul_smul, inv_mul_cancel₀ hc0] using Submodule.smul_mem _ c⁻¹ h2

/-- If an element `e : V ≃ₗ[K] V` is such that `e.fixedReduce`
is not a homothety, then `e` is the product of at
most `finrank K (V ⧸ e.fixedSubmodule) - 1` transvections
and one dilatransvection.

This is the second non-exceptional case in Dieudonné's theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Generation/Variant162948d53ad19328761ce1c363e136ca1daf597f1f16656b579fd1fce2dc9ad7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Generation/Variant162948d53ad19328761ce1c363e136ca1daf597f1f16656b579fd1fce2dc9ad7.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09ebf517eda0c3de8a5828a1bbe938f71e700f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
