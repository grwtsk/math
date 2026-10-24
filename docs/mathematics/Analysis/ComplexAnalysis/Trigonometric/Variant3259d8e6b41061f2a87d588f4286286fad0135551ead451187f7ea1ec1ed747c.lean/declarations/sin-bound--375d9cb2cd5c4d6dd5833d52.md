# sin_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1167848d-787d-6f1b-891c-36a112417ad1",
  "kind": "theorem",
  "lexical_name": "sin_bound",
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
  "slug": "sin-bound--375d9cb2cd5c4d6dd5833d52",
  "source": {
    "blob": "7a0e577e5ae1e0eeaa5937e7a50019c9f8a9f9ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 856,
    "line": 827,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Trigonometric/Variant3259d8e6b41061f2a87d588f4286286fad0135551ead451187f7ea1ec1ed747c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:375d9cb2cd5c4d6dd5833d52e0aa4ee1e52ee20e33f00bc0c68e7e25629299ae",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Trigonometric/Variant3259d8e6b41061f2a87d588f4286286fad0135551ead451187f7ea1ec1ed747c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1167848d-787d-6f1b-891c-36a112417ad1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 827–856.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sin_bound {x : ℝ} (hx : |x| ≤ 1) : |sin x - (x - x ^ 3 / 6)| ≤ |x| ^ 4 * (5 / 96) :=
  calc
    |sin x - (x - x ^ 3 / 6)| = ‖Complex.sin x - (x - x ^ 3 / 6 : ℝ)‖ := by
      rw [← Real.norm_eq_abs, ← norm_real]; simp
    _ = ‖((Complex.exp (-x * I) - Complex.exp (x * I)) * I -
          (2 * x - x ^ 3 / 3 : ℝ)) / 2‖ := by
      simp [Complex.sin, sub_div, add_div, neg_div, mul_div_cancel_left₀ _ (two_ne_zero' ℂ),
        div_div, show (3 : ℂ) * 2 = 6 by norm_num]
    _ = ‖((Complex.exp (-x * I) - ∑ m ∈ range 4, (-x * I) ^ m / m.factorial) -
                (Complex.exp (x * I) - ∑ m ∈ range 4, (x * I) ^ m / m.factorial)) * I / 2‖ :=
      (congr_arg (‖·‖ : ℂ → ℝ)
        (congr_arg (fun x : ℂ => x / 2)
          (by
            simp only [neg_mul, pow_succ, pow_zero, ofReal_sub, ofReal_mul, ofReal_ofNat,
              ofReal_div, sum_range_succ, range_zero, sum_empty, Nat.factorial, Nat.cast_succ,
              zero_add, mul_neg, mul_one, neg_neg, Nat.mul_one]
            apply Complex.ext <;> simp [div_eq_mul_inv, normSq]; ring)))
    _ ≤ ‖(Complex.exp (-x * I) - ∑ m ∈ range 4, (-x * I) ^ m / m.factorial) * I / 2‖ +
          ‖-((Complex.exp (x * I) - ∑ m ∈ range 4, (x * I) ^ m / m.factorial) * I) / 2‖ := by
      rw [sub_mul, sub_eq_add_neg, add_div]; exact norm_add_le _ _
    _ = ‖Complex.exp (x * I) - ∑ m ∈ range 4, (x * I) ^ m / m.factorial‖ / 2 +
          ‖Complex.exp (-x * I) - ∑ m ∈ range 4, (-x * I) ^ m / m.factorial‖ / 2 := by
      simp [add_comm, map_div₀]
    _ ≤ ‖x * I‖ ^ 4 * (Nat.succ 4 * (Nat.factorial 4 * (4 : ℕ) : ℝ)⁻¹) / 2 +
          ‖-x * I‖ ^ 4 * (Nat.succ 4 * (Nat.factorial 4 * (4 : ℕ) : ℝ)⁻¹) / 2 := by
      gcongr
      · exact Complex.exp_bound (by simpa) (by decide)
      · exact Complex.exp_bound (by simpa) (by decide)
    _ ≤ |x| ^ 4 * (5 / 96) := by norm_num [Nat.factorial]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Trigonometric/Variant3259d8e6b41061f2a87d588f4286286fad0135551ead451187f7ea1ec1ed747c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Trigonometric/Variant3259d8e6b41061f2a87d588f4286286fad0135551ead451187f7ea1ec1ed747c.lean#L827).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a0e577e5ae1e0eeaa5937e7a50019c9f8a9f9ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
