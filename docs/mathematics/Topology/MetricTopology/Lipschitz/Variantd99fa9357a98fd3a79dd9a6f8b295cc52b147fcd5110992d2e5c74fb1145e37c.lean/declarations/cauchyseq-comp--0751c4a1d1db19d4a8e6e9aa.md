# cauchySeq_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b858452f-0a74-8181-e5a0-313829cf9554",
  "kind": "lemma",
  "lexical_name": "cauchySeq_comp",
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
  "slug": "cauchyseq-comp--0751c4a1d1db19d4a8e6e9aa",
  "source": {
    "blob": "978aca7545aa610fe53d30981e3be0981cb2e193",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 285,
    "path": "GRWTSK/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0751c4a1d1db19d4a8e6e9aa1a2760165f4fb8214f8235b0b4a3c2fd46549336",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b858452f-0a74-8181-e5a0-313829cf9554`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cauchySeq_comp (hf : LipschitzOnWith K f s)
    {u : ℕ → α} (hu : CauchySeq u) (h'u : range u ⊆ s) :
    CauchySeq (f ∘ u) := by
  rcases cauchySeq_iff_le_tendsto_0.1 hu with ⟨b, b_nonneg, hb, blim⟩
  refine cauchySeq_iff_le_tendsto_0.2 ⟨fun n ↦ K * b n, ?_, ?_, ?_⟩
  · exact fun n ↦ mul_nonneg (by positivity) (b_nonneg n)
  · intro n m N hn hm
    have A n : u n ∈ s := h'u (mem_range_self _)
    apply (hf.dist_le_mul _ (A n) _ (A m)).trans
    exact mul_le_mul_of_nonneg_left (hb n m N hn hm) K.2
  · rw [← mul_zero (K : ℝ)]
    exact blim.const_mul _

end Metric

end LipschitzOnWith

namespace LocallyLipschitz

section Real

variable [PseudoEMetricSpace α] {f g : α → ℝ}

/-- The minimum of locally Lipschitz functions is locally Lipschitz. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `978aca7545aa610fe53d30981e3be0981cb2e193` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
