# kernelMomentOne_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37221c01-209f-c9d9-8279-2c7eed65ef5e",
  "kind": "theorem",
  "lexical_name": "kernelMomentOne_abs_le",
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
  "slug": "kernelmomentone-abs-le--dfe3bd1306f2745ad1ed0734",
  "source": {
    "blob": "ae006af0f43f15694bb6927b5a88c4d8888864bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 393,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant017d9b8d9b59d09805cdb643d0d9184219b6ff2da53e696105543732399531ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfe3bd1306f2745ad1ed07340e5c3a63471e93009aabf5df2e4d8f41d46f01db",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant017d9b8d9b59d09805cdb643d0d9184219b6ff2da53e696105543732399531ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37221c01-209f-c9d9-8279-2c7eed65ef5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernelMomentOne_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |kernelMomentOne A| ≤ 2 * A + 6 := by
  have hp : 0 ≤ 2 * A := by linarith
  rw [kernelMomentOne_eq A hA]
  have hm : |2 * A * (1 + criticalContinuousMoment A)| ≤ 2 * A := by
    rw [abs_mul, abs_of_nonneg hp]
    have ht := kernelMomentZero_abs_le_one A hA
    rw [kernelMomentZero_eq A hA] at ht
    simpa only [mul_one] using mul_le_mul_of_nonneg_left ht hp
  have hi := criticalContinuousMoment_abs_le_two A hA
  have hn := negativeFirstMoment_abs_le_four A hA
  have ht := abs_sub (2 * A * (1 + criticalContinuousMoment A)) (criticalContinuousMoment A)
  have hu := abs_sub (2 * A * (1 + criticalContinuousMoment A) - criticalContinuousMoment A)
    (negativeFirstMoment A)
  linarith

/-- Uniform affine pricing conditional only on independently supplied endpoint sample bounds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant017d9b8d9b59d09805cdb643d0d9184219b6ff2da53e696105543732399531ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant017d9b8d9b59d09805cdb643d0d9184219b6ff2da53e696105543732399531ee.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae006af0f43f15694bb6927b5a88c4d8888864bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
