# _root_.Ideal.exists_not_mem_forall_mem_of_ne_of_liesOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05073ce268ad00727a3dedb886d61819cc704109",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 529,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35d2cba9-7daf-e7b3-4864-adc0005e7361",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b359f07-9465-976c-e792-b9193d3342df",
  "kind": "lemma",
  "lexical_name": "_root_.Ideal.exists_not_mem_forall_mem_of_ne_of_liesOver",
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
  "slug": "root-ideal-exists-not-mem-forall-mem-of-ne-of-liesover--a2cd649e38e6a27497bf4401",
  "source": {
    "blob": "05073ce268ad00727a3dedb886d61819cc704109",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 529,
    "path": "GRWTSK/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2cd649e38e6a27497bf44016abdd2c1f6a30a20ece03e78748621d830155019",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b359f07-9465-976c-e792-b9193d3342df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.Ideal.exists_not_mem_forall_mem_of_ne_of_liesOver
    (p : Ideal R) [p.IsPrime] (q : Ideal S) [q.IsPrime] [q.LiesOver p]
    [Algebra.EssFiniteType R S] [Algebra.QuasiFiniteAt R q] :
    ∃ s ∉ q, ∀ q' : Ideal S, q'.IsPrime → q' ≠ q → q'.LiesOver p → s ∈ q' := by
  let e := PrimeSpectrum.preimageHomeomorphFiber _ S ⟨p, inferInstance⟩
  let qF : PrimeSpectrum (p.Fiber S) := e ⟨⟨q, ‹_›⟩, PrimeSpectrum.ext (q.over_def p).symm⟩
  have : Algebra.QuasiFiniteAt p.ResidueField qF.asIdeal := .baseChange q _
    congr($(e.symm_apply_apply ⟨⟨q, ‹_›⟩, PrimeSpectrum.ext (q.over_def p).symm⟩).1.1).symm
  obtain ⟨r, hr, hrq⟩ := Algebra.QuasiFiniteAt.exists_basicOpen_eq_singleton
    (R := p.ResidueField) qF.asIdeal
  obtain ⟨s, hs, x, hsx⟩ := Ideal.Fiber.exists_smul_eq_one_tmul _ r
  have : x ∉ q := by
    have : r ∉ _ := hrq.ge rfl
    simp only [PrimeSpectrum.preimageHomeomorphFiber, PrimeSpectrum.preimageOrderIsoFiber,
      Homeomorph.homeomorph_mk_coe, qF, e] at this
    rw [PrimeSpectrum.preimageEquivFiber_apply_asIdeal,
        ← Ideal.IsPrime.mul_mem_left_iff (x := algebraMap _ _ s), ← Algebra.smul_def, hsx] at this
    · simpa using this
    · simpa [IsScalarTower.algebraMap_apply R S q.ResidueField, q.over_def p] using hs
  refine ⟨x, this, fun q' _ hq' _ ↦ not_not.mp fun hxq' ↦ hq' ?_⟩
  refine congr($(e.injective (a₁ := ⟨⟨q', ‹_›⟩, PrimeSpectrum.ext (q'.over_def p).symm⟩)
    (a₂ := ⟨⟨q, ‹_›⟩, PrimeSpectrum.ext (q.over_def p).symm⟩) (hrq.le ?_)).1.1)
  simp only [PrimeSpectrum.basicOpen_eq_zeroLocus_compl, PrimeSpectrum.preimageHomeomorphFiber,
    PrimeSpectrum.preimageOrderIsoFiber, Homeomorph.homeomorph_mk_coe, Set.mem_compl_iff,
    PrimeSpectrum.mem_zeroLocus, Set.singleton_subset_iff, SetLike.mem_coe, e]
  rw [PrimeSpectrum.preimageEquivFiber_apply_asIdeal,
    ← Ideal.IsPrime.mul_mem_left_iff (x := algebraMap _ _ s), ← Algebra.smul_def, hsx]
  · simpa
  · simpa [IsScalarTower.algebraMap_apply R S q'.ResidueField, ← Ideal.mem_comap, ← q'.over_def p]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05073ce268ad00727a3dedb886d61819cc704109` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
