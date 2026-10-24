# isColimit_of_bijective_desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f10f98df20ff1a9e2fadd2bb73347c9bcec5a0450945f581534f87fd036a6d2",
  "kind": "def",
  "lexical_name": "isColimit_of_bijective_desc",
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
  "slug": "iscolimit-of-bijective-desc--74f33e51837a2d049a6a8470",
  "source": {
    "blob": "b8419b0fcecb4b9d729b8d1da4095e407969bfea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 216,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantb52d0f88dd3411b3c42b108a3ca8d3be3c4df8d78837b8eba872d6b9952de907.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74f33e51837a2d049a6a8470e0a45c480c9c8f37b0031f01ddb079cc7976e873",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantb52d0f88dd3411b3c42b108a3ca8d3be3c4df8d78837b8eba872d6b9952de907.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f10f98df20ff1a9e2fadd2bb73347c9bcec5a0450945f581534f87fd036a6d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimit_of_bijective_desc [DecidableEq J]
     (h : Function.Bijective (Quot.desc F c)) : IsColimit c where
  desc s := AddCommGrpCat.ofHom ((Quot.desc F s).comp (AddEquiv.ofBijective
    (Quot.desc F c) h).symm.toAddMonoidHom)
  fac s j := by
    ext x
    dsimp
    conv_lhs => erw [← Quot.ι_desc F c j x]
    rw [← AddEquiv.ofBijective_apply _ h, AddEquiv.symm_apply_apply]
    simp only [Quot.ι_desc, Functor.const_obj_obj]
  uniq s m hm := by
    ext x
    obtain ⟨x, rfl⟩ := h.2 x
    dsimp
    rw [← AddEquiv.ofBijective_apply _ h, AddEquiv.symm_apply_apply]
    suffices eq : m.hom.comp (AddEquiv.ofBijective (Quot.desc F c) h) = Quot.desc F s by
      rw [← eq]; rfl
    exact Quot.addMonoidHom_ext F (by simp [← hm])

set_option backward.defeqAttrib.useBackward true in
/-- (internal implementation) The colimit cocone of a functor `F`, implemented as a quotient of
`DFinsupp (fun j ↦ F.obj j)`, under the assumption that said quotient is small.
-/
@[simps pt ι_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantb52d0f88dd3411b3c42b108a3ca8d3be3c4df8d78837b8eba872d6b9952de907.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantb52d0f88dd3411b3c42b108a3ca8d3be3c4df8d78837b8eba872d6b9952de907.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8419b0fcecb4b9d729b8d1da4095e407969bfea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
