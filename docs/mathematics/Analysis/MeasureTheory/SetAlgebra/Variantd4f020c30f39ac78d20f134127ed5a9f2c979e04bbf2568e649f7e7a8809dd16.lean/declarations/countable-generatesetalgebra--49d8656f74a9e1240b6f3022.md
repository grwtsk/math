# countable_generateSetAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f54282a-1349-a8f0-8cac-c4bd20b6e8c3",
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
  "slug": "countable-generatesetalgebra--49d8656f74a9e1240b6f3022",
  "source": {
    "blob": "9d2ae3bb529b8f4cd23d0ded1cd2c3fb22d8c1db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 246,
    "path": "GRWTSK/Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49d8656f74a9e1240b6f3022190b35e683964e8a927f7450f50d505dce728e7e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f54282a-1349-a8f0-8cac-c4bd20b6e8c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–268.

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
  have count_𝒞 : 𝒞.Countable := countable_ofPred_finite_subset (countable_coe_iff.1 count_ℬ)
  let 𝒟 := {A | A.Finite ∧ A ⊆ 𝒞}
  have count_𝒟 : 𝒟.Countable := countable_ofPred_finite_subset (countable_coe_iff.1 count_𝒞)
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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SetAlgebra/Variantd4f020c30f39ac78d20f134127ed5a9f2c979e04bbf2568e649f7e7a8809dd16.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d2ae3bb529b8f4cd23d0ded1cd2c3fb22d8c1db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
