# KaehlerDifferential.range_kerCotangentToTensor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2e5a28e-e611-e522-3d2f-1f3494b59163",
  "kind": "theorem",
  "lexical_name": "KaehlerDifferential.range_kerCotangentToTensor",
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
  "slug": "kaehlerdifferential-range-kercotangenttotensor--c0431056ad4d63f03ea2c22a",
  "source": {
    "blob": "b184a5aebc67289390eac066e3c99fe99281dbd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 842,
    "line": 797,
    "path": "GRWTSK/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0431056ad4d63f03ea2c22a626fa3cf818e8bfb7d8fb74f67da6adf589ac618",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2e5a28e-e611-e522-3d2f-1f3494b59163`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 797–842.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem KaehlerDifferential.range_kerCotangentToTensor
    (h : Function.Surjective (algebraMap A B)) :
    LinearMap.range (kerCotangentToTensor R A B) =
      (LinearMap.ker (KaehlerDifferential.mapBaseChange R A B)).restrictScalars A := by
  classical
  ext x
  constructor
  · rintro ⟨x, rfl⟩
    obtain ⟨x, rfl⟩ := Ideal.toCotangent_surjective _ x
    simp only [kerCotangentToTensor_toCotangent, Submodule.restrictScalars_mem, LinearMap.mem_ker,
      mapBaseChange_tmul, map_D, RingHom.mem_ker.mp x.2, map_zero, smul_zero]
  · intro hx
    obtain ⟨x, rfl⟩ := LinearMap.rTensor_surjective Ω[A⁄R] (g := Algebra.linearMap A B) h x
    obtain ⟨x, rfl⟩ := (TensorProduct.lid _ _).symm.surjective x
    replace hx : x ∈ LinearMap.ker (KaehlerDifferential.map R R A B) := by simpa using hx
    rw [KaehlerDifferential.ker_map_of_surjective R A B h] at hx
    obtain ⟨x, hx, rfl⟩ := hx
    simp only [TensorProduct.lid_symm_apply, LinearMap.rTensor_tmul,
      Algebra.linearMap_apply, map_one]
    rw [← Finsupp.sum_single x, Finsupp.sum, ← Finset.sum_fiberwise_of_maps_to
      (fun _ ↦ Finset.mem_image_of_mem (algebraMap A B))]
    simp only [map_sum (s := x.support.image (algebraMap A B)),
      TensorProduct.tmul_sum]
    apply sum_mem
    intro c _
    simp only [LinearMap.mem_range]
    simp only [map_sum, Finsupp.linearCombination_single]
    have : ∑ i ∈ x.support with algebraMap A B i = c, x i ∈ RingHom.ker (algebraMap A B) := by
      simpa [Finsupp.mapDomain, Finsupp.sum, Finsupp.finsetSum_apply, RingHom.mem_ker,
        Finsupp.single_apply, ← Finset.sum_filter] using DFunLike.congr_fun hx c
    obtain ⟨a, ha⟩ := h c
    use ∑ i ∈ {i ∈ x.support | algebraMap A B i = c}.attach, x i • Ideal.toCotangent _ ⟨i - a, ?_⟩
    · simp only [map_sum, LinearMapClass.map_smul, kerCotangentToTensor_toCotangent, map_sub]
      simp_rw [← TensorProduct.tmul_smul]
      -- TODO: was `simp [kerCotangentToTensor_toCotangent, RingHom.mem_ker.mp x.2]` and very slow
      -- (https://github.com/leanprover-community/mathlib4/issues/19751)
      simp only [smul_sub, TensorProduct.tmul_sub, Finset.sum_sub_distrib, ← TensorProduct.tmul_sum,
        ← Finset.sum_smul, Finset.sum_attach, sub_eq_self,
        Finset.sum_attach (f := fun i ↦ x i • KaehlerDifferential.D R A i)]
      rw [← TensorProduct.smul_tmul, ← Algebra.algebraMap_eq_smul_one, RingHom.mem_ker.mp this,
        TensorProduct.zero_tmul]
    · have : x i ≠ 0 ∧ algebraMap A B i = c := by
        convert! i.prop
        simp_rw [Finset.mem_filter, Finsupp.mem_support_iff]
      simp [RingHom.mem_ker, ha, this.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean#L797).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b184a5aebc67289390eac066e3c99fe99281dbd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
