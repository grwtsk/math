# DyadicThetaErrorLogSqOscillationAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12017f9b80831afc1286bb342e1ecf947024728607cd28787ed9590ab487627a",
  "kind": "def",
  "lexical_name": "DyadicThetaErrorLogSqOscillationAt",
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
  "slug": "dyadicthetaerrorlogsqoscillationat--884cf1ba7e00bf878db6a6b5",
  "source": {
    "blob": "a9553c7e01ea056d11febaeb2355b2f92a2f3eab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 52,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaFourierLogLossAdapter.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:884cf1ba7e00bf878db6a6b5ba187b76249004849680b558dda4dec64935a779",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaFourierLogLossAdapter.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12017f9b80831afc1286bb342e1ecf947024728607cd28787ed9590ab487627a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DyadicThetaErrorLogSqOscillationAt (ρ : ℝ) : Prop :=
  ∃ S : ℝ, 0 ≤ S ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ u ∈ Set.Icc
        (((dyadicScale j : ℕ) : ℝ))
        (((2 * dyadicScale j : ℕ) : ℝ)),
        |thetaError (2 * u) -
            thetaError (2 * (dyadicScale j : ℝ))| ≤
          S *
            Real.rpow (dyadicScale j : ℝ)
              (quadraticThreshold ρ) *
            (Real.log (dyadicScale j : ℝ))^2

/-- Fixed log-squared loss is absorbed by the eta-slack in the graded
oscillation target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaFourierLogLossAdapter.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaFourierLogLossAdapter.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9553c7e01ea056d11febaeb2355b2f92a2f3eab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
