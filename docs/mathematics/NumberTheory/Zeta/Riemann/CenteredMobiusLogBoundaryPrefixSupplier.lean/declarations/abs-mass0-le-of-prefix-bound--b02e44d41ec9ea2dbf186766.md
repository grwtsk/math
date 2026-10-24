# abs_mass0_le_of_prefix_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5909a1a-dacd-aa6c-6485-18877ae65994",
  "kind": "theorem",
  "lexical_name": "abs_mass0_le_of_prefix_bound",
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
  "slug": "abs-mass0-le-of-prefix-bound--b02e44d41ec9ea2dbf186766",
  "source": {
    "blob": "a4bf5fd3a24de252868ec1655b842eac443fa7d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 40,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryPrefixSupplier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b02e44d41ec9ea2dbf1867660cac05f5ea211708c55e8b4bb077e8e453eb1f6f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryPrefixSupplier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5909a1a-dacd-aa6c-6485-18877ae65994`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_mass0_le_of_prefix_bound
    {X : ℕ} (hX : 1 ≤ X) {A : ℝ}
    (hA : DyadicPrefixMangoldtBoundAt X A) :
    |mass0 X| ≤ (1 + A) / (X : ℝ) := by
  rw [harmonicMangoldtDiscrepancy_abel hX]
  have hbase := abs_centeredGreenBaselineHarmonicResidual_le hX
  have hend : |centeredGreenDyadicPrefixMangoldtError X (2 * X)| ≤ A :=
    hA.2 _ (by simp; omega)
  have hweights : ∀ m ∈ Finset.Icc (X + 1) (2 * X - 1),
      0 ≤ 1 / (m : ℝ) - 1 / (m + 1 : ℝ) := by
    intro m hm
    have hmpos : (0 : ℝ) < m := by
      have := (Finset.mem_Icc.mp hm).1
      positivity
    exact sub_nonneg.mpr
      (one_div_le_one_div_of_le hmpos (by norm_num))
  calc
    _ ≤ |centeredGreenBaselineHarmonicResidual X| +
        |centeredGreenDyadicPrefixMangoldtError X (2 * X) / (2 * X : ℝ)| +
        |∑ m ∈ Finset.Icc (X + 1) (2 * X - 1),
          centeredGreenDyadicPrefixMangoldtError X m *
            (1 / (m : ℝ) - 1 / (m + 1 : ℝ))| := by
      exact abs_add_three _ _ _
    _ ≤ 1 / (X : ℝ) +
        A / (2 * X : ℝ) +
        ∑ m ∈ Finset.Icc (X + 1) (2 * X - 1),
          A * (1 / (m : ℝ) - 1 / (m + 1 : ℝ)) := by
      gcongr
      · exact hbase
      · rw [abs_div, abs_of_nonneg (by positivity : 0 ≤ (2 * X : ℝ))]
        exact div_le_div_of_nonneg_right hend (by positivity)
      · exact abs_sum_le_sum_abs _ _
      · intro m hm
        rw [abs_mul, abs_of_nonneg (hweights m hm)]
        exact mul_le_mul_of_nonneg_right
          (hA.2 m (by
            have hi := Finset.mem_Icc.mp hm
            exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩))
          (hweights m hm)
    _ ≤ (1 + A) / (X : ℝ) := by
      have hmass := greenBoundaryAbelCoefficientMass_le hX
      rw [Finset.mul_sum]
      have hA0 := hA.1
      have hXp : (0 : ℝ) < X := by exact_mod_cast hX
      nlinarith

/-- Uniform prefix square-root bound supplies the harmonic boundary square
rate, with a harmless deterministic X^-2 term absorbed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryPrefixSupplier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryPrefixSupplier.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4bf5fd3a24de252868ec1655b842eac443fa7d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
