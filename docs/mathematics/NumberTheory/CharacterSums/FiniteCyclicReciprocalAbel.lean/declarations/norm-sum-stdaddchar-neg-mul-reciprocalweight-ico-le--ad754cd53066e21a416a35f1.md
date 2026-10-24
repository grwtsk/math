# norm_sum_stdAddChar_neg_mul_reciprocalWeight_Ico_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6c746ea-5a12-80f5-39d0-eed27f82713d",
  "kind": "theorem",
  "lexical_name": "norm_sum_stdAddChar_neg_mul_reciprocalWeight_Ico_le",
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
  "slug": "norm-sum-stdaddchar-neg-mul-reciprocalweight-ico-le--ad754cd53066e21a416a35f1",
  "source": {
    "blob": "eae3fa546b9a840cdf165382f97b80952c06d8d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 163,
    "path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad754cd53066e21a416a35f10778902a69654d6d00fa9cc5d9f7ccd0b483d73c",
  "verification": {
    "reference": "docs/verification/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6c746ea-5a12-80f5-39d0-eed27f82713d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sum_stdAddChar_neg_mul_reciprocalWeight_Ico_le
    (t : ZMod q) (A B R : ℕ)
    (hA : 1 ≤ A) (hAB : A < B) (ht : t ≠ 0) :
    ‖∑ n ∈ Finset.Ico A B,
        (finiteCyclicReciprocalWeight R n : ℂ) *
          ZMod.stdAddChar (-((n : ZMod q) * t))‖ ≤
      (q : ℝ) /
        (2 * (finiteCyclicCircularDistance t : ℝ) *
          (((A + R : ℕ) : ℝ))) := by
  let d := finiteCyclicCircularDistance t
  let M : ℝ := (q : ℝ) / (2 * (d : ℝ))
  have hpartial (K : ℕ) :
      ‖∑ n ∈ Finset.Ico A K,
          ZMod.stdAddChar (-((n : ZMod q) * t))‖ ≤ M := by
    simpa [M, d] using
      norm_sum_stdAddChar_neg_Ico_le_circularDistance
        (q := q) t A K hA ht
  rw [sum_stdAddChar_neg_mul_reciprocalWeight_Ico_eq_abel
    t A B R hAB]
  have hend :
      ‖(finiteCyclicReciprocalWeight R (B - 1) : ℂ) *
          (∑ n ∈ Finset.Ico A B,
            ZMod.stdAddChar (-((n : ZMod q) * t)))‖ ≤
        finiteCyclicReciprocalWeight R (B - 1) * M := by
    rw [norm_mul, norm_coe_finiteCyclicReciprocalWeight]
    exact mul_le_mul_of_nonneg_left (hpartial B)
      (finiteCyclicReciprocalWeight_nonneg R (B - 1))
  have hsteps :
      ‖∑ k ∈ Finset.Ico A (B - 1),
          ((finiteCyclicReciprocalWeight R k -
              finiteCyclicReciprocalWeight R (k + 1) : ℝ) : ℂ) *
            (∑ n ∈ Finset.Ico A (k + 1),
              ZMod.stdAddChar (-((n : ZMod q) * t)))‖ ≤
        ∑ k ∈ Finset.Ico A (B - 1),
          (finiteCyclicReciprocalWeight R k -
            finiteCyclicReciprocalWeight R (k + 1)) * M := by
    calc
      ‖∑ k ∈ Finset.Ico A (B - 1),
          ((finiteCyclicReciprocalWeight R k -
              finiteCyclicReciprocalWeight R (k + 1) : ℝ) : ℂ) *
            (∑ n ∈ Finset.Ico A (k + 1),
              ZMod.stdAddChar (-((n : ZMod q) * t)))‖ ≤
        ∑ k ∈ Finset.Ico A (B - 1),
          ‖((finiteCyclicReciprocalWeight R k -
              finiteCyclicReciprocalWeight R (k + 1) : ℝ) : ℂ) *
            (∑ n ∈ Finset.Ico A (k + 1),
              ZMod.stdAddChar (-((n : ZMod q) * t)))‖ :=
        norm_sum_le _ _
      _ ≤ ∑ k ∈ Finset.Ico A (B - 1),
          (finiteCyclicReciprocalWeight R k -
            finiteCyclicReciprocalWeight R (k + 1)) * M := by
        apply Finset.sum_le_sum
        intro k hk
        have hkA : A ≤ k := (Finset.mem_Ico.mp hk).1
        have hk1 : 1 ≤ k := le_trans hA hkA
        rw [norm_mul,
          norm_coe_finiteCyclicReciprocalWeight_sub_succ R k hk1]
        exact mul_le_mul_of_nonneg_left (hpartial (k + 1))
          (sub_nonneg.mpr
            (finiteCyclicReciprocalWeight_succ_le R k hk1))
  calc
    ‖(finiteCyclicReciprocalWeight R (B - 1) : ℂ) *
          (∑ n ∈ Finset.Ico A B,
            ZMod.stdAddChar (-((n : ZMod q) * t))) +
        ∑ k ∈ Finset.Ico A (B - 1),
          ((finiteCyclicReciprocalWeight R k -
              finiteCyclicReciprocalWeight R (k + 1) : ℝ) : ℂ) *
            (∑ n ∈ Finset.Ico A (k + 1),
              ZMod.stdAddChar (-((n : ZMod q) * t)))‖ ≤
      ‖(finiteCyclicReciprocalWeight R (B - 1) : ℂ) *
          (∑ n ∈ Finset.Ico A B,
            ZMod.stdAddChar (-((n : ZMod q) * t)))‖ +
        ‖∑ k ∈ Finset.Ico A (B - 1),
          ((finiteCyclicReciprocalWeight R k -
              finiteCyclicReciprocalWeight R (k + 1) : ℝ) : ℂ) *
            (∑ n ∈ Finset.Ico A (k + 1),
              ZMod.stdAddChar (-((n : ZMod q) * t)))‖ :=
      norm_add_le _ _
    _ ≤ finiteCyclicReciprocalWeight R (B - 1) * M +
        ∑ k ∈ Finset.Ico A (B - 1),
          (finiteCyclicReciprocalWeight R k -
            finiteCyclicReciprocalWeight R (k + 1)) * M :=
      add_le_add hend hsteps
    _ = M *
        (finiteCyclicReciprocalWeight R (B - 1) +
          ∑ k ∈ Finset.Ico A (B - 1),
            (finiteCyclicReciprocalWeight R k -
              finiteCyclicReciprocalWeight R (k + 1))) := by
      rw [← Finset.sum_mul]
      ring
    _ = M * finiteCyclicReciprocalWeight R A := by
      rw [finiteCyclicReciprocalWeight_endpoint_add_steps A B R hAB]
    _ = (q : ℝ) /
        (2 * (finiteCyclicCircularDistance t : ℝ) *
          (((A + R : ℕ) : ℝ))) := by
      have hd0 : d ≠ 0 := by
        intro hd
        exact ht ((finiteCyclicCircularDistance_eq_zero_iff t).mp hd)
      have hd : (0 : ℝ) < (d : ℝ) := by
        exact_mod_cast Nat.pos_of_ne_zero hd0
      have hAR : (0 : ℝ) < (((A + R : ℕ) : ℝ)) := by
        exact_mod_cast (show 0 < A + R by omega)
      dsimp [M, d]
      unfold finiteCyclicReciprocalWeight
      field_simp [ne_of_gt hd, ne_of_gt hAR]
      ring

/-- Genuine reciprocal-weight form, with the denominator expressed directly
in `ℂ` as used by endpoint harmonic sums. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eae3fa546b9a840cdf165382f97b80952c06d8d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
