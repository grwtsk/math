# Homeomorph.coe_pointReflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37382116-8839-9ef8-d671-c0a7da89fe58",
  "kind": "lemma",
  "lexical_name": "Homeomorph.coe_pointReflection",
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
  "slug": "homeomorph-coe-pointreflection--7072caa9d14ce6ad0b3c3194",
  "source": {
    "blob": "9bc59cc00ceb4c555ed8a84da9019d5204c7d272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7072caa9d14ce6ad0b3c3194aaaa6f3928abbd7d772328609b1ecc3e1431326d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37382116-8839-9ef8-d671-c0a7da89fe58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Homeomorph.coe_pointReflection {V P : Type*} [AddGroup V] [TopologicalSpace V] [AddTorsor V P]
    [TopologicalSpace P] [IsTopologicalAddTorsor P] (p : P) :
    (Homeomorph.pointReflection p : P → P) = Equiv.pointReflection p := rfl

end Torsor

section Group

variable {G : Type*} [Group G] [TopologicalSpace G] [IsTopologicalGroup G]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bc59cc00ceb4c555ed8a84da9019d5204c7d272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
