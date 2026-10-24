# tendsto_of_tendsto_pointwise_of_cauchySeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a86695945e4c66640b661f94d3ce85955fba3bf0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1591,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba304201-7c7f-c99f-d912-d510de214ba0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:262bb855-d3d6-bfc6-bba6-e273c67e016b",
  "kind": "theorem",
  "lexical_name": "tendsto_of_tendsto_pointwise_of_cauchySeq",
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
  "slug": "tendsto-of-tendsto-pointwise-of-cauchyseq--6361e36e4a9f87b0cc1ed4db",
  "source": {
    "blob": "a86695945e4c66640b661f94d3ce85955fba3bf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1611,
    "line": 1591,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OperatorNorm/Variantf5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6361e36e4a9f87b0cc1ed4db470d7f3ec16895d847ea5193f5ed36a96b3c790f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/OperatorNorm/Variantf5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:262bb855-d3d6-bfc6-bba6-e273c67e016b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1591–1611.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_of_tendsto_pointwise_of_cauchySeq {f : ℕ → E' →SL[σ₁₂] F} {g : E' →SL[σ₁₂] F}
    (hg : Tendsto (fun n x => f n x) atTop (𝓝 g)) (hf : CauchySeq f) : Tendsto f atTop (𝓝 g) := by
  /- Since `f` is a Cauchy sequence, there exists `b → 0` such that `‖f n - f m‖ ≤ b N` for any
    `m, n ≥ N`. -/
  rcases cauchySeq_iff_le_tendsto_0.1 hf with ⟨b, hb₀, hfb, hb_lim⟩
  -- Since `b → 0`, it suffices to show that `‖f n x - g x‖ ≤ b n * ‖x‖` for all `n` and `x`.
  suffices : ∀ n x, ‖f n x - g x‖ ≤ b n * ‖x‖
  exact tendsto_iff_norm_tendsto_zero.2
    (squeeze_zero (fun n => norm_nonneg _) (fun n => op_norm_le_bound _ (hb₀ n) (this n)) hb_lim)
  intro n x
  -- Note that `f m x → g x`, hence `‖f n x - f m x‖ → ‖f n x - g x‖` as `m → ∞`
  have : Tendsto (fun m => ‖f n x - f m x‖) atTop (𝓝 ‖f n x - g x‖) :=
    (tendsto_const_nhds.sub <| tendsto_pi_nhds.1 hg _).norm
  -- Thus it suffices to verify `‖f n x - f m x‖ ≤ b n * ‖x‖` for `m ≥ n`.
  refine' le_of_tendsto this (eventually_atTop.2 ⟨n, fun m hm => _⟩)
  -- This inequality follows from `‖f n - f m‖ ≤ b n`.
  exact (f n - f m).le_of_op_norm_le (hfb _ _ _ le_rfl hm) _
#align continuous_linear_map.tendsto_of_tendsto_pointwise_of_cauchy_seq ContinuousLinearMap.tendsto_of_tendsto_pointwise_of_cauchySeq

/-- If the target space is complete, the space of continuous linear maps with its norm is also
complete. This works also if the source space is seminormed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/OperatorNorm/Variantf5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OperatorNorm/Variantf5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.lean#L1591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a86695945e4c66640b661f94d3ce85955fba3bf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
