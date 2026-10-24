# literal_half_integer_exceeds_fixed_exponential_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb946284-49d7-f037-2ead-550b30b32f12",
  "kind": "theorem",
  "lexical_name": "literal_half_integer_exceeds_fixed_exponential_cap",
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
  "slug": "literal-half-integer-exceeds-fixed-exponential-cap--6d21936e901d2ba1c7fba0ae",
  "source": {
    "blob": "d85a3e43baddec82cc49e55973e07b46cf30c082",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 19,
    "path": "GRWTSK/Analysis/NativeOffGridGrowthBarrier/Variant70b9a65d2f67454fdb33d4897b72cb8bf79e48847f50e3347100dc97eabbb037.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d21936e901d2ba1c7fba0aeb31ed2019b895c1d62f2b015568f17aa16af1eb2",
  "verification": {
    "reference": "docs/verification/Analysis/NativeOffGridGrowthBarrier/Variant70b9a65d2f67454fdb33d4897b72cb8bf79e48847f50e3347100dc97eabbb037.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb946284-49d7-f037-2ead-550b30b32f12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_half_integer_exceeds_fixed_exponential_cap
    (m : ℕ) (D η R : ℝ) (hη : η < 1 / 2) :
    ∃ n : ℕ, 100 ≤ n ∧ R ≤ (n : ℝ) + 1 / 2 ∧
      D * ((n : ℝ) + 1 / 2) ^ m * Real.exp (η * ((n : ℝ) + 1 / 2)) <
        densityReadout ((n : ℝ) + 1 / 2) := by
  have hevent : ∀ᶠ A : ℝ in atTop,
      (8 / 9) * D + 1 < Real.exp ((1 / 2 - η) * A) / A ^ (m + 9) := by
    simpa only [Real.rpow_natCast] using
      (tendsto_exp_mul_div_rpow_atTop (m + 9 : ℕ) (1 / 2 - η) (by linarith)).eventually
        (eventually_gt_atTop ((8 / 9) * D + 1))
  obtain ⟨S, hS⟩ := eventually_atTop.mp hevent
  obtain ⟨n, hn⟩ := exists_nat_ge (max S (max R 100))
  have hnS : S ≤ (n : ℝ) := (le_max_left S _).trans hn
  have hnR : R ≤ (n : ℝ) := (le_max_left R 100).trans ((le_max_right S _).trans hn)
  have hn100R : (100 : ℝ) ≤ (n : ℝ) :=
    (le_max_right R 100).trans ((le_max_right S _).trans hn)
  have hn100 : 100 ≤ n := by exact_mod_cast hn100R
  let A : ℝ := (n : ℝ) + 1 / 2
  have hApos : 0 < A := by dsimp [A]; linarith
  have hAS : S ≤ A := by dsimp [A]; linarith
  have hAR : R ≤ A := by dsimp [A]; linarith
  have hbig := (lt_div_iff₀ (pow_pos hApos (m + 9))).mp (hS A hAS)
  have hmult := mul_lt_mul_of_pos_right hbig (Real.exp_pos (η * A))
  have heq : Real.exp ((1 / 2 - η) * A) * Real.exp (η * A) = Real.exp (A / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [heq, pow_add] at hmult
  have hstrict : D * A ^ m * Real.exp (η * A) <
      (9 / 8) * (Real.exp (A / 2) / A ^ 9) := by
    rw [← mul_div_assoc]
    apply (lt_div_iff₀ (pow_pos hApos 9)).mpr
    have hp := mul_pos (mul_pos (pow_pos hApos m) (pow_pos hApos 9))
      (Real.exp_pos (η * A))
    nlinarith
  exact ⟨n, hn100, hAR, hstrict.trans_le (literal_half_integer_native_readout_lower n hn100)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/NativeOffGridGrowthBarrier/Variant70b9a65d2f67454fdb33d4897b72cb8bf79e48847f50e3347100dc97eabbb037.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/NativeOffGridGrowthBarrier/Variant70b9a65d2f67454fdb33d4897b72cb8bf79e48847f50e3347100dc97eabbb037.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d85a3e43baddec82cc49e55973e07b46cf30c082` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
