# _root_.GRWTSK.Topology.GeneralTopology.StieltjesFunction.Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.Monotone.stieltjesFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e9c420f29462d29af9fe8184c831c0331b56b5a18251b9b86ed1a6ef5e734c7",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.StieltjesFunction.Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.Monotone.stieltjesFunction",
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
  "slug": "root-grwtsk-topology-generaltopology-stieltjesfunction-varianta539002bed--2a0cf383ed29c889b39dab4b",
  "source": {
    "blob": "23a8ecbec91aad2bc8e92c339adc5c4137d7e10e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 228,
    "path": "GRWTSK/Topology/GeneralTopology/Stieltjes/Variant330ce81572267d9a6a2d914f88847b875bb1872c7bbf18d3317f62f1ca8416c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a0cf383ed29c889b39dab4b7612ea06cb4653a2e435de84a9467df083640312",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stieltjes/Variant330ce81572267d9a6a2d914f88847b875bb1872c7bbf18d3317f62f1ca8416c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e9c420f29462d29af9fe8184c831c0331b56b5a18251b9b86ed1a6ef5e734c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def _root_.GRWTSK.Topology.GeneralTopology.StieltjesFunction.Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.Monotone.stieltjesFunction [OrderTopology R]
    {f : R → ℝ} (hf : Monotone f) : StieltjesFunction R where
  toFun := rightLim f
  mono' _ _ hxy := hf.rightLim hxy
  right_continuous' := by
    intro x s hs
    change ∀ᶠ y in 𝓝[≥] x, rightLim f y ∈ s
    obtain ⟨l, u, hlu, lus⟩ : ∃ l u : ℝ, rightLim f x ∈ Ioo l u ∧ Ioo l u ⊆ s :=
      mem_nhds_iff_exists_Ioo_subset.1 hs
    by_cases! hx : ∀ y, y ≤ x
    · filter_upwards [self_mem_nhdsWithin] with y (hy : x ≤ y)
      rw [show y = x by exact le_antisymm (hx y) hy]
      exact lus hlu
    rcases hx with ⟨y₀, hy₀⟩
    obtain ⟨y, xy, h'y⟩ : ∃ (y : R), x < y ∧ Ioo x y ⊆ f ⁻¹' Ioo l u :=
      (mem_nhdsGT_iff_exists_Ioo_subset' hy₀).1 (hf.tendsto_rightLim x (Ioo_mem_nhds hlu.1 hlu.2))
    filter_upwards [Ico_mem_nhdsGE xy] with z hz
    apply lus
    refine ⟨hlu.1.trans_le (hf.rightLim hz.1), ?_⟩
    rcases hz.1.eq_or_lt with rfl | h''z
    · exact hlu.2
    rcases Filter.eq_or_neBot (𝓝[>] z) with h'z | h'z
    · rw [rightLim_eq_of_eq_bot _ h'z]
      have : z ∈ Ioo x y := ⟨h''z, hz.2⟩
      exact (h'y this).2
    · obtain ⟨a, za, ay⟩ : ∃ a : R, z < a ∧ a < y := Filter.nonempty_of_mem (Ioo_mem_nhdsGT hz.2)
      calc
        rightLim f z ≤ f a := hf.rightLim_le za
        _ < u := (h'y ⟨hz.1.trans_lt za, ay⟩).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stieltjes/Variant330ce81572267d9a6a2d914f88847b875bb1872c7bbf18d3317f62f1ca8416c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stieltjes/Variant330ce81572267d9a6a2d914f88847b875bb1872c7bbf18d3317f62f1ca8416c6.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23a8ecbec91aad2bc8e92c339adc5c4137d7e10e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
