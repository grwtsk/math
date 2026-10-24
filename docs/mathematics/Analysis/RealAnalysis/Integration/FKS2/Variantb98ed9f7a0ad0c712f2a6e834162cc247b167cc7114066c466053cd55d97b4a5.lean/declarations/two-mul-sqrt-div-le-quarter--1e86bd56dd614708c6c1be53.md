# two_mul_sqrt_div_le_quarter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7862aa5-c86e-3770-c988-6bfb8f9f1b67",
  "kind": "lemma",
  "lexical_name": "two_mul_sqrt_div_le_quarter",
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
  "slug": "two-mul-sqrt-div-le-quarter--1e86bd56dd614708c6c1be53",
  "source": {
    "blob": "4bc63a57afc465f27db885b1686b1f5e58591aef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 586,
    "line": 552,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e86bd56dd614708c6c1be53cbd2f8962e0793187c594d138c827d245fdb4b7c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7862aa5-c86e-3770-c988-6bfb8f9f1b67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–586.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma two_mul_sqrt_div_le_quarter (t : ℝ) (ht : t ≥ 1000) :
    2 * Real.sqrt (t / 5.5666305) ≤ t / 4 := by
  -- Suggested proof:
  -- 1) note `t > 0` and `0 < (5.5666305:ℝ)`.
  -- 2) square both sides using `Real.mul_self_le_mul_self_iff` (or `sq_le_sq`),
  --    reducing to `4*(t/5.5666305) ≤ (t/4)^2`.
  -- 3) simplify to `t ≥ 64/5.5666305`, then use `ht` and `norm_num`.
  have ht0 : 0 ≤ t := by linarith
  have hdiv_nonneg : 0 ≤ t / 5.5666305 := by positivity
  have hright_nonneg : 0 ≤ t / 4 := by positivity
  have h64 : (64 / 5.5666305 : ℝ) ≤ t := by
    have hnum : (64 / 5.5666305 : ℝ) < 1000 := by norm_num
    linarith
  have hmain : 4 * (t / 5.5666305) ≤ (t / 4) ^ 2 := by
    have hmul : (64 / 5.5666305 : ℝ) * t ≤ t * t := by
      exact mul_le_mul_of_nonneg_right h64 ht0
    have hdiv16 : ((64 / 5.5666305 : ℝ) * t) / 16 ≤ (t * t) / 16 :=
      div_le_div_of_nonneg_right hmul (by norm_num)
    norm_num [pow_two, div_eq_mul_inv, mul_assoc, mul_left_comm, mul_comm] at hdiv16 ⊢
    exact hdiv16
  have hsq : (2 * Real.sqrt (t / 5.5666305)) * (2 * Real.sqrt (t / 5.5666305)) ≤ (t / 4) * (t / 4) := by
    have hsqrt_sq : (Real.sqrt (t / 5.5666305)) ^ 2 = t / 5.5666305 := Real.sq_sqrt hdiv_nonneg
    calc
      (2 * Real.sqrt (t / 5.5666305)) * (2 * Real.sqrt (t / 5.5666305))
          = 4 * (Real.sqrt (t / 5.5666305)) ^ 2 := by ring
      _ = 4 * (t / 5.5666305) := by rw [hsqrt_sq]
      _ ≤ (t / 4) ^ 2 := hmain
      _ = (t / 4) * (t / 4) := by ring
  have hnonneg_left : 0 ≤ 2 * Real.sqrt (t / 5.5666305) := by positivity
  exact (mul_self_le_mul_self_iff hnonneg_left hright_nonneg).2 hsq

/--
A very crude upper bound on `BKLNW.a₁` at large `t`.
You can make this as weak as you like; `≤ 2` is plenty.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bc63a57afc465f27db885b1686b1f5e58591aef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
