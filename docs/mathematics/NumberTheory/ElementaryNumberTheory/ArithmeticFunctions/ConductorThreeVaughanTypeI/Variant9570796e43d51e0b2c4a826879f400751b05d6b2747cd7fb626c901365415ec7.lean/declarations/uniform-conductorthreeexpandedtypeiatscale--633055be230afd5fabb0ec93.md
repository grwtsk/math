# uniform_conductorThreeExpandedTypeIAtScale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc8053e2-f9fd-5d04-153f-ba87b7fe5a67",
  "kind": "theorem",
  "lexical_name": "uniform_conductorThreeExpandedTypeIAtScale",
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
  "slug": "uniform-conductorthreeexpandedtypeiatscale--633055be230afd5fabb0ec93",
  "source": {
    "blob": "1d88b210a2df9e2904154f96a351297f9c87221b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 557,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variant9570796e43d51e0b2c4a826879f400751b05d6b2747cd7fb626c901365415ec7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:633055be230afd5fabb0ec9302ff5abb047822f5340eeaaf1bedcdf3edba1efe",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variant9570796e43d51e0b2c4a826879f400751b05d6b2747cd7fb626c901365415ec7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc8053e2-f9fd-5d04-153f-ba87b7fe5a67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_conductorThreeExpandedTypeIAtScale :
    ∀ epsilon : ℝ, 0 < epsilon →
      ∃ C : ℝ, 0 ≤ C ∧
        ∀ N : ℕ, 2 ≤ N →
          ∀ x : ℕ, x ≤ 2 * N →
            |conductorThreeExpandedTypeIAtScale N x| ≤
              C * (N : ℝ) ^ (1 / 2 + epsilon) := by
  intro epsilon hepsilon
  refine ⟨256 / epsilon, div_nonneg (by norm_num) hepsilon.le, ?_⟩
  intro N hN x hx
  let U := vaughanFourthRootCutoff N
  let A : ℝ := (U + 1 : ℕ)
  let L : ℝ := Real.log ((2 * N : ℕ) : ℝ)
  let LU : ℝ := Real.log ((max 1 U : ℕ) : ℝ)
  let LX : ℝ := Real.log ((max 1 x : ℕ) : ℝ)
  have hBase := abs_conductorThreeExpandedTypeI_at_vaughanCutoff_le N x
  change |conductorThreeExpandedTypeIAtScale N x| ≤ _
  have hUle : U ≤ 2 * N := by
    exact vaughanFourthRootCutoff_le_two_mul N hN
  have hLU : LU ≤ L := by
    dsimp only [LU, L]
    calc
      Real.log ((max 1 U : ℕ) : ℝ) ≤
          Real.log ((max 1 (2 * N) : ℕ) : ℝ) :=
        log_max_one_mono hUle
      _ = Real.log ((2 * N : ℕ) : ℝ) := by
        rw [max_eq_right (by omega : 1 ≤ 2 * N)]
  have hLX : LX ≤ L := by
    dsimp only [LX, L]
    calc
      Real.log ((max 1 x : ℕ) : ℝ) ≤
          Real.log ((max 1 (2 * N) : ℕ) : ℝ) :=
        log_max_one_mono hx
      _ = Real.log ((2 * N : ℕ) : ℝ) := by
        rw [max_eq_right (by omega : 1 ≤ 2 * N)]
  have hA1 : 1 ≤ A := by
    dsimp only [A, U]
    exact_mod_cast (show 1 ≤ vaughanFourthRootCutoff N + 1 by omega)
  have hA0 : 0 ≤ A := le_trans (by norm_num) hA1
  have hL0 : 0 ≤ L := by
    dsimp only [L]
    exact Real.log_nonneg (by exact_mod_cast (show 1 ≤ 2 * N by omega))
  have hLU0 : 0 ≤ LU := by
    dsimp only [LU]
    exact log_max_one_nonneg U
  have hLX0 : 0 ≤ LX := by
    dsimp only [LX]
    exact log_max_one_nonneg x
  have hA2 : A ^ 2 ≤ 32 * Real.sqrt N := by
    dsimp only [A, U]
    exact cast_vaughanCutoff_add_one_sq_le_sqrt N hN
  have hExpanded :
      |conductorThreeExpandedTypeIAtScale N x| ≤
        A * LU + A ^ 2 * LU + 2 * A * LX := by
    simpa only [conductorThreeExpandedTypeIAtScale, U, A, LU, LX,
      Nat.cast_add, Nat.cast_one] using hBase
  have hPoly : A * LU + A ^ 2 * LU + 2 * A * LX ≤
      4 * A ^ 2 * L := by
    have h1 : A * LU ≤ A * L :=
      mul_le_mul_of_nonneg_left hLU hA0
    have h2 : A ^ 2 * LU ≤ A ^ 2 * L :=
      mul_le_mul_of_nonneg_left hLU (sq_nonneg A)
    have h3 : 2 * A * LX ≤ 2 * A * L :=
      mul_le_mul_of_nonneg_left hLX (mul_nonneg (by norm_num) hA0)
    calc
      A * LU + A ^ 2 * LU + 2 * A * LX ≤
          A * L + A ^ 2 * L + 2 * A * L :=
        add_le_add (add_le_add h1 h2) h3
      _ ≤ 4 * A ^ 2 * L := by
        nlinarith [sq_nonneg (A - 1)]
  have hLogTwo : L ≤ 2 * Real.log (N : ℝ) := by
    have hNpos : (N : ℝ) ≠ 0 := by positivity
    have hlogTwoLe : Real.log 2 ≤ Real.log (N : ℝ) := by
      apply Real.log_le_log
      · norm_num
      · exact_mod_cast hN
    dsimp only [L]
    rw [Nat.cast_mul, Nat.cast_ofNat, Real.log_mul (by norm_num) hNpos]
    linarith
  have hlogN0 : 0 ≤ Real.log (N : ℝ) :=
    Real.log_nonneg (by exact_mod_cast (show 1 ≤ N by omega))
  have hSqrt0 : 0 ≤ Real.sqrt (N : ℝ) := Real.sqrt_nonneg _
  have hToLog : 4 * A ^ 2 * L ≤
      256 * Real.sqrt N * Real.log N := by
    calc
      4 * A ^ 2 * L ≤ 4 * (32 * Real.sqrt N) * L :=
        mul_le_mul_of_nonneg_right
          (mul_le_mul_of_nonneg_left hA2 (by norm_num)) hL0
      _ = 128 * Real.sqrt N * L := by ring
      _ ≤ 128 * Real.sqrt N * (2 * Real.log N) :=
        mul_le_mul_of_nonneg_left hLogTwo
          (mul_nonneg (by norm_num) hSqrt0)
      _ = 256 * Real.sqrt N * Real.log N := by ring
  have hpow := Real.log_le_rpow_div (Nat.cast_nonneg N) hepsilon
  have hpow0 : 0 ≤ (N : ℝ) ^ epsilon :=
    Real.rpow_nonneg (Nat.cast_nonneg N) _
  have hquot0 : 0 ≤ (N : ℝ) ^ epsilon / epsilon :=
    div_nonneg hpow0 hepsilon.le
  calc
    |conductorThreeExpandedTypeIAtScale N x| ≤
        A * LU + A ^ 2 * LU + 2 * A * LX := hExpanded
    _ ≤ 4 * A ^ 2 * L := hPoly
    _ ≤ 256 * Real.sqrt N * Real.log N := hToLog
    _ ≤ 256 * Real.sqrt N * ((N : ℝ) ^ epsilon / epsilon) :=
      mul_le_mul_of_nonneg_left hpow
        (mul_nonneg (by norm_num) hSqrt0)
    _ = (256 / epsilon) * (N : ℝ) ^ (1 / 2 + epsilon) := by
      rw [Real.sqrt_eq_rpow]
      have hNpos : 0 < (N : ℝ) := by positivity
      calc
        256 * (N : ℝ) ^ ((1 : ℝ) / 2) *
              ((N : ℝ) ^ epsilon / epsilon) =
            (256 / epsilon) *
              ((N : ℝ) ^ ((1 : ℝ) / 2) *
                (N : ℝ) ^ epsilon) := by
          field_simp
        _ = (256 / epsilon) *
              (N : ℝ) ^ ((1 : ℝ) / 2 + epsilon) := by
          rw [Real.rpow_add hNpos]

/-- The literal convolution-prefix presentation of the three elementary
Vaughan components. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variant9570796e43d51e0b2c4a826879f400751b05d6b2747cd7fb626c901365415ec7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variant9570796e43d51e0b2c4a826879f400751b05d6b2747cd7fb626c901365415ec7.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d88b210a2df9e2904154f96a351297f9c87221b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
