# actualMuntz_abs_le_scaled_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6e033cb-bd30-69b7-e7e0-baf0d8fc4a72",
  "kind": "theorem",
  "lexical_name": "actualMuntz_abs_le_scaled_derivative",
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
  "slug": "actualmuntz-abs-le-scaled-derivative--72aefc26f3fe9904ddc93682",
  "source": {
    "blob": "358aea31fa91a78b524f018104ec5b4ab3fa18b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 148,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt06/Variant12b498f6dbf09678442495c75c698b79eecfd48137cce1d26cd3afd838aa59c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72aefc26f3fe9904ddc936821580cfa5c750c6943c97e5b864f6d77732a8c1c5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt06/Variant12b498f6dbf09678442495c75c698b79eecfd48137cce1d26cd3afd838aa59c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6e033cb-bd30-69b7-e7e0-baf0d8fc4a72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMuntz_abs_le_scaled_derivative {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    |actualMuntz A x| ≤ ∫ t in Set.Ioc 0 (Real.exp A/x),
      |deriv (fun u : ℝ => actualLogSource A (x*u)) t| := by
  let g : ℝ → ℝ := fun u => actualLogSource A (x*u)
  have hg : ContDiff ℝ 1 g := (actualLogSource_contDiff (show 0<A by linarith)).comp
    (contDiff_const.mul contDiff_id)
  have hi := scaled_residual_integrable (x:=x) hA
  have hd : IntegrableOn (fun t => |deriv g t|) (Set.Ioc 0 (Real.exp A/x)) :=
    (hg.continuous_deriv_one.abs.continuousOn.integrableOn_Icc).mono_set Set.Ioc_subset_Icc_self
  rw [actual_scaled_Euler hA hx]
  calc
    _ ≤ ∫ t in Set.Ioc 0 (Real.exp A/x),
        |deriv (fun u : ℝ => actualLogSource A (x*u)) t *eulerWeight t| := by
      simpa only [Real.norm_eq_abs] using norm_integral_le_integral_norm
        (fun t : ℝ => deriv (fun u : ℝ => actualLogSource A (x*u)) t *eulerWeight t)
    _ ≤ _ := integral_mono_ae hi.abs hd (by
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
      rw [abs_mul]
      exact mul_le_of_le_one_right (abs_nonneg _) (eulerWeight_abs_le_one ht.1.le))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt06/Variant12b498f6dbf09678442495c75c698b79eecfd48137cce1d26cd3afd838aa59c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt06/Variant12b498f6dbf09678442495c75c698b79eecfd48137cce1d26cd3afd838aa59c8.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `358aea31fa91a78b524f018104ec5b4ab3fa18b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
