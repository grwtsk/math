# horizontal_kernel_mass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:042240e8-37bf-f79e-3929-835d2726e324",
  "kind": "theorem",
  "lexical_name": "horizontal_kernel_mass_le",
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
  "slug": "horizontal-kernel-mass-le--220ad35b14064362faf5dad1",
  "source": {
    "blob": "6112bcfd991df7cea0c12af7deea378f689bba53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 152,
    "path": "GRWTSK/Analysis/Complex/TentContourMajorants.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:220ad35b14064362faf5dad1e2d9929ecff9bd8c9d448e96b5c1dc1e8399f312",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentContourMajorants.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:042240e8-37bf-f79e-3929-835d2726e324`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem horizontal_kernel_mass_le (x h l y : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (hl : l ≤ 2) (hy : y ≠ 0) :
    (∫ σ in l..2, ‖tentKernel x h ((σ : ℂ) + (y : ℂ) * Complex.I)‖) ≤
      horizontalBudget x h / y ^ 2 := by
  have hc : Continuous (fun σ : ℝ => tentKernel x h ((σ : ℂ) + (y : ℂ) * Complex.I)) :=
    (continuous_tentKernel x h hh ha).comp (by fun_prop)
  have hb : IntervalIntegrable (fun σ => numeratorProfile x h σ / (h * y ^ 2)) volume l 2 :=
    ((continuous_numeratorProfile x h).div_const _).intervalIntegrable _ _
  calc
    _ ≤ ∫ σ in l..2, numeratorProfile x h σ / (h * y ^ 2) :=
      intervalIntegral.integral_mono_on hl (hc.norm.intervalIntegrable _ _) hb
        (fun σ _ => norm_kernel_horizontal_le x h σ y hh ha hy)
    _ = (∫ σ in l..2, numeratorProfile x h σ) / (h * y ^ 2) := by
      rw [intervalIntegral.integral_div]
    _ ≤ profilePrimitive x h 2 / (h * y ^ 2) :=
      div_le_div_of_nonneg_right (integral_numeratorProfile_le x h l hh ha) (by positivity)
    _ = _ := by unfold horizontalBudget; ring

/-- Derived finite horizontal bound. Integrability is required separately for a general g;
the actual zeta application supplies it from boundary regularity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentContourMajorants.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentContourMajorants.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6112bcfd991df7cea0c12af7deea378f689bba53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
