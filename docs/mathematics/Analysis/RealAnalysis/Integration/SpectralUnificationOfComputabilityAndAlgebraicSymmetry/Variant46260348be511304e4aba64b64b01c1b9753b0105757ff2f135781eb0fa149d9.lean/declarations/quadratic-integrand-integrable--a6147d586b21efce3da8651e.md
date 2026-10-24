# quadratic_integrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5de47841-9e7e-b5bc-f92c-708ce7a9a498",
  "kind": "theorem",
  "lexical_name": "quadratic_integrand_integrable",
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
  "slug": "quadratic-integrand-integrable--a6147d586b21efce3da8651e",
  "source": {
    "blob": "0d34a958853fca5af28c88a3381f9699eb9c8f98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant46260348be511304e4aba64b64b01c1b9753b0105757ff2f135781eb0fa149d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6147d586b21efce3da8651e54adfc7969390e7158731c3b642591370d38c9a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant46260348be511304e4aba64b64b01c1b9753b0105757ff2f135781eb0fa149d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5de47841-9e7e-b5bc-f92c-708ce7a9a498`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_integrand_integrable (f : ℝ → ℝ) (hf1 : Integrable f volume)
    (hf2 : MemLp f 2 volume) (hd : Differentiable ℝ f)
    (hdi : Integrable (deriv f) volume) (hd2 : MemLp (deriv f) 2 volume) :
    Integrable (fun ξ ↦ (1 + 2 * ξ ^ 2) * Complex.normSq (sourceFourier f ξ)) volume := by
  apply ((sourceFourier_normSq_integrable f hf1 hf2).add
    ((frequency_moment_integrable f hf1 hd hdi hd2).const_mul 2)).congr
  exact Filter.Eventually.of_forall fun ξ ↦ by dsimp; ring

/-- The exact source logarithmic energy is bounded by the value energy plus twice its
global derivative energy; all Fourier and physical-space integrals are genuine. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant46260348be511304e4aba64b64b01c1b9753b0105757ff2f135781eb0fa149d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant46260348be511304e4aba64b64b01c1b9753b0105757ff2f135781eb0fa149d9.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d34a958853fca5af28c88a3381f9699eb9c8f98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
