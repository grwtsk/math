# actual_fourier_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37df2677-3860-c084-edfc-548b5c93b7a7",
  "kind": "theorem",
  "lexical_name": "actual_fourier_reconstruction",
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
  "slug": "actual-fourier-reconstruction--44e8cfb309b33b43ddd40a1c",
  "source": {
    "blob": "856669554d3c3c2b6e3126860efc3f3a8b0e7577",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 72,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44e8cfb309b33b43ddd40a1c8f1c0a160bc57e74a3561d01ebb1fd066465b89a",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37df2677-3860-c084-edfc-548b5c93b7a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_fourier_reconstruction (A : ℝ) (hA : 1 ≤ A) (ω : ℝ) :
    sourceFourier (normalizedTest explicitSecondDerivative A) ω =
      ∑ i : Fin 5, (alpha A i : ℂ) * modeFourier A i ω := by
  unfold sourceFourier
  simp_rw [actual_source_reconstruction A hA, Complex.ofReal_sum, Complex.ofReal_mul,
    Finset.sum_mul]
  have hterm (x : ℝ) (i : Fin 5) : ((alpha A i : ℂ) * (normalizedMode A i x : ℂ)) *
      Complex.exp (Complex.I * (ω : ℂ) * (x : ℂ)) =
      (alpha A i : ℂ) * ((normalizedMode A i x : ℂ) *
        Complex.exp (Complex.I * (ω : ℂ) * (x : ℂ))) := by ring
  simp_rw [hterm]
  rw [integral_finsetSum _ (fun i _ => (mode_fourier_integrable A i ω).const_mul _)]
  simp only [integral_const_mul, modeFourier, sourceFourier]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `856669554d3c3c2b6e3126860efc3f3a8b0e7577` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
