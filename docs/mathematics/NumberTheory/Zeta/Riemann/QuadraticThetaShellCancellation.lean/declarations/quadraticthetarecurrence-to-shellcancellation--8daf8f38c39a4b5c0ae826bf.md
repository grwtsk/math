# quadraticThetaRecurrence_to_shellCancellation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41e44d13-65d9-982e-2d5f-7d0bbe7b42bc",
  "kind": "theorem",
  "lexical_name": "quadraticThetaRecurrence_to_shellCancellation",
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
  "slug": "quadraticthetarecurrence-to-shellcancellation--8daf8f38c39a4b5c0ae826bf",
  "source": {
    "blob": "cc9b7614f6542bad4ba84f580b19e64fc7eb4930",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 166,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8daf8f38c39a4b5c0ae826bf8a5bf5c59787cd95689d88b21f342a5bfee15a2b",
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

Occurrence: `result:41e44d13-65d9-982e-2d5f-7d0bbe7b42bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticThetaRecurrence_to_shellCancellation
    {ρ : ℝ}
    (hrec : QuadraticThetaSourceRecurrenceAt ρ) :
    QuadraticThetaShellCancellationAt ρ := by
  intro η hη
  obtain ⟨K, hK, R, hR, j₀, hstep⟩ := hrec η hη
  refine ⟨K, hK, R, hR, j₀, ?_⟩
  intro j hj A hA henv u hu
  have hv :
      2 * u ∈ Set.Icc
        (((dyadicScale (j + 1) : ℕ) : ℝ))
        (((2 * dyadicScale (j + 1) : ℕ) : ℝ)) :=
    two_mul_mem_next_octave_of_mem_current j hu
  have hs := hstep j hj A hA henv (2 * u) hv
  rw [thetaError_two_mul] at hs
  exact hs

/-- The recurrence frontier and the prime-shell cancellation frontier are
definitionally different but mathematically equivalent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc9b7614f6542bad4ba84f580b19e64fc7eb4930` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
