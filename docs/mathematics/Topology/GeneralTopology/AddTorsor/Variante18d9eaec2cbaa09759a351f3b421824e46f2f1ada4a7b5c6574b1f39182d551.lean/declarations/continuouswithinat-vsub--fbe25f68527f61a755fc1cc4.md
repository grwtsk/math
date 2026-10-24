# ContinuousWithinAt.vsub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7b5852c-a578-60f5-9e37-78323378e695",
  "kind": "theorem",
  "lexical_name": "ContinuousWithinAt.vsub",
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
  "slug": "continuouswithinat-vsub--fbe25f68527f61a755fc1cc4",
  "source": {
    "blob": "f79fe2d947aaf520bc31f54fa6cf4e9d8f112fe9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 247,
    "path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbe25f68527f61a755fc1cc40f2945660480c9565215163a93bc9ea3f3658098",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7b5852c-a578-60f5-9e37-78323378e695`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem ContinuousWithinAt.vsub {f g : α → P} {x : α} {s : Set α}
    (hf : ContinuousWithinAt f s x) (hg : ContinuousWithinAt g s x) :
    ContinuousWithinAt (fun x ↦ f x -ᵥ g x) s x :=
  hf.vsub hg

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f79fe2d947aaf520bc31f54fa6cf4e9d8f112fe9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
