# sq_pi_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8557404b-d345-b378-f8df-081b3ddce80c",
  "kind": "theorem",
  "lexical_name": "sq_pi_lt",
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
  "slug": "sq-pi-lt--8aaf8e2f3d02bfca2911aaf3",
  "source": {
    "blob": "b6ca87b02f4d071369a6450567252419632f736d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 51,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8aaf8e2f3d02bfca2911aaf3fcb46973f9fdc3cde34f5bcaf67aa4c19f09995d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8557404b-d345-b378-f8df-081b3ddce80c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sq_pi_lt (M_a x_a : ℝ) (hupper : ∀ x > x_a, pi x < x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1)) + (M_a * x / log x ^ 6)) :
    ∀ x > x_a, pi x ^ 2 < x ^ 2 * (1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5 + 64 / log x ^ 6 + ε M_a x / log x ^ 7) := by
  intro x hx
  have sq_algebra (M l : ℝ) : ((Nat.factorial 0 : ℝ) / l ^ 1 + (Nat.factorial 1 : ℝ) / l ^ 2 + (Nat.factorial 2 : ℝ) / l ^ 3 + (Nat.factorial 3 : ℝ) / l ^ 4 + (Nat.factorial 4 : ℝ) / l ^ 5 + M / l ^ 6) ^ 2
    = 1 / l ^ 2 + 2 / l ^ 3 + 5 / l ^ 4 + 16 / l ^ 5 + 64 / l ^ 6 + (72 + 2 * M + (2 * M + 132) / l + (4 * M + 288) / l ^ 2 + (12 * M + 576) / l ^ 3 + (48 * M) / l ^ 4 + M ^ 2 / l ^ 5) / l ^ 7 := by
    ring
  have h_nonneg_pi : 0 ≤ pi x := by
    unfold _root_.pi
    exact_mod_cast Nat.zero_le (⌊x⌋₊.primeCounting)
  have h_pos_rhs : 0 < x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1)) + (M_a * x / log x ^ 6) := by
    linarith [h_nonneg_pi, hupper x hx]
  have h_sum_eq : ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1)) = (Nat.factorial 0 : ℝ) / log x ^ 1 + (Nat.factorial 1 : ℝ) / log x ^ 2 + (Nat.factorial 2 : ℝ) / log x ^ 3 + (Nat.factorial 3 : ℝ) / log x ^ 4 + (Nat.factorial 4 : ℝ) / log x ^ 5 := by
    simp [Finset.sum_range_succ, Nat.factorial]
  have h_main1 : ((Nat.factorial 0 : ℝ) / log x ^ 1 + (Nat.factorial 1 : ℝ) / log x ^ 2 + (Nat.factorial 2 : ℝ) / log x ^ 3 + (Nat.factorial 3 : ℝ) / log x ^ 4 + (Nat.factorial 4 : ℝ) / log x ^ 5 + M_a / log x ^ 6) ^ 2 = 1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5 + 64 / log x ^ 6 + ε M_a x / log x ^ 7 := by
    simpa [ε] using sq_algebra M_a (log x)
  have h_eq : x * ((Nat.factorial 0 : ℝ) / log x ^ 1 + (Nat.factorial 1 : ℝ) / log x ^ 2 + (Nat.factorial 2 : ℝ) / log x ^ 3 + (Nat.factorial 3 : ℝ) / log x ^ 4 + (Nat.factorial 4 : ℝ) / log x ^ 5 + M_a / log x ^ 6) = x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1)) + (M_a * x / log x ^ 6) := by
    rw [h_sum_eq]; ring
  have h1'' : pi x < x * ((Nat.factorial 0 : ℝ) / log x ^ 1 + (Nat.factorial 1 : ℝ) / log x ^ 2 + (Nat.factorial 2 : ℝ) / log x ^ 3 + (Nat.factorial 3 : ℝ) / log x ^ 4 + (Nat.factorial 4 : ℝ) / log x ^ 5 + M_a / log x ^ 6) := by
    simpa only [h_eq] using hupper x hx
  have h_pos1 : 0 < x * ((Nat.factorial 0 : ℝ) / log x ^ 1 + (Nat.factorial 1 : ℝ) / log x ^ 2 + (Nat.factorial 2 : ℝ) / log x ^ 3 + (Nat.factorial 3 : ℝ) / log x ^ 4 + (Nat.factorial 4 : ℝ) / log x ^ 5 + M_a / log x ^ 6) := by
    simpa only [h_eq] using h_pos_rhs
  have h2 : pi x ^ 2 < (x * ((Nat.factorial 0 : ℝ) / log x ^ 1 + (Nat.factorial 1 : ℝ) / log x ^ 2 + (Nat.factorial 2 : ℝ) / log x ^ 3 + (Nat.factorial 3 : ℝ) / log x ^ 4 + (Nat.factorial 4 : ℝ) / log x ^ 5 + M_a / log x ^ 6)) ^ 2 :=
    sq_lt_sq.mpr (by simpa only [abs_of_nonneg h_nonneg_pi, abs_of_pos h_pos1] using h1'')
  have h4 : (x * ((Nat.factorial 0 : ℝ) / log x ^ 1 + (Nat.factorial 1 : ℝ) / log x ^ 2 + (Nat.factorial 2 : ℝ) / log x ^ 3 + (Nat.factorial 3 : ℝ) / log x ^ 4 + (Nat.factorial 4 : ℝ) / log x ^ 5 + M_a / log x ^ 6)) ^ 2 = x ^ 2 * ((Nat.factorial 0 : ℝ) / log x ^ 1 + (Nat.factorial 1 : ℝ) / log x ^ 2 + (Nat.factorial 2 : ℝ) / log x ^ 3 + (Nat.factorial 3 : ℝ) / log x ^ 4 + (Nat.factorial 4 : ℝ) / log x ^ 5 + M_a / log x ^ 6) ^ 2 := by ring
  simpa only [h4, h_main1] using h2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ca87b02f4d071369a6450567252419632f736d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
