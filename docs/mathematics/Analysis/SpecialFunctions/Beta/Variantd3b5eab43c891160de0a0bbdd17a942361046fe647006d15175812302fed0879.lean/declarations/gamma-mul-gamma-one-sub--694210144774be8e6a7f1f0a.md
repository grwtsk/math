# Gamma_mul_Gamma_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19004bb83df9dbb84f2643aec6bec388982f15a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 422,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28dc0a92-a4e4-5c62-ca56-6e5a72436f90",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce244f26-2676-e914-1ff3-e30bf19f9622",
  "kind": "theorem",
  "lexical_name": "Gamma_mul_Gamma_one_sub",
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
  "slug": "gamma-mul-gamma-one-sub--694210144774be8e6a7f1f0a",
  "source": {
    "blob": "19004bb83df9dbb84f2643aec6bec388982f15a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 422,
    "path": "GRWTSK/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:694210144774be8e6a7f1f0a02c697197a4ca05bad80f240f5ea08c31d4abff8",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce244f26-2676-e914-1ff3-e30bf19f9622`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Gamma_mul_Gamma_one_sub (z : ℂ) : Gamma z * Gamma (1 - z) = π / sin (π * z) := by
  have pi_ne : (π : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr pi_ne_zero
  by_cases hs : sin (↑π * z) = 0
  · -- first deal with silly case z = integer
    rw [hs, div_zero]
    rw [← neg_eq_zero, ← Complex.sin_neg, ← mul_neg, Complex.sin_eq_zero_iff, mul_comm] at hs
    obtain ⟨k, hk⟩ := hs
    rw [mul_eq_mul_right_iff, eq_false (ofReal_ne_zero.mpr pi_pos.ne'), or_false_iff,
      neg_eq_iff_eq_neg] at hk
    rw [hk]
    cases k
    · rw [Int.ofNat_eq_coe, Int.cast_ofNat, Complex.Gamma_neg_nat_eq_zero, zero_mul]
    · rw [Int.cast_negSucc, neg_neg, Nat.cast_add, Nat.cast_one, add_comm, sub_add_cancel',
        Complex.Gamma_neg_nat_eq_zero, mul_zero]
  refine' tendsto_nhds_unique ((GammaSeq_tendsto_Gamma z).mul (GammaSeq_tendsto_Gamma <| 1 - z)) _
  have : ↑π / sin (↑π * z) = 1 * (π / sin (π * z)) := by rw [one_mul]
  convert Tendsto.congr' ((eventually_ne_atTop 0).mp (eventually_of_forall fun n hn =>
    (GammaSeq_mul z hn).symm)) (Tendsto.mul _ _)
  · convert tendsto_coe_nat_div_add_atTop (1 - z) using 1; ext1 n; rw [add_sub_assoc]
  · have : ↑π / sin (↑π * z) = 1 / (sin (π * z) / π) := by field_simp
    convert tendsto_const_nhds.div _ (div_ne_zero hs pi_ne)
    rw [← tendsto_mul_iff_of_ne_zero tendsto_const_nhds pi_ne, div_mul_cancel _ pi_ne]
    convert tendsto_euler_sin_prod z using 1
    ext1 n; rw [mul_comm, ← mul_assoc]
#align complex.Gamma_mul_Gamma_one_sub Complex.Gamma_mul_Gamma_one_sub

/-- The Gamma function does not vanish on `ℂ` (except at non-positive integers, where the function
is mathematically undefined and we set it to `0` by convention). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19004bb83df9dbb84f2643aec6bec388982f15a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
