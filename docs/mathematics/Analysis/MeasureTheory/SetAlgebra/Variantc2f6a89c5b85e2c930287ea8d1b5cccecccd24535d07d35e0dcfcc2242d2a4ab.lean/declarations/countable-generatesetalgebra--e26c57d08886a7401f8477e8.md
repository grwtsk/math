# countable_generateSetAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ff0ada7f3f9e7b6cb3b58a13002e288c1343d84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbe810da-148f-9cb8-d47a-08ba678cb8db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9049f5b9-1be9-33bf-5a1b-4a45d9b25396",
  "kind": "theorem",
  "lexical_name": "countable_generateSetAlgebra",
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
  "slug": "countable-generatesetalgebra--e26c57d08886a7401f8477e8",
  "source": {
    "blob": "0ff0ada7f3f9e7b6cb3b58a13002e288c1343d84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 217,
    "path": "GRWTSK/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e26c57d08886a7401f8477e88dfccbe25b608e1ff18af7e620534aebc558dfa4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9049f5b9-1be9-33bf-5a1b-4a45d9b25396`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_generateSetAlgebra (h : 𝒜.Countable) :
    (generateSetAlgebra 𝒜).Countable := by
  let ℬ := {s | s ∈ 𝒜} ∪ {s | sᶜ ∈ 𝒜}
  have count_ℬ : ℬ.Countable := by
    apply h.union
    have : compl '' 𝒜 = {s | sᶜ ∈ 𝒜} := by
      ext s
      simpa using ⟨fun ⟨x, x_mem, hx⟩ ↦ by simp [← hx, x_mem], fun hs ↦ ⟨sᶜ, hs, by simp⟩⟩
    exact this ▸ h.image compl
  let f : Set (Set (Set α)) → Set α := fun A ↦ ⋃ a ∈ A, ⋂ t ∈ a, t
  let 𝒞 := {a | a.Finite ∧ a ⊆ ℬ}
  have count_𝒞 : 𝒞.Countable := countable_setOf_finite_subset (countable_coe_iff.1 count_ℬ)
  let 𝒟 := {A | A.Finite ∧ A ⊆ 𝒞}
  have count_𝒟 : 𝒟.Countable := countable_setOf_finite_subset (countable_coe_iff.1 count_𝒞)
  have : generateSetAlgebra 𝒜 ⊆ f '' 𝒟 := by
    intro s s_mem
    rcases mem_generateSetAlgebra_elim s_mem with ⟨A, A_fin, mem_A, hA, rfl⟩
    exact ⟨A, ⟨A_fin, fun a ha ↦ ⟨mem_A a ha, hA a ha⟩⟩, rfl⟩
  exact (count_𝒟.image f).mono this

end generateSetAlgebra

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ff0ada7f3f9e7b6cb3b58a13002e288c1343d84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
