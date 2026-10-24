# Sheaf.isConstant_iff_of_equivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dc4a1cc-1c07-e6b3-e365-52c3fc565bdc",
  "kind": "lemma",
  "lexical_name": "Sheaf.isConstant_iff_of_equivalence",
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
  "slug": "sheaf-isconstant-iff-of-equivalence--4b4acd833d89bb0647057e47",
  "source": {
    "blob": "a55c6ea105e07d42750aa8f0af430eb40d76c7bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b4acd833d89bb0647057e476a7185486fe5d15c1eef0fad2008f829344d9cb9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dc4a1cc-1c07-e6b3-e365-52c3fc565bdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Sheaf.isConstant_iff_of_equivalence (F : Sheaf K D) :
    ((sheafEquiv G J K D).inverse.obj F).IsConstant J ↔ IsConstant K F := by
  constructor
  · exact fun ⟨Y, ⟨i⟩⟩ ↦ ⟨_, ⟨(equivCommuteConstant J D K G hT hT').symm.app _ ≪≫
      (sheafEquiv G J K D).functor.mapIso i ≪≫ (sheafEquiv G J K D).counitIso.app _⟩⟩
  · exact fun ⟨Y, ⟨i⟩⟩ ↦ ⟨_, ⟨(equivCommuteConstant' J D K G hT hT').app _ ≪≫
      (sheafEquiv G J K D).inverse.mapIso i⟩⟩

end Equivalence

section Forget

variable {B : Type*} [Category B] (U : D ⥤ B) [HasWeakSheafify J B]
  [J.PreservesSheafification U] [J.HasSheafCompose U] (F : Sheaf J D)

/--
The constant sheaf functor commutes with `sheafCompose J U` up to isomorphism, provided that `U`
preserves sheafification.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a55c6ea105e07d42750aa8f0af430eb40d76c7bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
