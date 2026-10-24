# ContinuousLinearMap.toWOTCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e02bbb0258ab856bbd4527110eb27462b8fb57472fc49419c546eda71881e56f",
  "kind": "def",
  "lexical_name": "ContinuousLinearMap.toWOTCLM",
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
  "slug": "continuouslinearmap-towotclm--bf790c925df0c2feacf3ac76",
  "source": {
    "blob": "e4bd693bab61ae686a5b6fcd17bea90aaf072a09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 301,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant90d331a49c5d80b768f73ac80c81bb4bcd9167679e450780d8d2d913e40a9d9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf790c925df0c2feacf3ac7657c9319ce409b4205cdc9c29d013904eb5280b98",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant90d331a49c5d80b768f73ac80c81bb4bcd9167679e450780d8d2d913e40a9d9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e02bbb0258ab856bbd4527110eb27462b8fb57472fc49419c546eda71881e56f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContinuousLinearMap.toWOTCLM : (E →L[𝕜] F) →L[𝕜] (E →WOT[𝕜] F) :=
  ⟨LinearEquiv.toLinearMap (ContinuousLinearMap.toWOT 𝕜 E F), ContinuousLinearMap.continuous_toWOT⟩

end toWOT_continuous

end ContinuousLinearMapWOT
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant90d331a49c5d80b768f73ac80c81bb4bcd9167679e450780d8d2d913e40a9d9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant90d331a49c5d80b768f73ac80c81bb4bcd9167679e450780d8d2d913e40a9d9e.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4bd693bab61ae686a5b6fcd17bea90aaf072a09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
