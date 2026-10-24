# exists_ne_zero_mem_ringOfIntegers_of_norm_le_mul_sqrt_discr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c73bf476-2e1d-8a79-042c-b6ebdcbb6371",
  "kind": "theorem",
  "lexical_name": "exists_ne_zero_mem_ringOfIntegers_of_norm_le_mul_sqrt_discr",
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
  "slug": "exists-ne-zero-mem-ringofintegers-of-norm-le-mul-sqrt-discr--df0dbcd32aa3cdda455178de",
  "source": {
    "blob": "82dca3d7e001b7b624715e339e8eb2ff175c4ae3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 202,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant14820f6b81ac2a8cbe362bf4dafd8d3fb7fa6c99e053a024b180ecbbdd771ff3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df0dbcd32aa3cdda455178de7073d936476376388cf2c5343182531cbab07440",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant14820f6b81ac2a8cbe362bf4dafd8d3fb7fa6c99e053a024b180ecbbdd771ff3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c73bf476-2e1d-8a79-042c-b6ebdcbb6371`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ne_zero_mem_ringOfIntegers_of_norm_le_mul_sqrt_discr :
    ∃ (a : 𝓞 K), a ≠ 0 ∧
      |Algebra.norm ℚ (a : K)| ≤ (4 / π) ^ nrComplexPlaces K *
        (finrank ℚ K).factorial / (finrank ℚ K) ^ (finrank ℚ K) * Real.sqrt |discr K| := by
  obtain ⟨_, h_mem, h_nz, h_nm⟩ := exists_ne_zero_mem_ideal_of_norm_le_mul_sqrt_discr K ↑1
  obtain ⟨a, rfl⟩ := (FractionalIdeal.mem_one_iff _).mp h_mem
  refine ⟨a, ne_zero_of_map h_nz, ?_⟩
  simp_rw [Units.val_one, FractionalIdeal.absNorm_one, Rat.cast_one, one_mul] at h_nm
  exact h_nm

/--
The Minkowski lower bound `n^{2n}/((4/pi)^{2r_2}*n!^2)` for the absolute value of the discriminant
of a number field of degree n.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant14820f6b81ac2a8cbe362bf4dafd8d3fb7fa6c99e053a024b180ecbbdd771ff3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant14820f6b81ac2a8cbe362bf4dafd8d3fb7fa6c99e053a024b180ecbbdd771ff3.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82dca3d7e001b7b624715e339e8eb2ff175c4ae3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
