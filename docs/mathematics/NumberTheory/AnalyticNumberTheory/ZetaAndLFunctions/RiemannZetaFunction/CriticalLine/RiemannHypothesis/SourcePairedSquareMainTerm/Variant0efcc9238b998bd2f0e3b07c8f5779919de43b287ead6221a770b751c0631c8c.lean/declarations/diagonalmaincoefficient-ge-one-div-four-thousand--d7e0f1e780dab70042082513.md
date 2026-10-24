# diagonalMainCoefficient_ge_one_div_four_thousand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45f099da-7ecc-4ee2-23a4-3e86740e370b",
  "kind": "theorem",
  "lexical_name": "diagonalMainCoefficient_ge_one_div_four_thousand",
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
  "slug": "diagonalmaincoefficient-ge-one-div-four-thousand--d7e0f1e780dab70042082513",
  "source": {
    "blob": "d88bf51c3a864cfbdff1a5c7dd36c0c20a950382",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareMainTerm/Variant0efcc9238b998bd2f0e3b07c8f5779919de43b287ead6221a770b751c0631c8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7e0f1e780dab7004208251354d3d5097b85c064524222da6d4b056993e0e436",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareMainTerm/Variant0efcc9238b998bd2f0e3b07c8f5779919de43b287ead6221a770b751c0631c8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45f099da-7ecc-4ee2-23a4-3e86740e370b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonalMainCoefficient_ge_one_div_four_thousand {A : ℝ} (hA : 1 ≤ A) :
    (1 / 4000 : ℝ) ≤ diagonalMainCoefficient A := by
  have hn := source_normalization_pos A hA
  have hu := sourceNormalization_le_forty_one hA
  unfold diagonalMainCoefficient
  apply (le_div_iff₀ (by positivity : 0 < 99225 * sourceNormalization A)).mpr
  linarith

/-- Hostile actual-source fixture: omitting the signed square readout as O(1) is false. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareMainTerm/Variant0efcc9238b998bd2f0e3b07c8f5779919de43b287ead6221a770b751c0631c8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareMainTerm/Variant0efcc9238b998bd2f0e3b07c8f5779919de43b287ead6221a770b751c0631c8c.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d88bf51c3a864cfbdff1a5c7dd36c0c20a950382` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
