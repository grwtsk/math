# cauchySeq_of_dist_le_of_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49382184-272a-0bd3-239a-b2ca06b0cff4",
  "kind": "theorem",
  "lexical_name": "cauchySeq_of_dist_le_of_summable",
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
  "slug": "cauchyseq-of-dist-le-of-summable--bb25c3b240861b3dcbf0e2bb",
  "source": {
    "blob": "2809b2a7167ae98b9320b0f75cbed6acd9d68534",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 55,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Real/Variantcc0c2b677f264e100442eb21ec62874ddd5e2b0173308e0cd830ac2c82afdc27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb25c3b240861b3dcbf0e2bb2afee40067f8278765244c21702de0e8e705825e",
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

Occurrence: `result:49382184-272a-0bd3-239a-b2ca06b0cff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchySeq_of_dist_le_of_summable (d : ℕ → ℝ) (hf : ∀ n, dist (f n) (f n.succ) ≤ d n)
    (hd : Summable d) : CauchySeq f := by
  -- Porting note: todo: with `Topology/Instances/NNReal` we can use this:
  -- lift d to ℕ → ℝ≥0 using fun n => dist_nonneg.trans (hf n)
  -- refine cauchySeq_of_edist_le_of_summable d ?_ ?_
  -- · exact_mod_cast hf
  -- · exact_mod_cast hd
  refine' Metric.cauchySeq_iff'.2 fun ε εpos => _
  replace hd : CauchySeq fun n : ℕ => ∑ x in range n, d x :=
    let ⟨_, H⟩ := hd
    H.tendsto_sum_nat.cauchySeq
  refine' (Metric.cauchySeq_iff'.1 hd ε εpos).imp fun N hN n hn => _
  have hsum := hN n hn
  rw [Real.dist_eq, ← sum_Ico_eq_sub _ hn] at hsum
  calc
    dist (f n) (f N) = dist (f N) (f n) := dist_comm _ _
    _ ≤ ∑ x in Ico N n, d x := dist_le_Ico_sum_of_dist_le hn fun _ _ => hf _
    _ ≤ |∑ x in Ico N n, d x| := le_abs_self _
    _ < ε := hsum
#align cauchy_seq_of_dist_le_of_summable cauchySeq_of_dist_le_of_summable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Real/Variantcc0c2b677f264e100442eb21ec62874ddd5e2b0173308e0cd830ac2c82afdc27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Real/Variantcc0c2b677f264e100442eb21ec62874ddd5e2b0173308e0cd830ac2c82afdc27.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2809b2a7167ae98b9320b0f75cbed6acd9d68534` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
