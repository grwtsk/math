# paired_interval_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e57295b-ce79-8021-4621-04500783bed0",
  "kind": "theorem",
  "lexical_name": "paired_interval_lower",
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
  "slug": "paired-interval-lower--7f25ca76120ce01d1e0e6e7d",
  "source": {
    "blob": "ee02b2e977f5d2f8bf0171b18fd60a0b929ea73a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 304,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f25ca76120ce01d1e0e6e7d73779baf322fff91bf5fdedb5db9379b9e594c7a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e57295b-ce79-8021-4621-04500783bed0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paired_interval_lower (T : ℝ) (m d : ℕ) (hT : 20 ≤ T)
    (hmlo : Real.exp (T - 1 / 4) ≤ (m : ℝ)) (hmhi : (m : ℝ) ≤ Real.exp (T - 1 / 8))
    (hdlo : Real.exp (T - 1 / 4) ≤ (d : ℝ)) (hdhi : (d : ℝ) ≤ Real.exp (T - 1 / 8)) :
    T ^ 8 / (23592960 * Real.sqrt ((m * d : ℕ) : ℝ)) ≤
      integratedKernel T m d - integratedKernel T m (2 * d) := by
  have hm0 : 0 < (m : ℝ) := (Real.exp_pos _).trans_le hmlo
  have hd0 : 0 < (d : ℝ) := (Real.exp_pos _).trans_le hdlo
  have hml := (Real.le_log_iff_exp_le hm0).2 hmlo
  have hmh := (Real.log_le_iff_le_exp hm0).2 hmhi
  have hdl := (Real.le_log_iff_exp_le hd0).2 hdlo
  have hdh := (Real.log_le_iff_le_exp hd0).2 hdhi
  have hprod : Real.log ((m * d : ℕ) : ℝ) = Real.log m + Real.log d := by
    rw [Nat.cast_mul, Real.log_mul hm0.ne' hd0.ne']
  apply paired_strip_lower T (2 * T - Real.log ((m * d : ℕ) : ℝ)) m d (by linarith)
  · rw [hprod]; linarith
  · rw [hprod]; linarith
  · exact (sq_le_exp_lower T hT).trans hmlo
  · exact (sq_le_exp_lower T hT).trans hdlo
  · ring

/-- The kernel is exactly the remaining outer pairing of the original signed average. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee02b2e977f5d2f8bf0171b18fd60a0b929ea73a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
