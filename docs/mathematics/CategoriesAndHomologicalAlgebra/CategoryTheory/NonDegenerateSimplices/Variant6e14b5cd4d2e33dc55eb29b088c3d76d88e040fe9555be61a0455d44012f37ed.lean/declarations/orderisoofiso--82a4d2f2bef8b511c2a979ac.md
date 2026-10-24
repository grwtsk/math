# orderIsoOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4e1fe81920256f192ff104e86fc8c6fa7047f9a71dca0e155c6bbaa19191e7c",
  "kind": "def",
  "lexical_name": "orderIsoOfIso",
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
  "slug": "orderisoofiso--82a4d2f2bef8b511c2a979ac",
  "source": {
    "blob": "8756644bad68db97d62fb24eeb363bef56e1254c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 193,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonDegenerateSimplices/Variant6e14b5cd4d2e33dc55eb29b088c3d76d88e040fe9555be61a0455d44012f37ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82a4d2f2bef8b511c2a979ac11f74004440a8bf4f4692d96156e775df7da9701",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonDegenerateSimplices/Variant6e14b5cd4d2e33dc55eb29b088c3d76d88e040fe9555be61a0455d44012f37ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4e1fe81920256f192ff104e86fc8c6fa7047f9a71dca0e155c6bbaa19191e7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orderIsoOfIso {Y : SSet.{u}} (e : X ≅ Y) : X.N ≃o Y.N where
  toFun x := N.mk (e.hom.app _ x.simplex)
    ((nonDegenerate_iff_of_isIso e.hom x.simplex).mpr x.nonDegenerate)
  invFun y := N.mk (e.inv.app _ y.simplex)
    ((nonDegenerate_iff_of_isIso e.inv y.simplex).mpr y.nonDegenerate)
  left_inv x := by simp [N.ext_iff, S.ext_iff']
  right_inv _ := by simp [N.ext_iff, S.ext_iff']
  map_rel_iff' {x y} := by
    dsimp
    simp only [le_iff, Subcomplex.ofSimplex_le_iff, Subcomplex.mem_ofSimplex_obj_iff]
    refine exists_congr (fun f ↦ ?_)
    dsimp at f ⊢
    rw [← NatTrans.naturality_apply e.hom f.op]
    exact (e.app _).toEquiv.apply_eq_iff_eq

end N

/-- The map which sends a non degenerate simplex of a simplicial set to
the subcomplex it generates is an order embedding. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonDegenerateSimplices/Variant6e14b5cd4d2e33dc55eb29b088c3d76d88e040fe9555be61a0455d44012f37ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonDegenerateSimplices/Variant6e14b5cd4d2e33dc55eb29b088c3d76d88e040fe9555be61a0455d44012f37ed.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8756644bad68db97d62fb24eeb363bef56e1254c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
