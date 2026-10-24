# first_moment_convolution_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:988fda86-c65d-cbad-7589-13933084395e",
  "kind": "theorem",
  "lexical_name": "first_moment_convolution_integral",
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
  "slug": "first-moment-convolution-integral--1b13a7abf50667148209cf5d",
  "source": {
    "blob": "ec1cdb50f7891f9ec40f9fa2e0a47396ca7dfc46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 58,
    "path": "GRWTSK/Analysis/Convolution/FirstMomentConvolution.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b13a7abf50667148209cf5d712f44a54e6f32efdca74c6e30919e9bb6728e1c",
  "verification": {
    "reference": "docs/verification/Analysis/Convolution/FirstMomentConvolution.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:988fda86-c65d-cbad-7589-13933084395e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_moment_convolution_integral {f g : ℝ → ℝ}
    (hf : Integrable f) (hg : Integrable g)
    (hxf : Integrable (fun x : ℝ ↦ x * f x))
    (hxg : Integrable (fun x : ℝ ↦ x * g x)) :
    (∫ t : ℝ, t * (f ⋆ g) t) =
      (∫ x : ℝ, x * f x) * (∫ x : ℝ, g x) +
        (∫ x : ℝ, f x) * (∫ x : ℝ, x * g x) := by
  rw [integral_congr_ae (first_moment_convolution_ae hf hg hxf hxg)]
  rw [integral_add (hxf.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hg)
    (hf.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hxg)]
  rw [integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hxf hg,
    integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hf hxg]
  rfl

/-- Both vanishing zeroth moments annihilate the full first convolution moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/FirstMomentConvolution.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/FirstMomentConvolution.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec1cdb50f7891f9ec40f9fa2e0a47396ca7dfc46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
