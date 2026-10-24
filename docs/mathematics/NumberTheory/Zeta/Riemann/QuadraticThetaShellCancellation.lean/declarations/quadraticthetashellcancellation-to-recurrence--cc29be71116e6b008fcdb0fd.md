# quadraticThetaShellCancellation_to_recurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf15d1bd-7f69-9c72-5a77-3932ad045fe9",
  "kind": "theorem",
  "lexical_name": "quadraticThetaShellCancellation_to_recurrence",
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
  "slug": "quadraticthetashellcancellation-to-recurrence--cc29be71116e6b008fcdb0fd",
  "source": {
    "blob": "cc9b7614f6542bad4ba84f580b19e64fc7eb4930",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 139,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc29be71116e6b008fcdb0fdd401173f773b94ab217a218a9555a16005e918fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf15d1bd-7f69-9c72-5a77-3932ad045fe9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticThetaShellCancellation_to_recurrence
    {ρ : ℝ}
    (hshell : QuadraticThetaShellCancellationAt ρ) :
    QuadraticThetaSourceRecurrenceAt ρ := by
  intro η hη
  obtain ⟨K, hK, R, hR, j₀, hcancel⟩ := hshell η hη
  refine ⟨K, hK, R, hR, j₀, ?_⟩
  intro j hj A hA henv v hv
  let u : ℝ := v / 2
  have hu :
      u ∈ Set.Icc
        (((dyadicScale j : ℕ) : ℝ))
        (((2 * dyadicScale j : ℕ) : ℝ)) := by
    dsimp [u]
    exact half_mem_current_octave_of_mem_next j hv
  have hc := hcancel j hj A hA henv u hu
  have hdecomp :
      thetaError v = thetaError u + thetaShellError u := by
    have htwo : 2 * u = v := by
      dsimp [u]
      ring
    rw [← htwo, thetaError_two_mul]
  rw [hdecomp]
  exact hc

/-- Conversely, the next-octave recurrence is exactly a shell-cancellation
estimate after the substitution v=2u. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc9b7614f6542bad4ba84f580b19e64fc7eb4930` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
