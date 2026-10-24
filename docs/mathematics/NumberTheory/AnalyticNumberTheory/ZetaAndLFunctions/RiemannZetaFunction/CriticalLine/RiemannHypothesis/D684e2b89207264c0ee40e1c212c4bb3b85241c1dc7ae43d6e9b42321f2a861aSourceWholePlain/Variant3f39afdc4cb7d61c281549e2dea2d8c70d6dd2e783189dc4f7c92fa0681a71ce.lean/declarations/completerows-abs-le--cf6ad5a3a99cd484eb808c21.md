# completeRows_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17127880-acf1-90c7-e353-86e53e1a6990",
  "kind": "theorem",
  "lexical_name": "completeRows_abs_le",
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
  "slug": "completerows-abs-le--cf6ad5a3a99cd484eb808c21",
  "source": {
    "blob": "6d58330dc2b70bf58f0b4fa32b0e9417cb4596b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 124,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D684e2b89207264c0ee40e1c212c4bb3b85241c1dc7ae43d6e9b42321f2a861aSourceWholePlain/Variant3f39afdc4cb7d61c281549e2dea2d8c70d6dd2e783189dc4f7c92fa0681a71ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf6ad5a3a99cd484eb808c213a13fadb24ea5a5c2dd238b781a82a2e3674321a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D684e2b89207264c0ee40e1c212c4bb3b85241c1dc7ae43d6e9b42321f2a861aSourceWholePlain/Variant3f39afdc4cb7d61c281549e2dea2d8c70d6dd2e783189dc4f7c92fa0681a71ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17127880-acf1-90c7-e353-86e53e1a6990`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeRows_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |completeMangoldtPlainRows A| ≤ 8 + 96 * (162826 / 7623 : ℝ) := by
  have hsq : 1 ≤ A ^ 2 := by nlinarith
  have hdiv : 96 * (162826 / 7623 : ℝ) / A ^ 2 ≤ 96 * (162826 / 7623 : ℝ) :=
    div_le_self (by norm_num) hsq
  calc
    |completeMangoldtPlainRows A| =
        |(completeMangoldtPlainRows A - samplingAlpha1) + samplingAlpha1| := by
      congr 1
      ring
    _ ≤ |completeMangoldtPlainRows A - samplingAlpha1| + |samplingAlpha1| :=
      abs_add_le _ _
    _ ≤ 8 + 96 * (162826 / 7623 : ℝ) := by
      linarith [completeRows_sub_alpha1_abs_le A hA, samplingAlpha1_abs_le_eight]

/-- Both strict axes remove the unit column and retain the original raw deleted diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D684e2b89207264c0ee40e1c212c4bb3b85241c1dc7ae43d6e9b42321f2a861aSourceWholePlain/Variant3f39afdc4cb7d61c281549e2dea2d8c70d6dd2e783189dc4f7c92fa0681a71ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D684e2b89207264c0ee40e1c212c4bb3b85241c1dc7ae43d6e9b42321f2a861aSourceWholePlain/Variant3f39afdc4cb7d61c281549e2dea2d8c70d6dd2e783189dc4f7c92fa0681a71ce.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d58330dc2b70bf58f0b4fa32b0e9417cb4596b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
