# abs_gcdCutoffCorrectionTail_sqrt_le_logFive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c99f0654-4ad2-ca7f-a223-e9093188c4b0",
  "kind": "theorem",
  "lexical_name": "abs_gcdCutoffCorrectionTail_sqrt_le_logFive",
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
  "slug": "abs-gcdcutoffcorrectiontail-sqrt-le-logfive--f685289f98cd839ac37b71a1",
  "source": {
    "blob": "2ded7c30cf8a2ea3925ebc3902f0906a4cbcea94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 636,
    "line": 523,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f685289f98cd839ac37b71a172ff3780ea57f07b03f0e7e110d1df407b6f8b8d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c99f0654-4ad2-ca7f-a223-e9093188c4b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 523–636.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_gcdCutoffCorrectionTail_sqrt_le_logFive
    {X : ℕ}
    (hX : 4 ≤ X)
    {w : ℕ → ℝ}
    (hw : ∀ n ∈ octaveIndexSet X,
      w n ∈ Set.Icc (0 : ℝ) 1) :
    |gcdCutoffCorrectionTail X X.sqrt w| ≤
      2304 * centeredLowGCDLogFiveScale X := by
  let L : ℝ := Real.log ((4 * X : ℕ) : ℝ)
  let ell : ℝ := Real.log (X : ℝ)
  have hXone : 1 ≤ X := by omega
  have hellOne : 1 ≤ ell := by
    unfold ell
    have hXpos : 0 < (X : ℝ) := by
      exact_mod_cast (show 0 < X by omega)
    rw [Real.le_log_iff_exp_le hXpos]
    exact Real.exp_one_lt_three.le.trans
      (by exact_mod_cast (show 3 ≤ X by omega))
  have hLle : L ≤ 2 * ell := by
    have hlogFour :
        Real.log (4 : ℝ) ≤ ell := by
      unfold ell
      exact Real.log_le_log (by norm_num)
        (by exact_mod_cast hX)
    have hLeq :
        L = Real.log (4 : ℝ) + ell := by
      unfold L ell
      rw [show (((4 * X : ℕ) : ℝ)) =
          (4 : ℝ) * (X : ℝ) by norm_num,
        Real.log_mul (by norm_num : (4 : ℝ) ≠ 0)
          (by exact_mod_cast (show X ≠ 0 by omega))]
    linarith
  have honeL : 1 + L ≤ 3 * ell := by
    linarith
  have hmass :=
    gcdCutoffCorrectionWeightedQuotientMass_sqrt_le hX
  have hterm :
      ∀ r ∈ highGCDCutoffIndexSet X X.sqrt,
        |gcdCutoffCorrectionCoefficient X.sqrt r| *
            (centeredDivisibilityTail X w r)^2 ≤
          |gcdCutoffCorrectionCoefficient X.sqrt r| *
            (((4 * X / r : ℕ) : ℝ)^2) *
            (1 + L)^2 * L^2 := by
    intro r hr
    rcases mem_highGCDCutoffIndexSet_iff.mp hr with
      ⟨hrmem, hroot⟩
    have hrgt : 1 < r := by
      have hrootOne : 1 ≤ X.sqrt := by
        rw [Nat.le_sqrt]
        simpa using hXone
      omega
    have ht :=
      abs_centeredDivisibilityTail_le_quotient_log_product
        hXone hrmem hrgt hw
    have hsq :
        (centeredDivisibilityTail X w r)^2 ≤
          ((((4 * X / r : ℕ) : ℝ) *
            (1 + L) * L)^2) := by
      have habs :=
        mul_self_le_mul_self (abs_nonneg _) ht
      simpa [sq_abs, L] using habs
    exact mul_le_mul_of_nonneg_left
      (by
        calc
          (centeredDivisibilityTail X w r)^2 ≤
              ((((4 * X / r : ℕ) : ℝ) *
                (1 + L) * L)^2) := hsq
          _ = (((4 * X / r : ℕ) : ℝ)^2) *
              (1 + L)^2 * L^2 := by ring)
      (abs_nonneg _)
  calc
    |gcdCutoffCorrectionTail X X.sqrt w| ≤
      ∑ r ∈ highGCDCutoffIndexSet X X.sqrt,
        |gcdCutoffCorrectionCoefficient X.sqrt r| *
          (centeredDivisibilityTail X w r)^2 := by
      unfold gcdCutoffCorrectionTail
      calc
        |∑ r ∈ highGCDCutoffIndexSet X X.sqrt,
          gcdCutoffCorrectionCoefficient X.sqrt r *
            (centeredDivisibilityTail X w r)^2| ≤
          ∑ r ∈ highGCDCutoffIndexSet X X.sqrt,
            |gcdCutoffCorrectionCoefficient X.sqrt r *
              (centeredDivisibilityTail X w r)^2| := by
                exact Finset.abs_sum_le_sum_abs _ _
        _ = _ := by
          apply Finset.sum_congr rfl
          intro r hr
          rw [abs_mul, abs_of_nonneg (sq_nonneg _)]
    _ ≤
      gcdCutoffCorrectionWeightedQuotientMass X X.sqrt *
        (1 + L)^2 * L^2 := by
      unfold gcdCutoffCorrectionWeightedQuotientMass
      calc
        (∑ r ∈ highGCDCutoffIndexSet X X.sqrt,
          |gcdCutoffCorrectionCoefficient X.sqrt r| *
            (centeredDivisibilityTail X w r)^2) ≤
          ∑ r ∈ highGCDCutoffIndexSet X X.sqrt,
            |gcdCutoffCorrectionCoefficient X.sqrt r| *
              (((4 * X / r : ℕ) : ℝ)^2) *
              (1 + L)^2 * L^2 := by
                exact Finset.sum_le_sum hterm
        _ = _ := by
          rw [Finset.sum_mul, Finset.sum_mul]
    _ ≤
      (64 * (X : ℝ) * Real.sqrt (X : ℝ) * ell) *
        (3 * ell)^2 * (2 * ell)^2 := by
      gcongr
    _ = 2304 * centeredLowGCDLogFiveScale X := by
      unfold centeredLowGCDLogFiveScale ell
      ring

/-- A one-log sharper pointwise divisibility-tail estimate would close the
cutoff correction at the original `log^4` target scale.  The hypothesis is
stated explicitly rather than hidden in a supplier structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean#L523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ded7c30cf8a2ea3925ebc3902f0906a4cbcea94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
