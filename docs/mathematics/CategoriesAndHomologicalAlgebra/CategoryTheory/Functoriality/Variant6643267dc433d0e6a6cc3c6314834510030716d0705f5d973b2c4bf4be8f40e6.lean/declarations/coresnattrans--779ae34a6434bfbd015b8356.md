# coresNatTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:107fd5f8de41a0a1c9c90f097e4cf05f78d275af3431698e6ee21c9ab4193dae",
  "kind": "def",
  "lexical_name": "coresNatTrans",
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
  "slug": "coresnattrans--779ae34a6434bfbd015b8356",
  "source": {
    "blob": "dbec9594e66168c2d1d03bae1a5226da75e2724c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 864,
    "line": 851,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant6643267dc433d0e6a6cc3c6314834510030716d0705f5d973b2c4bf4be8f40e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:779ae34a6434bfbd015b83560eb4175eb4197e58925ee87e76bc2be42f2eb913",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant6643267dc433d0e6a6cc3c6314834510030716d0705f5d973b2c4bf4be8f40e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:107fd5f8de41a0a1c9c90f097e4cf05f78d275af3431698e6ee21c9ab4193dae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 851–864.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coresNatTrans (n : ℕ) :
    resFunctor f ⋙ functor k G n ⟶ functor k H n where
  app X := map f (𝟙 _) n
  naturality {X Y} φ := by
    simp only [← cancel_epi (groupHomology.π _ n), Functor.comp_map,
      functor_map, HomologicalComplex.homologyπ_naturality_assoc,
      HomologicalComplex.homologyπ_naturality, ← HomologicalComplex.cyclesMap_comp_assoc,
      ← chainsMap_comp, Category.id_comp]
    rfl

set_option backward.isDefEq.respectTransparency false in
/-- Given a normal subgroup `S ≤ G`, this sends `A : Rep k G` to the `n`th "coinflation" map
`Hₙ(G, A) ⟶ Hₙ(G ⧸ S, A_S)` induced by the quotient maps `G →* G ⧸ S` and `A →ₗ A_S`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant6643267dc433d0e6a6cc3c6314834510030716d0705f5d973b2c4bf4be8f40e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant6643267dc433d0e6a6cc3c6314834510030716d0705f5d973b2c4bf4be8f40e6.lean#L851).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbec9594e66168c2d1d03bae1a5226da75e2724c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
