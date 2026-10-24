# instHasForgetToTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed818d396cead1a659d14e2019853dbe3e6e687acac41a9476071e407d54154c",
  "kind": "instance",
  "lexical_name": "instHasForgetToTop",
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
  "slug": "insthasforgettotop--2d2201bdd4ca57f5ef287417",
  "source": {
    "blob": "85dbc5707b2ff5cf6453d19345b7ca1d5b3259d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/AlexDisc/Variantcf7e51c868604be53df5a8e3fa6d13b51c6a9e3ec734672fe652ebda1031a4f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d2201bdd4ca57f5ef2874171efafdb6397f7c60b455d1f0df60a0b6d8ba912f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AlexDisc/Variantcf7e51c868604be53df5a8e3fa6d13b51c6a9e3ec734672fe652ebda1031a4f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed818d396cead1a659d14e2019853dbe3e6e687acac41a9476071e407d54154c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instHasForgetToTop : HasForget₂ AlexDisc TopCat :=
  inferInstanceAs <| HasForget₂ (InducedCategory _ toTopCat) _

-- TODO: generalize to `InducedCategory.forget₂_full`?
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AlexDisc/Variantcf7e51c868604be53df5a8e3fa6d13b51c6a9e3ec734672fe652ebda1031a4f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AlexDisc/Variantcf7e51c868604be53df5a8e3fa6d13b51c6a9e3ec734672fe652ebda1031a4f0.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85dbc5707b2ff5cf6453d19345b7ca1d5b3259d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
