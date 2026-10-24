# iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48283cafd1e25c93f4a366b066dc957dd820e08eb415cb07c4682fe99f7da2cc",
  "kind": "def",
  "lexical_name": "iso",
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
  "slug": "iso--eca565aefa49d4a8bb7a269f",
  "source": {
    "blob": "24dbb67fccbb30106a54f8a1a0ed13526fa0c618",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 103,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eca565aefa49d4a8bb7a269f6b14a33540a70124c1ca22af316082cf4a9c4082",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48283cafd1e25c93f4a366b066dc957dd820e08eb415cb07c4682fe99f7da2cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def iso [IsFiltered (CostructuredArrow yoneda A)] :
    A.obj (limit K) ≅ limit (K ⋙ A) := calc
  A.obj (limit K) ≅ (colimit (CostructuredArrow.proj yoneda A ⋙ yoneda)).obj (limit K) :=
      (IsColimit.coconePointUniqueUpToIso
        (Presheaf.isColimitTautologicalCocone A) (colimit.isColimit _)).app _
  _ ≅ colimit (((CostructuredArrow.proj yoneda A) ⋙ yoneda) ⋙ (evaluation _ _).obj (limit K)) :=
      (colimitObjIsoColimitCompEvaluation _ _)
  _ ≅ colimit ((CostructuredArrow.proj yoneda A) ⋙ yoneda ⋙ (evaluation _ _).obj (limit K)) :=
      HasColimit.isoOfNatIso (Functor.associator _ _ _)
  _ ≅ colimit
      ((coyoneda ⋙ (whiskeringLeft _ _ _).obj (CostructuredArrow.proj yoneda A)).obj (limit K)) :=
        HasColimit.isoOfNatIso (isoAux A K)
  _ ≅ colimit (limit (K ⋙ (coyoneda ⋙ (whiskeringLeft _ _ _).obj (CostructuredArrow.proj _ _)))) :=
        HasColimit.isoOfNatIso (preservesLimitIso _ _)
  _ ≅ colimit (limit (functorToInterchange A K)) :=
        HasColimit.isoOfNatIso (HasLimit.isoOfNatIso (functorToInterchangeIso A K).symm)
  _ ≅ limit (colimit (functorToInterchange A K).flip) := colimitLimitIso _
  _ ≅ limit (colimit
        ((CostructuredArrow.proj yoneda A ⋙ yoneda) ⋙ (whiskeringLeft _ _ _).obj K)) :=
          HasLimit.isoOfNatIso (HasColimit.isoOfNatIso (flipFunctorToInterchange A K))
  _ ≅ limit (K ⋙ colimit (CostructuredArrow.proj yoneda A ⋙ yoneda)) :=
        HasLimit.isoOfNatIso
          (colimitCompWhiskeringLeftIsoCompColimit (CostructuredArrow.proj yoneda A ⋙ yoneda) K)
  _ ≅ limit (K ⋙ A) := HasLimit.isoOfNatIso (isoWhiskerLeft _
        (IsColimit.coconePointUniqueUpToIso
          (colimit.isColimit _) (Presheaf.isColimitTautologicalCocone A)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24dbb67fccbb30106a54f8a1a0ed13526fa0c618` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
