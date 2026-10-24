# pullbackSheafificationCompatibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1bc54244aa770e273e206480c63e4898ea1ca7461f6a6cff20b63da602a3026",
  "kind": "def",
  "lexical_name": "pullbackSheafificationCompatibility",
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
  "slug": "pullbacksheafificationcompatibility--db6bf2c0554dc425336564fe",
  "source": {
    "blob": "90df3d8e1c30bd94d6bc6a41dd4ded8652b18a53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 372,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant909202c7578e53538a69761bc7a121d55a97dfbaf45055b2e65c319955f50b61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db6bf2c0554dc425336564fe5e7ce436e563db64d93772fb3c597e4d0c413a5b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant909202c7578e53538a69761bc7a121d55a97dfbaf45055b2e65c319955f50b61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1bc54244aa770e273e206480c63e4898ea1ca7461f6a6cff20b63da602a3026`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackSheafificationCompatibility
    {G : C ⥤ D} (Hp : CoverPreserving J K G)
    (Hl : CoverLifting J K G) (Hc : CompatiblePreserving K G) :
    (whiskeringLeft _ _ A).obj G.op ⋙ presheafToSheaf J A ≅
    presheafToSheaf K A ⋙ pullback A Hc Hp :=
  letI A1 : (whiskeringLeft _ _ A).obj G.op ⊣ _ := Ran.adjunction _ _
  letI A2 : presheafToSheaf J A ⊣ _ := sheafificationAdjunction _ _
  letI B1 : presheafToSheaf K A ⊣ _ := sheafificationAdjunction _ _
  letI B2 : pullback A Hc Hp ⊣ _ := pullbackCopullbackAdjunction _ _ Hl _
  letI A12 := A1.comp A2
  letI B12 := B1.comp B2
  A12.leftAdjointUniq B12

/- Implementation: This is primarily used to prove the lemma
`pullbackSheafificationCompatibility_hom_app_val`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant909202c7578e53538a69761bc7a121d55a97dfbaf45055b2e65c319955f50b61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant909202c7578e53538a69761bc7a121d55a97dfbaf45055b2e65c319955f50b61.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90df3d8e1c30bd94d6bc6a41dd4ded8652b18a53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
