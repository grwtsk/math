# actual_correlation_zero_of_two_mul_le_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b63b073450ac178c908621f96330602de61d1bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/21cfe28fe2b7d9d0344152c39470256756e171bcbede9d68d61f2c42f3087f04.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22667c86-439e-e7a4-b618-af9fa847654f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0a8a8bb-d218-d762-74a3-06a97d52b0c2",
  "kind": "theorem",
  "lexical_name": "actual_correlation_zero_of_two_mul_le_abs",
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
  "slug": "actual-correlation-zero-of-two-mul-le-abs--9ddd0b832fe2c8202afb38cd",
  "source": {
    "blob": "0b63b073450ac178c908621f96330602de61d1bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 38,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant21cfe28fe2b7d9d0344152c39470256756e171bcbede9d68d61f2c42f3087f04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ddd0b832fe2c8202afb38cdc24a5b2aca4c8a771d33979ceb454a6065aa3ef0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant21cfe28fe2b7d9d0344152c39470256756e171bcbede9d68d61f2c42f3087f04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0a8a8bb-d218-d762-74a3-06a97d52b0c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_zero_of_two_mul_le_abs (A t : ℝ)
    (hA : 1 ≤ A) (ht : 2 * A ≤ |t|) :
    (∫ x, actualTest A x * actualTest A (x - t)) = 0 := by
  apply integral_eq_zero_of_ae
  filter_upwards [] with x
  change actualTest A x * actualTest A (x - t) = 0
  by_cases hx : A ≤ |x|
  · rw [actualTest_zero_of_le_abs A x hA hx, zero_mul]
  · have hxt : A ≤ |x - t| := by
      have htbound : |t| ≤ |x| + |x - t| := by
        calc
          |t| = |x - (x - t)| := by congr 1; ring
          _ ≤ |x| + |x - t| := abs_sub _ _
      linarith [lt_of_not_ge hx]
    rw [actualTest_zero_of_le_abs A (x - t) hA hxt, mul_zero]

/-- The exact upper support boundary contributes zero to the original correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant21cfe28fe2b7d9d0344152c39470256756e171bcbede9d68d61f2c42f3087f04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant21cfe28fe2b7d9d0344152c39470256756e171bcbede9d68d61f2c42f3087f04.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b63b073450ac178c908621f96330602de61d1bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
