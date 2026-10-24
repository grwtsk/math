# rotation_even_iff_sine_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86abe4b7-57eb-9e52-8b21-9c9b376a0031",
  "kind": "theorem",
  "lexical_name": "rotation_even_iff_sine_zero",
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
  "slug": "rotation-even-iff-sine-zero--a86c4abd999aa6edff028b4c",
  "source": {
    "blob": "e77e1c67b5b008298b60b9b6a87cc276f9e3c0a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 159,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant6e83ff599eb76e8d7ec071115387a8d3121b57663ef16d810e6305acf0289d3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a86c4abd999aa6edff028b4c6fa133def0a3ab3af91143613761073f8fc665a7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant6e83ff599eb76e8d7ec071115387a8d3121b57663ef16d810e6305acf0289d3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86abe4b7-57eb-9e52-8b21-9c9b376a0031`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rotation_even_iff_sine_zero {q : ComplexL2}
    (hq : reflection q = q) (hq0 : q ≠ 0) (c s : ℝ) :
    reflection (rotationMap c s q) = rotationMap c s q ↔ s = 0 := by
  refine ⟨rotation_even_forces_sine_zero hq hq0 c s, ?_⟩
  intro hs
  simp only [hs, rotationMap_apply, Complex.ofReal_zero, zero_smul, add_zero]
  rw [map_smul, hq]

/-- A unit-circle rotation between even vectors can only return one of the two signs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant6e83ff599eb76e8d7ec071115387a8d3121b57663ef16d810e6305acf0289d3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant6e83ff599eb76e8d7ec071115387a8d3121b57663ef16d810e6305acf0289d3c.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e77e1c67b5b008298b60b9b6a87cc276f9e3c0a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
