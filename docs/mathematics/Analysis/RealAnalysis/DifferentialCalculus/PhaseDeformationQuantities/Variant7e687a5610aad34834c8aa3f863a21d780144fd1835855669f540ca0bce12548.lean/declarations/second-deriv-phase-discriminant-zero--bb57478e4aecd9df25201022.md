# second_deriv_phase_discriminant_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1e14979-e270-5d55-3a17-553e1522e005",
  "kind": "theorem",
  "lexical_name": "second_deriv_phase_discriminant_zero",
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
  "slug": "second-deriv-phase-discriminant-zero--bb57478e4aecd9df25201022",
  "source": {
    "blob": "072bd8093642a9de5f3c5c7fc16e025d0ce95e0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 121,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb57478e4aecd9df25201022596582f303472d35a95409d44a0d8205c6fee835",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1e14979-e270-5d55-3a17-553e1522e005`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem second_deriv_phase_discriminant_zero (x : ℝ) :
    deriv (deriv (fun ξ ↦ phaseDiscriminant ξ x)) 0 = -8 * Real.log x ^ 2 := by
  have hs := ((hasDerivAt_id' (0 : ℝ)).mul_const (Real.log x)).sin
  have hc := ((hasDerivAt_id' (0 : ℝ)).mul_const (Real.log x)).cos
  have h := (hs.mul hc).const_mul (-8 * Real.log x)
  simp only [Pi.mul_apply] at h
  have heq : deriv (fun ξ ↦ phaseDiscriminant ξ x) =
      (fun ξ ↦ -8 * Real.log x * Real.sin (ξ * Real.log x) *
        Real.cos (ξ * Real.log x)) :=
    funext (deriv_phase_discriminant x)
  rw [heq]
  have hf : (fun ξ ↦ -8 * Real.log x * Real.sin (ξ * Real.log x) *
      Real.cos (ξ * Real.log x)) =
      (fun ξ ↦ -8 * Real.log x * (Real.sin (ξ * Real.log x) *
        Real.cos (ξ * Real.log x))) := by
    funext ξ
    ring
  rw [hf, h.deriv]
  simp only [zero_mul, Real.cos_zero, Real.sin_zero]
  ring

/-- The square's phase defect is exactly the negative prime-phase discriminant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `072bd8093642a9de5f3c5c7fc16e025d0ce95e0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
