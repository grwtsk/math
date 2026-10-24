# large_prime_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cad5f43-835e-6ca8-ccaa-b6ba52bb2588",
  "kind": "theorem",
  "lexical_name": "large_prime_tail",
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
  "slug": "large-prime-tail--eb3e4f7c639e8caa21451cc7",
  "source": {
    "blob": "bd7843c6be375a4468a88b75eba54868cec1826e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 74,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt01/Variantba465edd3087d4f1658ae934fd7cf522273361aba2a8c070e37df69da0e93a8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb3e4f7c639e8caa21451cc77ae7121b397e037aaad2429b9c1848a9e4cd7669",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt01/Variantba465edd3087d4f1658ae934fd7cf522273361aba2a8c070e37df69da0e93a8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cad5f43-835e-6ca8-ccaa-b6ba52bb2588`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem large_prime_tail {p : ℕ} (hp : 3 ≤ p) (N : ℕ) :
    Real.log p*(∑ k ∈ Icc 3 N,(p:ℝ)^(-(1:ℝ)/2)^k) ≤ (12/5:ℝ)*logPower p := by
  have hp0 : 0 < (p:ℝ) := by exact_mod_cast (by omega : 0<p)
  let r : ℝ := (p:ℝ)^(-(1:ℝ)/2)
  have hr0 : 0 ≤ r := Real.rpow_nonneg hp0.le _
  have hs : r^2≤(1/3:ℝ) := by
    rw [show r^2=(p:ℝ)⁻¹ by exact ratio_square (by omega)]
    apply (inv_le_iff_one_le_mul₀ hp0).mpr
    have hp3 : (3:ℝ)≤p := by exact_mod_cast hp
    linarith
  have hr : r ≤ (7/12:ℝ) := by nlinarith
  have hi : (1-r)⁻¹≤(12/5:ℝ) := by
    apply (inv_le_iff_one_le_mul₀ (by linarith : 0<1-r)).mpr
    linarith
  have hl : 0≤Real.log p := Real.log_nonneg (by exact_mod_cast (by omega : 1≤p))
  calc
    _ ≤ Real.log p*(r^3*(1-r)⁻¹) :=
      mul_le_mul_of_nonneg_left (geometric_three N r hr0 (by linarith)) hl
    _ ≤ Real.log p*(r^3*(12/5)) :=
      mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left hi (pow_nonneg hr0 3)) hl
    _ = (12/5:ℝ)*logPower p := by
      unfold logPower r
      rw [← Real.rpow_mul_natCast hp0.le]
      norm_num only [show (-(1:ℝ)/2)*(3:ℕ)=-(3:ℝ)/2 by norm_num]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt01/Variantba465edd3087d4f1658ae934fd7cf522273361aba2a8c070e37df69da0e93a8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt01/Variantba465edd3087d4f1658ae934fd7cf522273361aba2a8c070e37df69da0e93a8b.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd7843c6be375a4468a88b75eba54868cec1826e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
