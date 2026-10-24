# mode_fourier_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9a956cd-6666-b384-7a72-c79a741328cd",
  "kind": "theorem",
  "lexical_name": "mode_fourier_integrable",
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
  "slug": "mode-fourier-integrable--43f67ef63de3a292ee043f73",
  "source": {
    "blob": "9f5f8cc501599715852592c3fe526c1e64e96a72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 24,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant54861d1615b32dae36fc2c2b7e69036fdacb27e89bd1d52cb6ae4b5b17a3db67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43f67ef63de3a292ee043f7353d8c718ec9885cf4b09f7b0fb415a44506b1d02",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant54861d1615b32dae36fc2c2b7e69036fdacb27e89bd1d52cb6ae4b5b17a3db67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9a956cd-6666-b384-7a72-c79a741328cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mode_fourier_integrable (A : ℝ) (i : Fin 5) (ω : ℝ) :
    Integrable (fun x : ℝ => (normalizedMode A i x : ℂ) *
      Complex.exp (Complex.I * (ω : ℂ) * (x : ℂ))) := by
  let f := fun x : ℝ =>
    ((Real.sqrt (modeWeight i / (2*A)) * mode i (x/A) : ℝ) : ℂ) *
      Complex.exp (Complex.I * (ω : ℂ) * (x : ℂ))
  have hc : Continuous f := by
    unfold f
    exact (Complex.continuous_ofReal.comp (continuous_const.mul
      ((mode_continuous i).comp (continuous_id.div_const A)))).mul (by fun_prop)
  have heq : (fun x : ℝ => (normalizedMode A i x : ℂ) *
      Complex.exp (Complex.I * (ω : ℂ) * (x : ℂ))) = (Icc (-A) A).indicator f := by
    classical
    funext x
    simp only [normalizedMode, Set.indicator]
    by_cases hx : x ∈ Icc (-A) A <;> simp [hx, f]
  rw [heq]
  exact hc.integrableOn_Icc.integrable_indicator measurableSet_Icc

/-- Even real modes have real Fourier values on the real angular-frequency axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant54861d1615b32dae36fc2c2b7e69036fdacb27e89bd1d52cb6ae4b5b17a3db67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant54861d1615b32dae36fc2c2b7e69036fdacb27e89bd1d52cb6ae4b5b17a3db67.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f5f8cc501599715852592c3fe526c1e64e96a72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
