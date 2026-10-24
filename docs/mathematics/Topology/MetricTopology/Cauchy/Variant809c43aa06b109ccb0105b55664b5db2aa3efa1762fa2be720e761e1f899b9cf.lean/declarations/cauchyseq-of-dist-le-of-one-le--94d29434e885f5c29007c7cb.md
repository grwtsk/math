# cauchySeq_of_dist_le_of_one_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc7af935462611e00697237f9581607e6f48c6b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/809c43aa06b109ccb0105b55664b5db2aa3efa1762fa2be720e761e1f899b9cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0e8058e-2397-9ab9-da73-17a9b8f72273",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c42170a3-56cf-7068-ffdb-2d80c4c85f9f",
  "kind": "theorem",
  "lexical_name": "cauchySeq_of_dist_le_of_one_le",
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
  "slug": "cauchyseq-of-dist-le-of-one-le--94d29434e885f5c29007c7cb",
  "source": {
    "blob": "cc7af935462611e00697237f9581607e6f48c6b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 19,
    "path": "GRWTSK/Topology/MetricTopology/Cauchy/Variant809c43aa06b109ccb0105b55664b5db2aa3efa1762fa2be720e761e1f899b9cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94d29434e885f5c29007c7cb5dcf491f306aa07fb37b46334499f82bff3c4b35",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Cauchy/Variant809c43aa06b109ccb0105b55664b5db2aa3efa1762fa2be720e761e1f899b9cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c42170a3-56cf-7068-ffdb-2d80c4c85f9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchySeq_of_dist_le_of_one_le {s : ℕ → α} {b : ℕ → ℝ} (hb : ∀ n, 0 ≤ b n)
    (hb₀ : Tendsto b atTop (𝓝 0))
    (h : ∀ m n, 1 ≤ m → m ≤ n → dist (s n) (s m) ≤ b m) : CauchySeq s := by
  refine (Metric.cauchySeq_iff).2 fun ε ε0 => ?_
  have h_ball : ∀ᶠ m in atTop, b m < ε / 2 := by
    have hdist : ∀ᶠ m in atTop, dist (b m) 0 < ε / 2 :=
      hb₀ (Metric.ball_mem_nhds 0 (half_pos ε0))
    refine hdist.mono ?_
    intro m hm
    have : |b m| < ε / 2 := by simpa [Metric.mem_ball, Real.dist_eq] using hm
    simpa [abs_of_nonneg (hb m)] using this
  rcases eventually_atTop.1 h_ball with ⟨M, hMb⟩
  refine ⟨max M 1, ?_⟩
  intro n hn k hk
  set a := max M 1
  have ha1 : 1 ≤ a := le_max_right _ _
  have hn_a : a ≤ n := hn
  have hk_a : a ≤ k := hk
  have hb_a : b a < ε / 2 := hMb a (le_max_left _ _)
  have htri : dist (s n) (s k) ≤ dist (s n) (s a) + dist (s a) (s k) := dist_triangle _ _ _
  have h1 : dist (s n) (s a) ≤ b a := h a n ha1 hn_a
  have h2 : dist (s a) (s k) ≤ b a := by
    simpa [dist_comm] using h a k ha1 hk_a
  exact lt_of_le_of_lt (le_trans htri (add_le_add h1 h2)) (by linarith [hb_a])
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Cauchy/Variant809c43aa06b109ccb0105b55664b5db2aa3efa1762fa2be720e761e1f899b9cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Cauchy/Variant809c43aa06b109ccb0105b55664b5db2aa3efa1762fa2be720e761e1f899b9cf.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc7af935462611e00697237f9581607e6f48c6b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
