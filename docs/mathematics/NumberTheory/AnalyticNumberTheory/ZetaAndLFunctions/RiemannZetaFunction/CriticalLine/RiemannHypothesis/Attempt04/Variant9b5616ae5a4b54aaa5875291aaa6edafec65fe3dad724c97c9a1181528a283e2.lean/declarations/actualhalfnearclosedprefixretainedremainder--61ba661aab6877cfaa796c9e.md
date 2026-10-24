# actualHalfNearClosedPrefixRetainedRemainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5b307b61e818c5fa7e2f467e6a5e7a7c4855947b67abe99e38f7c501401c87b",
  "kind": "def",
  "lexical_name": "actualHalfNearClosedPrefixRetainedRemainder",
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
  "slug": "actualhalfnearclosedprefixretainedremainder--61ba661aab6877cfaa796c9e",
  "source": {
    "blob": "e82e5c7172f880d2b2e1d0f84a2d602f3ff66ce3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant9b5616ae5a4b54aaa5875291aaa6edafec65fe3dad724c97c9a1181528a283e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61ba661aab6877cfaa796c9ee5f8ec8665b0a5fcadb21adc3896ac36eff0dd54",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant9b5616ae5a4b54aaa5875291aaa6edafec65fe3dad724c97c9a1181528a283e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5b307b61e818c5fa7e2f467e6a5e7a7c4855947b67abe99e38f7c501401c87b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualHalfNearClosedPrefixRetainedRemainder (A : ℝ) : ℝ :=
  (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
    jointMangoldtTestProfile A t) -
  mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
    jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) +
  (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
    actualAdjointTimePrimitive A 0 t * actualPeriodicAdjustedColumnBoundary A t) -
  actualHalfNearClosedPrefixWork A + actualHalfCutPeriodMeanTrace A -
    centeredDeletedDiagonal A - independentMainTerm A

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant9b5616ae5a4b54aaa5875291aaa6edafec65fe3dad724c97c9a1181528a283e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant9b5616ae5a4b54aaa5875291aaa6edafec65fe3dad724c97c9a1181528a283e2.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e82e5c7172f880d2b2e1d0f84a2d602f3ff66ce3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
