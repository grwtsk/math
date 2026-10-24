# HasFPowerSeriesAt.eventually_hasSum_of_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd089d46-27b7-734f-f862-1bf2c9674fc3",
  "kind": "lemma",
  "lexical_name": "HasFPowerSeriesAt.eventually_hasSum_of_comp",
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
  "slug": "hasfpowerseriesat-eventually-hassum-of-comp--b87f587131564dbdaafeca36",
  "source": {
    "blob": "3712926d08b7e064e2b03c061591d6e834aab282",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 663,
    "line": 623,
    "path": "GRWTSK/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b87f587131564dbdaafeca36d5bb2365f986d0beaf5e4cc82d40ad7d278ceedc",
  "verification": {
    "reference": "docs/verification/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd089d46-27b7-734f-f862-1bf2c9674fc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasFPowerSeriesAt.eventually_hasSum_of_comp {f : E → F} {g : F → G}
    {q : FormalMultilinearSeries 𝕜 F G} {p : FormalMultilinearSeries 𝕜 E F} {x : E}
    (hgf : HasFPowerSeriesAt (g ∘ f) (q.comp p) x) (hf : HasFPowerSeriesAt f p x)
    (hq : 0 < q.radius) :
    ∀ᶠ y in 𝓝 0, HasSum (fun n : ℕ => q n fun _ : Fin n => (f (x + y) - f x)) (g (f (x + y))) := by
  have : ∀ᶠ y in 𝓝 (0 : E), f (x + y) - f x ∈ Metric.eball 0 q.radius := by
    have A : ContinuousAt (fun y ↦ f (x + y) - f x) 0 := by
      apply ContinuousAt.sub _ continuousAt_const
      exact hf.continuousAt.comp_of_eq (by fun_prop) (by simp)
    have B : Metric.eball 0 q.radius ∈ 𝓝 (f (x + 0) - f x) := by
      simpa using Metric.eball_mem_nhds _ hq
    exact A.preimage_mem_nhds B
  filter_upwards [hgf.tendsto_partialSum_prod_of_comp hq (hf.radius_pos),
    hf.tendsto_partialSum, this] with y hy h'y h''y
  have L : Tendsto (fun n ↦ q.partialSum n (f (x + y) - f x)) atTop (𝓝 (g (f (x + y)))) := by
    apply (closed_nhds_basis (g (f (x + y)))).tendsto_right_iff.2
    rintro u ⟨hu, u_closed⟩
    simp only [id_eq, eventually_atTop]
    rcases mem_nhds_iff.1 hu with ⟨v, vu, v_open, hv⟩
    obtain ⟨a₀, b₀, hab⟩ : ∃ a₀ b₀, ∀ (a b : ℕ), a₀ ≤ a → b₀ ≤ b →
        q.partialSum a (p.partialSum b y - (p 0) fun _ ↦ 0) ∈ v := by
      simpa using hy (v_open.mem_nhds hv)
    refine ⟨a₀, fun a ha ↦ ?_⟩
    have : Tendsto (fun b ↦ q.partialSum a (p.partialSum b y - (p 0) fun _ ↦ 0)) atTop
        (𝓝 (q.partialSum a (f (x + y) - f x))) := by
      have : ContinuousAt (q.partialSum a) (f (x + y) - f x) :=
        (partialSum_continuous q a).continuousAt
      apply this.tendsto.comp
      apply Tendsto.sub h'y
      convert! tendsto_const_nhds
      exact (HasFPowerSeriesAt.coeff_zero hf fun _ ↦ 0).symm
    apply u_closed.mem_of_tendsto this
    filter_upwards [Ici_mem_atTop b₀] with b hb using vu (hab _ _ ha hb)
  have C : CauchySeq (fun (s : Finset ℕ) ↦ ∑ n ∈ s, q n fun _ : Fin n => (f (x + y) - f x)) := by
    have Z := q.summable_norm_apply (x := f (x + y) - f x) h''y
    exact cauchySeq_finset_of_norm_bounded Z (fun i ↦ le_rfl)
  exact tendsto_nhds_of_cauchySeq_of_subseq C tendsto_finset_range L

/-- If an open partial homeomorphism `f` is defined at `a` and has a power series expansion there
with invertible linear term, then `f.symm` has a power series expansion at `f a`, given by the
inverse of the initial power series. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3712926d08b7e064e2b03c061591d6e834aab282` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
