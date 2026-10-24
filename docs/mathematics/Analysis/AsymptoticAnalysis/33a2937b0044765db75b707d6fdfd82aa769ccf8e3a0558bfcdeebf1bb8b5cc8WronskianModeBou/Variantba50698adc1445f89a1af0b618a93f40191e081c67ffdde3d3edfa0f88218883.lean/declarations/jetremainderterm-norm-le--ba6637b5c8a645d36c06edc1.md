# jetRemainderTerm_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f520d83-593d-76dc-8d45-92fee7a7e11e",
  "kind": "theorem",
  "lexical_name": "jetRemainderTerm_norm_le",
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
  "slug": "jetremainderterm-norm-le--ba6637b5c8a645d36c06edc1",
  "source": {
    "blob": "150dc3cec457277502f6cf48c954d69cfa0d068c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 182,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variantba50698adc1445f89a1af0b618a93f40191e081c67ffdde3d3edfa0f88218883.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba6637b5c8a645d36c06edc107ef675d7f5e82b36f9eed4527af1301f0406983",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variantba50698adc1445f89a1af0b618a93f40191e081c67ffdde3d3edfa0f88218883.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f520d83-593d-76dc-8d45-92fee7a7e11e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem jetRemainderTerm_norm_le (k : Fin 5) {A : ℝ} (hA : 3 ≤ A) (m : ℕ) :
    ‖jetRemainderTerm k A m‖ ≤ (2 * 4 ^ k.val * A ^ (k.val + 1)) *
      (((m : ℝ) + 3) ^ (2 * k.val + 4) * Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1))) := by
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hn : 1 ≤ ((m : ℝ) + 3) ^ 2 := by nlinarith
  have hy : 3 ≤ A * ((m : ℝ) + 3) ^ 2 := by
    nlinarith [mul_nonneg (show 0 ≤ A by linarith) (sub_nonneg.mpr hn)]
  have hp := thetaPhiJetPolynomial_abs_le k hy
  unfold jetRemainderTerm
  rw [norm_mul, norm_mul, Real.norm_of_nonneg (sq_nonneg _), Real.norm_eq_abs,
    Real.norm_of_nonneg (Real.exp_pos _).le]
  calc
    _ ≤ ((m : ℝ) + 3) ^ 2 * (2 * 4 ^ k.val * (A * ((m : ℝ) + 3) ^ 2) ^ (k.val + 1)) *
        Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1)) :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hp (sq_nonneg _)) (Real.exp_pos _).le
    _ = _ := by simp only [mul_pow, pow_add, pow_mul]; ring

/-- The signed raw jet remainder from mode three onward is absolutely summable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variantba50698adc1445f89a1af0b618a93f40191e081c67ffdde3d3edfa0f88218883.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variantba50698adc1445f89a1af0b618a93f40191e081c67ffdde3d3edfa0f88218883.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `150dc3cec457277502f6cf48c954d69cfa0d068c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
