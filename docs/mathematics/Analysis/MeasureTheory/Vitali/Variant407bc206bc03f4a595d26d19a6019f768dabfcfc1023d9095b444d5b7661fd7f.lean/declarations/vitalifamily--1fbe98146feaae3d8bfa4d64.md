# vitaliFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74c09334266b96ea2965a7a327f795d5d0d962516762ff770aaad75c128ebe82",
  "kind": "def",
  "lexical_name": "vitaliFamily",
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
  "slug": "vitalifamily--1fbe98146feaae3d8bfa4d64",
  "source": {
    "blob": "84e41eb31d13a3143b2d602f731a4e6131621cac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 412,
    "path": "GRWTSK/Analysis/MeasureTheory/Vitali/Variant407bc206bc03f4a595d26d19a6019f768dabfcfc1023d9095b444d5b7661fd7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fbe98146feaae3d8bfa4d64f86d4266d61061cc8fe081178dca81374be10a5d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Vitali/Variant407bc206bc03f4a595d26d19a6019f768dabfcfc1023d9095b444d5b7661fd7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74c09334266b96ea2965a7a327f795d5d0d962516762ff770aaad75c128ebe82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def vitaliFamily [PseudoMetricSpace α] [MeasurableSpace α] [OpensMeasurableSpace α]
    [SecondCountableTopology α] (μ : Measure α) [IsLocallyFiniteMeasure μ] (C : ℝ≥0)
    (h : ∀ x, ∃ᶠ r in 𝓝[>] 0, μ (closedBall x (3 * r)) ≤ C * μ (closedBall x r)) :
    VitaliFamily μ where
  setsAt x := { a | IsClosed a ∧ (interior a).Nonempty ∧
    ∃ r, a ⊆ closedBall x r ∧ μ (closedBall x (3 * r)) ≤ C * μ a }
  measurableSet _ _ ha := ha.1.measurableSet
  nonempty_interior _ _ ha := ha.2.1
  nontrivial x ε εpos := by
    obtain ⟨r, μr, rpos, rε⟩ :
        ∃ r, μ (closedBall x (3 * r)) ≤ C * μ (closedBall x r) ∧ r ∈ Ioc (0 : ℝ) ε :=
      ((h x).and_eventually (Ioc_mem_nhdsGT εpos)).exists
    refine ⟨closedBall x r, ⟨isClosed_closedBall, ?_, ⟨r, Subset.rfl, μr⟩⟩,
      closedBall_subset_closedBall rε⟩
    exact (nonempty_ball.2 rpos).mono ball_subset_interior_closedBall
  covering := by
    intro s f fsubset ffine
    let t : Set (ℝ × α × Set α) :=
      { p | p.2.2 ⊆ closedBall p.2.1 p.1 ∧ μ (closedBall p.2.1 (3 * p.1)) ≤ C * μ p.2.2 ∧
            (interior p.2.2).Nonempty ∧ IsClosed p.2.2 ∧ p.2.2 ∈ f p.2.1 ∧ p.2.1 ∈ s }
    have A : ∀ x ∈ s, ∀ ε : ℝ, ε > 0 → ∃ p, p ∈ t ∧ p.1 ≤ ε ∧ p.2.1 = x := by
      intro x xs ε εpos
      rcases ffine x xs ε εpos with ⟨a, ha, h'a⟩
      rcases fsubset x xs ha with ⟨a_closed, a_int, ⟨r, ar, μr⟩⟩
      refine ⟨⟨min r ε, x, a⟩, ⟨?_, ?_, a_int, a_closed, ha, xs⟩, min_le_right _ _, rfl⟩
      · rcases min_cases r ε with (h' | h') <;> rwa [h'.1]
      · apply le_trans ?_ μr
        gcongr
        apply min_le_left
    rcases exists_disjoint_covering_ae μ s t C (fun p => p.1) (fun p => p.2.1) (fun p => p.2.2)
        (fun p hp => hp.1) (fun p hp => hp.2.1) (fun p hp => hp.2.2.1) (fun p hp => hp.2.2.2.1) A
      with ⟨t', t't, _, t'_disj, μt'⟩
    refine ⟨(fun p : ℝ × α × Set α => p.2) '' t', ?_, ?_, ?_, ?_⟩
    · rintro - ⟨q, hq, rfl⟩
      exact (t't hq).2.2.2.2.2
    · rintro p ⟨q, hq, rfl⟩ p' ⟨q', hq', rfl⟩ hqq'
      exact t'_disj hq hq' (ne_of_apply_ne _ hqq')
    · rintro - ⟨q, hq, rfl⟩
      exact (t't hq).2.2.2.2.1
    · convert μt' using 3
      rw [biUnion_image]

end Vitali
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Vitali/Variant407bc206bc03f4a595d26d19a6019f768dabfcfc1023d9095b444d5b7661fd7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Vitali/Variant407bc206bc03f4a595d26d19a6019f768dabfcfc1023d9095b444d5b7661fd7f.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84e41eb31d13a3143b2d602f731a4e6131621cac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
