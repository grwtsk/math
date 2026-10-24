# norm_greenCenteringResidual_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c390c182-e3c7-2d13-4971-0d1e59f0d019",
  "kind": "theorem",
  "lexical_name": "norm_greenCenteringResidual_le",
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
  "slug": "norm-greencenteringresidual-le--2d68f05bef9af7aa3bfb9983",
  "source": {
    "blob": "5d26635c00c27ba9163646152764f50ef33ee2f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 73,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureGlobal.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d68f05bef9af7aa3bfb9983a4e6fe61010a1e60e23dc5ab037693d0f7898f64",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureGlobal.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c390c182-e3c7-2d13-4971-0d1e59f0d019`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_greenCenteringResidual_le
    {X : ℕ} (hX : 1 ≤ X)
    {k : ℤ} (hk : k ≠ 0) :
    ‖greenCenteringResidual X k‖ ≤
      greenFourierDerivativeMajorant k / (X : ℝ) := by
  rw [greenCenteringResidual_eq_cellErrorSum hX]
  unfold greenFourierQuadratureCellErrorSum
  calc
    ‖∑ j ∈ Finset.Icc 1 X, greenFourierQuadratureCellError X k j‖ ≤
        ∑ j ∈ Finset.Icc 1 X,
          ‖greenFourierQuadratureCellError X k j‖ := by
      exact norm_sum_le _ _
    _ ≤ ∑ _j ∈ Finset.Icc 1 X,
        greenFourierDerivativeMajorant k / (X : ℝ)^2 := by
      apply Finset.sum_le_sum
      intro j hj
      exact norm_greenFourierQuadratureCellError_le hX hk hj
    _ = greenFourierDerivativeMajorant k / (X : ℝ) := by
      have hcard : (Finset.Icc 1 X).card = X := by simp
      rw [Finset.sum_const_nat, hcard]
      have hXr : (X : ℝ) ≠ 0 := by positivity
      field_simp
      ring

/-- Fully explicit frequency form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureGlobal.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureGlobal.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d26635c00c27ba9163646152764f50ef33ee2f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
