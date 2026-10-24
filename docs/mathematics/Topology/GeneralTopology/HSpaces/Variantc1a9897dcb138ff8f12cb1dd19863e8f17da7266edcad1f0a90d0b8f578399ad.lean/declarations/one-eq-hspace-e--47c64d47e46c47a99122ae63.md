# one_eq_hSpace_e

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "046e6c5b2496644427a7efec61b490e632e8282b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1a9897dcb138ff8f12cb1dd19863e8f17da7266edcad1f0a90d0b8f578399ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afe1cf62-ada2-71cd-b400-41290f45736d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4c60589-a479-52ac-2ec2-8475454773cb",
  "kind": "theorem",
  "lexical_name": "one_eq_hSpace_e",
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
  "slug": "one-eq-hspace-e--47c64d47e46c47a99122ae63",
  "source": {
    "blob": "046e6c5b2496644427a7efec61b490e632e8282b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 134,
    "path": "GRWTSK/Topology/GeneralTopology/HSpaces/Variantc1a9897dcb138ff8f12cb1dd19863e8f17da7266edcad1f0a90d0b8f578399ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47c64d47e46c47a99122ae633eb468ab77f5f41c98ef745a510c9a98390b6598",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HSpaces/Variantc1a9897dcb138ff8f12cb1dd19863e8f17da7266edcad1f0a90d0b8f578399ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4c60589-a479-52ac-2ec2-8475454773cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_eq_hSpace_e {G : Type u} [TopologicalSpace G] [Group G] [IsTopologicalGroup G] :
    (1 : G) = HSpace.e :=
  rfl

/- In the following example we see that the H-space structure on the product of two topological
groups is definitionally equally to the product H-space-structure of the two groups. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HSpaces/Variantc1a9897dcb138ff8f12cb1dd19863e8f17da7266edcad1f0a90d0b8f578399ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HSpaces/Variantc1a9897dcb138ff8f12cb1dd19863e8f17da7266edcad1f0a90d0b8f578399ad.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `046e6c5b2496644427a7efec61b490e632e8282b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
