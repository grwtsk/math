# Sheaf.isConstant_of_forget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a47e306-89ad-54b6-6931-ec89d7746b1f",
  "kind": "lemma",
  "lexical_name": "Sheaf.isConstant_of_forget",
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
  "slug": "sheaf-isconstant-of-forget--483a2fb567fe6b736c682efa",
  "source": {
    "blob": "a55c6ea105e07d42750aa8f0af430eb40d76c7bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 213,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:483a2fb567fe6b736c682efaeb4fd758c11f2bd28e4f37c39e27ba703590eea2",
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

Occurrence: `result:0a47e306-89ad-54b6-6931-ec89d7746b1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Sheaf.isConstant_of_forget [constantSheaf J D |>.Faithful] [constantSheaf J D |>.Full]
    [constantSheaf J B |>.Faithful] [constantSheaf J B |>.Full]
    [(sheafCompose J U).ReflectsIsomorphisms] [((sheafCompose J U).obj F).IsConstant J]
    {T : C} (hT : IsTerminal T) : F.IsConstant J := by
  have : IsIso ((sheafCompose J U).map ((constantSheafAdj J D hT).counit.app F)) := by
    rw [← constantSheafAdj_counit_w]
    infer_instance
  rw [F.isConstant_iff_isIso_counit_app (hT := hT)]
  exact isIso_of_reflects_iso _ (sheafCompose J U)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a55c6ea105e07d42750aa8f0af430eb40d76c7bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
