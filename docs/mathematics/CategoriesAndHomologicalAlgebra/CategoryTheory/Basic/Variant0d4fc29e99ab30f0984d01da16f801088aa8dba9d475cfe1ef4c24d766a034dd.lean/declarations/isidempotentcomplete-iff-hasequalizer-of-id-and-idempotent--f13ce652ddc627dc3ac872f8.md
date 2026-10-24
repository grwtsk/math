# isIdempotentComplete_iff_hasEqualizer_of_id_and_idempotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e6c2e02ff9a8a030469d0fe613b9ecbd2cf99a3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ceaaf58c-035d-ad35-3fc9-70f6322963f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09921d0d-f9ed-ce9f-b1bf-ef9000026106",
  "kind": "theorem",
  "lexical_name": "isIdempotentComplete_iff_hasEqualizer_of_id_and_idempotent",
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
  "slug": "isidempotentcomplete-iff-hasequalizer-of-id-and-idempotent--f13ce652ddc627dc3ac872f8",
  "source": {
    "blob": "e6c2e02ff9a8a030469d0fe613b9ecbd2cf99a3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 60,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f13ce652ddc627dc3ac872f88ef3cce6b4875e045476632169f16cff770aab6b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09921d0d-f9ed-ce9f-b1bf-ef9000026106`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIdempotentComplete_iff_hasEqualizer_of_id_and_idempotent :
    IsIdempotentComplete C ↔ ∀ (X : C) (p : X ⟶ X), p ≫ p = p → HasEqualizer (𝟙 X) p := by
  constructor
  · intro
    intro X p hp
    rcases IsIdempotentComplete.idempotents_split X p hp with ⟨Y, i, e, ⟨h₁, h₂⟩⟩
    exact
      ⟨Nonempty.intro
          { cone := Fork.ofι i (show i ≫ 𝟙 X = i ≫ p by rw [comp_id, ← h₂, ← assoc, h₁, id_comp])
            isLimit := by
              apply Fork.IsLimit.mk'
              intro s
              refine ⟨s.ι ≫ e, ?_⟩
              constructor
              · erw [assoc, h₂, ← Limits.Fork.condition s, comp_id]
              · intro m hm
                rw [Fork.ι_ofι] at hm
                rw [← hm]
                simp only [← hm, assoc, h₁]
                exact (comp_id m).symm }⟩
  · intro h
    refine ⟨?_⟩
    intro X p hp
    haveI : HasEqualizer (𝟙 X) p := h X p hp
    refine ⟨equalizer (𝟙 X) p, equalizer.ι (𝟙 X) p,
      equalizer.lift p (show p ≫ 𝟙 X = p ≫ p by rw [hp, comp_id]), ?_, equalizer.lift_ι _ _⟩
    ext
    simp only [assoc, limit.lift_π, Eq.ndrec, id_eq, eq_mpr_eq_cast, Fork.ofι_pt,
      Fork.ofι_π_app, id_comp]
    rw [← equalizer.condition, comp_id]

variable {C} in
/-- In a preadditive category, when `p : X ⟶ X` is idempotent,
then `𝟙 X - p` is also idempotent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6c2e02ff9a8a030469d0fe613b9ecbd2cf99a3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
