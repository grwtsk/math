# restrictedYonedaYoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a87557821b4763fe89d74df39b2090e3f4738745ee5c4c406810d84a2d7ae18b",
  "kind": "def",
  "lexical_name": "restrictedYonedaYoneda",
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
  "slug": "restrictedyonedayoneda--a931d572a8d90e690fefa7b7",
  "source": {
    "blob": "1067050962b3ed8a1c422a4d1641abcce571a338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 89,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a931d572a8d90e690fefa7b7bdcfb247cc5e721053310b6721a692a22bf01278",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a87557821b4763fe89d74df39b2090e3f4738745ee5c4c406810d84a2d7ae18b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictedYonedaYoneda : restrictedYoneda (yoneda : C ⥤ Cᵒᵖ ⥤ Type u₁) ≅ 𝟭 _ :=
  NatIso.ofComponents fun P =>
    NatIso.ofComponents (fun X => yonedaSectionsSmall X.unop _) @ fun X Y f =>
      funext fun x => by
        dsimp
        have : x.app X (CategoryStruct.id (Opposite.unop X)) =
            (x.app X (𝟙 (Opposite.unop X)))
              := by rfl
        rw [this]
        rw [← FunctorToTypes.naturality _ _ x f (𝟙 _)]
        simp only [id_comp, Functor.op_obj, Opposite.unop_op, yoneda_obj_map, comp_id]
#align category_theory.colimit_adj.restricted_yoneda_yoneda CategoryTheory.ColimitAdj.restrictedYonedaYoneda

/-- (Implementation). The equivalence of homsets which helps construct the left adjoint to
`colimitAdj.restrictedYoneda`.
It is shown in `restrictYonedaHomEquivNatural` that this is a natural bijection.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1067050962b3ed8a1c422a4d1641abcce571a338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
