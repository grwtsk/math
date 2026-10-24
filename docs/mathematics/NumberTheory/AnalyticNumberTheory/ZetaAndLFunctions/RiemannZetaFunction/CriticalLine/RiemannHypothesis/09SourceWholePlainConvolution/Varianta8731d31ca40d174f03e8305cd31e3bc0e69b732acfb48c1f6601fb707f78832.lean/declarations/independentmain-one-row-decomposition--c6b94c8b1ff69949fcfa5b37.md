# independentMain_one_row_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2eb2c6e-cbc3-d36f-74d3-b8c7c2a106f7",
  "kind": "theorem",
  "lexical_name": "independentMain_one_row_decomposition",
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
  "slug": "independentmain-one-row-decomposition--c6b94c8b1ff69949fcfa5b37",
  "source": {
    "blob": "12889d37ea4b06b5be600baa3d49d55543f24065",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 192,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/09SourceWholePlainConvolution/Varianta8731d31ca40d174f03e8305cd31e3bc0e69b732acfb48c1f6601fb707f78832.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6b94c8b1ff69949fcfa5b37f5114eea54b5c6d2ee0c4a44ad425762032a1cbc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/09SourceWholePlainConvolution/Varianta8731d31ca40d174f03e8305cd31e3bc0e69b732acfb48c1f6601fb707f78832.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2eb2c6e-cbc3-d36f-74d3-b8c7c2a106f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem independentMain_one_row_decomposition (A : ℝ) (hA : 1 ≤ A) :
    mainTermAt A 1 (sourceKernelCutoff A) =
      completeMangoldtPlainRows A - mertensResidual A + cutoffOneDiagonal A +
        SourceDiagonalMainTerm.diagonalMainCoefficient A * A -
          sourceLogSamplingMainTerm A 1 := by
  rw [SourceCutoffOneLedger.mainTermAt_one_formula,
    plainOff_one_eq_rows_sub_residual_add_diagonal A hA]

end
end FormalResearch.RiemannHypothesis.SourceWholePlainConvolution
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/09SourceWholePlainConvolution/Varianta8731d31ca40d174f03e8305cd31e3bc0e69b732acfb48c1f6601fb707f78832.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/09SourceWholePlainConvolution/Varianta8731d31ca40d174f03e8305cd31e3bc0e69b732acfb48c1f6601fb707f78832.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12889d37ea4b06b5be600baa3d49d55543f24065` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
