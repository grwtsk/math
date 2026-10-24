# norm_greenFourierQuadratureCellError_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b9cbd8e-61a8-aa4f-8243-451681cf34dd",
  "kind": "theorem",
  "lexical_name": "norm_greenFourierQuadratureCellError_le",
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
  "slug": "norm-greenfourierquadraturecellerror-le--f8c86eeed3bd7dbdeac3615c",
  "source": {
    "blob": "6ae4444bd528210c38fb18692a89de721753eb6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 40,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureError.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8c86eeed3bd7dbdeac3615c97a418f69bb2f74770aee83882e6f69fda21cd0e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureError.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b9cbd8e-61a8-aa4f-8243-451681cf34dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_greenFourierQuadratureCellError_le
    {X : ℕ} (hX : 1 ≤ X)
    {k : ℤ} (hk : k ≠ 0)
    {j : ℕ} (hj : j ∈ Finset.Icc 1 X) :
    ‖greenFourierQuadratureCellError X k j‖ ≤
      greenFourierDerivativeMajorant k / (X : ℝ)^2 := by
  have hXr : (0 : ℝ) < X := by exact_mod_cast hX
  have hjI := Finset.mem_Icc.mp hj
  let a : ℝ := ((j - 1 : ℕ) : ℝ) / X
  let b : ℝ := (j : ℝ) / X
  have hab : a ≤ b := by
    dsimp [a, b]
    gcongr
    exact_mod_cast Nat.sub_le j 1
  have ha0 : 0 ≤ a := by positivity
  have hb1 : b ≤ 1 := by
    dsimp [b]
    exact (div_le_one hXr).2 (by exact_mod_cast hjI.2)
  have hLip := greenFourierBackgroundIntegrand_lipschitzOn hk
  have hpoint : ∀ t ∈ Set.uIcc a b,
      ‖greenFourierBackgroundIntegrand k t -
        greenFourierBackgroundIntegrand k b‖ ≤
        greenFourierDerivativeMajorant k / (X : ℝ) := by
    intro t ht
    have htI : t ∈ Set.Icc (0 : ℝ) 1 := by
      rw [Set.uIcc_of_le hab] at ht
      exact ⟨ha0.trans ht.1, ht.2.trans hb1⟩
    have hbI : b ∈ Set.Icc (0 : ℝ) 1 := ⟨ha0.trans hab, hb1⟩
    have h := hLip.dist_le htI hbI
    rw [Complex.dist_eq] at h
    have hwidth : |t - b| ≤ 1 / (X : ℝ) := by
      rw [Set.uIcc_of_le hab] at ht
      rw [abs_of_nonpos (sub_nonpos.mpr ht.2)]
      have hba : b - a = 1 / (X : ℝ) := by
        dsimp [a, b]
        push_cast
        have hjpos : 1 ≤ j := hjI.1
        rw [Nat.cast_sub hjpos]
        field_simp
        ring
      linarith
    have hM : 0 ≤ greenFourierDerivativeMajorant k := by
      unfold greenFourierDerivativeMajorant
      positivity
    simpa [Real.coe_toNNReal _ hM] using
      h.trans (mul_le_mul_of_nonneg_left hwidth hM)
  unfold greenFourierQuadratureCellError
  have hconst :
      ((1 / (X : ℝ) : ℝ) : ℂ) *
          greenFourierBackgroundIntegrand k (greenRightMeshPoint X j) =
        ∫ _t in a..b, greenFourierBackgroundIntegrand k b := by
    rw [intervalIntegral.integral_const]
    have hba : b - a = 1 / (X : ℝ) := by
      dsimp [a, b]
      push_cast
      have hjpos : 1 ≤ j := hjI.1
      rw [Nat.cast_sub hjpos]
      field_simp
      ring
    dsimp [greenRightMeshPoint, b]
    rw [hba]
    ring
  rw [hconst, ← intervalIntegral.integral_sub]
  calc
    ‖∫ t in a..b,
        (greenFourierBackgroundIntegrand k t -
          greenFourierBackgroundIntegrand k b)‖ ≤
      ∫ t in a..b,
        ‖greenFourierBackgroundIntegrand k t -
          greenFourierBackgroundIntegrand k b‖ := by
        exact intervalIntegral.norm_integral_le_of_norm_le_const
          (by positivity) (fun t ht => hpoint t ht)
    _ ≤ greenFourierDerivativeMajorant k / (X : ℝ)^2 := by
      have hwidth : b - a = 1 / (X : ℝ) := by
        dsimp [a, b]
        push_cast
        have hjpos : 1 ≤ j := hjI.1
        rw [Nat.cast_sub hjpos]
        field_simp
        ring
      rw [intervalIntegral.integral_const, hwidth]
      field_simp
      ring

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureError.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureError.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ae4444bd528210c38fb18692a89de721753eb6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
