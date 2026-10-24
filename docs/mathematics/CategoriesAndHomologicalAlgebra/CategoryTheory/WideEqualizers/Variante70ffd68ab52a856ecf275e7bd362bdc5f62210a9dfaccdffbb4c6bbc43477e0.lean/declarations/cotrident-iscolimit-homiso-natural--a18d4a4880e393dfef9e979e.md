# Cotrident.IsColimit.homIso_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7443ea00d719698d25797724dd883ca195b79d1f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 421,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b20bd19-faea-5d93-59a3-b401063d8637",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6b353a9-0814-07c9-870c-1ec6b2bdc12f",
  "kind": "theorem",
  "lexical_name": "Cotrident.IsColimit.homIso_natural",
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
  "slug": "cotrident-iscolimit-homiso-natural--a18d4a4880e393dfef9e979e",
  "source": {
    "blob": "7443ea00d719698d25797724dd883ca195b79d1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 421,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a18d4a4880e393dfef9e979e37fac3d2a2939e5cb2517fbb668fb7d1d25d29da",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6b353a9-0814-07c9-870c-1ec6b2bdc12f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Cotrident.IsColimit.homIso_natural [Nonempty J] {t : Cotrident f} {Z Z' : C} (q : Z ⟶ Z')
    (ht : IsColimit t) (k : t.pt ⟶ Z) :
    (Cotrident.IsColimit.homIso ht _ (k ≫ q) : Y ⟶ Z') =
      (Cotrident.IsColimit.homIso ht _ k : Y ⟶ Z) ≫ q :=
  (Category.assoc _ _ _).symm
#align
  category_theory.limits.cotrident.is_colimit.hom_iso_natural
  CategoryTheory.Limits.Cotrident.IsColimit.homIso_natural

/-- This is a helper construction that can be useful when verifying that a category has certain wide
    equalizers. Given `F : WalkingParallelFamily ⥤ C`, which is really the same as
    `parallelFamily (λ j, F.map (line j))`, and a trident on `λ j, F.map (line j)`, we get a cone
    on `F`.

    If you're thinking about using this, have a look at
    `hasWideEqualizers_of_hasLimit_parallelFamily`, which you may find to be an easier way of
    achieving your goal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7443ea00d719698d25797724dd883ca195b79d1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
