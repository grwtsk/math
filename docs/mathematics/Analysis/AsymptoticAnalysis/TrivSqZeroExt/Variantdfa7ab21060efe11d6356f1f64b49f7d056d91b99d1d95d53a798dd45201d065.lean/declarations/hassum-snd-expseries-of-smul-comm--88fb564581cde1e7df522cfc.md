# hasSum_snd_expSeries_of_smul_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2850b28be829e8cc59b5dd2a634415e8f6e91752",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/dfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f196398-84bf-c284-7d6f-924800be0e1e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e39867ac-cb93-a67a-ab04-8d80f11146df",
  "kind": "theorem",
  "lexical_name": "hasSum_snd_expSeries_of_smul_comm",
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
  "slug": "hassum-snd-expseries-of-smul-comm--88fb564581cde1e7df522cfc",
  "source": {
    "blob": "2850b28be829e8cc59b5dd2a634415e8f6e91752",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 58,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88fb564581cde1e7df522cfc0162c0f098b4c829455261d9eb96d884a4c4872a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e39867ac-cb93-a67a-ab04-8d80f11146df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_snd_expSeries_of_smul_comm [Field 𝕜] [CharZero 𝕜] [Ring R] [AddCommGroup M]
    [Algebra 𝕜 R] [Module R M] [Module Rᵐᵒᵖ M] [SMulCommClass R Rᵐᵒᵖ M] [Module 𝕜 M]
    [IsScalarTower 𝕜 R M] [IsScalarTower 𝕜 Rᵐᵒᵖ M] [TopologicalRing R] [TopologicalAddGroup M]
    [ContinuousSMul R M] [ContinuousSMul Rᵐᵒᵖ M] (x : tsze R M)
    (hx : MulOpposite.op x.fst • x.snd = x.fst • x.snd) {e : R}
    (h : HasSum (fun n => expSeries 𝕜 R n fun _ => x.fst) e) :
    HasSum (fun n => snd (expSeries 𝕜 (tsze R M) n fun _ => x)) (e • x.snd) := by
  simp_rw [expSeries_apply_eq] at *
  conv =>
    congr
    ext n
    rw [snd_smul, snd_pow_of_smul_comm _ _ hx, nsmul_eq_smul_cast 𝕜 n, smul_smul, inv_mul_eq_div, ←
      inv_div, ← smul_assoc]
  apply HasSum.smul_const
  rw [← hasSum_nat_add_iff' 1]
  rw [Finset.range_one, Finset.sum_singleton, Nat.cast_zero, div_zero, inv_zero, zero_smul,
    sub_zero]
  simp_rw [← Nat.succ_eq_add_one, Nat.pred_succ, Nat.factorial_succ, Nat.cast_mul, ←
    Nat.succ_eq_add_one,
    mul_div_cancel_left _ ((@Nat.cast_ne_zero 𝕜 _ _ _).mpr <| Nat.succ_ne_zero _)]
  exact h
#align triv_sq_zero_ext.has_sum_snd_exp_series_of_smul_comm TrivSqZeroExt.hasSum_snd_expSeries_of_smul_comm

/-- If `exp R x.fst` converges to `e` then `exp R x` converges to `inl e + inr (e • x.snd)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2850b28be829e8cc59b5dd2a634415e8f6e91752` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
