# greenFourierBackgroundCoordinate_eq_sum_cells

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9146c2ad-fd93-1464-71fd-840cb1f23ad3",
  "kind": "theorem",
  "lexical_name": "greenFourierBackgroundCoordinate_eq_sum_cells",
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
  "slug": "greenfourierbackgroundcoordinate-eq-sum-cells--5754a6a5c8dbee7eed756bba",
  "source": {
    "blob": "5d26635c00c27ba9163646152764f50ef33ee2f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 17,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureGlobal.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5754a6a5c8dbee7eed756bba8c891854d75ff5b9eba19bc75b45bace3ef2cbc7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureGlobal.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9146c2ad-fd93-1464-71fd-840cb1f23ad3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenFourierBackgroundCoordinate_eq_sum_cells
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    greenFourierBackgroundCoordinate k =
      ∑ j ∈ Finset.Icc 1 X,
        ∫ t in ((j - 1 : ℕ) : ℝ) / (X : ℝ)..
          (j : ℝ) / (X : ℝ),
          greenFourierBackgroundIntegrand k t := by
  unfold greenFourierBackgroundCoordinate
  have hXr : (0 : ℝ) < X := by exact_mod_cast hX
  -- Telescope adjacent interval integrals across the uniform partition.
  induction X using Nat.case_strong_induction_on with
  | hz =>
      omega
  | hs X ih =>
      by_cases hX0 : X = 0
      · subst X
        simp [greenFourierBackgroundIntegrand]
      · have hXp : 1 ≤ X := by omega
        have ih' := ih X (by omega) hXp k
        rw [show Finset.Icc 1 (X + 1) =
            insert (X + 1) (Finset.Icc 1 X) by
          ext j
          simp
          omega]
        rw [Finset.sum_insert]
        · rw [← ih']
          have hsplit :
              ((X : ℝ) / (X + 1 : ℕ)) =
                ((X : ℝ) / ((X + 1 : ℕ) : ℝ)) := rfl
          rw [intervalIntegral.integral_add_adjacent_intervals
            (show (0 : ℝ) ≤ (X : ℝ) / (X + 1 : ℕ) by positivity)
            (show (X : ℝ) / (X + 1 : ℕ) ≤ 1 by
              exact (div_le_one (by positivity)).2 (by norm_num))]
          congr 1
          · apply intervalIntegral.integral_congr
            intro t ht
            rfl
          · simp only [Nat.add_sub_cancel, Nat.cast_add, Nat.cast_one]
            field_simp
        · simp

/-- Exact residual equals the finite sum of the cell errors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureGlobal.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureGlobal.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d26635c00c27ba9163646152764f50ef33ee2f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
