# continuousOn_prod_of_subset_closure_continuousOn_lipschitzOnWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a304538-9012-a4bd-af38-8cf53793c73c",
  "kind": "theorem",
  "lexical_name": "continuousOn_prod_of_subset_closure_continuousOn_lipschitzOnWith",
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
  "slug": "continuouson-prod-of-subset-closure-continuouson-lipschitzonwith--923870b20eabdfcdcaae9313",
  "source": {
    "blob": "f3a3609162dd90ead76018e112eb68ea713ba84c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 472,
    "line": 437,
    "path": "GRWTSK/Topology/GeneralTopology/Lipschitz/Variant0cf4db893b209075614a3f314d237916f0c604da3e1ef74093c2e477b80f6364.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:923870b20eabdfcdcaae9313651244de6f6b8e8bf75f73d7098919c779c32cfa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lipschitz/Variant0cf4db893b209075614a3f314d237916f0c604da3e1ef74093c2e477b80f6364.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a304538-9012-a4bd-af38-8cf53793c73c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_prod_of_subset_closure_continuousOn_lipschitzOnWith [PseudoEMetricSpace α]
    [TopologicalSpace β] [PseudoEMetricSpace γ] (f : α × β → γ) {s s' : Set α} {t : Set β}
    (hs' : s' ⊆ s) (hss' : s ⊆ closure s') (K : ℝ≥0)
    (ha : ∀ a ∈ s', ContinuousOn (fun y => f (a, y)) t)
    (hb : ∀ b ∈ t, LipschitzOnWith K (fun x => f (x, b)) s) : ContinuousOn f (s ×ˢ t) := by
  rintro ⟨x, y⟩ ⟨hx : x ∈ s, hy : y ∈ t⟩
  refine Metric.nhds_basis_closedEBall.tendsto_right_iff.2 fun ε (ε0 : 0 < ε) => ?_
  replace ε0 : 0 < ε / 2 := ENNReal.half_pos ε0.ne'
  obtain ⟨δ, δpos, hδ⟩ : ∃ δ : ℝ≥0, 0 < δ ∧ (δ : ℝ≥0∞) * ↑(3 * K) < ε / 2 :=
    ENNReal.exists_nnreal_pos_mul_lt ENNReal.coe_ne_top ε0.ne'
  rw [← ENNReal.coe_pos] at δpos
  rcases EMetric.mem_closure_iff.1 (hss' hx) δ δpos with ⟨x', hx', hxx'⟩
  have A : s ∩ Metric.eball x δ ∈ 𝓝[s] x :=
    inter_mem_nhdsWithin _ (Metric.eball_mem_nhds _ δpos)
  have B : t ∩ { b | edist (f (x', b)) (f (x', y)) ≤ ε / 2 } ∈ 𝓝[t] y :=
    inter_mem self_mem_nhdsWithin (ha x' hx' y hy (Metric.closedEBall_mem_nhds (f (x', y)) ε0))
  filter_upwards [nhdsWithin_prod A B] with ⟨a, b⟩ ⟨⟨has, hax⟩, ⟨hbt, hby⟩⟩
  calc
    edist (f (a, b)) (f (x, y)) ≤ edist (f (a, b)) (f (x', b)) + edist (f (x', b)) (f (x', y)) +
        edist (f (x', y)) (f (x, y)) := edist_triangle4 _ _ _ _
    _ ≤ K * (δ + δ) + ε / 2 + K * δ := by
      gcongr
      · refine (hb b hbt).edist_le_mul_of_le has (hs' hx') ?_
        exact (edist_triangle _ _ _).trans (add_le_add (le_of_lt hax) hxx'.le)
      · exact hby
      · exact (hb y hy).edist_le_mul_of_le (hs' hx') hx ((edist_comm _ _).trans_le hxx'.le)
    _ = δ * ↑(3 * K) + ε / 2 := by push_cast; ring
    _ ≤ ε / 2 + ε / 2 := by gcongr
    _ = ε := ENNReal.add_halves _

/-- Consider a function `f : α × β → γ`. Suppose that it is continuous on each “vertical fiber”
`{a} × t`, `a ∈ s`, and is Lipschitz continuous on each “horizontal fiber” `s × {b}`, `b ∈ t`
with the same Lipschitz constant `K`. Then it is continuous on `s × t`.

The actual statement uses (Lipschitz) continuity of `fun y ↦ f (a, y)` and `fun x ↦ f (x, b)`
instead of continuity of `f` on subsets of the product space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lipschitz/Variant0cf4db893b209075614a3f314d237916f0c604da3e1ef74093c2e477b80f6364.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lipschitz/Variant0cf4db893b209075614a3f314d237916f0c604da3e1ef74093c2e477b80f6364.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3a3609162dd90ead76018e112eb68ea713ba84c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
