# EssentiallySmall.exists_small_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8024a57d-fa64-c980-099a-ddde63e1ceb0",
  "kind": "lemma",
  "lexical_name": "EssentiallySmall.exists_small_le",
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
  "slug": "essentiallysmall-exists-small-le--6d12d51a955128ed2b5b2e39",
  "source": {
    "blob": "927b02a6d79c11f60eb63c360c70661585f80e39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 127,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantc4a8d21c229850abd4a8a49c03699518ecbc2ef734907ee91a6cf49df05935d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d12d51a955128ed2b5b2e390dc80dfc18786356c27af2856923bb41086b0fc5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantc4a8d21c229850abd4a8a49c03699518ecbc2ef734907ee91a6cf49df05935d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8024a57d-fa64-c980-099a-ddde63e1ceb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma EssentiallySmall.exists_small_le (P : ObjectProperty C)
    [ObjectProperty.EssentiallySmall.{w} P] :
    ∃ (Q : ObjectProperty C) (_ : ObjectProperty.Small.{w} Q), Q ≤ P ∧ P ≤ Q.isoClosure := by
  obtain ⟨Q, _, hQ⟩ := exists_small_le' P
  let P' := Q ⊓ P.isoClosure
  have h (X' : Subtype P') : ∃ (X : Subtype P), Nonempty (X'.1 ≅ X.1) :=
    ⟨⟨X'.2.2.choose, X'.2.2.choose_spec.choose⟩, X'.2.2.choose_spec.choose_spec⟩
  choose φ hφ using h
  refine ⟨fun X ↦ X ∈ Set.range (Subtype.val ∘ φ), ?_, ?_, ?_⟩
  · exact small_of_surjective (f := fun X ↦ ⟨(φ X).1, by tauto⟩)
      (by rintro ⟨_, Z, rfl⟩; exact ⟨Z, rfl⟩)
  · intro X hX
    simp only [Set.mem_range, Function.comp_apply, Subtype.exists] at hX
    obtain ⟨Y, hY, rfl⟩ := hX
    exact (φ ⟨Y, hY⟩).2
  · intro X hX
    obtain ⟨Y, hY, ⟨e⟩⟩ := hQ _ hX
    let Z : Subtype P' := ⟨Y, hY, ⟨X, hX, ⟨e.symm⟩⟩⟩
    exact ⟨_, ⟨Z, rfl⟩, ⟨e ≪≫ (hφ Z).some⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantc4a8d21c229850abd4a8a49c03699518ecbc2ef734907ee91a6cf49df05935d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantc4a8d21c229850abd4a8a49c03699518ecbc2ef734907ee91a6cf49df05935d9.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `927b02a6d79c11f60eb63c360c70661585f80e39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
