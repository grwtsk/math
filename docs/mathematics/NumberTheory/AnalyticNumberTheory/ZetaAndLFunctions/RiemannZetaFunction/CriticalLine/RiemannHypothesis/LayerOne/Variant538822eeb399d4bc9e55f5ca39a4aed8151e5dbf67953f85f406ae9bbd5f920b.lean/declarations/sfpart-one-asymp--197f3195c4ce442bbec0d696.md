# sfPart_one_asymp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5627e313051e182825d48bb489edc6d136a21ed1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6d627d7-1f37-026c-a169-6fd6a7703d68",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33ed3159-6ca0-cc98-1f23-630f7e9cad55",
  "kind": "theorem",
  "lexical_name": "sfPart_one_asymp",
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
  "slug": "sfpart-one-asymp--197f3195c4ce442bbec0d696",
  "source": {
    "blob": "5627e313051e182825d48bb489edc6d136a21ed1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:197f3195c4ce442bbec0d696bd708918474edcbe5f8b4e845057871e571678be",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33ed3159-6ca0-cc98-1f23-630f7e9cad55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sfPart_one_asymp :
    ∃ C : ℝ, ∀ (l : ℝ), 2 ≤ l → ∀ (Λs : ℂ), Λs.re = l / 2 → |Λs.im| ≤ 1 →
      ∀ y : ℝ, 0 ≤ y → y ≤ l →
        |sfPart Λs 1 y - l ^ 2 * ((y / l) ^ 2 / 2 - 4 * (y / l) ^ 3 / 3 + (y / l) ^ 4)|
          ≤ C * (1 + l) := by
  obtain ⟨C2, h2⟩ := prime_logpow_sum 2 le_rfl
  obtain ⟨C3, h3⟩ := prime_logpow_sum 3 (by norm_num)
  obtain ⟨C4, h4⟩ := prime_logpow_sum 4 (by norm_num)
  refine ⟨|C2| + 12 * |C3| + 6 + 9 * |C4| + 4, fun l hl Λs hre him y hy0 hyl => ?_⟩
  have hl0 : 0 < l := by linarith
  have hl1 : 1 + l ≤ 3 / 2 * l := by linarith
  have h1l : 0 ≤ 1 + l := by linarith
  have hy1 : 1 + y ≤ 1 + l := by linarith
  -- the three prime sums
  set S2 := primeLogPowSum 2 y with hS2
  set S3 := primeLogPowSum 3 y with hS3
  set S4 := primeLogPowSum 4 y with hS4
  have e2 : |S2 - y ^ 2 / 2| ≤ |C2| * (1 + l) := by
    have h := h2 y hy0
    simp only [Nat.cast_ofNat] at h
    rw [show (2:ℕ) - 1 = 1 from rfl, pow_one] at h
    calc |S2 - y ^ 2 / 2| ≤ C2 * (1 + y) := h
      _ ≤ |C2| * (1 + y) := mul_le_mul_of_nonneg_right (le_abs_self _) (by linarith)
      _ ≤ |C2| * (1 + l) := mul_le_mul_of_nonneg_left hy1 (abs_nonneg _)
  have e3 : |S3 - y ^ 3 / 3| ≤ |C3| * (1 + l) ^ 2 := by
    have h := h3 y hy0
    simp only [Nat.cast_ofNat] at h
    rw [show (3:ℕ) - 1 = 2 from rfl] at h
    calc |S3 - y ^ 3 / 3| ≤ C3 * (1 + y) ^ 2 := h
      _ ≤ |C3| * (1 + y) ^ 2 := mul_le_mul_of_nonneg_right (le_abs_self _) (by positivity)
      _ ≤ |C3| * (1 + l) ^ 2 := by gcongr
  have e4 : |S4 - y ^ 4 / 4| ≤ |C4| * (1 + l) ^ 3 := by
    have h := h4 y hy0
    simp only [Nat.cast_ofNat] at h
    rw [show (4:ℕ) - 1 = 3 from rfl] at h
    calc |S4 - y ^ 4 / 4| ≤ C4 * (1 + y) ^ 3 := h
      _ ≤ |C4| * (1 + y) ^ 3 := mul_le_mul_of_nonneg_right (le_abs_self _) (by positivity)
      _ ≤ |C4| * (1 + l) ^ 3 := by gcongr
  -- the parameter
  set zr := (Λs⁻¹).re with hzr
  set w := (‖Λs‖ ^ 2)⁻¹ with hw
  have hz2 : |zr - 2 / l| ≤ 8 / l ^ 3 := inv_re_param hl hre him
  have hw2 : |w - 4 / l ^ 2| ≤ 16 / l ^ 4 := inv_normSq_param hl hre him
  have hwle : w ≤ 4 / l ^ 2 := inv_normSq_param_le hl hre him
  have hw0 : 0 ≤ w := by rw [hw]; positivity
  have h8 : 8 / l ^ 3 ≤ 2 / l := by
    rw [div_le_div_iff₀ (by positivity) hl0]
    have : 4 ≤ l ^ 2 := by nlinarith
    nlinarith
  have hzabs : |zr| ≤ 4 / l := by
    have h := abs_sub_abs_le_abs_sub zr (2 / l)
    rw [abs_of_pos (by positivity : (0:ℝ) < 2 / l)] at h
    have : |zr| ≤ 2 / l + 8 / l ^ 3 := by linarith
    calc |zr| ≤ 2 / l + 8 / l ^ 3 := this
      _ ≤ 2 / l + 2 / l := by linarith
      _ = 4 / l := by ring
  -- rewrite sfPart and the main term
  rw [sfPart_one_eq Λs y]
  have hmain : l ^ 2 * ((y / l) ^ 2 / 2 - 4 * (y / l) ^ 3 / 3 + (y / l) ^ 4)
      = y ^ 2 / 2 - 2 * (2 / l) * (y ^ 3 / 3) + (4 / l ^ 2) * (y ^ 4 / 4) := by
    field_simp
    ring
  rw [hmain]
  have hdec : S2 - 2 * zr * S3 + w * S4 - (y ^ 2 / 2 - 2 * (2 / l) * (y ^ 3 / 3) + 4 / l ^ 2 * (y ^ 4 / 4))
      = (S2 - y ^ 2 / 2) + (-(2 * zr) * (S3 - y ^ 3 / 3)) + (-(2 * (zr - 2 / l)) * (y ^ 3 / 3))
        + (w * (S4 - y ^ 4 / 4)) + ((w - 4 / l ^ 2) * (y ^ 4 / 4)) := by ring
  change |S2 - 2 * zr * S3 + w * S4 - (y ^ 2 / 2 - 2 * (2 / l) * (y ^ 3 / 3) + 4 / l ^ 2 * (y ^ 4 / 4))|
    ≤ (|C2| + 12 * |C3| + 6 + 9 * |C4| + 4) * (1 + l)
  rw [hdec]
  -- the five term bounds, each ≤ const · (1+l)
  have hy3 : y ^ 3 ≤ l ^ 3 := pow_le_pow_left₀ hy0 hyl 3
  have hy4 : y ^ 4 ≤ l ^ 4 := pow_le_pow_left₀ hy0 hyl 4
  have t2 : |-(2 * zr) * (S3 - y ^ 3 / 3)| ≤ 12 * |C3| * (1 + l) := by
    rw [abs_mul, abs_neg, abs_mul, abs_two]
    calc 2 * |zr| * |S3 - y ^ 3 / 3| ≤ 2 * (4 / l) * (|C3| * (1 + l) ^ 2) := by
          gcongr
      _ = 8 * |C3| * ((1 + l) / l) * (1 + l) := by field_simp; ring
      _ ≤ 8 * |C3| * (3 / 2) * (1 + l) := by
          have : (1 + l) / l ≤ 3 / 2 := by rw [div_le_iff₀ hl0]; linarith
          gcongr
      _ = 12 * |C3| * (1 + l) := by ring
  have t3 : |-(2 * (zr - 2 / l)) * (y ^ 3 / 3)| ≤ 6 * (1 + l) := by
    rw [abs_mul, abs_neg, abs_mul, abs_two, abs_of_nonneg (by positivity : (0:ℝ) ≤ y ^ 3 / 3)]
    calc 2 * |zr - 2 / l| * (y ^ 3 / 3) ≤ 2 * (8 / l ^ 3) * (l ^ 3 / 3) := by gcongr
      _ = 16 / 3 := by field_simp; ring
      _ ≤ 6 * (1 + l) := by linarith
  have t4 : |w * (S4 - y ^ 4 / 4)| ≤ 9 * |C4| * (1 + l) := by
    rw [abs_mul, abs_of_nonneg hw0]
    calc w * |S4 - y ^ 4 / 4| ≤ (4 / l ^ 2) * (|C4| * (1 + l) ^ 3) := by gcongr
      _ = 4 * |C4| * ((1 + l) ^ 2 / l ^ 2) * (1 + l) := by field_simp
      _ ≤ 4 * |C4| * (9 / 4) * (1 + l) := by
          have : (1 + l) ^ 2 / l ^ 2 ≤ 9 / 4 := by
            rw [div_le_iff₀ (by positivity)]; nlinarith
          gcongr
      _ = 9 * |C4| * (1 + l) := by ring
  have t5 : |(w - 4 / l ^ 2) * (y ^ 4 / 4)| ≤ 4 * (1 + l) := by
    rw [abs_mul, abs_of_nonneg (by positivity : (0:ℝ) ≤ y ^ 4 / 4)]
    calc |w - 4 / l ^ 2| * (y ^ 4 / 4) ≤ (16 / l ^ 4) * (l ^ 4 / 4) := by gcongr
      _ = 4 := by field_simp; ring
      _ ≤ 4 * (1 + l) := by linarith
  calc |(S2 - y ^ 2 / 2) + (-(2 * zr) * (S3 - y ^ 3 / 3)) + (-(2 * (zr - 2 / l)) * (y ^ 3 / 3))
        + (w * (S4 - y ^ 4 / 4)) + ((w - 4 / l ^ 2) * (y ^ 4 / 4))|
      ≤ |S2 - y ^ 2 / 2| + |-(2 * zr) * (S3 - y ^ 3 / 3)| + |-(2 * (zr - 2 / l)) * (y ^ 3 / 3)|
        + |w * (S4 - y ^ 4 / 4)| + |(w - 4 / l ^ 2) * (y ^ 4 / 4)| := by
        refine (abs_add_le _ _).trans (add_le_add ?_ le_rfl)
        refine (abs_add_le _ _).trans (add_le_add ?_ le_rfl)
        refine (abs_add_le _ _).trans (add_le_add ?_ le_rfl)
        exact abs_add_le _ _
    _ ≤ |C2| * (1 + l) + 12 * |C3| * (1 + l) + 6 * (1 + l) + 9 * |C4| * (1 + l) + 4 * (1 + l) :=
        add_le_add (add_le_add (add_le_add (add_le_add e2 t2) t3) t4) t5
    _ = (|C2| + 12 * |C3| + 6 + 9 * |C4| + 4) * (1 + l) := by ring

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5627e313051e182825d48bb489edc6d136a21ed1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
