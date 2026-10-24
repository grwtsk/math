# original_quadratic_lower_of_adaptive_head

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85072ced-3c38-ab4b-e318-887e99d9a543",
  "kind": "theorem",
  "lexical_name": "original_quadratic_lower_of_adaptive_head",
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
  "slug": "original-quadratic-lower-of-adaptive-head--75a96d3323a1ec57016e0277",
  "source": {
    "blob": "664629c802029a97bab2003a972dcb80686ac0a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 20,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/150SourceActualAdaptiveHeadConsumer/Variant73b21b89cde87212659e46f2553587886603bb62cafa01f955deb8f874fb5a11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75a96d3323a1ec57016e02778bff9a2fe78829c8f33c389a18740cbb1f085378",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/150SourceActualAdaptiveHeadConsumer/Variant73b21b89cde87212659e46f2553587886603bb62cafa01f955deb8f874fb5a11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85072ced-3c38-ab4b-e318-887e99d9a543`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_quadratic_lower_of_adaptive_head {A0 η Q D A : ℝ}
    (hA : 1 ≤ A)
    (htail : ‖actualZeroHeightTail A (actualAdaptiveSharpHeight η A)‖ ≤
      actualAdaptiveSharpTailCost A0 η Q)
    (hhead : -D ≤ (actualZeroHeightHead A (actualAdaptiveSharpHeight η A)).re) :
    -D - actualAdaptiveSharpTailCost A0 η Q ≤
      sourceQuadraticValue explicitSecondDerivative A := by
  have he := congrArg Complex.re
    (actualFullZeroContribution_eq_head_add_tail A (actualAdaptiveSharpHeight η A) hA)
  rw [actualFullZeroContribution_eq_original_sourceQuadraticValue A hA,
    Complex.ofReal_re, Complex.add_re] at he
  have ht := (Complex.abs_re_le_norm
    (actualZeroHeightTail A (actualAdaptiveSharpHeight η A))).trans htail
  have hl := (abs_le.mp ht).1
  linarith

/-- A supplied all-real actual signed head cap reaches the same original finite prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/150SourceActualAdaptiveHeadConsumer/Variant73b21b89cde87212659e46f2553587886603bb62cafa01f955deb8f874fb5a11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/150SourceActualAdaptiveHeadConsumer/Variant73b21b89cde87212659e46f2553587886603bb62cafa01f955deb8f874fb5a11.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `664629c802029a97bab2003a972dcb80686ac0a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
