# coherentTopology.mem_sieves_iff_hasEffectiveEpiFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e3d81579f0701466a5ec2df2a1f597800b491ca9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bff610a48473076a09dbfc2fd9894701edc8109ae0913a0dcc2fc5f070f7d068.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:573b7a03-30eb-06f2-153c-8ccc7e0ad37a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2573eab-5b8d-e57f-4f6d-ccb34248c9c5",
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
  "slug": "coherenttopology-mem-sieves-iff-haseffectiveepifamily--e0aaf8ba2811553f77b8f03b",
  "source": {
    "blob": "e3d81579f0701466a5ec2df2a1f597800b491ca9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantbff610a48473076a09dbfc2fd9894701edc8109ae0913a0dcc2fc5f070f7d068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0aaf8ba2811553f77b8f03bd00be2b4a32a5f3d87e12dcb9f4e77a10d0a47a8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantbff610a48473076a09dbfc2fd9894701edc8109ae0913a0dcc2fc5f070f7d068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2573eab-5b8d-e57f-4f6d-ccb34248c9c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coherentTopology.mem_sieves_iff_hasEffectiveEpiFamily (S : Sieve X) :
    (S ∈ (coherentTopology C) X) ↔
    (∃ (α : Type) (_ : Finite α) (Y : α → C) (π : (a : α) → (Y a ⟶ X)),
        EffectiveEpiFamily Y π ∧ (∀ a : α, (S.arrows) (π a)) )  := by
  constructor
  · intro h
    induction h with
    | of Y T hS =>
      obtain ⟨a, h, Y', π, h', _⟩ := hS
      refine ⟨a, h, Y', π, inferInstance, fun a' ↦ ?_⟩
      obtain ⟨rfl, _⟩ := h'
      exact ⟨Y' a', 𝟙 Y' a', π a', Presieve.ofArrows.mk a', by simp⟩
    | top Y =>
      exact ⟨Unit, inferInstance, fun _ => Y, fun _ => (𝟙 Y), inferInstance, by simp⟩
    | transitive Y R S _ _ a b =>
      obtain ⟨α, w, Y₁, π, ⟨h₁,h₂⟩⟩ := a
      choose β _ Y_n π_n H using fun a => b (h₂ a)
      exact ⟨(Σ a, β a), inferInstance, fun ⟨a,b⟩ => Y_n a b, fun ⟨a, b⟩ => (π_n a b) ≫ (π a),
        EffectiveEpiFamily.transitive_of_finite _ h₁ _ (fun a => (H a).1),
        fun c => (H c.fst).2 c.snd⟩
  · exact coherentTopology.mem_sieves_of_hasEffectiveEpiFamily S

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantbff610a48473076a09dbfc2fd9894701edc8109ae0913a0dcc2fc5f070f7d068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantbff610a48473076a09dbfc2fd9894701edc8109ae0913a0dcc2fc5f070f7d068.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3d81579f0701466a5ec2df2a1f597800b491ca9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
