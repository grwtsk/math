# theta_bound_of_prime_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ba111dcdee7875e51b1b98d5941203e6e28e2a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51a048d3-e58a-45dd-0f3c-8fca110d36b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6edd12d8-5b6a-e7f8-fe0c-6fe4df61f232",
  "kind": "theorem",
  "lexical_name": "theta_bound_of_prime_bound",
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
  "slug": "theta-bound-of-prime-bound--1a7c4279ee01a8e7f0934c41",
  "source": {
    "blob": "1ba111dcdee7875e51b1b98d5941203e6e28e2a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a7c4279ee01a8e7f0934c41d46c6f914fe2ad7c1a033b49220a1cb88d0c62cb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6edd12d8-5b6a-e7f8-fe0c-6fe4df61f232`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem theta_bound_of_prime_bound
    {C : ℝ} {x₀ : ℕ} (hC : 0 ≤ C) (hx₀ : 2 ≤ x₀)
    (hA : ∀ x : ℕ, x₀ ≤ x →
      |primeCharacterPartialSum x| ≤ C * residueDifferenceCriticalRate x) :
    ∀ N : ℕ, max x₀ 3 ≤ N →
      |conductorThreeTheta N| ≤
        (2 * (C + earlyPrimeMass x₀)) * twistedPsiCriticalRate N := by
  intro N hN
  have hx₀N : x₀ ≤ N := (le_max_left _ _).trans hN
  have h3N : 3 ≤ N := (le_max_right _ _).trans hN
  have hRate1 : 1 ≤ residueDifferenceCriticalRate N :=
    one_le_residueDifferenceCriticalRate h3N
  have hRate0 : 0 ≤ residueDifferenceCriticalRate N := le_trans (by norm_num) hRate1
  have hLog0 : 0 ≤ Real.log (N : ℝ) :=
    Real.log_nonneg (by exact_mod_cast (show 1 ≤ N by omega))
  have hEarly0 : 0 ≤ earlyPrimeMass x₀ := earlyPrimeMass_nonneg x₀
  have hUniform : ∀ n : ℕ, n < N →
      |primeCharacterPartialSum n| ≤
        (C + earlyPrimeMass x₀) * residueDifferenceCriticalRate N := by
    intro n hnN
    by_cases hn : x₀ ≤ n
    · have hmain := hA n hn
      have hmono := residueDifferenceCriticalRate_mono
        (show 1 ≤ n by omega) (Nat.le_of_lt hnN)
      calc
        |primeCharacterPartialSum n| ≤
            C * residueDifferenceCriticalRate n := hmain
        _ ≤ C * residueDifferenceCriticalRate N :=
          mul_le_mul_of_nonneg_left hmono hC
        _ ≤ (C + earlyPrimeMass x₀) * residueDifferenceCriticalRate N := by
          nlinarith
    · have hearly := abs_primePartial_le_earlyPrimeMass (Nat.lt_of_not_ge hn)
      calc
        |primeCharacterPartialSum n| ≤ earlyPrimeMass x₀ := hearly
        _ ≤ earlyPrimeMass x₀ * residueDifferenceCriticalRate N := by
          nlinarith
        _ ≤ (C + earlyPrimeMass x₀) * residueDifferenceCriticalRate N := by
          nlinarith
  rw [conductorThreeTheta_eq_abel]
  calc
    |primeCharacterPartialSum N * Real.log N -
        ∑ n ∈ Finset.range N,
          primeCharacterPartialSum n *
            (Real.log (n + 1) - Real.log n)| ≤
        |primeCharacterPartialSum N * Real.log N| +
          |∑ n ∈ Finset.range N,
            primeCharacterPartialSum n *
              (Real.log (n + 1) - Real.log n)| := abs_sub _ _
    _ ≤ C * residueDifferenceCriticalRate N * Real.log N +
          (C + earlyPrimeMass x₀) * residueDifferenceCriticalRate N *
            Real.log N := by
      gcongr
      · rw [abs_mul, abs_of_nonneg hLog0]
        exact mul_le_mul_of_nonneg_right (hA N hx₀N) hLog0
      · calc
          |∑ n ∈ Finset.range N,
              primeCharacterPartialSum n *
                (Real.log (n + 1) - Real.log n)| ≤
              ∑ n ∈ Finset.range N,
                |primeCharacterPartialSum n *
                  (Real.log (n + 1) - Real.log n)| :=
            Finset.abs_sum_le_sum_abs _ _
          _ ≤ ∑ n ∈ Finset.range N,
                ((C + earlyPrimeMass x₀) *
                  residueDifferenceCriticalRate N) *
                    (Real.log (n + 1) - Real.log n) := by
            apply Finset.sum_le_sum
            intro n hn
            have hdelta :
                0 ≤ Real.log ((n : ℝ) + 1) - Real.log (n : ℝ) := by
              simpa only [Nat.cast_add, Nat.cast_one] using
                log_increment_nonneg n
            rw [abs_mul, abs_of_nonneg hdelta]
            exact mul_le_mul_of_nonneg_right
              (hUniform n (Finset.mem_range.1 hn)) hdelta
          _ = (C + earlyPrimeMass x₀) *
                residueDifferenceCriticalRate N * Real.log N := by
            rw [← Finset.mul_sum]
            have hsum :
                (∑ i ∈ Finset.range N,
                  (Real.log ((i : ℝ) + 1) - Real.log (i : ℝ))) =
                    Real.log (N : ℝ) := by
              simpa only [Nat.cast_add, Nat.cast_one] using
                sum_log_increment N
            rw [hsum]
    _ ≤ (2 * (C + earlyPrimeMass x₀)) *
          twistedPsiCriticalRate N := by
      rw [twistedPsiCriticalRate_eq_residue_mul_log]
      have : 0 ≤ residueDifferenceCriticalRate N * Real.log N :=
        mul_nonneg hRate0 hLog0
      nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba111dcdee7875e51b1b98d5941203e6e28e2a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
