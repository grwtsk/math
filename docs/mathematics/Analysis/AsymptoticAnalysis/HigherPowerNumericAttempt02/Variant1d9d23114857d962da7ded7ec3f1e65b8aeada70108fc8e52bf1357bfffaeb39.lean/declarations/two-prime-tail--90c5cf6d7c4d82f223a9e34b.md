# two_prime_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12d409ed-f200-3bff-83e8-72e0e443129d",
  "kind": "theorem",
  "lexical_name": "two_prime_tail",
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
  "slug": "two-prime-tail--90c5cf6d7c4d82f223a9e34b",
  "source": {
    "blob": "80bc9570760691e8c72c19b6b555daa05fa8ca2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 57,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt02/Variant1d9d23114857d962da7ded7ec3f1e65b8aeada70108fc8e52bf1357bfffaeb39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90c5cf6d7c4d82f223a9e34b9d294bdcd407af78b6541e6a8d89fd4e38819ee2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt02/Variant1d9d23114857d962da7ded7ec3f1e65b8aeada70108fc8e52bf1357bfffaeb39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12d409ed-f200-3bff-83e8-72e0e443129d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_prime_tail (N : ℕ) :
    Real.log 2*(∑ k ∈ Icc 3 N,((2:ℝ)^(-(1:ℝ)/2))^k) ≤ (7/8:ℝ) := by
  let r : ℝ := (2:ℝ)^(-(1:ℝ)/2)
  have hr0 : 0 ≤ r := Real.rpow_nonneg (by norm_num) _
  have hs : r^2=(1/2:ℝ) := by simpa [r] using ratio_square 2
  have hr : r ≤ (5/7:ℝ) := by nlinarith
  have hi : (1-r)⁻¹ ≤ (7/2:ℝ) := by
    apply (inv_le_iff_one_le_mul₀ (by linarith : 0<1-r)).mpr
    linarith
  have hc : r^3 ≤ (5/14:ℝ) := by rw [pow_succ,hs]; nlinarith
  have hg := geometric_three N r hr0 (by linarith)
  have hl : 0 ≤ Real.log 2 := by positivity
  have he : r^3*(1-r)⁻¹ ≤ (5/4:ℝ) := by
    nlinarith [pow_nonneg hr0 3,inv_nonneg.mpr (by linarith : 0≤1-r)]
  change Real.log 2*(∑ k ∈ Icc 3 N,r^k) ≤ _
  have hh := mul_le_mul_of_nonneg_left (hg.trans he) hl
  nlinarith [Real.log_two_lt_d9]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt02/Variant1d9d23114857d962da7ded7ec3f1e65b8aeada70108fc8e52bf1357bfffaeb39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt02/Variant1d9d23114857d962da7ded7ec3f1e65b8aeada70108fc8e52bf1357bfffaeb39.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80bc9570760691e8c72c19b6b555daa05fa8ca2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
