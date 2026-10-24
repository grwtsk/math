# bump_phase_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80fe41c4-2205-6b21-71be-0c3ac374792a",
  "kind": "theorem",
  "lexical_name": "bump_phase_error",
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
  "slug": "bump-phase-error--d87b8b472b6b12c7aff35076",
  "source": {
    "blob": "91c55fb57e0a88b878025cdbbbf0ced1dd1c4098",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 61,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative15/Variantd8ce6ac490a55a3572048908ca4af953600416af9ba76aaa2b14ec9bc314ed50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d87b8b472b6b12c7aff3507685a65e67aaa9da099a73446bb52512c440490cf1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative15/Variantd8ce6ac490a55a3572048908ca4af953600416af9ba76aaa2b14ec9bc314ed50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80fe41c4-2205-6b21-71be-0c3ac374792a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem bump_phase_error (A t : ℝ) :
    ‖bumpLaplace ((A : ℂ) + I * (A * t : ℝ))- (realBumpMass A : ℂ)‖ ≤
      |A * t| * realBumpMass A := by
  rw [← bump_real_eq]
  unfold bumpLaplace
  rw [← intervalIntegral.integral_sub
    ((by fun_prop : Continuous _).intervalIntegrable _ _)
    ((by fun_prop : Continuous _).intervalIntegrable _ _)]
  have hh := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) (a := ( - 1 : ℝ)) (b := 1)
    (f := fun x => (((1 - x ^ 2) ^ 4 : ℝ) : ℂ)*
      Complex.exp (((A : ℂ) + I * (A * t : ℝ)) * (x : ℂ)) -
        (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) * Complex.exp ((A : ℂ) * (x : ℂ)))
    (g := fun x => |A * t| *((1 - x ^ 2) ^ 4 * Real.exp (A * x))) (by norm_num)
    (Filter.Eventually.of_forall fun x hx => by
      have hx1 : |x| ≤ 1 := abs_le.mpr ⟨hx.1.le, hx.2⟩
      have he : (((A : ℂ) + I * (A * t : ℝ)) * (x : ℂ)) =
          ((A * x : ℝ) : ℂ) + I * (A * t * x : ℝ) := by push_cast; ring
      rw [he, Complex.exp_add]
      have hid : (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) *
          (Complex.exp ((A * x : ℝ) : ℂ) * Complex.exp (I * (A * t * x : ℝ))) -
        (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) * Complex.exp ((A : ℂ) * (x : ℂ)) =
          (((1 - x ^ 2) ^ 4 * Real.exp (A * x) : ℝ) : ℂ)*
            (Complex.exp (I * (A * t * x : ℝ)) - 1) := by
        push_cast
        ring
      rw [hid, norm_mul, Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg (mul_nonneg ((by positivity : 0 ≤ (1 - x ^ 2) ^ 4)) (Real.exp_pos _).le)]
      calc
        _ ≤ ((1 - x ^ 2) ^ 4 * Real.exp (A * x))*|A * t * x| :=
          mul_le_mul_of_nonneg_left (norm_phase_sub_one _) (by positivity)
        _ ≤ _ := by
          rw [abs_mul]
          have hh := mul_le_mul_of_nonneg_left hx1
            (mul_nonneg (by positivity : 0 ≤ (1 - x ^ 2) ^ 4 * Real.exp (A * x))
              (abs_nonneg (A * t)))
          simpa [mul_assoc, mul_comm, mul_left_comm] using hh)
    ((by fun_prop : Continuous _).intervalIntegrable _ _)
  simpa only [intervalIntegral.integral_const_mul, realBumpMass, mul_comm] using hh

/-- All literal closed Mangoldt coefficients on the real right line, including unit zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative15/Variantd8ce6ac490a55a3572048908ca4af953600416af9ba76aaa2b14ec9bc314ed50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative15/Variantd8ce6ac490a55a3572048908ca4af953600416af9ba76aaa2b14ec9bc314ed50.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91c55fb57e0a88b878025cdbbbf0ced1dd1c4098` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
