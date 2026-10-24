# wienerPinnedQOne_boundary_oscillation_vanishes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f72a225c-1d51-1081-e641-0a33588945be",
  "kind": "theorem",
  "lexical_name": "wienerPinnedQOne_boundary_oscillation_vanishes",
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
  "slug": "wienerpinnedqone-boundary-oscillation-vanishes--6895f8afbbb6358e096e9910",
  "source": {
    "blob": "63d37837b2c3798ea6a2a570d778d830d8d696bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 213,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6895f8afbbb6358e096e991069788fbf9f787e0a6eb9887499508bd82fe9f1b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f72a225c-1d51-1081-e641-0a33588945be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerPinnedQOne_boundary_oscillation_vanishes
    (ψ : ℝ → ℂ)
    (hψ : Continuous ψ)
    (hcompact : HasCompactSupport ψ) :
    Tendsto
      (fun T : ℝ =>
        ∫ t : ℝ,
          wienerPinnedQOneAux
              (1 + (t : ℂ) * Complex.I) *
            ψ t * (T : ℂ) ^ ((t : ℂ) * Complex.I))
      atTop (nhds (0 : ℂ)) := by
  exact wiener_real_cpow_oscillation_tends_zero
    (fun t : ℝ =>
      wienerPinnedQOneAux
        (1 + (t : ℂ) * Complex.I) * ψ t)
    (wienerPinnedQOne_boundary_integrable ψ hψ hcompact)

/-- Genuine Schwartz Fourier decay for the PINNED Schwartz transform.
The constant is constructed from k=0 and k=2 Schwartz seminorm
witnesses: it does not depend on u, T, or an unproved boundary
theorem. This exact 1/(1+u^2) scale is the historical error kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63d37837b2c3798ea6a2a570d778d830d8d696bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
