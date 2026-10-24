# eventually_nonempty_inter_smul_of_density_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df05ce0845ed32a0bb7ac052cf509c7af6e46f82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 834,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b003c44-cd01-105c-884b-6bb27fb38f61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64178b93-0081-c5b8-f2b5-05dc0b3748c8",
  "kind": "theorem",
  "lexical_name": "eventually_nonempty_inter_smul_of_density_one",
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
  "slug": "eventually-nonempty-inter-smul-of-density-one--edcbaaa1670f98bcf3d1f5e1",
  "source": {
    "blob": "df05ce0845ed32a0bb7ac052cf509c7af6e46f82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 853,
    "line": 834,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edcbaaa1670f98bcf3d1f5e11894d36be9e7bde82f1fe0bdcc15a9ee4a0c5b2c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64178b93-0081-c5b8-f2b5-05dc0b3748c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 834–853.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_nonempty_inter_smul_of_density_one (s : Set E) (x : E)
    (h : Tendsto (fun r => μ (s ∩ closedBall x r) / μ (closedBall x r)) (𝓝[>] 0) (𝓝 1)) (t : Set E)
    (ht : MeasurableSet t) (h't : μ t ≠ 0) :
    ∀ᶠ r in 𝓝[>] (0 : ℝ), (s ∩ ({x} + r • t)).Nonempty := by
  obtain ⟨t', t'_meas, t't, t'pos, t'top⟩ : ∃ t', MeasurableSet t' ∧ t' ⊆ t ∧ 0 < μ t' ∧ μ t' < ⊤ :=
    exists_subset_measure_lt_top ht h't.bot_lt
  filter_upwards [(tendsto_order.1
          (tendsto_addHaar_inter_smul_one_of_density_one μ s x h t' t'_meas t'pos.ne' t'top.ne)).1
      0 zero_lt_one]
  intro r hr
  have : μ (s ∩ ({x} + r • t')) ≠ 0 := fun h' => by
    simp only [ENNReal.not_lt_zero, ENNReal.zero_div, h'] at hr
  have : (s ∩ ({x} + r • t')).Nonempty := nonempty_of_measure_ne_zero this
  apply this.mono (inter_subset_inter Subset.rfl _)
  exact add_subset_add Subset.rfl (smul_set_mono t't)
#align measure_theory.measure.eventually_nonempty_inter_smul_of_density_one MeasureTheory.Measure.eventually_nonempty_inter_smul_of_density_one

end Measure

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean#L834).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df05ce0845ed32a0bb7ac052cf509c7af6e46f82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
