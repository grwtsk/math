# final_fst_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4d89c23-d9a5-ceb4-4f37-5c798fa8cda1",
  "kind": "lemma",
  "lexical_name": "final_fst_small",
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
  "slug": "final-fst-small--3e657cd063e8df265cf6d093",
  "source": {
    "blob": "0477b3466294fb4dd92edb20b35dac1bc4211a31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e657cd063e8df265cf6d0937b6d8dc342aa8f523b553ab3fb45a2df49da6c55",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4d89c23-d9a5-ceb4-4f37-5c798fa8cda1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma final_fst_small [R.Final] : (fst L R).Final := by
  rw  [Functor.final_iff_isIso_colimit_pre]
  intro G
  let i : colimit G ≅ colimit (fst L R ⋙ G) :=
    colimitIsoColimitGrothendieck L G ≪≫
    (Final.colimitIso (Grothendieck.pre (functor L) R) (grothendieckProj L ⋙ G)).symm ≪≫
    HasColimit.isoOfNatIso (Iso.refl _) ≪≫
    Final.colimitIso (grothendieckPrecompFunctorEquivalence L R).functor (fst L R ⋙ G)
  convert i.isIso_inv
  apply colimit.hom_ext
  intro ⟨a, b, f⟩
  simp only [colimit.ι_pre, comp_obj, fst_obj, grothendieckPrecompFunctorEquivalence_functor,
    Iso.trans_inv, Iso.symm_inv, Category.assoc, i]
  change _ = colimit.ι (fst L R ⋙ G)
    ((grothendieckPrecompFunctorToComma L R).obj ⟨b, CostructuredArrow.mk f⟩) ≫ _
  simp

end Small

section NonSmall

variable {A : Type u₁} [Category.{v₁} A]
variable {B : Type u₂} [Category.{v₂} B]
variable {T : Type u₃} [Category.{v₃} T]
variable (L : A ⥤ T) (R : B ⥤ T)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0477b3466294fb4dd92edb20b35dac1bc4211a31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
