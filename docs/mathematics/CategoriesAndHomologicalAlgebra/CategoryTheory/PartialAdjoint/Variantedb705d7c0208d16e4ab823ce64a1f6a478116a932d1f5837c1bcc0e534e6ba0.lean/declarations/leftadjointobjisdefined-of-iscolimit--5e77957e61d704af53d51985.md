# leftAdjointObjIsDefined_of_isColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71bc15a6-e264-eab4-489e-b125d4f15a3a",
  "kind": "lemma",
  "lexical_name": "leftAdjointObjIsDefined_of_isColimit",
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
  "slug": "leftadjointobjisdefined-of-iscolimit--5e77957e61d704af53d51985",
  "source": {
    "blob": "ffd9c0b46dad347b16756d52516aa8283fbbdf3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 178,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e77957e61d704af53d519850e2ec429362ffe5a412184c03fd27a9dd4a1f782",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71bc15a6-e264-eab4-489e-b125d4f15a3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leftAdjointObjIsDefined_of_isColimit {J : Type*} [Category J] {R : J ⥤ C} {c : Cocone R}
    (hc : IsColimit c) [HasColimitsOfShape J D]
    (h : ∀ (j : J), F.leftAdjointObjIsDefined (R.obj j)) :
    F.leftAdjointObjIsDefined c.pt :=
  (corepresentableByCompCoyonedaObjOfIsColimit
    (R := ObjectProperty.lift _ R h) hc (colimit.isColimit _)).isCorepresentable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffd9c0b46dad347b16756d52516aa8283fbbdf3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
