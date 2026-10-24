# IsFiberBundle.isCoveringMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:238c2ea5-d281-98d6-5bf0-3964e4b87e56",
  "kind": "theorem",
  "lexical_name": "IsFiberBundle.isCoveringMap",
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
  "slug": "isfiberbundle-iscoveringmap--1447a4d09aebc4894dd6845e",
  "source": {
    "blob": "ce70434e51bc2dfcff2ec3684b9c478fae34d595",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 203,
    "path": "GRWTSK/Topology/GeneralTopology/Covering/Variantccfa8a6bdd0b99b9aee100954b8ba829c522d227e0a4f50465d5b39c6d907c54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1447a4d09aebc4894dd6845e012c181a6cf6682604b31f847fa8686b12b714f6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Covering/Variantccfa8a6bdd0b99b9aee100954b8ba829c522d227e0a4f50465d5b39c6d907c54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:238c2ea5-d281-98d6-5bf0-3964e4b87e56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsFiberBundle.isCoveringMap {F : Type*} [TopologicalSpace F] [DiscreteTopology F]
    (hf : ∀ x : X, ∃ e : Trivialization F f, x ∈ e.baseSet) : IsCoveringMap f :=
  IsCoveringMap.mk f (fun _ => F) (fun x => Classical.choose (hf x)) fun x =>
    Classical.choose_spec (hf x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Covering/Variantccfa8a6bdd0b99b9aee100954b8ba829c522d227e0a4f50465d5b39c6d907c54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Covering/Variantccfa8a6bdd0b99b9aee100954b8ba829c522d227e0a4f50465d5b39c6d907c54.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce70434e51bc2dfcff2ec3684b9c478fae34d595` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
