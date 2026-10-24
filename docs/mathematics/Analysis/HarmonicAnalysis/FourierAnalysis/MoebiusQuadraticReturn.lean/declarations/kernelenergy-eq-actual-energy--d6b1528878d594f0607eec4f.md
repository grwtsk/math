# kernelEnergy_eq_actual_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e7f1d445612d850025ab4ea76e336b3d311f1da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/Analysis/Fourier/MoebiusQuadraticReturn.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5f1a841-c146-2fba-1bc2-9117165e58d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "0e7f1d445612d850025ab4ea76e336b3d311f1da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/Analysis/Fourier/MoebiusQuadraticReturn.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:313ff7f9-269d-204f-a14f-1982a5db8327",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ea56f7a-bff8-cf71-3a0e-cbf8bcad35ec",
  "kind": "theorem",
  "lexical_name": "kernelEnergy_eq_actual_energy",
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
  "slug": "kernelenergy-eq-actual-energy--d6b1528878d594f0607eec4f",
  "source": {
    "blob": "0e7f1d445612d850025ab4ea76e336b3d311f1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 191,
    "path": "GRWTSK/Analysis/Fourier/MoebiusQuadraticReturn.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6b1528878d594f0607eec4ffbb52656dd66ab64f4f23acb5c2be5f92f6257b2",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ea56f7a-bff8-cf71-3a0e-cbf8bcad35ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernelEnergy_eq_actual_energy {c T : ℝ} (hc : 1 < c) (hT : 0 ≤ T) :
    ConcreteRightLine.kernelEnergy c T = PPNCP04.energy T := by
  have hk := ConcreteTail.pickupKernel_integrable hc
  have hr := ConcreteFubini.density_double_return (c := c) hT hk
  rw [ConcreteRightLine.kernelEnergy, hr]
  have he : (fun u : ℝ => Complex.exp (((2*c-1 : ℝ) : ℂ) * (u : ℂ)) *
      (∫ t : ℝ, RightLine.pickupKernel c t * Complex.exp (((t*u : ℝ) : ℂ) * Complex.I)) *
      starRingEnd ℂ (∫ s : ℝ, RightLine.pickupKernel c s *
        Complex.exp (((s*u : ℝ) : ℂ) * Complex.I))) =
      fun u => Complex.ofReal ((2 * Real.pi : ℝ)^2) *
        ((NativeWindow.globalPickup u ^ 2 : ℝ) : ℂ) := by
    funext u
    rw [spectralIntegral_eq_weightedSource hc hk u]
    simp only [map_mul, Complex.conj_ofReal]
    calc
      _ = Complex.ofReal ((2 * Real.pi : ℝ)^2) *
        (Complex.exp (((2*c-1 : ℝ) : ℂ) * (u : ℂ)) * weightedSource c u *
          starRingEnd ℂ (weightedSource c u)) := by push_cast; ring
      _ = _ := by rw [weightedSource_square_return]
  rw [he, integral_const_mul, integral_complex_ofReal,
    ← NativeWindow.energy_eq_global_integral]
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero]
  rw [← mul_assoc, inv_mul_cancel₀ (by positivity : (2 * Real.pi : ℝ)^2 ≠ 0), one_mul]

/-- Genuine convergence and the actual source identity produce every Identification field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/MoebiusQuadraticReturn.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e7f1d445612d850025ab4ea76e336b3d311f1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
