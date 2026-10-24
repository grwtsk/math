# _root_.GRWTSK.Topology.GeneralTopology.SubmonoidIsOpenUnits.Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.Submonoid.units_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acf5f6ae-7e58-ae20-8e63-ca3466b83fa6",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.SubmonoidIsOpenUnits.Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.Submonoid.units_isCompact",
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
  "slug": "root-grwtsk-topology-generaltopology-submonoidisopenunits-variantfbd26b7--8440b557b51c4a94bd0e1041",
  "source": {
    "blob": "242633a2b01600c8d531baef0f4e1a191297e81e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 141,
    "path": "GRWTSK/Topology/GeneralTopology/Units/Variantc65499133ab728471d5b9ef7d63e8ea4e2aaa8008ca6e098184e3f551e10c2e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8440b557b51c4a94bd0e104144587570f7d0a59ca12eb442d3827688538a83d0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Units/Variantc65499133ab728471d5b9ef7d63e8ea4e2aaa8008ca6e098184e3f551e10c2e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acf5f6ae-7e58-ae20-8e63-ca3466b83fa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.SubmonoidIsOpenUnits.Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.Submonoid.units_isCompact [T1Space α] [ContinuousMul α] {S : Submonoid α}
    (hS : IsCompact (S : Set α)) : IsCompact (S.units : Set αˣ) := by
  have : IsCompact (S ×ˢ S.op) := hS.prod (opHomeomorph.isCompact_preimage.mp hS)
  exact isClosedEmbedding_embedProduct.isCompact_preimage this

/-- The topological group isomorphism between the units of a product of two monoids, and the product
of the units of each monoid. -/
@[to_additive prodAddUnits
  /-- The topological group isomorphism between the additive units of a product of two
  additive monoids, and the product of the additive units of each additive monoid. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Units/Variantc65499133ab728471d5b9ef7d63e8ea4e2aaa8008ca6e098184e3f551e10c2e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Units/Variantc65499133ab728471d5b9ef7d63e8ea4e2aaa8008ca6e098184e3f551e10c2e7.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `242633a2b01600c8d531baef0f4e1a191297e81e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
