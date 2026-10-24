# boundaryIntegral_zero_on_rectangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a1b5081-a314-757e-4778-13131c7a98aa",
  "kind": "theorem",
  "lexical_name": "boundaryIntegral_zero_on_rectangle",
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
  "slug": "boundaryintegral-zero-on-rectangle--367f2a1f4171545e0b421162",
  "source": {
    "blob": "7e21eb584148f5bfbc9c959330c5578f2452ae79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 81,
    "path": "GRWTSK/Analysis/Complex/RectangularPoleReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:367f2a1f4171545e0b4211624c3475daae62a9eff5e3e306bfb99d6155b88c76",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a1b5081-a314-757e-4778-13131c7a98aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryIntegral_zero_on_rectangle (g : ℂ → ℂ) (l r T : ℝ)
    (hlr : l ≤ r) (hT : 0 ≤ T) (hg : AnalyticOnNhd ℂ g (closedRectangle l r T)) :
    boundaryIntegral g l r T = 0 := by
  have hd : DifferentiableOn ℂ g
      (uIcc l r ×ℂ uIcc (-T) T) := by
    intro z hz
    change z.re ∈ uIcc l r ∧ z.im ∈ uIcc (-T) T at hz
    rw [uIcc_of_le hlr, uIcc_of_le (by linarith)] at hz
    exact (hg z ⟨hz.1.1, hz.1.2, abs_le.mpr hz.2⟩).differentiableAt.differentiableWithinAt
  simpa only [boundaryIntegral, horizontal, vertical, smul_eq_mul] using
    Complex.integral_boundary_rect_eq_zero_of_differentiableOn g
      (⟨l, -T⟩ : ℂ) (⟨r, T⟩ : ℂ) hd

/-- Continuous parametrizations of analytic boundary germs have finite edge integrals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RectangularPoleReduction.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e21eb584148f5bfbc9c959330c5578f2452ae79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
