# ratio_term_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60b9a1ee-cf68-a966-36df-a879e0aa9553",
  "kind": "theorem",
  "lexical_name": "ratio_term_abs_le",
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
  "slug": "ratio-term-abs-le--14f3d98ca33b7f12b95fc1c7",
  "source": {
    "blob": "76e41e90eeab38989cbde6fa04c08eb9e163ca5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 38,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14f3d98ca33b7f12b95fc1c7ac5158e429d57486f25651590c88ac6047b7f94c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60b9a1ee-cf68-a966-36df-a879e0aa9553`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem ratio_term_abs_le (A : ℝ) (u v g : ℕ)
    (hA : 1 ≤ A) (hu : 1 ≤ u) (hv : 1 ≤ v) (hg : 1 ≤ g) :
    |(ArithmeticFunction.moebius g : ℝ) ^ 2 *
      (if Nat.Coprime g (u * v) then 1 else 0) * thetaRemainder A ((u * v) * g ^ 2)| ≤
      (kernelBound A / Real.sqrt ((u * v : ℕ) : ℝ)) * (1 / (g : ℝ)) := by
  have hK := kernelBound_nonneg A hA
  have hu0 : 0 < u := by omega
  have hv0 : 0 < v := by omega
  have hg0 : 0 < g := by omega
  have hq : 1 ≤ (u * v) * g ^ 2 := by
    have hq0 : 0 < (u * v) * g ^ 2 := by positivity
    omega
  have hs := thetaRemainder_abs_le_kernelBound A ((u * v) * g ^ 2) hA hq
  have hmsq : (ArithmeticFunction.moebius g : ℝ) ^ 2 ≤ 1 := by
    have h := pow_le_pow_left₀ (abs_nonneg (ArithmeticFunction.moebius g : ℝ))
      (moebius_real_abs_le g) 2
    simpa only [sq_abs, one_pow] using h
  have hden : kernelBound A / Real.sqrt (((u * v) * g ^ 2 : ℕ) : ℝ) =
      (kernelBound A / Real.sqrt ((u * v : ℕ) : ℝ)) * (1 / (g : ℝ)) := by
    rw [Nat.cast_mul, Nat.cast_pow, Real.sqrt_mul (Nat.cast_nonneg _),
      Real.sqrt_sq_eq_abs, abs_of_nonneg (Nat.cast_nonneg _)]
    ring
  by_cases hcop : Nat.Coprime g (u * v)
  · rw [if_pos hcop, mul_one, abs_mul, abs_of_nonneg (sq_nonneg _)]
    calc
      _ ≤ |thetaRemainder A ((u * v) * g ^ 2)| :=
        mul_le_of_le_one_left (abs_nonneg _) hmsq
      _ ≤ _ := hs.trans_eq hden
  · rw [if_neg hcop, mul_zero, zero_mul, abs_zero]
    positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76e41e90eeab38989cbde6fa04c08eb9e163ca5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
