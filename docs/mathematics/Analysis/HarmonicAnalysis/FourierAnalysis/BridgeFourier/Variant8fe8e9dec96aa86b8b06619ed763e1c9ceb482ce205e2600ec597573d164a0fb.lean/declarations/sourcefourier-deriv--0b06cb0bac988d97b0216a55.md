# sourceFourier_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1eb67aa2-96c6-499c-8e42-91cf37060b47",
  "kind": "theorem",
  "lexical_name": "sourceFourier_deriv",
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
  "slug": "sourcefourier-deriv--0b06cb0bac988d97b0216a55",
  "source": {
    "blob": "b2d61f9436742e686f967b23ce7686daf323e416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 65,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b06cb0bac988d97b0216a559efc6b74c0b7b48d3d5448c4267d1dd531a32cc2",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1eb67aa2-96c6-499c-8e42-91cf37060b47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceFourier_deriv (f : ℝ → ℝ) (hf : Integrable f)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f)) (ξ : ℝ) :
    sourceFourier (deriv f) ξ = -(Complex.I * (ξ : ℂ)) * sourceFourier f ξ := by
  rw [sourceFourier_eq_fourier, ← deriv_complexification hd]
  have hfc : Integrable (fun x ↦ (f x : ℂ)) := Complex.ofRealCLM.integrable_comp hf
  have hdc : Differentiable ℝ (fun x ↦ (f x : ℂ)) :=
    fun x ↦ (hd x).hasDerivAt.ofReal_comp.differentiableAt
  have hdic : Integrable (deriv (fun x ↦ (f x : ℂ))) := by
    rw [deriv_complexification hd]
    exact Complex.ofRealCLM.integrable_comp hdi
  rw [Real.fourier_deriv hfc hdc hdic]
  simp only [smul_eq_mul]
  rw [← sourceFourier_eq_fourier]
  have hp : (Real.pi : ℂ) ≠ 0 := by exact_mod_cast Real.pi_ne_zero
  push_cast
  congr 1
  field_simp

/-- Reciprocal-frequency decay bound, stated without division at frequency zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2d61f9436742e686f967b23ce7686daf323e416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
