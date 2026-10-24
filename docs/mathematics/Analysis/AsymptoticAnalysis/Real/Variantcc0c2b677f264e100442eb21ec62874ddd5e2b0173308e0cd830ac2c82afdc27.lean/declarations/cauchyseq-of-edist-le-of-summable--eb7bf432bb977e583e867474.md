# cauchySeq_of_edist_le_of_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3bcd698-d88c-d398-7a81-1adee70a521a",
  "kind": "theorem",
  "lexical_name": "cauchySeq_of_edist_le_of_summable",
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
  "slug": "cauchyseq-of-edist-le-of-summable--eb7bf432bb977e583e867474",
  "source": {
    "blob": "2809b2a7167ae98b9320b0f75cbed6acd9d68534",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 32,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Real/Variantcc0c2b677f264e100442eb21ec62874ddd5e2b0173308e0cd830ac2c82afdc27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb7bf432bb977e583e8674743cfa4241b4ed148c3a3d65cc26bed2fef4f539fc",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Real/Variantcc0c2b677f264e100442eb21ec62874ddd5e2b0173308e0cd830ac2c82afdc27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3bcd698-d88c-d398-7a81-1adee70a521a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchySeq_of_edist_le_of_summable [PseudoEMetricSpace α] {f : ℕ → α} (d : ℕ → ℝ≥0)
    (hf : ∀ n, edist (f n) (f n.succ) ≤ d n) (hd : Summable d) : CauchySeq f := by
  refine EMetric.cauchySeq_iff_NNReal.2 fun ε εpos => ?_
  -- Actually we need partial sums of `d` to be a Cauchy sequence
  replace hd : CauchySeq fun n : ℕ => ∑ x in range n, d x :=
    let ⟨_, H⟩ := hd
    H.tendsto_sum_nat.cauchySeq
  -- Now we take the same `N` as in one of the definitions of a Cauchy sequence
  refine (Metric.cauchySeq_iff'.1 hd ε (NNReal.coe_pos.2 εpos)).imp fun N hN n hn => ?_
  specialize hN n hn
  -- We simplify the known inequality
  rw [dist_nndist, NNReal.nndist_eq, ← sum_range_add_sum_Ico _ hn, add_tsub_cancel_left,
    NNReal.coe_lt_coe, max_lt_iff] at hN
  rw [edist_comm]
  -- Then use `hf` to simplify the goal to the same form
  refine lt_of_le_of_lt (edist_le_Ico_sum_of_edist_le hn fun _ _ => hf _) ?_
  exact_mod_cast hN.1
#align cauchy_seq_of_edist_le_of_summable cauchySeq_of_edist_le_of_summable

variable [PseudoMetricSpace α] {f : ℕ → α} {a : α}

/-- If the distance between consecutive points of a sequence is estimated by a summable series,
then the original sequence is a Cauchy sequence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Real/Variantcc0c2b677f264e100442eb21ec62874ddd5e2b0173308e0cd830ac2c82afdc27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Real/Variantcc0c2b677f264e100442eb21ec62874ddd5e2b0173308e0cd830ac2c82afdc27.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2809b2a7167ae98b9320b0f75cbed6acd9d68534` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
