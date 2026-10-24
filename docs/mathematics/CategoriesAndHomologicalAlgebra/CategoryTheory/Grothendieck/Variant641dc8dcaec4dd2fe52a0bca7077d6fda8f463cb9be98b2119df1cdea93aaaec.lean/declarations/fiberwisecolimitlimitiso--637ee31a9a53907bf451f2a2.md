# fiberwiseColimitLimitIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df0afcf8bfa2314d8d08f3d0fe63ee376d6beb1aa4a47f42c5fe334e978a8443",
  "kind": "def",
  "lexical_name": "fiberwiseColimitLimitIso",
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
  "slug": "fiberwisecolimitlimitiso--637ee31a9a53907bf451f2a2",
  "source": {
    "blob": "fec81cd3117b3dd83d18e2b25b1dc520c19083ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 42,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant641dc8dcaec4dd2fe52a0bca7077d6fda8f463cb9be98b2119df1cdea93aaaec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:637ee31a9a53907bf451f2a207f53e7210d1c475d0ab7eb6936eed06669a894f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant641dc8dcaec4dd2fe52a0bca7077d6fda8f463cb9be98b2119df1cdea93aaaec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df0afcf8bfa2314d8d08f3d0fe63ee376d6beb1aa4a47f42c5fe334e978a8443`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fiberwiseColimitLimitIso (K : J ⥤ Grothendieck F ⥤ H)
    [∀ (c : C), HasColimitsOfShape (↑(F.obj c)) H] [HasLimitsOfShape J H]
    [∀ c, PreservesLimitsOfShape J (colim (J := F.obj c) (C := H))] :
    fiberwiseColimit (limit K) ≅ limit (K ⋙ fiberwiseColim F H) :=
  NatIso.ofComponents
    (fun c => HasColimit.isoOfNatIso
       (limitCompWhiskeringLeftIsoCompLimit K (Grothendieck.ι F c)).symm ≪≫
      preservesLimitIso colim _ ≪≫
      HasLimit.isoOfNatIso
        (associator _ _ _ ≪≫
        isoWhiskerLeft _ (fiberwiseColimCompEvaluationIso _).symm ≪≫
        (associator _ _ _).symm) ≪≫
      (limitObjIsoLimitCompEvaluation _ c).symm)
    fun {c₁ c₂} f => by
      simp only [fiberwiseColimit_obj, fiberwiseColimit_map, Iso.trans_hom, Iso.symm_hom,
        Category.assoc, limitObjIsoLimitCompEvaluation_inv_limit_map]
      apply colimit.hom_ext
      intro d
      simp only [← Category.assoc]
      congr 1
      apply limit.hom_ext
      intro e
      simp [← NatTrans.comp_app_assoc]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
variable (C) (F) in
/-- If `colim` on a category `C` preserves limits of shape `J` and if it does so for `colim` on
every `F.obj c` for a functor `F : C ⥤ Cat`, then `colim` on `Grothendieck F` also preserves limits
of shape `J`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant641dc8dcaec4dd2fe52a0bca7077d6fda8f463cb9be98b2119df1cdea93aaaec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant641dc8dcaec4dd2fe52a0bca7077d6fda8f463cb9be98b2119df1cdea93aaaec.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fec81cd3117b3dd83d18e2b25b1dc520c19083ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
