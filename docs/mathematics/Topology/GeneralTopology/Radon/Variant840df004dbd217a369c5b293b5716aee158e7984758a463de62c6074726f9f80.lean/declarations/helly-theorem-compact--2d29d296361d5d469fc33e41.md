# helly_theorem_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8422fd76-02ae-aef7-b563-b437b8c94fb6",
  "kind": "theorem",
  "lexical_name": "helly_theorem_compact",
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
  "slug": "helly-theorem-compact--2d29d296361d5d469fc33e41",
  "source": {
    "blob": "39f8584d22b685de4c38c088dc1fd6d7892b0bbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 226,
    "path": "GRWTSK/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d29d296361d5d469fc33e413eafab9ef8e436da9adc5c0ba32ad241a6602de5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8422fd76-02ae-aef7-b563-b437b8c94fb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem helly_theorem_compact [TopologicalSpace E] [T2Space E] {F : ι → Set E}
    (h_card : finrank 𝕜 E + 1 ≤ ENat.card ι)
    (h_convex : ∀ i, Convex 𝕜 (F i)) (h_compact : ∀ i, IsCompact (F i))
    (h_inter : ∀ I : Finset ι, #I = finrank 𝕜 E + 1 → (⋂ i ∈ I, F i).Nonempty) :
    (⋂ i, F i).Nonempty := by
  apply helly_theorem_compact' h_convex h_compact
  intro I hI_card
  have hJ : ∃ J : Finset ι, I ⊆ J ∧ #J = finrank 𝕜 E + 1 := by
    by_cases h : Infinite ι
    · exact Infinite.exists_superset_card_eq _ _ hI_card
    · have : Finite ι := Finite.of_not_infinite h
      have : Fintype ι := Fintype.ofFinite ι
      apply exists_superset_card_eq hI_card
      simp only [ENat.card_eq_coe_fintype_card] at h_card
      rwa [← Nat.cast_one, ← Nat.cast_add, Nat.cast_le] at h_card
  obtain ⟨J, hJ_ss, hJ_card⟩ := hJ
  apply Set.Nonempty.mono <| biInter_mono hJ_ss (by intro _ _; rfl)
  exact h_inter J hJ_card

/-- **Helly's theorem** for sets of compact convex sets.

If `F` is a set of compact convex sets in a vector space of finite dimension `d`, and any
`k ≤ d + 1` sets from `F` intersect nontrivially, then all sets from `F` intersect nontrivially. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39f8584d22b685de4c38c088dc1fd6d7892b0bbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
