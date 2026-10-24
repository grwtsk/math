# HasFPowerSeriesAt.eventually_hasSum_of_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb9bba9211dc66f732b3570dcddecc878f80c76e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 614,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:844821d2-3889-d304-adf7-f154f44b93ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84810105-b5b0-83e7-2a2c-6be09b76e7fb",
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
  "slug": "hasfpowerseriesat-eventually-hassum-of-comp--6775381fb1a039e7a45425d6",
  "source": {
    "blob": "bb9bba9211dc66f732b3570dcddecc878f80c76e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 614,
    "path": "GRWTSK/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6775381fb1a039e7a45425d6d85e6b50aaedb32a25ecc55e6a3874f72b652174",
  "verification": {
    "reference": "docs/verification/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84810105-b5b0-83e7-2a2c-6be09b76e7fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 614–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasFPowerSeriesAt.eventually_hasSum_of_comp  {f : E → F} {g : F → G}
    {q : FormalMultilinearSeries 𝕜 F G} {p : FormalMultilinearSeries 𝕜 E F} {x : E}
    (hgf : HasFPowerSeriesAt (g ∘ f) (q.comp p) x) (hf : HasFPowerSeriesAt f p x)
    (hq : 0 < q.radius) :
    ∀ᶠ y in 𝓝 0, HasSum (fun n : ℕ => q n fun _ : Fin n => (f (x + y) - f x)) (g (f (x + y))) := by
  have : ∀ᶠ y in 𝓝 (0 : E), f (x + y) - f x ∈ EMetric.ball 0 q.radius := by
    have A : ContinuousAt (fun y ↦ f (x + y) - f x) 0 := by
      apply ContinuousAt.sub _ continuousAt_const
      exact hf.continuousAt.comp_of_eq (continuous_add_left x).continuousAt (by simp)
    have B : EMetric.ball 0 q.radius ∈ 𝓝 (f (x + 0) - f x) := by
      simpa using EMetric.ball_mem_nhds _ hq
    exact A.preimage_mem_nhds B
  filter_upwards [hgf.tendsto_partialSum_prod_of_comp hq (hf.radius_pos),
    hf.tendsto_partialSum, this] with y hy h'y h''y
  have L : Tendsto (fun n ↦ q.partialSum n (f (x + y) - f x)) atTop (𝓝 (g (f (x + y)))) := by
    apply (closed_nhds_basis (g (f (x + y)))).tendsto_right_iff.2
    rintro u ⟨hu, u_closed⟩
    simp only [id_eq, eventually_atTop, ge_iff_le]
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
      convert tendsto_const_nhds
      exact (HasFPowerSeriesAt.coeff_zero hf fun _ ↦ 0).symm
    apply u_closed.mem_of_tendsto this
    filter_upwards [Ici_mem_atTop b₀] with b hb using vu (hab _ _ ha hb)
  have C : CauchySeq (fun (s : Finset ℕ) ↦ ∑ n ∈ s, q n fun _ : Fin n => (f (x + y) - f x)) := by
    have Z := q.summable_norm_apply (x := f (x + y) - f x) h''y
    exact cauchySeq_finset_of_norm_bounded _ Z (fun i ↦ le_rfl)
  exact tendsto_nhds_of_cauchySeq_of_subseq C tendsto_finset_range L

/-- If a partial homeomorphism `f` is defined at `a` and has a power series expansion there with
invertible linear term, then `f.symm` has a power series expansion at `f a`, given by the inverse
of the initial power series. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean#L614).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb9bba9211dc66f732b3570dcddecc878f80c76e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
