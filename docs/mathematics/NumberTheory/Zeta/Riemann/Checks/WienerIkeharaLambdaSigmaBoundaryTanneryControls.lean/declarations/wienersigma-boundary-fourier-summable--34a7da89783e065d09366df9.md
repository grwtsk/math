# wienerSigma_boundary_fourier_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d769e6dc-2fbf-9cf9-e00b-e0349676a0cd",
  "kind": "theorem",
  "lexical_name": "wienerSigma_boundary_fourier_summable",
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
  "slug": "wienersigma-boundary-fourier-summable--34a7da89783e065d09366df9",
  "source": {
    "blob": "93cb4339d19b8bf7b6dd514179968ad3ef20a73c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 107,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34a7da89783e065d09366df94f91d256c9b4d381966f82ac7e9369d13f01621d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d769e6dc-2fbf-9cf9-e00b-e0349676a0cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerSigma_boundary_fourier_summable
    (g : 𝓢(ℝ, ℂ)) {T : ℝ} (hT : 1 ≤ T) :
    Summable (wienerSigmaBoundaryFourierTerm g T) := by
  obtain ⟨C, hC, h⟩ := wienerSigmaFourier_uniform_norm_tsum g
  have hnorm :
      Summable
        (fun n : ℕ => ‖wienerSigmaFourierTerm g T 1 n‖) :=
    (h T 1 hT (le_refl _)).1
  have hactual :
      Summable (wienerSigmaFourierTerm g T 1) :=
    hnorm.of_norm
  simpa only [wienerSigmaTerm_one_eq_boundary] using hactual

/-- Explicit UNIFORM-IN-T and sigma>=1 bound on the ACTUAL
absolute Fourier-weighted Lambda series. Unlike an abstract
boundedness claim, the constant is constructed from Schwartz
seminorm decay and the proved-in-source Chebyshev kernel bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93cb4339d19b8bf7b6dd514179968ad3ef20a73c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
