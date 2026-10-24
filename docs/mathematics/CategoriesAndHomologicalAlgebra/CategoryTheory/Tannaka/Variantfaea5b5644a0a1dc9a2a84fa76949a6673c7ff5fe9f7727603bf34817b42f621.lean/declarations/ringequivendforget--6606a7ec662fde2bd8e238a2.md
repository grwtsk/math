# ringEquivEndForget₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:701b2fc60104dec2e302e940775ccb1c41b95b4b6ead10176494465f2674b426",
  "kind": "def",
  "lexical_name": "ringEquivEndForget₂",
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
  "slug": "ringequivendforget--6606a7ec662fde2bd8e238a2",
  "source": {
    "blob": "c7ff744db0088b6bd9306e734a612d2e1a87919d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 25,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Tannaka/Variantfaea5b5644a0a1dc9a2a84fa76949a6673c7ff5fe9f7727603bf34817b42f621.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6606a7ec662fde2bd8e238a246af5df450bb0f0e77c2635b7cb411ce48cf287f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Tannaka/Variantfaea5b5644a0a1dc9a2a84fa76949a6673c7ff5fe9f7727603bf34817b42f621.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:701b2fc60104dec2e302e940775ccb1c41b95b4b6ead10176494465f2674b426`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ringEquivEndForget₂ (R : Type u) [Ring R] :
    R ≃+* End (AdditiveFunctor.of (forget₂ (ModuleCat.{u} R) AddCommGrp.{u})) where
  toFun r :=
    { app := fun M =>
        @AddCommGrp.ofHom M.carrier M.carrier _ _ (DistribMulAction.toAddMonoidHom M r) }
  invFun φ := φ.app (ModuleCat.of R R) (1 : R)
  left_inv := by
    intro r
    simp
  right_inv := by
    intro φ
    apply NatTrans.ext
    ext M (x : M)
    have w := CategoryTheory.congr_fun
      (φ.naturality (ModuleCat.ofHom (LinearMap.toSpanSingleton R M x))) (1 : R)
    exact w.symm.trans (congr_arg (φ.app M) (one_smul R x))
  map_add' := by
    intros
    apply NatTrans.ext
    ext
    simp only [AdditiveFunctor.of_fst, ModuleCat.forget₂_obj, AddCommGrp.ofHom_apply,
      DistribMulAction.toAddMonoidHom_apply, add_smul, AddCommGrp.hom_ofHom]
    rfl
  map_mul' := by
    intros
    apply NatTrans.ext
    ext
    simp only [AdditiveFunctor.of_fst, ModuleCat.forget₂_obj, AddCommGrp.ofHom_apply,
      DistribMulAction.toAddMonoidHom_apply, mul_smul, AddCommGrp.hom_ofHom]
    rfl
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Tannaka/Variantfaea5b5644a0a1dc9a2a84fa76949a6673c7ff5fe9f7727603bf34817b42f621.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Tannaka/Variantfaea5b5644a0a1dc9a2a84fa76949a6673c7ff5fe9f7727603bf34817b42f621.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7ff744db0088b6bd9306e734a612d2e1a87919d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
