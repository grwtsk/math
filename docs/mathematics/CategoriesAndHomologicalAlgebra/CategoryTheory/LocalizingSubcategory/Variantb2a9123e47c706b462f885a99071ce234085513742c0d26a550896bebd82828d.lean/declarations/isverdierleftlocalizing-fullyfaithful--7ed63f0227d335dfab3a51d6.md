# IsVerdierLeftLocalizing.fullyFaithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1965d60c5c29f2a9b4942fb37a5140c496c940dd81463a8587820e104afc0e9e",
  "kind": "def",
  "lexical_name": "IsVerdierLeftLocalizing.fullyFaithful",
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
  "slug": "isverdierleftlocalizing-fullyfaithful--7ed63f0227d335dfab3a51d6",
  "source": {
    "blob": "626359baa1e11324946a20302994317d2befe4e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 332,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variantb2a9123e47c706b462f885a99071ce234085513742c0d26a550896bebd82828d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ed63f0227d335dfab3a51d65ec0fe31bbdedff8595cf0e56fad382d006d2069",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variantb2a9123e47c706b462f885a99071ce234085513742c0d26a550896bebd82828d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1965d60c5c29f2a9b4942fb37a5140c496c940dd81463a8587820e104afc0e9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def IsVerdierLeftLocalizing.fullyFaithful
    {L₁ : A.FullSubcategory ⥤ D₁} {L₂ : C ⥤ D₂} {F : D₁ ⥤ D₂}
    [L₁.IsLocalization (B.inverseImage A.ι).trW] [L₂.IsLocalization B.trW]
    (e : L₁ ⋙ F ≅ A.ι ⋙ L₂) :
    F.FullyFaithful :=
  Functor.FullyFaithful.ofIso (.ofFullyFaithful
    ((A.triangulatedLocalizerMorphism B).localizedFunctor L₁ L₂))
    (Localization.liftNatIso L₁ (B.inverseImage A.ι).trW
      ((A.triangulatedLocalizerMorphism B).functor ⋙ L₂) (L₁ ⋙ F) _ _ e.symm)

/-- If `A` is a right `B`-localizing triangulated subcategory in the sense of Verdier,
then the induced functor between the localizations with respect to `(B.inverseImage A.ι).trW`
and `B.trW` is fully faithful. -/
@[no_expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variantb2a9123e47c706b462f885a99071ce234085513742c0d26a550896bebd82828d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variantb2a9123e47c706b462f885a99071ce234085513742c0d26a550896bebd82828d.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `626359baa1e11324946a20302994317d2befe4e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
