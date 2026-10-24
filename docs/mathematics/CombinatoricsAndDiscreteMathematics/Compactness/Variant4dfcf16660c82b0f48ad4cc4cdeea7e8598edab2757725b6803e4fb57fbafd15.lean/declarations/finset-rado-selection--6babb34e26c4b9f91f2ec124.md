# Finset.rado_selection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2378cf20-efba-0c72-e846-f2674ba22433",
  "kind": "theorem",
  "lexical_name": "Finset.rado_selection",
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
  "slug": "finset-rado-selection--6babb34e26c4b9f91f2ec124",
  "source": {
    "blob": "c28181697adfb52335cfd4adc0b859c5b64d1ca0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 75,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Compactness/Variant4dfcf16660c82b0f48ad4cc4cdeea7e8598edab2757725b6803e4fb57fbafd15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6babb34e26c4b9f91f2ec124f7a9d6a229d4abcf9bea180686a4fa7bda922a99",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Compactness/Variant4dfcf16660c82b0f48ad4cc4cdeea7e8598edab2757725b6803e4fb57fbafd15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2378cf20-efba-0c72-e846-f2674ba22433`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.rado_selection (g : Finset α → (a : α) → β a) :
    ∃ χ : (a : α) → β a, ∀ s : Finset α, ∃ t : Finset α, s ⊆ t ∧ ∀ x ∈ s, χ x = g t x := by
  classical
  let instTop (a : α) : TopologicalSpace (β a) := ⊥
  have instDiscr (a : α) : DiscreteTopology (β a) := discreteTopology_bot _
  let e (s : Finset α) : Set ((a : α) → β a) := {f | ∃ t, s ⊆ t ∧ ∀ x ∈ s, f x = g t x}
  have (s : Finset α) : s.restrict ⁻¹' {f | ∃ t, s ⊆ t ∧ ∀ x, f x = g t x} = e s := by simp [e]
  have he' (s : Finset α) : IsClosed (e s) := by
    rw [← this]
    exact (isClosed_discrete _).preimage (by fun_prop)
  have he'' (B : Finset (Finset α)) : (⋂ i ∈ B, e i).Nonempty := by
    refine ⟨g (B.biUnion id), ?_⟩
    simp only [Set.mem_iInter, Set.mem_ofPred_eq, e]
    intro i hi
    exact ⟨_, subset_biUnion_of_mem id hi, by simp⟩
  simpa using! CompactSpace.iInter_nonempty he' he''

/--
Given a (dependent) function `g s : (a : s) → β a` for each finset `s` of `α`, provided that
each `β a` is finite, we can find another function `χ : (a : α) → β a` such that on every `s`,
there is some larger `t` such that `χ` agrees with `g t` on `s`.
Informally, we are stitching together the local functions `g s` into a global `χ` such that on
each `s`, `χ` can be expressed in terms of one of the `g`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Compactness/Variant4dfcf16660c82b0f48ad4cc4cdeea7e8598edab2757725b6803e4fb57fbafd15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Compactness/Variant4dfcf16660c82b0f48ad4cc4cdeea7e8598edab2757725b6803e4fb57fbafd15.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c28181697adfb52335cfd4adc0b859c5b64d1ca0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
