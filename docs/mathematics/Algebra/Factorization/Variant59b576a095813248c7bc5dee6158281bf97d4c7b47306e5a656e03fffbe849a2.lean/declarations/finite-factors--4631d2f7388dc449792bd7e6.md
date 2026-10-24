# finite_factors'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "982d54756b3466702946087f8c9cd53465a6cb75",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 545,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43e2188a-6fc3-2ca7-0b9b-9ae869bbab40",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7eaca8d5-366b-7aac-ba43-bfc5c2085b99",
  "kind": "theorem",
  "lexical_name": "finite_factors'",
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
  "slug": "finite-factors--4631d2f7388dc449792bd7e6",
  "source": {
    "blob": "982d54756b3466702946087f8c9cd53465a6cb75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 570,
    "line": 545,
    "path": "GRWTSK/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4631d2f7388dc449792bd7e60b8b1806af68faddffb453f91604f799787f18b3",
  "verification": {
    "reference": "docs/verification/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7eaca8d5-366b-7aac-ba43-bfc5c2085b99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–570.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_factors' {I : FractionalIdeal R⁰ K} (hI : I ≠ 0) {a : R}
    {J : Ideal R} (haJ : I = spanSingleton R⁰ ((algebraMap R K) a)⁻¹ * ↑J) :
    ∀ᶠ v : HeightOneSpectrum R in Filter.cofinite,
      ((Associates.mk v.asIdeal).count (Associates.mk J).factors : ℤ) -
        (Associates.mk v.asIdeal).count (Associates.mk (Ideal.span {a})).factors = 0 := by
  have ha_ne_zero : Ideal.span {a} ≠ 0 := constant_factor_ne_zero hI haJ
  have hJ_ne_zero : J ≠ 0 := ideal_factor_ne_zero hI haJ
  have h_subset :
    {v : HeightOneSpectrum R | ¬((Associates.mk v.asIdeal).count (Associates.mk J).factors : ℤ) -
      ↑((Associates.mk v.asIdeal).count (Associates.mk (Ideal.span {a})).factors) = 0} ⊆
    {v : HeightOneSpectrum R | v.asIdeal ∣ J} ∪
      {v : HeightOneSpectrum R | v.asIdeal ∣ Ideal.span {a}} := by
    intro v hv
    have hv_irred : Irreducible v.asIdeal := v.irreducible
    by_contra h_notMem
    rw [mem_union, mem_setOf_eq, mem_setOf_eq] at h_notMem
    push_neg at h_notMem
    rw [← Associates.count_ne_zero_iff_dvd ha_ne_zero hv_irred, not_not,
      ← Associates.count_ne_zero_iff_dvd hJ_ne_zero hv_irred, not_not] at h_notMem
    rw [mem_setOf_eq, h_notMem.1, h_notMem.2, sub_self] at hv
    exact hv (Eq.refl 0)
  exact Finite.subset (Finite.union (Ideal.finite_factors (ideal_factor_ne_zero hI haJ))
    (Ideal.finite_factors (constant_factor_ne_zero hI haJ))) h_subset

open Classical in
/-- `val_v(I) = 0` for all but finitely many maximal ideals of `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `982d54756b3466702946087f8c9cd53465a6cb75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
