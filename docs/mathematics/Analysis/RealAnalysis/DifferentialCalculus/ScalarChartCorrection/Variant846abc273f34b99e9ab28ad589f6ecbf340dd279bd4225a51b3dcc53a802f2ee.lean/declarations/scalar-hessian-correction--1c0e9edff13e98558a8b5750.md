# scalar_hessian_correction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a07e7edc-4d15-87e0-0e23-b86e825eb1da",
  "kind": "theorem",
  "lexical_name": "scalar_hessian_correction",
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
  "slug": "scalar-hessian-correction--1c0e9edff13e98558a8b5750",
  "source": {
    "blob": "740a7b7703513a3b3e089c0728c5e1d54a9bcfe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c0e9edff13e98558a8b575026a1bdf209050e003746978e45f29110c2cda008",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a07e7edc-4d15-87e0-0e23-b86e825eb1da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scalar_hessian_correction
    (f f₁ phi phi₁ : ℝ → ℝ) (U : Set ℝ) (hU : IsOpen U)
    (u f₂ phi₂ : ℝ) (hu : u ∈ U)
    (hf : ∀ y ∈ U, HasDerivAt f (f₁ (phi y)) (phi y))
    (hphi : ∀ y ∈ U, HasDerivAt phi (phi₁ y) y)
    (hf₁ : HasDerivAt f₁ f₂ (phi u))
    (hphi₁ : HasDerivAt phi₁ phi₂ u) :
    deriv (deriv (fun y => f (phi y))) u - f₁ (phi u) * phi₂ =
      f₂ * (phi₁ u) ^ 2 := by
  rw [(hasDerivAt_composite_second f f₁ phi phi₁ U hU
    u f₂ phi₂ hu hf hphi hf₁ hphi₁).deriv]
  ring

/-- A nonnegative original Hessian remains nonnegative after the exact correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `740a7b7703513a3b3e089c0728c5e1d54a9bcfe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
