# isCardinalPresentable_of_isColimit'

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
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba9b4d37b58122a522e6e3f95c8b547e3099d59e4d8abfcd6bcce59ae9d59ecd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1de5bd8d-6b20-9cf3-ce15-0c757cb44352",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b4ec336-3768-1853-e35c-836fab53fb3f",
  "kind": "lemma",
  "lexical_name": "isCardinalPresentable_of_isColimit'",
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
  "slug": "iscardinalpresentable-of-iscolimit--ff1c6adac2454b39e75b63ee",
  "source": {
    "blob": "e334df4d2d13ad7387cdfaf9661aa1f23ab05ff0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 172,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba9b4d37b58122a522e6e3f95c8b547e3099d59e4d8abfcd6bcce59ae9d59ecd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff1c6adac2454b39e75b63eec4870952aa5d0c52bee993b2e602240a020025a9",
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

Occurrence: `result:7b4ec336-3768-1853-e35c-836fab53fb3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCardinalPresentable_of_isColimit'
    {K : Type u'} [Category.{v'} K] {Y : K ⥤ C}
    (c : Cocone Y) (hc : IsColimit c) (κ : Cardinal.{w}) [Fact κ.IsRegular]
    [HasLimitsOfShape Kᵒᵖ (Type v)] (hK : HasCardinalLT (Arrow K) κ)
    [∀ k, IsCardinalPresentable (Y.obj k) κ] :
    IsCardinalPresentable c.pt κ := by
  have (k : Kᵒᵖ) : ((Y.op ⋙ coyoneda).obj k).IsCardinalAccessible κ := by
    dsimp; infer_instance
  exact Functor.isCardinalAccessible_of_isLimit
    (coyoneda.mapCone c.op) (isLimitOfPreserves _ hc.op) κ (by simpa)

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba9b4d37b58122a522e6e3f95c8b547e3099d59e4d8abfcd6bcce59ae9d59ecd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba9b4d37b58122a522e6e3f95c8b547e3099d59e4d8abfcd6bcce59ae9d59ecd.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e334df4d2d13ad7387cdfaf9661aa1f23ab05ff0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
