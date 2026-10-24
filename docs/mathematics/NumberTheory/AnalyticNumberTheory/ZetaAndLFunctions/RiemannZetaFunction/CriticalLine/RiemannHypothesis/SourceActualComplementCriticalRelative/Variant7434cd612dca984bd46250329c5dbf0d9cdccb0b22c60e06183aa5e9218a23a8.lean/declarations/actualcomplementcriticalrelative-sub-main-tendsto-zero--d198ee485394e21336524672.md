# actualComplementCriticalRelative_sub_main_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c0cbd23-83b8-8a74-efb1-77dd202e86bd",
  "kind": "theorem",
  "lexical_name": "actualComplementCriticalRelative_sub_main_tendsto_zero",
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
  "slug": "actualcomplementcriticalrelative-sub-main-tendsto-zero--d198ee485394e21336524672",
  "source": {
    "blob": "a80102e7f45f73d5c3c37c920ff721e5fa22b7e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 155,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualComplementCriticalRelative/Variant7434cd612dca984bd46250329c5dbf0d9cdccb0b22c60e06183aa5e9218a23a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d198ee485394e2133652467281b37decef108d64706146f07fe63c590a9ad36d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualComplementCriticalRelative/Variant7434cd612dca984bd46250329c5dbf0d9cdccb0b22c60e06183aa5e9218a23a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c0cbd23-83b8-8a74-efb1-77dd202e86bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualComplementCriticalRelative_sub_main_tendsto_zero :
    Tendsto (fun A : ℝ => actualComplementCriticalRelativePairing A -
      actualComplementCriticalRelativeMain A) atTop (𝓝 0) := by
  have ht : Tendsto (fun A : ℝ => (Real.log A) ^ 2 / A) atTop (𝓝 0) := by
    simpa using Real.tendsto_pow_log_div_mul_add_atTop 1 0 2 one_ne_zero
  have hh := ht.const_mul (10 * (3 * Real.log 4 + 11))
  simp only [mul_zero] at hh
  apply squeeze_zero_norm' ?_ hh
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  simpa only [Real.norm_eq_abs, mul_div_assoc] using
    actualComplementCriticalRelative_sub_main_abs_le hA

end FormalResearch.RiemannHypothesis.SourceActualComplementCriticalRelative
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualComplementCriticalRelative/Variant7434cd612dca984bd46250329c5dbf0d9cdccb0b22c60e06183aa5e9218a23a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualComplementCriticalRelative/Variant7434cd612dca984bd46250329c5dbf0d9cdccb0b22c60e06183aa5e9218a23a8.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a80102e7f45f73d5c3c37c920ff721e5fa22b7e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
