# map₁_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbec9594e66168c2d1d03bae1a5226da75e2724c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 392,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6643267dc433d0e6a6cc3c6314834510030716d0705f5d973b2c4bf4be8f40e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed1f734a-5beb-c19e-2e5c-57da38dafe02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56a4bdb6-5912-8bbc-801f-0bfa9733c4ef",
  "kind": "lemma",
  "lexical_name": "map₁_one",
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
  "slug": "map-one--9c8d78bb5ea3dbb56fcdc48b",
  "source": {
    "blob": "dbec9594e66168c2d1d03bae1a5226da75e2724c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 392,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant6643267dc433d0e6a6cc3c6314834510030716d0705f5d973b2c4bf4be8f40e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c8d78bb5ea3dbb56fcdc48b9201e70721ea0599b7bdb974646df143554d4fc5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant6643267dc433d0e6a6cc3c6314834510030716d0705f5d973b2c4bf4be8f40e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56a4bdb6-5912-8bbc-801f-0bfa9733c4ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map₁_one (φ : A ⟶ res (1 : G →* H) B) :
    map (1 : G →* H) φ 1 = 0 := by
  simp only [← cancel_epi (H1π A), H1π_comp_map, Limits.comp_zero]
  ext x
  rw [ModuleCat.hom_comp]
  refine (H1π_eq_zero_iff _).2 ?_
  simpa [coe_mapCycles₁ _ φ x, mapDomain, map_finsuppSum] using
    (boundaries₁ B).finsuppSum_mem k x.1 _ fun _ _ => single_one_mem_boundaries₁ (A := B) _

section CoresCoinf

/-!
### Exactness of the corestriction-coinflation sequence in degree 1

Given a group homomorphism `f : G →* H`, the `n`th corestriction map is the map
`Hₙ(G, Res(f)(A)) ⟶ Hₙ(H, A)` induced by `f` and the identity map on `Res(f)(A)`. Similarly, given
a normal subgroup `S ≤ G`, we define the `n`th coinflation map `Hₙ(G, A) ⟶ Hₙ(G ⧸ S, A_S)` as the
map induced by the quotient maps `G →* G ⧸ S` and `A →ₗ A_S`.

In particular, for `S ≤ G` normal and `A : Rep k G`, the corestriction map
`Hₙ(S, Res(ι)(A)) ⟶ Hₙ(G, A)` and the coinflation map `Hₙ(G, A) ⟶ Hₙ(G ⧸ S, A_S)` form a short
complex, where `ι : S →* G` is the natural inclusion. In this section we define this short complex
for degree 1, `groupHomology.H1CoresCoinf A S`, and prove it is exact.

We do this first when `A` is `S`-trivial, and then extend to the general case.

-/

variable (A) (S : Subgroup G) [S.Normal]

section OfTrivial

variable [IsTrivial (A.ρ.comp S.subtype)]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant6643267dc433d0e6a6cc3c6314834510030716d0705f5d973b2c4bf4be8f40e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant6643267dc433d0e6a6cc3c6314834510030716d0705f5d973b2c4bf4be8f40e6.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbec9594e66168c2d1d03bae1a5226da75e2724c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
