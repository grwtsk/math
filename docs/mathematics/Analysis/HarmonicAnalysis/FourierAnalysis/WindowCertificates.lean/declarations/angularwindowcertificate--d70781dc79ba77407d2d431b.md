# AngularWindowCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c81119209fe78dbec79b299b00a6e96d10230a3cae4d9e5b6b0afaf25e327cae",
  "kind": "structure",
  "lexical_name": "AngularWindowCertificate",
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
  "slug": "angularwindowcertificate--d70781dc79ba77407d2d431b",
  "source": {
    "blob": "762d0793ddfffb32563a3e98b35cad42ae49758e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 19,
    "path": "GRWTSK/Analysis/Fourier/WindowCertificates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d70781dc79ba77407d2d431b78ee57b2f6a7e349641239e441ab19f0e25a5251",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/WindowCertificates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c81119209fe78dbec79b299b00a6e96d10230a3cae4d9e5b6b0afaf25e327cae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AngularWindowCertificate (T : ℝ) (f : ℝ → ℂ) (F : Lp (α := ℝ) ℂ 2) where
  nonnegativeWindow : 0 ≤ T
  zeroOutside : ∀ u, u ∉ Set.Icc 0 T → f u = 0
  integrable : Integrable f
  l2Representative : (F : ℝ → ℂ) =ᵐ[volume] f
  angularSpectrum : ℝ → ℂ
  exactKernel : ∀ ξ, angularSpectrum ξ = ∫ u : ℝ,
    Complex.exp (-Complex.I * (ξ:ℂ) * (u:ℂ)) * f u
  angularParseval : ‖F‖^2 = (2*Real.pi)⁻¹ * ∫ ξ : ℝ, ‖angularSpectrum ξ‖^2

/-- A reconstruction certificate binds an actual error, rather than a calibration label. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/WindowCertificates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/WindowCertificates.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `762d0793ddfffb32563a3e98b35cad42ae49758e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
