# complete_of_convergent_controlled_sequences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bac15c1-70e6-cac8-ee42-2e11922c9cff",
  "kind": "theorem",
  "lexical_name": "complete_of_convergent_controlled_sequences",
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
  "slug": "complete-of-convergent-controlled-sequences--1e51868fffaffcfea9f55c94",
  "source": {
    "blob": "8d844b674942d472920dc2e03d2c80465cc96dfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 768,
    "line": 755,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e51868fffaffcfea9f55c94dd0598762c4ec8e88e40678dee4a460d504c0fe5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bac15c1-70e6-cac8-ee42-2e11922c9cff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 755–768.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_of_convergent_controlled_sequences (U : ℕ → Set (α × α)) (U_mem : ∀ n, U n ∈ 𝓤 α)
    (HU : ∀ u : ℕ → α, (∀ N m n, N ≤ m → N ≤ n → (u m, u n) ∈ U N) → ∃ a, Tendsto u atTop (𝓝 a)) :
    CompleteSpace α := by
  obtain ⟨U', -, hU'⟩ := (𝓤 α).exists_antitone_seq
  have Hmem : ∀ n, U n ∩ U' n ∈ 𝓤 α := fun n => inter_mem (U_mem n) (hU'.2 ⟨n, Subset.refl _⟩)
  refine ⟨fun hf => (HU (seq hf Hmem) fun N m n hm hn => ?_).imp <|
    le_nhds_of_seq_tendsto_nhds _ _ fun s hs => ?_⟩
  · exact inter_subset_left _ _ (seq_pair_mem hf Hmem hm hn)
  · rcases hU'.1 hs with ⟨N, hN⟩
    exact ⟨N, Subset.trans (inter_subset_right _ _) hN⟩
#align uniform_space.complete_of_convergent_controlled_sequences UniformSpace.complete_of_convergent_controlled_sequences

/-- A sequentially complete uniform space with a countable basis of the uniformity filter is
complete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean#L755).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d844b674942d472920dc2e03d2c80465cc96dfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
