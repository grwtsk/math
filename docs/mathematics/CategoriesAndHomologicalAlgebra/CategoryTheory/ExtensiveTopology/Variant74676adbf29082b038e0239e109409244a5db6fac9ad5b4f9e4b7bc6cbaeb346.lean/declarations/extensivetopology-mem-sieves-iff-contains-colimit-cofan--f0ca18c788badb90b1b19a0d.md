# extensiveTopology.mem_sieves_iff_contains_colimit_cofan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47562662b1a4e2c39bed779e854072e6d754d96d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74676adbf29082b038e0239e109409244a5db6fac9ad5b4f9e4b7bc6cbaeb346.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9601c664-ffd9-c96b-839d-dcc2558b893f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2471b1e4-a39d-c32a-2f5c-95c13795baa4",
  "kind": "lemma",
  "lexical_name": "extensiveTopology.mem_sieves_iff_contains_colimit_cofan",
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
  "slug": "extensivetopology-mem-sieves-iff-contains-colimit-cofan--f0ca18c788badb90b1b19a0d",
  "source": {
    "blob": "47562662b1a4e2c39bed779e854072e6d754d96d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 31,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveTopology/Variant74676adbf29082b038e0239e109409244a5db6fac9ad5b4f9e4b7bc6cbaeb346.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0ca18c788badb90b1b19a0d517be162aac33778e7408f5ad0e481ce93d00ed7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveTopology/Variant74676adbf29082b038e0239e109409244a5db6fac9ad5b4f9e4b7bc6cbaeb346.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2471b1e4-a39d-c32a-2f5c-95c13795baa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extensiveTopology.mem_sieves_iff_contains_colimit_cofan {X : C} (S : Sieve X) :
    S ∈ (extensiveTopology C) X ↔
      (∃ (α : Type) (_ : Finite α) (Y : α → C) (π : (a : α) → (Y a ⟶ X)),
        Nonempty (IsColimit (Cofan.mk X π)) ∧ (∀ a : α, (S.arrows) (π a))) := by
  constructor
  · intro h
    induction h with
    | of X S hS =>
      obtain ⟨α, _, Y, π, h, h'⟩ := hS
      refine ⟨α, inferInstance, Y, π, ?_, fun a ↦ ?_⟩
      · have : IsIso (Sigma.desc (Cofan.mk X π).inj) := by simpa using! h'
        exact ⟨Cofan.isColimitOfIsIsoSigmaDesc (Cofan.mk X π)⟩
      · obtain ⟨rfl, _⟩ := h
        exact ⟨Y a, 𝟙 Y a, π a, Presieve.ofArrows.mk a, by simp⟩
    | top X =>
      refine ⟨Unit, inferInstance, fun _ => X, fun _ => (𝟙 X), ⟨?_⟩, by simp⟩
      have : IsIso (Sigma.desc (Cofan.mk X fun (_ : Unit) ↦ 𝟙 X).inj) := by
        have : IsIso (coproductUniqueIso (fun () => X)).hom := inferInstance
        exact this
      exact Cofan.isColimitOfIsIsoSigmaDesc (Cofan.mk X _)
    | transitive X R S _ _ a b =>
      obtain ⟨α, w, Y₁, π, h, h'⟩ := a
      choose β _ Y_n π_n H using fun a => b (h' a)
      exact ⟨(Σ a, β a), inferInstance, fun ⟨a,b⟩ => Y_n a b, fun ⟨a, b⟩ => (π_n a b) ≫ (π a),
        ⟨Limits.Cofan.isColimitTrans _ h.some _ (fun a ↦ (H a).1.some)⟩,
        fun c => (H c.fst).2 c.snd⟩
  · intro ⟨α, _, Y, π, h, h'⟩
    apply (extensiveCoverage C).mem_toGrothendieck_sieves_of_superset (R := Presieve.ofArrows Y π)
    · exact fun _ _ hh ↦ by cases hh; exact h' _
    · refine ⟨α, inferInstance, Y, π, rfl, ?_⟩
      rw [← show _ ↔ IsIso (Sigma.desc π) from
        Limits.Cofan.nonempty_isColimit_iff_isIso_sigmaDesc (c := Cofan.mk X π)]
      exact h

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveTopology/Variant74676adbf29082b038e0239e109409244a5db6fac9ad5b4f9e4b7bc6cbaeb346.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveTopology/Variant74676adbf29082b038e0239e109409244a5db6fac9ad5b4f9e4b7bc6cbaeb346.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47562662b1a4e2c39bed779e854072e6d754d96d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
