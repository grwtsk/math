# equivOfHomotopyEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c8ba3765ed5a2a2db1693c617065377ec0ff1cfd8faf1feb1c606bef4e7589e",
  "kind": "def",
  "lexical_name": "equivOfHomotopyEquiv",
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
  "slug": "equivofhomotopyequiv--9175cda619f65cf4807b76c7",
  "source": {
    "blob": "49a237b4cede0ee0e7c24f97693e7805ede89786",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 243,
    "path": "GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9175cda619f65cf4807b76c71d96e4b03ee28fe3605778cca0ae49f10b0458bb",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c8ba3765ed5a2a2db1693c617065377ec0ff1cfd8faf1feb1c606bef4e7589e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivOfHomotopyEquiv (hequiv : X ≃ₕ Y) : πₓ X ≌ πₓ Y := by
  apply CategoryTheory.Equivalence.mk (πₘ hequiv.toFun : πₓ X ⥤ πₓ Y)
    (πₘ hequiv.invFun : πₓ Y ⥤ πₓ X) <;>
    simp only [Grpd.hom_to_functor, Grpd.id_to_functor]
  · convert (asIso (homotopicMapsNatIso hequiv.left_inv.some)).symm
    exacts [((π).map_id X).symm, ((π).map_comp _ _).symm]
  · convert asIso (homotopicMapsNatIso hequiv.right_inv.some)
    exacts [((π).map_comp _ _).symm, ((π).map_id Y).symm]
#align fundamental_groupoid_functor.equiv_of_homotopy_equiv FundamentalGroupoidFunctor.equivOfHomotopyEquiv

end FundamentalGroupoidFunctor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49a237b4cede0ee0e7c24f97693e7805ede89786` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
