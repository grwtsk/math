# polynomial_lt_exp_two_mul_div_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25048b62-4557-e23b-2f75-98346a61eeb2",
  "kind": "theorem",
  "lexical_name": "polynomial_lt_exp_two_mul_div_four",
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
  "slug": "polynomial-lt-exp-two-mul-div-four--38dcb2fe3be2fe4348144e2f",
  "source": {
    "blob": "3566e10e2a75b8364c4577ebc8a7622b57f1aa2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 33,
    "path": "GRWTSK/Analysis/SpecialFunctions/ExponentialPolynomialDomination.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38dcb2fe3be2fe4348144e2f79d02ca9e3b323663006f71d837071d3db40f8a7",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/ExponentialPolynomialDomination.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25048b62-4557-e23b-2f75-98346a61eeb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_lt_exp_two_mul_div_four (C : ℝ) (d : ℕ) {T : ℝ}
    (hC : 0 ≤ C) (hT : 1 ≤ T)
    (beyond : 2 * C * ((d + 1).factorial : ℝ) < T) :
    C * (1 + T) ^ d < Real.exp (2 * T) / 4 := by
  let f : ℝ := (d + 1).factorial
  have hf : 0 < f := Nat.cast_pos.2 (Nat.factorial_pos (d + 1))
  have hbase : 0 ≤ 1 + T := by linarith
  have hbase_le : 1 + T ≤ 2 * T := by linarith
  have hpoly : (1 + T) ^ d ≤ (2 * T) ^ d := pow_le_pow_left₀ hbase hbase_le d
  have hx : 0 < 2 * T := by linarith
  have hp : 0 < (2 * T) ^ d := pow_pos hx d
  have hbeyond : 2 * C * f < T := beyond
  have hscalar : 4 * C * f < 2 * T := by linarith only [hbeyond]
  have hstrict : C * (2 * T) ^ d < ((2 * T) ^ (d + 1) / f) / 4 := by
    have hfour : (0 : ℝ) < 4 := by norm_num
    apply (lt_div_iff₀ hfour).2
    apply (lt_div_iff₀ hf).2
    calc
      (C * (2 * T) ^ d * 4) * f = (4 * C * f) * (2 * T) ^ d := by ring
      _ < (2 * T) * (2 * T) ^ d := mul_lt_mul_of_pos_right hscalar hp
      _ = (2 * T) ^ (d + 1) := by
        rw [pow_succ]
        exact mul_comm (2 * T) ((2 * T) ^ d)
  have hseries : (2 * T) ^ (d + 1) / f ≤ Real.exp (2 * T) :=
    Real.pow_div_factorial_le_exp (2 * T) hx.le (d + 1)
  calc
    C * (1 + T) ^ d ≤ C * (2 * T) ^ d :=
      mul_le_mul_of_nonneg_left hpoly hC
    _ < ((2 * T) ^ (d + 1) / f) / 4 := hstrict
    _ ≤ Real.exp (2 * T) / 4 :=
      div_le_div_of_nonneg_right hseries (by norm_num)

/-- The displayed threshold suffices for every greater or equal horizon. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SpecialFunctions/ExponentialPolynomialDomination.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/ExponentialPolynomialDomination.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3566e10e2a75b8364c4577ebc8a7622b57f1aa2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
