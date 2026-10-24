# samplingAlpha1_abs_le_eight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c8efcfd-cc09-6fdf-fed2-ab0eaee0bcab",
  "kind": "theorem",
  "lexical_name": "samplingAlpha1_abs_le_eight",
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
  "slug": "samplingalpha1-abs-le-eight--3b9974f189129f3c38e3d47a",
  "source": {
    "blob": "6d58330dc2b70bf58f0b4fa32b0e9417cb4596b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D684e2b89207264c0ee40e1c212c4bb3b85241c1dc7ae43d6e9b42321f2a861aSourceWholePlain/Variant3f39afdc4cb7d61c281549e2dea2d8c70d6dd2e783189dc4f7c92fa0681a71ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b9974f189129f3c38e3d47a668680cde4bbe9d09d5845921232fb27fe60b18d",
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

Occurrence: `result:9c8efcfd-cc09-6fdf-fed2-ab0eaee0bcab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem samplingAlpha1_abs_le_eight : |samplingAlpha1| ≤ (8 : ℝ) := by
  have h0 := signedCoefficientMoment_abs_le_factorial 0
  have h1 := signedCoefficientMoment_abs_le_factorial 1
  norm_num at h0 h1
  unfold samplingAlpha1
  calc
    |signedCoefficientMoment 0 - signedCoefficientMoment 1 / 2| ≤
        |signedCoefficientMoment 0| + |signedCoefficientMoment 1 / 2| := abs_sub _ _
    _ = |signedCoefficientMoment 0| + |signedCoefficientMoment 1| / 2 := by
      rw [abs_div]
      norm_num
    _ ≤ 8 := by linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D684e2b89207264c0ee40e1c212c4bb3b85241c1dc7ae43d6e9b42321f2a861aSourceWholePlain/Variant3f39afdc4cb7d61c281549e2dea2d8c70d6dd2e783189dc4f7c92fa0681a71ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D684e2b89207264c0ee40e1c212c4bb3b85241c1dc7ae43d6e9b42321f2a861aSourceWholePlain/Variant3f39afdc4cb7d61c281549e2dea2d8c70d6dd2e783189dc4f7c92fa0681a71ce.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d58330dc2b70bf58f0b4fa32b0e9417cb4596b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
