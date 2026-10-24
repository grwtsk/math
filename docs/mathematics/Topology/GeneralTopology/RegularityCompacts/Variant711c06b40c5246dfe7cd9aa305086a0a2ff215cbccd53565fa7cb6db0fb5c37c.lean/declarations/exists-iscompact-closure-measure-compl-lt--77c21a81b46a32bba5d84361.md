# exists_isCompact_closure_measure_compl_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ca591a9-b96f-f2d6-0600-dfff15cdcd94",
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
  "slug": "exists-iscompact-closure-measure-compl-lt--77c21a81b46a32bba5d84361",
  "source": {
    "blob": "5297c711b797ee2965e88d9cac318d4d534fd7ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 102,
    "path": "GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variant711c06b40c5246dfe7cd9aa305086a0a2ff215cbccd53565fa7cb6db0fb5c37c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77c21a81b46a32bba5d84361633f502d9f720f6c544cab02ee0f67309195fd22",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RegularityCompacts/Variant711c06b40c5246dfe7cd9aa305086a0a2ff215cbccd53565fa7cb6db0fb5c37c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ca591a9-b96f-f2d6-0600-dfff15cdcd94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–142.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RegularityCompacts/Variant711c06b40c5246dfe7cd9aa305086a0a2ff215cbccd53565fa7cb6db0fb5c37c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variant711c06b40c5246dfe7cd9aa305086a0a2ff215cbccd53565fa7cb6db0fb5c37c.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5297c711b797ee2965e88d9cac318d4d534fd7ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
