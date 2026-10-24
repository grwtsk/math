# isLeftKanExtension_iff_postcomp₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33ab05d5-6a0a-6acd-666c-5231c91c1641",
  "kind": "lemma",
  "lexical_name": "isLeftKanExtension_iff_postcomp₁",
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
  "slug": "isleftkanextension-iff-postcomp--7902011e84b6e7ae0583091c",
  "source": {
    "blob": "a50fa1316f9dc53423892fe3334995da4c207a4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 371,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408f70ef44de01a78e59922d00d77188504612b6c51dbf7b53e008d9c767c902.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7902011e84b6e7ae0583091ca97c1318033719293b02055a6c8e44ce45a24d56",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408f70ef44de01a78e59922d00d77188504612b6c51dbf7b53e008d9c767c902.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33ab05d5-6a0a-6acd-666c-5231c91c1641`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLeftKanExtension_iff_postcomp₁ (α : F ⟶ L' ⋙ F') :
    F'.IsLeftKanExtension α ↔ (G ⋙ F').IsLeftKanExtension
      (α ≫ whiskerRight e.inv _ ≫ (Functor.associator _ _ _).hom) := by
  let eq : (LeftExtension.mk _ α).IsUniversal ≃
      (LeftExtension.mk _
        (α ≫ whiskerRight e.inv _ ≫ (Functor.associator _ _ _).hom)).IsUniversal :=
    (LeftExtension.isUniversalPostcomp₁Equiv G e F _).trans
    (IsInitial.equivOfIso (StructuredArrow.isoMk (Iso.refl _)))
  constructor
  · exact fun _ => ⟨⟨eq (isUniversalOfIsLeftKanExtension _ _)⟩⟩
  · exact fun _ => ⟨⟨eq.symm (isUniversalOfIsLeftKanExtension _ _)⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408f70ef44de01a78e59922d00d77188504612b6c51dbf7b53e008d9c767c902.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408f70ef44de01a78e59922d00d77188504612b6c51dbf7b53e008d9c767c902.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a50fa1316f9dc53423892fe3334995da4c207a4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
