# expandedSummand_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4460112e-7a30-8ecf-8689-1c9d974f2871",
  "kind": "theorem",
  "lexical_name": "expandedSummand_norm_le",
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
  "slug": "expandedsummand-norm-le--0dbb1517f9a049a7acfdc1f3",
  "source": {
    "blob": "f7bd209c79a14f60617ffde7bfe9a494f24c62c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 337,
    "path": "GRWTSK/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dbb1517f9a049a7acfdc1f399401601cdef5473235a3f5cb1543d78c8325757",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4460112e-7a30-8ecf-8689-1c9d974f2871`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expandedSummand_norm_le
    (A : ℝ) (hA : 1 ≤ A) (o : ZeroOccurrence) :
    ‖expandedSummand A (shiftedValue o)‖ ≤
      growthFactor * (1 + A ^ 8) * Real.exp A *
        modeWeight o := by
  let z := shiftedValue o
  let M := 266 * A ^ 4 * (1 + ‖z‖) ^ 4
  have hP :
      ‖transformPolynomial ((A : ℂ) * z)‖ ≤ M := by
    simpa [M, z] using
      transformPolynomial_norm_le_scale A hA z
  have hN :
      ‖transformPolynomial (-((A : ℂ) * z))‖ ≤ M := by
    have h :=
      transformPolynomial_norm_le_scale A hA (-z)
    simpa only [norm_neg, mul_neg] using h
  have hepos :
      ‖Complex.exp (2 * (A : ℂ) * z)‖ ≤
        Real.exp A := by
    rw [Complex.norm_exp]
    apply Real.exp_le_exp.mpr
    dsimp [z]
    norm_num [Complex.mul_re]
    nlinarith [(shiftedValue_strip o).2]
  have heneg :
      ‖Complex.exp (-2 * (A : ℂ) * z)‖ ≤
        Real.exp A := by
    rw [Complex.norm_exp]
    apply Real.exp_le_exp.mpr
    dsimp [z]
    norm_num [Complex.mul_re]
    nlinarith [(shiftedValue_strip o).1]
  have hone : 1 ≤ Real.exp A := by
    have := Real.exp_le_exp.mpr (show (0 : ℝ) ≤ A by linarith)
    simpa using this
  have hM : 0 ≤ M := by
    dsimp [M]
    positivity
  have hbracket :
      ‖Complex.exp (2 * (A : ℂ) * z) *
            transformPolynomial ((A : ℂ) * z) ^ 2 +
          Complex.exp (-2 * (A : ℂ) * z) *
            transformPolynomial (-((A : ℂ) * z)) ^ 2 -
          2 * transformPolynomial ((A : ℂ) * z) *
            transformPolynomial (-((A : ℂ) * z))‖ ≤
        4 * Real.exp A * M ^ 2 := by
    calc
      _ ≤
          ‖Complex.exp (2 * (A : ℂ) * z) *
              transformPolynomial ((A : ℂ) * z) ^ 2 +
            Complex.exp (-2 * (A : ℂ) * z) *
              transformPolynomial (-((A : ℂ) * z)) ^ 2‖ +
          ‖2 * transformPolynomial ((A : ℂ) * z) *
              transformPolynomial (-((A : ℂ) * z))‖ :=
        norm_sub_le _ _
      _ ≤
          (‖Complex.exp (2 * (A : ℂ) * z) *
              transformPolynomial ((A : ℂ) * z) ^ 2‖ +
            ‖Complex.exp (-2 * (A : ℂ) * z) *
              transformPolynomial (-((A : ℂ) * z)) ^ 2‖) +
          ‖2 * transformPolynomial ((A : ℂ) * z) *
              transformPolynomial (-((A : ℂ) * z))‖ := by
        gcongr
        exact norm_add_le _ _
      _ =
          ‖Complex.exp (2 * (A : ℂ) * z)‖ *
              ‖transformPolynomial ((A : ℂ) * z)‖ ^ 2 +
          ‖Complex.exp (-2 * (A : ℂ) * z)‖ *
              ‖transformPolynomial (-((A : ℂ) * z))‖ ^ 2 +
          2 * ‖transformPolynomial ((A : ℂ) * z)‖ *
              ‖transformPolynomial (-((A : ℂ) * z))‖ := by
        simp only [norm_mul, norm_pow, Complex.norm_ofNat]
      _ ≤
          Real.exp A * M ^ 2 +
            Real.exp A * M ^ 2 + 2 * M * M := by
        gcongr
      _ ≤ 4 * Real.exp A * M ^ 2 := by
        nlinarith [Real.exp_pos A, sq_nonneg M]
  unfold expandedSummand
  rw [norm_mul]
  calc
    _ ≤ ‖modeCoefficient z‖ *
        (4 * Real.exp A * M ^ 2) := by
      exact mul_le_mul_of_nonneg_left hbracket (norm_nonneg _)
    _ =
        growthFactor * A ^ 8 * Real.exp A *
          modeWeight o := by
      unfold growthFactor modeWeight
      dsimp [M, z]
      ring
    _ ≤
        growthFactor * (1 + A ^ 8) * Real.exp A *
          modeWeight o := by
      have hfac :
          0 ≤ growthFactor * Real.exp A * modeWeight o :=
        mul_nonneg
          (mul_nonneg growthFactor_nonneg (Real.exp_pos A).le)
          (modeWeight_nonneg o)
      nlinarith

/-- The same summable majorant is uniform throughout every bounded source
radius interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7bd209c79a14f60617ffde7bfe9a494f24c62c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
