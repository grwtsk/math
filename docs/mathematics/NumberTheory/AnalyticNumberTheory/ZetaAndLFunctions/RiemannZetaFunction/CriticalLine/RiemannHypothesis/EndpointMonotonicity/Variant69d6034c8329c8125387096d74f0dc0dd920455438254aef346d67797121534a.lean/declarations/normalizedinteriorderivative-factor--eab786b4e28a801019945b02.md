# normalizedInteriorDerivative_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88daa8b5b5e7a93bb619ea63c88701e6228cd89a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69d6034c8329c8125387096d74f0dc0dd920455438254aef346d67797121534a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d620ebd-02ba-9079-234b-978d22c3a59b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7219f0ed-78a6-2017-d17e-24f24430d2a1",
  "kind": "theorem",
  "lexical_name": "normalizedInteriorDerivative_factor",
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
  "slug": "normalizedinteriorderivative-factor--eab786b4e28a801019945b02",
  "source": {
    "blob": "88daa8b5b5e7a93bb619ea63c88701e6228cd89a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant69d6034c8329c8125387096d74f0dc0dd920455438254aef346d67797121534a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eab786b4e28a801019945b02e05534a72f377368b7a1f64f7e4b2cdcb1ebed80",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant69d6034c8329c8125387096d74f0dc0dd920455438254aef346d67797121534a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7219f0ed-78a6-2017-d17e-24f24430d2a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedInteriorDerivative_factor (A x : ℝ) (hA : 1 ≤ A) :
    normalizedInteriorDerivative A x =
      (x / A) * (1 - (x / A) ^ 2) /
        (A ^ 3 * Real.sqrt A * Real.sqrt (sourceNormalization A)) *
        (48 * (3 - 7 * (x / A) ^ 2) + 2 * A ^ 2 * (1 - (x / A) ^ 2) ^ 2) := by
  have ha : A ≠ 0 := by linarith
  have hs : Real.sqrt A ≠ 0 := (Real.sqrt_pos.mpr (by linarith)).ne'
  have hz : Real.sqrt (sourceNormalization A) ≠ 0 :=
    (Real.sqrt_pos.mpr (source_normalization_pos A hA)).ne'
  unfold normalizedInteriorDerivative thirdInterior firstInterior
  field_simp
  ring

/-- The unchanged normalized zero extension is nonnegative on its final three-quarter strip. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant69d6034c8329c8125387096d74f0dc0dd920455438254aef346d67797121534a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant69d6034c8329c8125387096d74f0dc0dd920455438254aef346d67797121534a.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88daa8b5b5e7a93bb619ea63c88701e6228cd89a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
