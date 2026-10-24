# actualDampedXiFinitePrimitive_eq_compact_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63379621-7a5c-9f7a-8558-bb3e65060cd2",
  "kind": "theorem",
  "lexical_name": "actualDampedXiFinitePrimitive_eq_compact_square",
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
  "slug": "actualdampedxifiniteprimitive-eq-compact-square--6e7ae1653ef3c978dc69db85",
  "source": {
    "blob": "0a67abef480bb544754be6f176ef59e9b386c496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant0dacd0500f191d27f17442d38a056fd50fc6bd507347186d4dd06eef3495279a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e7ae1653ef3c978dc69db85c01986e24b9963ddff9a40394001ba31dbc28d82",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant0dacd0500f191d27f17442d38a056fd50fc6bd507347186d4dd06eef3495279a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63379621-7a5c-9f7a-8558-bb3e65060cd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDampedXiFinitePrimitive_eq_compact_square {Y : ℝ} (hY : 7 ≤ Y) :
    (1 / 2 : ℝ) * actualDampedXiFinitePrimitive (Real.log Y) =
      actualDampedXiSquareWindowSeven Y - Real.log (Y / 7) +
        actualDampedXiCompactSevenCorrection Y := by
  rw [actualDampedXiFinitePrimitive_eq_square_readout hY]
  unfold actualDampedXiCompactSevenCorrection shiftedActualChebyshev
  have hp : 0 < Y := by linarith
  have hy := Real.sq_sqrt hp.le
  have h7 := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 7)
  have hsy : Real.sqrt Y ≠ 0 := (Real.sqrt_pos.mpr hp).ne'
  have hs7 : Real.sqrt (7 : ℝ) ≠ 0 := (Real.sqrt_pos.mpr (by norm_num)).ne'
  field_simp
  ring_nf
  simp only [hy, h7]
  ring

/-- A genuine uniform arithmetic bound keeps the logarithmic main and all signed heads together. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant0dacd0500f191d27f17442d38a056fd50fc6bd507347186d4dd06eef3495279a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant0dacd0500f191d27f17442d38a056fd50fc6bd507347186d4dd06eef3495279a.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a67abef480bb544754be6f176ef59e9b386c496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
