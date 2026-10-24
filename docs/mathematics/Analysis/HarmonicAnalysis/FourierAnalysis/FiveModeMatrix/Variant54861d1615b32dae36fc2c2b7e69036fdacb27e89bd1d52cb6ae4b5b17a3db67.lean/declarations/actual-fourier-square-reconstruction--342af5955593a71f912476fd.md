# actual_fourier_square_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bb8bb94-fc75-abf5-701f-9c08f759652c",
  "kind": "theorem",
  "lexical_name": "actual_fourier_square_reconstruction",
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
  "slug": "actual-fourier-square-reconstruction--342af5955593a71f912476fd",
  "source": {
    "blob": "9f5f8cc501599715852592c3fe526c1e64e96a72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 78,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant54861d1615b32dae36fc2c2b7e69036fdacb27e89bd1d52cb6ae4b5b17a3db67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:342af5955593a71f912476fd59645ac6c2256b69a21f162d5942d1565e1f1e2f",
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

Occurrence: `result:7bb8bb94-fc75-abf5-701f-9c08f759652c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_fourier_square_reconstruction (A : ℝ) (hA : 1 ≤ A) (ω : ℝ) :
    Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ω) =
      ∑ i : Fin 5, ∑ j : Fin 5,
        alpha A i * alpha A j * (modeFourier A i ω * modeFourier A j ω).re := by
  rw [actual_fourier_reconstruction A hA]
  simp only [Complex.normSq_apply, Complex.re_sum, Complex.im_sum, Complex.mul_re,
    Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im, mode_fourier_im_zero,
    zero_mul, mul_zero, add_zero, sub_zero, Finset.sum_const_zero]
  rw [Finset.sum_mul]
  simp_rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Full angular gamma integral; no truncation of its frequency range. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant54861d1615b32dae36fc2c2b7e69036fdacb27e89bd1d52cb6ae4b5b17a3db67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant54861d1615b32dae36fc2c2b7e69036fdacb27e89bd1d52cb6ae4b5b17a3db67.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f5f8cc501599715852592c3fe526c1e64e96a72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
