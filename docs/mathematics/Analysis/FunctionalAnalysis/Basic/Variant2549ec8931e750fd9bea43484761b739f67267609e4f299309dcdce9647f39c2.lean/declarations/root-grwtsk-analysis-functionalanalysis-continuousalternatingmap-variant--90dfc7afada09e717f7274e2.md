# _root_.GRWTSK.Analysis.FunctionalAnalysis.ContinuousAlternatingMap.Variant00e64a1402a53f4cdc2e55c9f8e194b280007288d5c2550fb04a76fb2d4a67c5.ContinuousLinearEquiv.continuousAlternatingMapCongrEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b5a21874cec112e8cbe173e4a56d4e614688238601989534677f1880797abdd",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Analysis.FunctionalAnalysis.ContinuousAlternatingMap.Variant00e64a1402a53f4cdc2e55c9f8e194b280007288d5c2550fb04a76fb2d4a67c5.ContinuousLinearEquiv.continuousAlternatingMapCongrEquiv",
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
  "slug": "root-grwtsk-analysis-functionalanalysis-continuousalternatingmap-variant--90dfc7afada09e717f7274e2",
  "source": {
    "blob": "507a5c1ebcb4220f2b4ee0721a4b55d6db3dcd0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 379,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant2549ec8931e750fd9bea43484761b739f67267609e4f299309dcdce9647f39c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90dfc7afada09e717f7274e2653a02f5a02b4d591d11ab4b009972857e78eeae",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant2549ec8931e750fd9bea43484761b739f67267609e4f299309dcdce9647f39c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b5a21874cec112e8cbe173e4a56d4e614688238601989534677f1880797abdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Analysis.FunctionalAnalysis.ContinuousAlternatingMap.Variant00e64a1402a53f4cdc2e55c9f8e194b280007288d5c2550fb04a76fb2d4a67c5.ContinuousLinearEquiv.continuousAlternatingMapCongrEquiv
    (e : M ≃L[R] M') (e' : N ≃L[R] N') : M [⋀^ι]→L[R] N ≃ M' [⋀^ι]→L[R] N' :=
  e.continuousAlternatingMapCongrLeftEquiv.trans e'.continuousAlternatingMapCongrRightEquiv

/-- `ContinuousAlternatingMap.pi` as an `Equiv`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant2549ec8931e750fd9bea43484761b739f67267609e4f299309dcdce9647f39c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant2549ec8931e750fd9bea43484761b739f67267609e4f299309dcdce9647f39c2.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `507a5c1ebcb4220f2b4ee0721a4b55d6db3dcd0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
