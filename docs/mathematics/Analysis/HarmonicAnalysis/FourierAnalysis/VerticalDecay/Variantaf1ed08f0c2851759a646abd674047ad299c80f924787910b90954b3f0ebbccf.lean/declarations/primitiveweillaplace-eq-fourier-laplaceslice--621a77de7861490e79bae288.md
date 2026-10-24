# primitiveWeilLaplace_eq_fourier_laplaceSlice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffd37457-13e7-273b-67e2-a3a9c8ae5867",
  "kind": "theorem",
  "lexical_name": "primitiveWeilLaplace_eq_fourier_laplaceSlice",
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
  "slug": "primitiveweillaplace-eq-fourier-laplaceslice--621a77de7861490e79bae288",
  "source": {
    "blob": "afb1bf513109ce8d2a1ab48385f689d5d742dbf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 67,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:621a77de7861490e79bae288dd8ca9a074358cd63c92af87fdf0631f6ad5eec3",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffd37457-13e7-273b-67e2-a3a9c8ae5867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveWeilLaplace_eq_fourier_laplaceSlice
    (g : PrimitiveWeilTestFunction) (sigma t : ℝ) :
    primitiveWeilLaplace g ((sigma : ℂ) + Complex.I * (t : ℂ)) =
      𝓕 (g.laplaceSliceSchwartz sigma) (-t / (2 * Real.pi)) := by
  rw [SchwartzMap.fourier_coe, Real.fourier_eq']
  unfold primitiveWeilLaplace
  apply integral_congr_ae
  filter_upwards with x
  rw [laplaceSliceSchwartz_apply]
  unfold primitiveWeilLaplaceIntegrand
  rw [smul_eq_mul]
  have hexponent :
      (((sigma : ℂ) + Complex.I * (t : ℂ)) - (1 / 2 : ℂ)) * (x : ℂ) =
        ((-(2 : ℝ) * Real.pi *
            inner ℝ x (-t / (2 * Real.pi)) : ℝ) : ℂ) * Complex.I +
          (((sigma : ℂ) - (1 / 2 : ℂ)) * (x : ℂ)) := by
    simp only [RCLike.inner_apply, conj_trivial]
    push_cast
    field_simp [Real.pi_ne_zero]
    ring
  rw [hexponent]
  rw [Complex.exp_add]
  ring

/-- Rapid vertical decay at a fixed real part, expressed in mathlib's
normalized Fourier frequency.  Since `2 * pi` is a fixed nonzero scalar, this
is equivalent to the usual polynomial decay in `|t|`. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afb1bf513109ce8d2a1ab48385f689d5d742dbf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
