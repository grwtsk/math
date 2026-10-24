# coherentTopology.mem_sieves_iff_hasEffectiveEpiFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9cc8664e802a6093bf5c28ad2eb964841375d86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:409a2049-3726-afab-f5c2-3cd86cf3430b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0db4536-4ee1-26c8-b6a3-a322bd24fc7d",
  "kind": "theorem",
  "lexical_name": "coherentTopology.mem_sieves_iff_hasEffectiveEpiFamily",
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
  "slug": "coherenttopology-mem-sieves-iff-haseffectiveepifamily--aa2ed876e6dd2dc577fdca61",
  "source": {
    "blob": "a9cc8664e802a6093bf5c28ad2eb964841375d86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 185,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa2ed876e6dd2dc577fdca6119b89363a13d150652a327b21e3d68fb46e61da0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0db4536-4ee1-26c8-b6a3-a322bd24fc7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coherentTopology.mem_sieves_iff_hasEffectiveEpiFamily (S : Sieve X) :
(S ∈ GrothendieckTopology.sieves (coherentTopology C) X) ↔
    (∃ (α : Type) (_ : Fintype α) (Y : α → C) (π : (a : α) → (Y a ⟶ X)),
        EffectiveEpiFamily Y π ∧ (∀ a : α, (S.arrows) (π a)) )  := by
  constructor
  · intro h
    induction' h with Y T hS Y Y R S _ _ a b
    · rcases hS with ⟨a, h, Y', π, h'⟩
      use a, h, Y', π, by tauto
      intro a'
      rcases h' with ⟨rfl, _⟩
      simp only [Sieve.generate_apply]
      use Y' a', 𝟙 Y' a', π a', Presieve.ofArrows.mk a'
      apply Category.id_comp
    · use Unit, Unit.fintype, fun _ => Y, fun _ => (𝟙 Y)
      cases' S with arrows downward_closed
      exact ⟨inferInstance, by simp only [Sieve.top_apply, forall_const]⟩
    · rcases a with ⟨α, w, Y₁, π, ⟨h₁,h₂⟩⟩
      choose β _ Y_n π_n H using fun a => b (h₂ a)
      use (Σ a, β a), inferInstance, fun ⟨a,b⟩ => Y_n a b, fun ⟨a, b⟩ => (π_n a b) ≫ (π a)
      constructor
      · exact EffectiveEpiFamily.transitive_of_finite _ h₁ _ (fun a => (H a).1)
      · exact fun c => (H c.fst).2 c.snd
  · exact coherentTopology.mem_sieves_of_hasEffectiveEpiFamily S

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9cc8664e802a6093bf5c28ad2eb964841375d86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
