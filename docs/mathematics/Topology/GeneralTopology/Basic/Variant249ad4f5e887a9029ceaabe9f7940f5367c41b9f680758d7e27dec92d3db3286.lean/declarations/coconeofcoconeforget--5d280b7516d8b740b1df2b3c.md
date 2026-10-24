# coconeOfCoconeForget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2653d562b9ba022454af78dc26fbaa51e999c9e697447a857eb62aa40d42b459",
  "kind": "def",
  "lexical_name": "coconeOfCoconeForget",
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
  "slug": "coconeofcoconeforget--5d280b7516d8b740b1df2b3c",
  "source": {
    "blob": "3b8de13138d474a3e68e118dcede877e6a911258",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d280b7516d8b740b1df2b3c724b2a8f18b8e1a2d9b96c54385f2db2a53da980",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2653d562b9ba022454af78dc26fbaa51e999c9e697447a857eb62aa40d42b459`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coconeOfCoconeForget : Cocone F where
  pt := of (coconePtOfCoconeForget c)
  ι :=
    { app j := ofHom (ContinuousMap.mk (c.ι.app j) (by
        rw [continuous_iff_coinduced_le]
        exact le_iSup (fun j ↦ (F.obj j).str.coinduced (c.ι.app j)) j))
      naturality j j' φ := by
        ext
        apply congr_fun (c.ι.naturality φ) }

/-- Given a functor `F : J ⥤ TopCat` and a cocone `c : Cocone (F ⋙ forget)`
of the underlying cocone of types, the colimit of `F` is `c.pt` equipped
with the supremum of the coinduced topologies by the maps `c.ι.app j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b8de13138d474a3e68e118dcede877e6a911258` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
