# actual_mertensResidual_eq_arch_re_sub_half_zero_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01283e93-93d7-ed8b-b7eb-d130f9f9aeea",
  "kind": "theorem",
  "lexical_name": "actual_mertensResidual_eq_arch_re_sub_half_zero_re",
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
  "slug": "actual-mertensresidual-eq-arch-re-sub-half-zero-re--666c86163536819ae02b8420",
  "source": {
    "blob": "a1f1b251432c3a68b9417a655b483ac4b9247e7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 126,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualFullZeroContourNative1/Variantbffcc8ea00e8722f947949c0ca29824008934c36ddebe4f477f531decd673f56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:666c86163536819ae02b8420de12cf095003b9c2abd55d95ebcfd5ebe2d8f88e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualFullZeroContourNative1/Variantbffcc8ea00e8722f947949c0ca29824008934c36ddebe4f477f531decd673f56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01283e93-93d7-ed8b-b7eb-d130f9f9aeea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_mertensResidual_eq_arch_re_sub_half_zero_re (A c : ℝ) (hA : 1 ≤ A)
    (hc : 1 < c) (hc2 : c ≤ 3 / 2) :
    EstimateMertensResidual.mertensResidual A =
      (actualArchimedeanLine A c).re - (actualFullZeroContribution A).re / 2 := by
  have h := congrArg Complex.re
    (actual_mertensResidual_eq_arch_sub_half_zero A c hA hc hc2)
  simpa using h

end
end FormalResearch.RiemannHypothesis.SourceActualFullZeroContour
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualFullZeroContourNative1/Variantbffcc8ea00e8722f947949c0ca29824008934c36ddebe4f477f531decd673f56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualFullZeroContourNative1/Variantbffcc8ea00e8722f947949c0ca29824008934c36ddebe4f477f531decd673f56.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1f1b251432c3a68b9417a655b483ac4b9247e7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
