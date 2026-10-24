# native_work_eq_log_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38c010f3-2ad5-4491-36b8-fc19e38eb653",
  "kind": "theorem",
  "lexical_name": "native_work_eq_log_integral",
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
  "slug": "native-work-eq-log-integral--34555d1da5d98d139c0f4973",
  "source": {
    "blob": "e434c4e7c7ec5f172a0b5dd71fa4af7b22ef7b11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 136,
    "path": "GRWTSK/Analysis/MeasureTheory/BranchSignedPrimitiveCertificate/Variant1baaed710515ccc0978032ddf3cfd2db2cb9498eb347db689617b9bc8d4faff5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34555d1da5d98d139c0f4973732e6531332a73c55df6fb3e57593427c970b32f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BranchSignedPrimitiveCertificate/Variant1baaed710515ccc0978032ddf3cfd2db2cb9498eb347db689617b9bc8d4faff5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38c010f3-2ad5-4491-36b8-fc19e38eb653`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_work_eq_log_integral {A : ℝ} (hA : 1 ≤ A) :
    mertensKernelIntegral A (sourceMobiusKernel A) =
      -(∫ t in (2 * Real.log A)..(2 * A), logDensity t * nativeKernel A t) := by
  have hA0 : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have he : Real.exp (2 * Real.log A) = A ^ 2 := by
    rw [show 2 * Real.log A = Real.log A + Real.log A by ring,
      Real.exp_add, Real.exp_log hA0]
    ring
  have hs := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    (a := 2 * Real.log A) (b := 2 * A) (f := Real.exp) (f' := Real.exp)
    (g := fun x ↦ mertens x * deriv (sourceMobiusKernel A) x)
    Real.continuous_exp.continuousOn (fun x _ ↦ Real.hasDerivAt_exp x)
    (fun x _ ↦ (Real.exp_pos x).le)
  have hp : (fun t ↦ (mertens (Real.exp t) *
      deriv (sourceMobiusKernel A) (Real.exp t)) * Real.exp t) =
      fun t ↦ logDensity t * nativeKernel A t := by
    funext t
    rw [nativeKernel_eq_normalized_derivative hA0]
    have hx : Real.exp (-t / 2) * Real.exp (3 * t / 2) = Real.exp t := by
      rw [← Real.exp_add]
      congr 1
      ring
    dsimp [logDensity]
    calc
      _ = (Real.exp (-t / 2) * Real.exp (3 * t / 2)) *
          mertens (Real.exp t) * deriv (sourceMobiusKernel A) (Real.exp t) := by
            rw [hx]
            ring
      _ = _ := by ring
  dsimp only [Function.comp_def] at hs
  rw [hp, he] at hs
  rw [mertensKernelIntegral, sourceLower, sourceUpper,
    ← intervalIntegral.integral_of_le
      (he ▸ Real.exp_le_exp.mpr (native_window_order hA)), ← hs]

/-- Signed integration by parts moves the absolute value after the Mertens primitive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BranchSignedPrimitiveCertificate/Variant1baaed710515ccc0978032ddf3cfd2db2cb9498eb347db689617b9bc8d4faff5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BranchSignedPrimitiveCertificate/Variant1baaed710515ccc0978032ddf3cfd2db2cb9498eb347db689617b9bc8d4faff5.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e434c4e7c7ec5f172a0b5dd71fa4af7b22ef7b11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
