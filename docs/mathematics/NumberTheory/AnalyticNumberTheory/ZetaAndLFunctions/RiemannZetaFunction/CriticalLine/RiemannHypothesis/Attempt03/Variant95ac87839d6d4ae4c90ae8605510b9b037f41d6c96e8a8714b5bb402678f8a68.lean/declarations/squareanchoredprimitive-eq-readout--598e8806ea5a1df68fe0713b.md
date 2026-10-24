# squareAnchoredPrimitive_eq_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b5be53c-d50f-41a2-5d18-4305db742ba6",
  "kind": "theorem",
  "lexical_name": "squareAnchoredPrimitive_eq_readout",
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
  "slug": "squareanchoredprimitive-eq-readout--598e8806ea5a1df68fe0713b",
  "source": {
    "blob": "333f872440342247749442ff58146070982d02d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 115,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant95ac87839d6d4ae4c90ae8605510b9b037f41d6c96e8a8714b5bb402678f8a68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:598e8806ea5a1df68fe0713b942689fd027f7a3da5852d4af983d80231eca4ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant95ac87839d6d4ae4c90ae8605510b9b037f41d6c96e8a8714b5bb402678f8a68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b5be53c-d50f-41a2-5d18-4305db742ba6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareAnchoredPrimitive_eq_readout (t : ℝ) (ht : Real.log 7 ≤ t) :
    squareAnchoredPrimitive t =
      squarePrimitiveReadout t - squarePrimitiveReadout (Real.log 7) := by
  have hL : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have he := intervalIntegral.integral_add_adjacent_intervals
    (squareTimeDensity_intervalIntegrable 0 (Real.log 7) hL)
    (squareTimeDensity_intervalIntegrable (Real.log 7) t ht)
  rw [square_prefix_integral_eq_readout (Real.log 7) hL,
    square_prefix_integral_eq_readout t (hL.trans ht)] at he
  change _ = _ at he
  unfold squareAnchoredPrimitive
  linarith only [he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant95ac87839d6d4ae4c90ae8605510b9b037f41d6c96e8a8714b5bb402678f8a68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant95ac87839d6d4ae4c90ae8605510b9b037f41d6c96e8a8714b5bb402678f8a68.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `333f872440342247749442ff58146070982d02d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
