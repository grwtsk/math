# occurrence_sum_eq_weighted_points

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52b16c9a-36d9-fc53-f1b6-a33f9d2bd380",
  "kind": "theorem",
  "lexical_name": "occurrence_sum_eq_weighted_points",
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
  "slug": "occurrence-sum-eq-weighted-points--3138192c2c5edd145527e5f7",
  "source": {
    "blob": "aa073348552d6e7ac8a097410ed91a06d0c0e507",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmoothExplicitFormulaTransport/Variantecdf2dee39a200f44f6d72a78cb9089477d1524fc423d1ac9270822e5f84ee3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3138192c2c5edd145527e5f7798bf86ff3d167ebc4d8c425eab58dcdf08eb11a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmoothExplicitFormulaTransport/Variantecdf2dee39a200f44f6d72a78cb9089477d1524fc423d1ac9270822e5f84ee3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52b16c9a-36d9-fc53-f1b6-a33f9d2bd380`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem occurrence_sum_eq_weighted_points (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    (∑' o : ZeroOccurrence,
      smoothedBilateralTransform A ε hε (shiftedValue o) ^ 2) =
      ∑' p : ZeroPoint, weightedPointTerm A ε hε p := by
  have hs := smoothed_squares_summable A ε hA hε
  refine hs.tsum_sigma.trans ?_
  apply tsum_congr
  intro p
  simp [weightedPointTerm, shiftedValue, tsum_fintype, nsmul_eq_mul]

/-- The same point term expressed through the smooth autocorrelation transform.
This is the shape expected from a Weil explicit formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmoothExplicitFormulaTransport/Variantecdf2dee39a200f44f6d72a78cb9089477d1524fc423d1ac9270822e5f84ee3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmoothExplicitFormulaTransport/Variantecdf2dee39a200f44f6d72a78cb9089477d1524fc423d1ac9270822e5f84ee3c.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa073348552d6e7ac8a097410ed91a06d0c0e507` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
