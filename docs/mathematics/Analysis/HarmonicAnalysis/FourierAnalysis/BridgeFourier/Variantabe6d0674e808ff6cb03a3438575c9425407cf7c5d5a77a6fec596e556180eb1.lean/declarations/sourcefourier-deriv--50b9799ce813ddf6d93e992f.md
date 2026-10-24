# sourceFourier_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8f99400-7c44-0a55-2301-3fa0f664ef45",
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
  "slug": "sourcefourier-deriv--50b9799ce813ddf6d93e992f",
  "source": {
    "blob": "80cd2bb294916ac2f8306ba7d27a137ca245540d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 65,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50b9799ce813ddf6d93e992f1707ff99f5940d011d6d0095a3a4d717ba5e34a4",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8f99400-7c44-0a55-2301-3fa0f664ef45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–83.

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

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80cd2bb294916ac2f8306ba7d27a137ca245540d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
