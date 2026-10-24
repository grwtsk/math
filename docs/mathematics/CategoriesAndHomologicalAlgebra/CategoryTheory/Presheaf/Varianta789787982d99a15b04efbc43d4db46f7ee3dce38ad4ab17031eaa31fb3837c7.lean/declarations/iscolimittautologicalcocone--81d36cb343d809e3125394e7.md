# isColimitTautologicalCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a9359cda3bbe74fe7af7e385a934ce29bfe1da1b3157488cc4f06b4da01ce70",
  "kind": "def",
  "lexical_name": "isColimitTautologicalCocone",
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
  "slug": "iscolimittautologicalcocone--81d36cb343d809e3125394e7",
  "source": {
    "blob": "e00921909338d1c6864bec7b14cbf351b8752c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 704,
    "line": 685,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81d36cb343d809e3125394e72dd19b6331eaa040cf1152748fdb2e2893d0b7c5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a9359cda3bbe74fe7af7e385a934ce29bfe1da1b3157488cc4f06b4da01ce70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 685–704.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitTautologicalCocone (P : Cᵒᵖ ⥤ Type v₁) :
    IsColimit (tautologicalCocone P) :=
  let e : functorToRepresentables.{v₁} P ≅
    ((Functor.Elements.costructuredArrowYonedaEquivalence P).functor ⋙
      CostructuredArrow.proj yoneda P ⋙ yoneda) :=
    NatIso.ofComponents (fun e ↦ NatIso.ofComponents (fun X ↦ Equiv.ulift.toIso))
  (IsColimit.whiskerEquivalenceEquiv
    (Functor.Elements.costructuredArrowYonedaEquivalence P)).2
      ((IsColimit.precomposeHomEquiv e _).1 (colimitOfRepresentable.{v₁} P))

variable {I : Type v₁} [SmallCategory I] (F : I ⥤ C)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Given a functor `F : I ⥤ C`, a cocone `c` on `F ⋙ yoneda : I ⥤ Cᵒᵖ ⥤ Type v₁` induces a
    functor `I ⥤ CostructuredArrow yoneda c.pt` which maps `i : I` to the leg
    `yoneda.obj (F.obj i) ⟶ c.pt`. If `c` is a colimit cocone, then that functor is
    final.

    Proposition 2.6.3(ii) in [Kashiwara2006] -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean#L685).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e00921909338d1c6864bec7b14cbf351b8752c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
