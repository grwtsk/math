# routeLoop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac4d1c784b8b69acfac1c6e655d02d24ce4ded4c23d575c7c7194a06ff256760",
  "kind": "def",
  "lexical_name": "routeLoop",
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
  "slug": "routeloop--14474cc5bc1bdfcddb529ed5",
  "source": {
    "blob": "1d441b21a98babcc33aaca2da9acad60a6efc430",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 383,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantf0e39fb4712463152b3ba073ed3873f4e36025d56c32c421074ec57e8e7906fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14474cc5bc1bdfcddb529ed5937861fc0cc8cc6560a79f41282844e14caea3d6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variantf0e39fb4712463152b3ba073ed3873f4e36025d56c32c421074ec57e8e7906fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac4d1c784b8b69acfac1c6e655d02d24ce4ded4c23d575c7c7194a06ff256760`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def routeLoop (contract : RoutingContract Host EdgeId) :
    Nat → RouteState Host EdgeId → RouteState Host EdgeId
  | 0, state => state
  | fuel + 1, state =>
      match state.queue with
      | [] => state
      | host :: remaining =>
          routeLoop contract fuel
            (processQueuedHost contract state host remaining)

@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variantf0e39fb4712463152b3ba073ed3873f4e36025d56c32c421074ec57e8e7906fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantf0e39fb4712463152b3ba073ed3873f4e36025d56c32c421074ec57e8e7906fa.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d441b21a98babcc33aaca2da9acad60a6efc430` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
