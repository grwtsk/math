# exists_isCompact_closure_measure_compl_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31c164d3cc1eabefc8433e0833f0fb992f4b2cd7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/619bf517192adecf955f277fc98c2b94ae46ff03b98ce767e6ec9d516e04ef94.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d731ba46-f3ed-1757-caef-4c9409258eef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd7d98db-8447-9a27-9619-2b43dcc5be32",
  "kind": "theorem",
  "lexical_name": "exists_isCompact_closure_measure_compl_lt",
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
  "slug": "exists-iscompact-closure-measure-compl-lt--dc946d48f61611b968088f39",
  "source": {
    "blob": "31c164d3cc1eabefc8433e0833f0fb992f4b2cd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 94,
    "path": "GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variant619bf517192adecf955f277fc98c2b94ae46ff03b98ce767e6ec9d516e04ef94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc946d48f61611b968088f3964599d7df6c0b67fb1f6fd9a772968e76ff2c293",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RegularityCompacts/Variant619bf517192adecf955f277fc98c2b94ae46ff03b98ce767e6ec9d516e04ef94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd7d98db-8447-9a27-9619-2b43dcc5be32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isCompact_closure_measure_compl_lt [TopologicalSpace α]
    [SecondCountableTopology α] [IsCompletelyPseudoMetrizableSpace α]
    [OpensMeasurableSpace α] (P : Measure α) [IsFiniteMeasure P] (ε : ℝ≥0∞) (hε : 0 < ε) :
    ∃ K, IsCompact (closure K) ∧ P Kᶜ < ε := by
  /-
  If α is empty, the result is trivial.

  Otherwise, fix a dense sequence `seq` and an antitone basis `t` of entourages. We find a sequence
  of natural numbers `u n`, such that `interUnionBalls seq u t`, which is the intersection over
  `n` of the `t n`-neighborhood of `seq 1, ..., seq (u n)`, covers the space arbitrarily well.
  -/
  let := upgradeIsCompletelyPseudoMetrizable α
  cases isEmpty_or_nonempty α
  case inl =>
    refine ⟨∅, by simp, ?_⟩
    rwa [Set.eq_empty_of_isEmpty ∅ᶜ, measure_empty]
  case inr =>
    let seq := TopologicalSpace.denseSeq α
    have hseq_dense : DenseRange seq := TopologicalSpace.denseRange_denseSeq α
    obtain ⟨t : ℕ → SetRel α α,
        ht : ∀ i, t i ∈ 𝓤 α ∧ IsOpen (t i) ∧ (t i).IsSymm,
        h_basis : (uniformity α).HasAntitoneBasis t⟩ :=
      (@uniformity_hasBasis_open_symmetric α _).exists_antitone_subbasis
    choose htu hto _ using ht
    let f : ℕ → ℕ → Set α := fun n m ↦ UniformSpace.ball (seq m) (t n)
    have h_univ n : (⋃ m, f n m) = univ := hseq_dense.iUnion_uniformity_ball (htu n)
    have h3 n (ε : ℝ≥0∞) (hε : 0 < ε) : ∃ m, P (⋂ m' ≤ m, (f n m')ᶜ) < ε := by
      refine exists_measure_iInter_lt (fun m ↦ ?_) hε ⟨0, measure_ne_top P _⟩ ?_
      · exact (measurable_prodMk_left (hto n).measurableSet).compl.nullMeasurableSet
      · rw [← compl_iUnion, h_univ, compl_univ]
    choose! s' s'bound using h3
    rcases ENNReal.exists_pos_sum_of_countable' (ne_of_gt hε) ℕ with ⟨δ, hδ1, hδ2⟩
    let u : ℕ → ℕ := fun n ↦ s' n (δ n)
    refine ⟨interUnionBalls seq u t, isCompact_closure_interUnionBalls h_basis.toHasBasis seq u, ?_⟩
    rw [interUnionBalls, Set.compl_iInter]
    refine ((measure_iUnion_le _).trans ?_).trans_lt hδ2
    refine ENNReal.tsum_le_tsum (fun n ↦ ?_)
    have h'' n : Prod.swap ⁻¹' t n = t n := by ext; exact (t n).comm
    simp only [h'', compl_iUnion, ge_iff_le]
    exact (s'bound n (δ n) (hδ1 n)).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RegularityCompacts/Variant619bf517192adecf955f277fc98c2b94ae46ff03b98ce767e6ec9d516e04ef94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variant619bf517192adecf955f277fc98c2b94ae46ff03b98ce767e6ec9d516e04ef94.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31c164d3cc1eabefc8433e0833f0fb992f4b2cd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
