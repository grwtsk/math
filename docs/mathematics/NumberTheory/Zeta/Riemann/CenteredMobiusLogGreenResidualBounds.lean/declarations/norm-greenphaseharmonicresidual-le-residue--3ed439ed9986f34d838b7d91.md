# norm_greenPhaseHarmonicResidual_le_residue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ee45079-1889-a7f1-bd73-53699e47c96e",
  "kind": "theorem",
  "lexical_name": "norm_greenPhaseHarmonicResidual_le_residue",
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
  "slug": "norm-greenphaseharmonicresidual-le-residue--3ed439ed9986f34d838b7d91",
  "source": {
    "blob": "da991f9793ef26bbc18584840f03892276cd66b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 16,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ed439ed9986f34d838b7d91f969902ef31d5b36e467f576b92f87dee5ef7ee9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ee45079-1889-a7f1-bd73-53699e47c96e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_greenPhaseHarmonicResidual_le_residue
    {X : ℕ} (hX : 1 ≤ X) {k : ℤ}
    (R : GreenCenteredResidue X k) (hr : R.r ≠ 0) :
    ‖greenPhaseHarmonicResidual X k‖ ≤
      3 / (2 * Real.pi * |(k : ℝ)|) +
        1 / (2 * |(R.r : ℝ)|) := by
  unfold greenPhaseHarmonicResidual
  have hcont := norm_greenContinuumPhaseIntegral_le (by
    intro hk0
    subst k
    have := R.relation
    simp at this
    omega)
  have hdisc := norm_greenDiscretePhaseRiemannSum_le_residue hX R hr
  have hrewrite :
      (∑ j ∈ Finset.Icc 1 X,
        ((1 / (X : ℝ) : ℝ) : ℂ) *
          (fourier (-k) (greenRightMeshPoint X j : AddCircle (1 : ℝ)) /
            (1 + (greenRightMeshPoint X j : ℂ)))) =
        greenDiscretePhaseRiemannSum X k := rfl
  rw [hrewrite]
  exact (norm_sub_le _ _).trans (add_le_add hcont hdisc)

/-- Explicit nonaliasing centering-residual estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualBounds.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da991f9793ef26bbc18584840f03892276cd66b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
