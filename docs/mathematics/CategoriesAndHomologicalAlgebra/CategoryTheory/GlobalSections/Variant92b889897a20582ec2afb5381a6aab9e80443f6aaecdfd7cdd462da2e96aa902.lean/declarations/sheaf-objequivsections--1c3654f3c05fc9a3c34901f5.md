# Sheaf.ΓObjEquivSections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:600fc5ec0700c8e59894dae7e4c090107f8b31fa7cec0d8dedddfa842c4eabd9",
  "kind": "def",
  "lexical_name": "Sheaf.ΓObjEquivSections",
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
  "slug": "sheaf-objequivsections--1c3654f3c05fc9a3c34901f5",
  "source": {
    "blob": "74520eb1fede755ad7a31e1799c2c888e27dc0e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 185,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c3654f3c05fc9a3c34901f50833b2775e59cde25807838ba5e68864378468f4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:600fc5ec0700c8e59894dae7e4c090107f8b31fa7cec0d8dedddfa842c4eabd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Sheaf.ΓObjEquivSections [HasWeakSheafify J (Type w)]
    [HasGlobalSectionsFunctor J (Type w)] (F : Sheaf J (Type w)) :
      (Γ J (Type w)).obj F ≃ F.val.sections :=
  (Equiv.trans (by exact (Equiv.funUnique PUnit _).symm) ΓHomEquiv.symm).trans
    (F.val.sectionsEquivHom PUnit).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74520eb1fede755ad7a31e1799c2c888e27dc0e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
