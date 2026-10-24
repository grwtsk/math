# log_stirlingSeq_diff_hasSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7dba6c2-3df9-3c27-bdc0-52fbcd540365",
  "kind": "theorem",
  "lexical_name": "log_stirlingSeq_diff_hasSum",
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
  "slug": "log-stirlingseq-diff-hassum--2e984598097ca7b5412cc6a2",
  "source": {
    "blob": "73f07f03fc8b1a88de24a67f848199a1987b7b6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e984598097ca7b5412cc6a255a31a91cffab8f47c70bcc5fcc09b72e1042d92",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7dba6c2-3df9-3c27-bdc0-52fbcd540365`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_stirlingSeq_diff_hasSum (m : ℕ) :
    HasSum (fun k : ℕ => ↑1 / (↑2 * k.succ + ↑1) * (((1:ℝ) / (↑2 * m.succ + ↑1)) ^ 2) ^ k.succ)
      (log (stirlingSeq m.succ) - log (stirlingSeq m.succ.succ)) := by
  change HasSum
    ((fun b : ℕ => (1:ℝ) / ((2:ℝ) * b + (1:ℝ)) * (((1:ℝ) / (2 * m.succ + 1)) ^ 2) ^ b) ∘ succ) _
  refine' (hasSum_nat_add_iff (a := _ - _) -- Porting note: must give implicit arguments
    (f := (fun b : ℕ => ↑1 / (↑2 * b + ↑1) * (((1:ℝ) / (2 * m.succ + 1)) ^ 2) ^ b)) 1).mpr _
  convert (hasSum_log_one_add_inv <|
    cast_pos.mpr (succ_pos m)).mul_left ((m.succ : ℝ) + 1 / 2) using 1
  · ext k
    rw [← pow_mul, pow_add]
    push_cast
    field_simp
    ring
  · have h : ∀ (x : ℝ) (_ : x ≠ 0), 1 + x⁻¹ = (x + 1) / x := by
      intro x hx; rw [_root_.add_div, div_self hx, inv_eq_one_div]
    simp (disch := norm_cast <;> apply_rules [mul_ne_zero, succ_ne_zero, factorial_ne_zero,
      exp_ne_zero]) only [log_stirlingSeq_formula, log_div, log_mul, log_exp, factorial_succ,
      cast_mul, cast_succ, cast_zero, range_one, sum_singleton, h]
    ring
#align stirling.log_stirling_seq_diff_has_sum Stirling.log_stirlingSeq_diff_hasSum

/-- The sequence `log ∘ stirlingSeq ∘ succ` is monotone decreasing -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73f07f03fc8b1a88de24a67f848199a1987b7b6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
