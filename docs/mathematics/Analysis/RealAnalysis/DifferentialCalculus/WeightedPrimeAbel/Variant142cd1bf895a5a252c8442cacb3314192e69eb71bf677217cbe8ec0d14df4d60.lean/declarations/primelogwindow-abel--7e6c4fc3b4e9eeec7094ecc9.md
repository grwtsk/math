# primeLogWindow_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9df2fcebf3c1d38770af421c135d107684afbc26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/142cd1bf895a5a252c8442cacb3314192e69eb71bf677217cbe8ec0d14df4d60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:101ef436-8b92-3d83-5b38-b9ad5adac9de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:212f87ef-ace4-71b1-fd28-e43b900daec7",
  "kind": "theorem",
  "lexical_name": "primeLogWindow_abel",
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
  "slug": "primelogwindow-abel--7e6c4fc3b4e9eeec7094ecc9",
  "source": {
    "blob": "9df2fcebf3c1d38770af421c135d107684afbc26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 134,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant142cd1bf895a5a252c8442cacb3314192e69eb71bf677217cbe8ec0d14df4d60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e6c4fc3b4e9eeec7094ecc91a49c560a93f4be2692225159640e7058a2e9161",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant142cd1bf895a5a252c8442cacb3314192e69eb71bf677217cbe8ec0d14df4d60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:212f87ef-ace4-71b1-fd28-e43b900daec7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeLogWindow_abel (a b : ℝ) (ha : 0 ≤ a) (hab : a ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    primeLogWindow a b F = F b * primeLogPrefix b - F a * primeLogPrefix a -
      ∫ t in a..b, primeLogPrefix t * deriv F t := by
  rw [primeLogWindow, primeLogSum_abel b (ha.trans hab) F hF, primeLogSum_abel a ha F hF]
  have hint := intervalIntegral.integral_add_adjacent_intervals
    (primeLogPrefix_mul_deriv_intervalIntegrable 0 a ha F hF)
    (primeLogPrefix_mul_deriv_intervalIntegrable a b hab F hF)
  linarith

/-- The lower threshold atom is excluded and the upper threshold atom is included. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant142cd1bf895a5a252c8442cacb3314192e69eb71bf677217cbe8ec0d14df4d60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant142cd1bf895a5a252c8442cacb3314192e69eb71bf677217cbe8ec0d14df4d60.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9df2fcebf3c1d38770af421c135d107684afbc26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
