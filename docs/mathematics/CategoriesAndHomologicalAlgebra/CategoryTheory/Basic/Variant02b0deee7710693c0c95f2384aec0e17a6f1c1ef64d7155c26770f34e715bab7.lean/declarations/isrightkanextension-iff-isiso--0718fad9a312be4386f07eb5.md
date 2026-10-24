# isRightKanExtension_iff_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5666688ed764288921731d42ec7e5420ed2db361",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02b0deee7710693c0c95f2384aec0e17a6f1c1ef64d7155c26770f34e715bab7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1615ff80-a398-c29a-62e8-94311e6c59cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab3db453-ab2d-9282-bba0-520012817849",
  "kind": "lemma",
  "lexical_name": "isRightKanExtension_iff_isIso",
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
  "slug": "isrightkanextension-iff-isiso--0718fad9a312be4386f07eb5",
  "source": {
    "blob": "5666688ed764288921731d42ec7e5420ed2db361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 140,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant02b0deee7710693c0c95f2384aec0e17a6f1c1ef64d7155c26770f34e715bab7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0718fad9a312be4386f07eb5d911e4dbde2b2c453d53d141d6dbb637a1abd89e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant02b0deee7710693c0c95f2384aec0e17a6f1c1ef64d7155c26770f34e715bab7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab3db453-ab2d-9282-bba0-520012817849`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isRightKanExtension_iff_isIso {F' : D ⥤ H} {F'' : D ⥤ H} (φ : F'' ⟶ F')
    {L : C ⥤ D} {F : C ⥤ H} (α : L ⋙ F' ⟶ F) (α' : L ⋙ F'' ⟶ F)
    (comm : whiskerLeft L φ ≫ α = α') [F'.IsRightKanExtension α] :
    F''.IsRightKanExtension α' ↔ IsIso φ := by
  constructor
  · intro
    rw [F'.hom_ext_of_isRightKanExtension α φ (rightKanExtensionUnique _ α' _ α).hom
      (by simp [comm])]
    infer_instance
  · intro
    rw [isRightKanExtension_iff_of_iso (asIso φ) α' α comm]
    infer_instance
end

section

variable (F' : D ⥤ H) {L : C ⥤ D} {F : C ⥤ H} (α : F ⟶ L ⋙ F')

/-- Given `α : F ⟶ L ⋙ F'`, the property `F'.IsLeftKanExtension α` asserts that
`(F', α)` is an initial object in the category `LeftExtension L F`, i.e. that `(F', α)`
is a left Kan extension of `F` along `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant02b0deee7710693c0c95f2384aec0e17a6f1c1ef64d7155c26770f34e715bab7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant02b0deee7710693c0c95f2384aec0e17a6f1c1ef64d7155c26770f34e715bab7.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5666688ed764288921731d42ec7e5420ed2db361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
