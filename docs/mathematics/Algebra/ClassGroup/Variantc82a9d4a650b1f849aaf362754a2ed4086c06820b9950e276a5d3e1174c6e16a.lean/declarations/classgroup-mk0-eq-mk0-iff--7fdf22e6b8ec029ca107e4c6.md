# ClassGroup.mk0_eq_mk0_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02e5f881947fef2b44892ea2db997205708cabf3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e271df8-b38b-3fe8-1754-23496cfe0f4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b39f846-f265-32af-b558-7a95e7646a82",
  "kind": "theorem",
  "lexical_name": "ClassGroup.mk0_eq_mk0_iff",
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
  "slug": "classgroup-mk0-eq-mk0-iff--7fdf22e6b8ec029ca107e4c6",
  "source": {
    "blob": "02e5f881947fef2b44892ea2db997205708cabf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 273,
    "path": "GRWTSK/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fdf22e6b8ec029ca107e4c683b6a7311c06e5972f231c89291d6fa1e6ef14e5",
  "verification": {
    "reference": "docs/verification/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b39f846-f265-32af-b558-7a95e7646a82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ClassGroup.mk0_eq_mk0_iff [IsDedekindDomain R] {I J : (Ideal R)⁰} :
    ClassGroup.mk0 I = ClassGroup.mk0 J ↔
      ∃ (x y : R) (_hx : x ≠ 0) (_hy : y ≠ 0), Ideal.span {x} * (I : Ideal R) =
      Ideal.span {y} * J := by
  refine (ClassGroup.mk0_eq_mk0_iff_exists_fraction_ring (FractionRing R)).trans ⟨?_, ?_⟩
  · rintro ⟨z, hz, h⟩
    obtain ⟨x, ⟨y, hy⟩, rfl⟩ := IsLocalization.mk'_surjective R⁰ z
    refine ⟨x, y, ?_, mem_nonZeroDivisors_iff_ne_zero.mp hy, ?_⟩
    · rintro hx; apply hz
      rw [hx, IsFractionRing.mk'_eq_div, map_zero, zero_div]
    · exact (FractionalIdeal.mk'_mul_coeIdeal_eq_coeIdeal _ hy).mp h
  · rintro ⟨x, y, hx, hy, h⟩
    have hy' : y ∈ R⁰ := mem_nonZeroDivisors_iff_ne_zero.mpr hy
    refine ⟨IsLocalization.mk' _ x ⟨y, hy'⟩, ?_, ?_⟩
    · contrapose! hx
      rwa [mk'_eq_iff_eq_mul, zero_mul, ← (algebraMap R (FractionRing R)).map_zero,
        (IsFractionRing.injective R (FractionRing R)).eq_iff] at hx
    · exact (FractionalIdeal.mk'_mul_coeIdeal_eq_coeIdeal _ hy').mpr h

/-- Maps a nonzero fractional ideal to an integral representative in the class group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02e5f881947fef2b44892ea2db997205708cabf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
