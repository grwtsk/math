# MellinLogDerivativeSquare.residual_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d3814f9-8459-2ab6-07ee-2b4354cd6c1c",
  "kind": "theorem",
  "lexical_name": "MellinLogDerivativeSquare.residual_eq_zero",
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
  "slug": "mellinlogderivativesquare-residual-eq-zero--c125a8fdbd4213ccaf4bb464",
  "source": {
    "blob": "32c78c1ca5afa5ec2c7d74b24b2396be09a9ab85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c125a8fdbd4213ccaf4bb46485d8920cb0b3da51f4bbffb64494fd42fc60ae08",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d3814f9-8459-2ab6-07ee-2b4354cd6c1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MellinLogDerivativeSquare.residual_eq_zero
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : MellinLogDerivativeSquare χ)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ)
    {s : ℂ} (hs : s ∈ criticalRightHalfPlane) :
    square.residual s = 0 := by
  have hAnalytic : AnalyticOnNhd ℂ square.residual criticalRightHalfPlane :=
    (square.differentiableOn_residual hBound).analyticOnNhd
      isOpen_criticalRightHalfPlane
  have hZero : AnalyticOnNhd ℂ (fun _ : ℂ ↦ (0 : ℂ))
      criticalRightHalfPlane := analyticOnNhd_const
  have hTwo : (2 : ℂ) ∈ criticalRightHalfPlane := by
    norm_num [criticalRightHalfPlane]
  have hEventually : square.residual =ᶠ[nhds (2 : ℂ)]
      (fun _ : ℂ ↦ (0 : ℂ)) := by
    have hOpen : IsOpen {z : ℂ | 1 < z.re} :=
      isOpen_lt continuous_const continuous_re
    have hMem : (2 : ℂ) ∈ {z : ℂ | 1 < z.re} := by norm_num
    filter_upwards [hOpen.mem_nhds hMem] with z hz
    exact square.residual_eq_zero_of_one_lt_re hz
  exact (hAnalytic.eqOn_of_preconnected_of_eventuallyEq hZero
    isPreconnected_criticalRightHalfPlane hTwo hEventually) hs

/-- The centered half-plus-epsilon estimate excludes critical-strip zeros
to the right of the critical line.  The proof is local ODE uniqueness plus
global analytic continuation of `regularizedL`; no pole theorem is assumed
as a black-box conclusion. -/
@[surface_novel, surface_interface]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32c78c1ca5afa5ec2c7d74b24b2396be09a9ab85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
