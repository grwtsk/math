# lowerSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c01da31fdef2f7e7deac89d88b355fa61a6554756ace482063cca89064c94b67",
  "kind": "def",
  "lexical_name": "lowerSet",
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
  "slug": "lowerset--7a6382acf2a9b3e9ae3a92ca",
  "source": {
    "blob": "7d142e1e0435a6d4c281e8f535918cfcaf5e8993",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/UpperLowerSetTopology/Variante543f10f99f08e931f13ea256dada5c151f18182e9dffcdb98facc0dc7431186.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a6382acf2a9b3e9ae3a92ca455156c3c8a7a702f05d1c066ee043fe94ce8928",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UpperLowerSetTopology/Variante543f10f99f08e931f13ea256dada5c151f18182e9dffcdb98facc0dc7431186.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c01da31fdef2f7e7deac89d88b355fa61a6554756ace482063cca89064c94b67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lowerSet (α : Type*) [Preorder α] : TopologicalSpace α where
  IsOpen := IsLowerSet
  isOpen_univ := isLowerSet_univ
  isOpen_inter _ _ := IsLowerSet.inter
  isOpen_sUnion _ := isLowerSet_sUnion

/-- Type synonym for a preorder equipped with the upper set topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UpperLowerSetTopology/Variante543f10f99f08e931f13ea256dada5c151f18182e9dffcdb98facc0dc7431186.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UpperLowerSetTopology/Variante543f10f99f08e931f13ea256dada5c151f18182e9dffcdb98facc0dc7431186.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d142e1e0435a6d4c281e8f535918cfcaf5e8993` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
