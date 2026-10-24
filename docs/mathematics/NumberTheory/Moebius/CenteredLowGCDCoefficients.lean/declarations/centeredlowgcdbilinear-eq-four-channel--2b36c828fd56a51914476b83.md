# centeredLowGCDBilinear_eq_four_channel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62fa67d3-387b-21da-5972-3ea99e39fc33",
  "kind": "theorem",
  "lexical_name": "centeredLowGCDBilinear_eq_four_channel",
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
  "slug": "centeredlowgcdbilinear-eq-four-channel--2b36c828fd56a51914476b83",
  "source": {
    "blob": "b246b38d27d941db1626cbedafe5de6451349325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 302,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b36c828fd56a51914476b83260138c0f7797eebd3d02f43fb2c8b80b6e1a92a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62fa67d3-387b-21da-5972-3ea99e39fc33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredLowGCDBilinear_eq_four_channel
    {X Y : ℕ}
    (hX : 0 < X)
    (hY : 1 ≤ Y)
    (w : ℕ → ℝ) :
    centeredLowGCDBilinear X Y w =
      centeredLowGCDChannelBilinear X Y w := by
  have hexpand :
      centeredLowGCDBilinear X Y w =
        genuineLowGCDBilinear X Y w -
          (∑ d ∈ modulusIndexSet X,
            ∑ e ∈ modulusIndexSet X,
              if Nat.gcd d e ≤ Y then
                genuineModulusCoefficient X w d *
                  (if e = 1 then anchorMass X w else 0)
              else 0) -
          (∑ d ∈ modulusIndexSet X,
            ∑ e ∈ modulusIndexSet X,
              if Nat.gcd d e ≤ Y then
                (if d = 1 then anchorMass X w else 0) *
                  genuineModulusCoefficient X w e
              else 0) +
          (∑ d ∈ modulusIndexSet X,
            ∑ e ∈ modulusIndexSet X,
              if Nat.gcd d e ≤ Y then
                (if d = 1 then anchorMass X w else 0) *
                  (if e = 1 then anchorMass X w else 0)
              else 0) := by
    unfold centeredLowGCDBilinear genuineLowGCDBilinear
      centeredModulusCoefficient
    calc
      (∑ d ∈ modulusIndexSet X,
        ∑ e ∈ modulusIndexSet X,
          if Nat.gcd d e ≤ Y then
            (genuineModulusCoefficient X w d -
                if d = 1 then anchorMass X w else 0) *
              (genuineModulusCoefficient X w e -
                if e = 1 then anchorMass X w else 0)
          else 0) =
        ∑ d ∈ modulusIndexSet X,
          ∑ e ∈ modulusIndexSet X,
            ((if Nat.gcd d e ≤ Y then
                genuineModulusCoefficient X w d *
                  genuineModulusCoefficient X w e
              else 0) -
             (if Nat.gcd d e ≤ Y then
                genuineModulusCoefficient X w d *
                  (if e = 1 then anchorMass X w else 0)
              else 0) -
             (if Nat.gcd d e ≤ Y then
                (if d = 1 then anchorMass X w else 0) *
                  genuineModulusCoefficient X w e
              else 0) +
             (if Nat.gcd d e ≤ Y then
                (if d = 1 then anchorMass X w else 0) *
                  (if e = 1 then anchorMass X w else 0)
              else 0)) := by
          apply Finset.sum_congr rfl
          intro d hd
          apply Finset.sum_congr rfl
          intro e he
          split_ifs <;> ring
      _ = _ := by
        simp only [Finset.sum_sub_distrib,
          Finset.sum_add_distrib]
  have hAI :
      (∑ d ∈ modulusIndexSet X,
        ∑ e ∈ modulusIndexSet X,
          if Nat.gcd d e ≤ Y then
            genuineModulusCoefficient X w d *
              (if e = 1 then anchorMass X w else 0)
          else 0) =
      genuineCoefficientMass X w * anchorMass X w := by
    unfold genuineCoefficientMass
    rw [Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro d hd
    rw [Finset.sum_eq_single 1]
    · simp only [Nat.gcd_one_right, if_pos hY, if_true]
    · intro e he he1
      simp [he1]
    · intro hnot
      exact (hnot (one_mem_modulusIndexSet hX)).elim
  have hIA :
      (∑ d ∈ modulusIndexSet X,
        ∑ e ∈ modulusIndexSet X,
          if Nat.gcd d e ≤ Y then
            (if d = 1 then anchorMass X w else 0) *
              genuineModulusCoefficient X w e
          else 0) =
      anchorMass X w * genuineCoefficientMass X w := by
    rw [Finset.sum_eq_single 1]
    · unfold genuineCoefficientMass
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro e he
      simp only [Nat.gcd_one_left, if_pos hY, if_true]
    · intro d hd hd1
      simp [hd1]
    · intro hnot
      exact (hnot (one_mem_modulusIndexSet hX)).elim
  have hII :
      (∑ d ∈ modulusIndexSet X,
        ∑ e ∈ modulusIndexSet X,
          if Nat.gcd d e ≤ Y then
            (if d = 1 then anchorMass X w else 0) *
              (if e = 1 then anchorMass X w else 0)
          else 0) =
      anchorMass X w ^ 2 := by
    rw [Finset.sum_eq_single 1]
    · rw [Finset.sum_eq_single 1]
      · simp only [Nat.gcd_one_left, if_pos hY, if_true, pow_two]
      · intro e he he1
        simp [he1]
      · intro hnot
        exact (hnot (one_mem_modulusIndexSet hX)).elim
    · intro d hd hd1
      simp [hd1]
    · intro hnot
      exact (hnot (one_mem_modulusIndexSet hX)).elim
  rw [hexpand, hAI, hIA, hII]
  unfold centeredLowGCDChannelBilinear
  ring


end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b246b38d27d941db1626cbedafe5de6451349325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
