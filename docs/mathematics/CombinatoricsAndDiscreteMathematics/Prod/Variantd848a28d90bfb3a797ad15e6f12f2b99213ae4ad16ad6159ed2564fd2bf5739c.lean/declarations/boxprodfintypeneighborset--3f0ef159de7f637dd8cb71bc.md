# boxProdFintypeNeighborSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0d01fa591699b61f61c2582b1d0a673befc151a0b5893499c15b061ae2c7df9",
  "kind": "instance",
  "lexical_name": "boxProdFintypeNeighborSet",
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
  "slug": "boxprodfintypeneighborset--3f0ef159de7f637dd8cb71bc",
  "source": {
    "blob": "c4dc2312460a47c6018df89c03c619e9a5a1b054",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 220,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variantd848a28d90bfb3a797ad15e6f12f2b99213ae4ad16ad6159ed2564fd2bf5739c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f0ef159de7f637dd8cb71bc6fb4fd7fbf4a067694dc6d02b0dc3b73e1fd4bde",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Prod/Variantd848a28d90bfb3a797ad15e6f12f2b99213ae4ad16ad6159ed2564fd2bf5739c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0d01fa591699b61f61c2582b1d0a673befc151a0b5893499c15b061ae2c7df9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance boxProdFintypeNeighborSet (x : α × β)
    [Fintype (G.neighborSet x.1)] [Fintype (H.neighborSet x.2)] :
    Fintype ((G □ H).neighborSet x) :=
  Fintype.ofEquiv
    ((G.neighborFinset x.1 ×ˢ {x.2}).disjUnion ({x.1} ×ˢ H.neighborFinset x.2) <|
        Finset.disjoint_product.mpr <| Or.inl <| neighborFinset_disjoint_singleton _ _)
    ((Equiv.refl _).subtypeEquiv fun y => by
      simp_rw [Finset.mem_disjUnion, Finset.mem_product, Finset.mem_singleton, mem_neighborFinset,
        mem_neighborSet, Equiv.refl_apply, boxProd_adj]
      simp only [eq_comm, and_comm])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Prod/Variantd848a28d90bfb3a797ad15e6f12f2b99213ae4ad16ad6159ed2564fd2bf5739c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variantd848a28d90bfb3a797ad15e6f12f2b99213ae4ad16ad6159ed2564fd2bf5739c.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4dc2312460a47c6018df89c03c619e9a5a1b054` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
