# isCardinalAccessible_of_isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e334df4d2d13ad7387cdfaf9661aa1f23ab05ff0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba9b4d37b58122a522e6e3f95c8b547e3099d59e4d8abfcd6bcce59ae9d59ecd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22894959-b880-3735-407f-30f62e1ffd1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ec5086a-fb0e-fc43-ccdb-ff80250b5675",
  "kind": "lemma",
  "lexical_name": "isCardinalAccessible_of_isLimit",
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
  "slug": "iscardinalaccessible-of-islimit--4b18312b6eee9ad49647d706",
  "source": {
    "blob": "e334df4d2d13ad7387cdfaf9661aa1f23ab05ff0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 157,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba9b4d37b58122a522e6e3f95c8b547e3099d59e4d8abfcd6bcce59ae9d59ecd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b18312b6eee9ad49647d706fb8df8a9e2f9d4bb680610376124d05d189904a1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba9b4d37b58122a522e6e3f95c8b547e3099d59e4d8abfcd6bcce59ae9d59ecd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ec5086a-fb0e-fc43-ccdb-ff80250b5675`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCardinalAccessible_of_isLimit {K : Type u'} [Category.{v'} K] {F : K ⥤ C ⥤ Type w'}
    (c : Cone F) (hc : IsLimit c) (κ : Cardinal.{w}) [Fact κ.IsRegular]
    [HasLimitsOfShape K (Type w')] (hK : HasCardinalLT (Arrow K) κ)
    [∀ k, (F.obj k).IsCardinalAccessible κ] :
    c.pt.IsCardinalAccessible κ where
  preservesColimitOfShape {J _ _} := ⟨fun {X} ↦ ⟨fun {cX} hcX ↦ by
    have := fun k ↦ preservesColimitsOfShape_of_isCardinalAccessible (F.obj k) κ J
    exact ⟨Accessible.Limits.isColimitMapCocone c
      (fun Y ↦ isLimitOfPreserves ((evaluation C (Type w')).obj Y) hc) κ hK cX
      (fun k ↦ isColimitOfPreserves (F.obj k) hcX)⟩⟩⟩

end Functor

set_option backward.defeqAttrib.useBackward true in
/-- In case `C` is locally `w`-small, use `isCardinalPresentable_of_isColimit`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba9b4d37b58122a522e6e3f95c8b547e3099d59e4d8abfcd6bcce59ae9d59ecd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba9b4d37b58122a522e6e3f95c8b547e3099d59e4d8abfcd6bcce59ae9d59ecd.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e334df4d2d13ad7387cdfaf9661aa1f23ab05ff0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
