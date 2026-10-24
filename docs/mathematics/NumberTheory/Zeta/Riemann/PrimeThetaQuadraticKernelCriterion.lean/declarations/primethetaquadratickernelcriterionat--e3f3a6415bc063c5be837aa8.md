# PrimeThetaQuadraticKernelCriterionAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4520dd478a8e5bc9a2db77601d3150d8536593d68e91bafcf11b7ff7be35984c",
  "kind": "def",
  "lexical_name": "PrimeThetaQuadraticKernelCriterionAt",
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
  "slug": "primethetaquadratickernelcriterionat--e3f3a6415bc063c5be837aa8",
  "source": {
    "blob": "ad7d7b67d02eea6513a45adf610333123db10ed0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 164,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3f3a6415bc063c5be837aa803cb4b1f029efe16f62b6e7c74e8093aede1d7f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4520dd478a8e5bc9a2db77601d3150d8536593d68e91bafcf11b7ff7be35984c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PrimeThetaQuadraticKernelCriterionAt (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ K : ℝ, 0 ≤ K ∧
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        ∃ stage :
            PrimeThetaQuadraticKernelStage (dyadicScale j),
          (∀ v ∈
              Set.Icc ((dyadicScale (j + 1) : ℕ) : ℝ)
                (((2 * dyadicScale (j + 1) : ℕ) : ℝ)),
            stage.kernelMass v ≤ K) ∧
          (∀ v ∈
              Set.Icc ((dyadicScale (j + 1) : ℕ) : ℝ)
                (((2 * dyadicScale (j + 1) : ℕ) : ℝ)),
            stage.residual v ≤
              R * Real.rpow (dyadicScale j : ℝ)
                (quadraticThreshold ρ + η / 2)) ∧
          (∀ v ∈
              Set.Icc ((dyadicScale (j + 1) : ℕ) : ℝ)
                (((2 * dyadicScale (j + 1) : ℕ) : ℝ)),
            |thetaError v| + 1 ≤
              |stage.response v| / (dyadicScale j : ℝ) +
                stage.residual v)

/-- The prime-pair kernel criterion supplies the exact recurrence consumed by
the existing nonlinear threshold descent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad7d7b67d02eea6513a45adf610333123db10ed0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
