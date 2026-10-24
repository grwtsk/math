# measure_notConvergentSeq_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0dc430d-c57c-083e-8c9d-d02c7f2d1071",
  "kind": "theorem",
  "lexical_name": "measure_notConvergentSeq_tendsto_zero",
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
  "slug": "measure-notconvergentseq-tendsto-zero--2cdac8da671320d8ba315a7d",
  "source": {
    "blob": "ead207adbc7bf1ed9ddddfb49353d0d93ea8e9df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cdac8da671320d8ba315a7d047bd3917cada222e6f44d2ce4657178fbe59117",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0dc430d-c57c-083e-8c9d-d02c7f2d1071`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_notConvergentSeq_tendsto_zero [SemilatticeSup ι] [Countable ι]
    (hf : ∀ n, StronglyMeasurable (f n)) (hg : StronglyMeasurable g) (hsm : MeasurableSet s)
    (hs : μ s ≠ ∞) (hfg : ∀ᵐ x ∂μ, x ∈ s → Tendsto (fun n => f n x) atTop (𝓝 (g x))) (n : ℕ) :
    Tendsto (fun j => μ (s ∩ notConvergentSeq f g n j)) atTop (𝓝 0) := by
  rcases isEmpty_or_nonempty ι with h | h
  · have : (fun j => μ (s ∩ notConvergentSeq f g n j)) = fun j => 0 := by
      simp only [eq_iff_true_of_subsingleton]
    rw [this]
    exact tendsto_const_nhds
  rw [← measure_inter_notConvergentSeq_eq_zero hfg n, Set.inter_iInter]
  refine tendsto_measure_iInter_atTop
    (fun n ↦ (hsm.inter <| notConvergentSeq_measurableSet hf hg).nullMeasurableSet)
    (fun k l hkl => Set.inter_subset_inter_right _ <| notConvergentSeq_antitone hkl)
    ⟨h.some, ne_top_of_le_ne_top hs (measure_mono Set.inter_subset_left)⟩

variable [SemilatticeSup ι] [Nonempty ι] [Countable ι]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ead207adbc7bf1ed9ddddfb49353d0d93ea8e9df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
