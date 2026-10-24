# Homeomorph.pointReflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54167469093b0e58d279f846183d102d166ee9f5a6a256c1583805194a457a67",
  "kind": "def",
  "lexical_name": "Homeomorph.pointReflection",
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
  "slug": "homeomorph-pointreflection--1c1d4e0b9f292807654adf7e",
  "source": {
    "blob": "9bc59cc00ceb4c555ed8a84da9019d5204c7d272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 133,
    "path": "GRWTSK/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c1d4e0b9f292807654adf7e67e4de0d3ecbb24dab4680f8cebbe667042872bd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54167469093b0e58d279f846183d102d166ee9f5a6a256c1583805194a457a67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Homeomorph.pointReflection {V P : Type*} [AddGroup V] [TopologicalSpace V] [AddTorsor V P]
    [TopologicalSpace P] [IsTopologicalAddTorsor P] (p : P) : P ≃ₜ P :=
  (Homeomorph.constVSub p).trans (Homeomorph.vaddConst p)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bc59cc00ceb4c555ed8a84da9019d5204c7d272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
