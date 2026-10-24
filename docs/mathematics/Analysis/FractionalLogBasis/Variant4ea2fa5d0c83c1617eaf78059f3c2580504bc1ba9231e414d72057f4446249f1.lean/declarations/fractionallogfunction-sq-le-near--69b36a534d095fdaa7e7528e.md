# fractionalLogFunction_sq_le_near

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42d3b7e0-da34-7da1-2016-7d2285e01b9f",
  "kind": "theorem",
  "lexical_name": "fractionalLogFunction_sq_le_near",
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
  "slug": "fractionallogfunction-sq-le-near--69b36a534d095fdaa7e7528e",
  "source": {
    "blob": "cdf7d7f0e531d7b81b80ee8a82a13a1dc79909bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 30,
    "path": "GRWTSK/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69b36a534d095fdaa7e7528e4607e33912222ded47679d6845bdebb68fac17ae",
  "verification": {
    "reference": "docs/verification/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42d3b7e0-da34-7da1-2016-7d2285e01b9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem fractionalLogFunction_sq_le_near (d : ℕ) (u : ℝ) :
    ‖fractionalLogFunction d u‖ ^ 2 ≤ Real.exp u / (d : ℝ) ^ 2 := by
  have hf : Int.fract (Real.exp u / (d : ℝ)) ≤ Real.exp u / (d : ℝ) := by
    rw [Int.fract]
    exact sub_le_self _ (by exact_mod_cast
      Int.floor_nonneg.mpr (div_nonneg (Real.exp_nonneg _) (Nat.cast_nonneg d)))
  rw [fractionalLogFunction, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_pos (Real.exp_pos _), Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (Int.fract_nonneg _), mul_pow]
  have he : Real.exp (-u / 2) ^ 2 * Real.exp u ^ 2 = Real.exp u := by
    rw [← mul_pow, ← Real.exp_add, pow_two, ← Real.exp_add]
    congr 1
    ring
  calc
    _ ≤ Real.exp (-u / 2) ^ 2 * (Real.exp u / (d : ℝ)) ^ 2 :=
      mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (Int.fract_nonneg _) hf 2) (sq_nonneg _)
    _ = _ := by rw [div_pow, ← mul_div_assoc, he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdf7d7f0e531d7b81b80ee8a82a13a1dc79909bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
