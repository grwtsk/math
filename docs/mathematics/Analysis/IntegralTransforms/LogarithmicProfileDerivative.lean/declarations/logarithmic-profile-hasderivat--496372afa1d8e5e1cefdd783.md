# logarithmic_profile_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:092186cd-0700-7d7c-7763-db17f8572859",
  "kind": "theorem",
  "lexical_name": "logarithmic_profile_hasDerivAt",
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
  "slug": "logarithmic-profile-hasderivat--496372afa1d8e5e1cefdd783",
  "source": {
    "blob": "3718d8b9bea91902ddfe11f9fa2a605cb5c3c582",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 22,
    "path": "GRWTSK/Analysis/IntegralTransforms/LogarithmicProfileDerivative.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:496372afa1d8e5e1cefdd783197dd106f9d67b3e153f4210924a92b3e09635ea",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/LogarithmicProfileDerivative.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:092186cd-0700-7d7c-7763-db17f8572859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logarithmic_profile_hasDerivAt {F : ℝ → ℝ} {d t x : ℝ}
    (hx : 0 < x) (hF : HasDerivAt F d (t + Real.log x)) :
    HasDerivAt (fun y : ℝ ↦ Real.log y / Real.sqrt y * F (t + Real.log y))
      (((1 - Real.log x / 2) * F (t + Real.log x) + Real.log x * d) /
        (x * Real.sqrt x)) x := by
  have logDerivative := Real.hasDerivAt_log hx.ne'
  have sqrtDerivative := Real.hasDerivAt_sqrt hx.ne'
  have sqrtNe : Real.sqrt x ≠ 0 := (Real.sqrt_pos.mpr hx).ne'
  have shiftDerivative := (hasDerivAt_const x t).add logDerivative
  have rule := (logDerivative.div sqrtDerivative sqrtNe).mul (hF.comp x shiftDerivative)
  change HasDerivAt
    (fun y : ℝ ↦ Real.log y / Real.sqrt y * F (t + Real.log y))
    (((x⁻¹ * Real.sqrt x - Real.log x * (1 / (2 * Real.sqrt x))) /
      (Real.sqrt x) ^ 2) * F (t + Real.log x) +
        (Real.log x / Real.sqrt x) * (d * (0 + x⁻¹))) x at rule
  have scalar :
      ((x⁻¹ * Real.sqrt x - Real.log x * (1 / (2 * Real.sqrt x))) /
        (Real.sqrt x) ^ 2) * F (t + Real.log x) +
          (Real.log x / Real.sqrt x) * (d * (0 + x⁻¹)) =
      ((1 - Real.log x / 2) * F (t + Real.log x) + Real.log x * d) /
        (x * Real.sqrt x) := by
    rw [zero_add, Real.sq_sqrt hx.le]
    field_simp
    nlinarith [congrArg (fun z : ℝ ↦ F (t + Real.log x) * z) (Real.sq_sqrt hx.le),
      congrArg (fun z : ℝ ↦ Real.log x * F (t + Real.log x) * z) (Real.sq_sqrt hx.le)]
  rw [scalar] at rule
  exact rule

/-- Pointwise profile prices give the complete positive-tail derivative price. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/IntegralTransforms/LogarithmicProfileDerivative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/IntegralTransforms/LogarithmicProfileDerivative.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3718d8b9bea91902ddfe11f9fa2a605cb5c3c582` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
