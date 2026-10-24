# logRemainderBound_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3007830800df12213da9d50ddf6c0af3a1716968",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c990992cf734fac1c44e3d03dbd8a0328ed3730aaf9baf0dda5132639b39d362.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1bbc67b8-3b2e-4ef5-408c-6a0aa38fefd9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:015477e2-7063-721d-1b60-6de319d5e18d",
  "kind": "theorem",
  "lexical_name": "logRemainderBound_nonneg",
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
  "slug": "logremainderbound-nonneg--7f6d6af46618c4fb11546c00",
  "source": {
    "blob": "3007830800df12213da9d50ddf6c0af3a1716968",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 119,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ExpLog/Variantc990992cf734fac1c44e3d03dbd8a0328ed3730aaf9baf0dda5132639b39d362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f6d6af46618c4fb11546c006b81f4d329bd3fe27283de81386035b83e45608e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ExpLog/Variantc990992cf734fac1c44e3d03dbd8a0328ed3730aaf9baf0dda5132639b39d362.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:015477e2-7063-721d-1b60-6de319d5e18d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logRemainderBound_nonneg (domain : IntervalRat) (c : ℚ) (n : ℕ)
    (logc_error : ℚ) (_hc : c > 0) (herr : logc_error ≥ 0) (hdom : domain.lo > 0) :
    0 ≤ logRemainderBound domain c n logc_error := by
  unfold logRemainderBound logLagrangeRemainder
  have hdom' : ¬(domain.lo ≤ 0) := not_le.mpr hdom
  simp only [hdom', ↓reduceIte]
  apply add_nonneg
  · apply div_nonneg
    · apply pow_nonneg
      exact le_max_of_le_left (abs_nonneg _)
    · apply mul_nonneg
      · have : (0 : ℚ) < n + 1 := by linarith
        linarith
      · apply pow_nonneg; linarith
  · exact herr

/-- Taylor model for log z on domain J, centered at c = midpoint.
    Returns None if the domain is not strictly positive.

    This handles the transcendental log(c) by:
    1. Computing rational bounds [lo, hi] for log(c)
    2. Using midpoint = (lo + hi) / 2 as the polynomial constant
    3. Adding error = (hi - lo) / 2 to the remainder -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ExpLog/Variantc990992cf734fac1c44e3d03dbd8a0328ed3730aaf9baf0dda5132639b39d362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ExpLog/Variantc990992cf734fac1c44e3d03dbd8a0328ed3730aaf9baf0dda5132639b39d362.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3007830800df12213da9d50ddf6c0af3a1716968` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
