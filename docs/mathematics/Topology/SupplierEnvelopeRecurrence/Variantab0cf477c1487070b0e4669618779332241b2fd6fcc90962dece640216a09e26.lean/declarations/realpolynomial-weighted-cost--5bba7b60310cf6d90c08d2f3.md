# realPolynomial_weighted_cost

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c073b7e2-217e-5151-b5fa-5e900141c77a",
  "kind": "theorem",
  "lexical_name": "realPolynomial_weighted_cost",
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
  "slug": "realpolynomial-weighted-cost--5bba7b60310cf6d90c08d2f3",
  "source": {
    "blob": "636e6f3ed096315dcf8504042f0f8a875d46557f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 456,
    "path": "GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bba7b60310cf6d90c08d2f3498b6c10e9d8104e3c2d5c69ed2919e8b52d08e6",
  "verification": {
    "reference": "docs/verification/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c073b7e2-217e-5151-b5fa-5e900141c77a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realPolynomial_weighted_cost {a : ℕ → ℝ} {T h C ρ p : ℝ} {q : ℕ}
    (hT : 0 ≤ T) (hh : 0 ≤ h) (hC : 0 ≤ C) (hρ : 0 ≤ ρ) (hp : 0 ≤ p)
    (hpq : p ≤ (q : ℝ)) (ha : ∀ j, 0 ≤ a j) (haρ : ∀ j, a j ≤ ρ)
    (hsum : Summable (fun j : ℕ => ρ ^ j * (1 + (j : ℝ)) ^ q)) (n : ℕ) :
    (∑ j ∈ Finset.range n, coefficientProduct a j *
      (C * (1 + T + (j : ℝ) * h) ^ p)) ≤
      (C * (1 + h) ^ q * (∑' j : ℕ, ρ ^ j * (1 + (j : ℝ)) ^ q)) * (1 + T) ^ p := by
  have hTbase : 0 ≤ 1 + T := by linarith
  have hTpow : 0 ≤ (1 + T) ^ p := Real.rpow_nonneg hTbase p
  have hbase : 0 ≤ C * (1 + h) ^ q * (1 + T) ^ p :=
    mul_nonneg (by positivity) hTpow
  have hpoint (j : ℕ) : coefficientProduct a j * (C * (1 + T + (j : ℝ) * h) ^ p) ≤
      (C * (1 + h) ^ q * (1 + T) ^ p) * (ρ ^ j * (1 + (j : ℝ)) ^ q) := by
    have hj : 0 ≤ (j : ℝ) := Nat.cast_nonneg j
    have hjh : 0 ≤ (j : ℝ) * h := mul_nonneg hj hh
    have hjbase : 0 ≤ 1 + (j : ℝ) * h := by linarith
    have hsize₀ : 0 ≤ 1 + T + (j : ℝ) * h := by linarith
    have hsize₁ : 1 + T + (j : ℝ) * h ≤ (1 + T) * (1 + (j : ℝ) * h) := by
      nlinarith [mul_nonneg hT hjh]
    have hsize₂ : 1 + (j : ℝ) * h ≤ (1 + h) * (1 + (j : ℝ)) := by nlinarith
    have hindex : (1 + (j : ℝ) * h) ^ p ≤ (1 + (j : ℝ) * h) ^ q := by
      simpa only [Real.rpow_natCast] using
        Real.rpow_le_rpow_of_exponent_le (by linarith : 1 ≤ 1 + (j : ℝ) * h) hpq
    have hshape : (1 + T + (j : ℝ) * h) ^ p ≤
        (1 + T) ^ p * ((1 + h) ^ q * (1 + (j : ℝ)) ^ q) := by
      calc
        _ ≤ ((1 + T) * (1 + (j : ℝ) * h)) ^ p :=
          Real.rpow_le_rpow hsize₀ hsize₁ hp
        _ = (1 + T) ^ p * (1 + (j : ℝ) * h) ^ p :=
          Real.mul_rpow hTbase hjbase
        _ ≤ (1 + T) ^ p * (1 + (j : ℝ) * h) ^ q :=
          mul_le_mul_of_nonneg_left hindex hTpow
        _ ≤ (1 + T) ^ p * ((1 + h) ^ q * (1 + (j : ℝ)) ^ q) := by
          apply mul_le_mul_of_nonneg_left _ hTpow
          simpa only [mul_pow] using pow_le_pow_left₀ hjbase hsize₂ q
    have hbound := mul_le_mul (coefficientProduct_le_geometric hρ ha haρ j)
      (mul_le_mul_of_nonneg_left hshape hC)
      (mul_nonneg hC (Real.rpow_nonneg hsize₀ p)) (pow_nonneg hρ j)
    calc
      _ ≤ ρ ^ j * (C * ((1 + T) ^ p * ((1 + h) ^ q * (1 + (j : ℝ)) ^ q))) := hbound
      _ = _ := by ring
  calc
    _ ≤ ∑ j ∈ Finset.range n,
        (C * (1 + h) ^ q * (1 + T) ^ p) * (ρ ^ j * (1 + (j : ℝ)) ^ q) :=
      Finset.sum_le_sum (fun j _ => hpoint j)
    _ = (C * (1 + h) ^ q * (1 + T) ^ p) *
        ∑ j ∈ Finset.range n, ρ ^ j * (1 + (j : ℝ)) ^ q :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ (C * (1 + h) ^ q * (1 + T) ^ p) *
        (∑' j : ℕ, ρ ^ j * (1 + (j : ℝ)) ^ q) :=
      mul_le_mul_of_nonneg_left
        (hsum.sum_le_tsum (Finset.range n) (fun j _ => by positivity)) hbase
    _ = _ := by ring

/-- The exact real allowance exponent survives iteration. No classical
arithmetic decay is asserted: the actual weighted terminal tail is an explicit
hypothesis and is the only additional limit premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `636e6f3ed096315dcf8504042f0f8a875d46557f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
