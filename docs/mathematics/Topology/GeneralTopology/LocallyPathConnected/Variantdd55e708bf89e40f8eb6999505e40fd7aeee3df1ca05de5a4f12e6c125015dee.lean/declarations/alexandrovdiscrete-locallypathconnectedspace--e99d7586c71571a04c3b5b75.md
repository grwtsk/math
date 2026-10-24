# AlexandrovDiscrete.locallyPathConnectedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74bcb8241ef33c00751866655912303793bbf2bb182366ea76b35c4022c23708",
  "kind": "instance",
  "lexical_name": "AlexandrovDiscrete.locallyPathConnectedSpace",
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
  "slug": "alexandrovdiscrete-locallypathconnectedspace--e99d7586c71571a04c3b5b75",
  "source": {
    "blob": "529d2b347e5e986184d9f08eb1ee17f4994a220e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 389,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e99d7586c71571a04c3b5b75e4838a218945820fcd5aa537dfa8d60566f2fc03",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74bcb8241ef33c00751866655912303793bbf2bb182366ea76b35c4022c23708`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance AlexandrovDiscrete.locallyPathConnectedSpace [AlexandrovDiscrete X] :
    LocallyPathConnectedSpace X := by
  apply LocallyPathConnectedSpace.of_bases nhds_basis_nhdsKer_singleton
  simp only [forall_const, IsPathConnected, mem_nhdsKer_singleton]
  intro x
  exists x, specializes_rfl
  intro y hy
  symm
  apply hy.joinedIn <;> rewrite [mem_nhdsKer_singleton] <;> [assumption; rfl]

@[deprecated (since := "2026-06-21")]
alias AlexandrovDiscrete.locPathConnectedSpace := AlexandrovDiscrete.locallyPathConnectedSpace

/-- If a space is locally path-connected, the topology of its path components is discrete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `529d2b347e5e986184d9f08eb1ee17f4994a220e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
