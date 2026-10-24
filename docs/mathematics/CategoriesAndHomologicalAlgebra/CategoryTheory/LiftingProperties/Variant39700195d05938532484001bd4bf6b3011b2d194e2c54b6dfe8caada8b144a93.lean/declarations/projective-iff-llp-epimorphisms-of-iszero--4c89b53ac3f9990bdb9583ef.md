# projective_iff_llp_epimorphisms_of_isZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "746d825685a9a6b92ee0bbc633fa455f229b7a33",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87b20840-5b2e-e069-7260-fdc7ea921eb8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9db6d0b-1b62-1bc9-ea21-1add3409412a",
  "kind": "lemma",
  "lexical_name": "projective_iff_llp_epimorphisms_of_isZero",
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
  "slug": "projective-iff-llp-epimorphisms-of-iszero--4c89b53ac3f9990bdb9583ef",
  "source": {
    "blob": "746d825685a9a6b92ee0bbc633fa455f229b7a33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c89b53ac3f9990bdb9583efd28f9f3f6b5def5f4eae9ace34c70533f8a0e4fc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9db6d0b-1b62-1bc9-ea21-1add3409412a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma projective_iff_llp_epimorphisms_of_isZero
    [HasZeroMorphisms C] {P Z : C} (i : Z ⟶ P) (hZ : IsZero Z) :
    Projective P ↔ (MorphismProperty.epimorphisms C).llp i := by
  obtain rfl := hZ.eq_of_src i 0
  constructor
  · intro _ X Y p (_ : Epi p)
    exact Projective.hasLiftingProperty_of_isZero 0 p hZ
  · intro h
    constructor
    intro X Y f p hp
    have := h _ hp
    have sq : CommSq 0 (0 : Z ⟶ P) p f := ⟨by simp⟩
    exact ⟨sq.lift, by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variant39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `746d825685a9a6b92ee0bbc633fa455f229b7a33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
