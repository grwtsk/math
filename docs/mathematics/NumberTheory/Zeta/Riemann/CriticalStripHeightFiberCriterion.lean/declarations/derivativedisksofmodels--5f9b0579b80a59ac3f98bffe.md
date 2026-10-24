# derivativeDisksOfModels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe8ce317d547d86b86996ff5f097852310d5e9d15e35dc4095179ddd7cc5ad83",
  "kind": "def",
  "lexical_name": "derivativeDisksOfModels",
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
  "slug": "derivativedisksofmodels--5f9b0579b80a59ac3f98bffe",
  "source": {
    "blob": "de9ddee70a349711bcff2758b97c1f3080691378",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 240,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f9b0579b80a59ac3f98bffe58737f07957469b9cb2f41e6be2cf98b13fc7d2a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe8ce317d547d86b86996ff5f097852310d5e9d15e35dc4095179ddd7cc5ad83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def derivativeDisksOfModels {U : Set ℂ}
    (P : ℝ → ℂ → ℂ) (a : ℝ → ℂ) (eModel eSource : ℝ → ℝ)
    (hmodel0 : ∀ t, 0 ≤ eModel t) (hsource0 : ∀ t, 0 ≤ eSource t)
    (hconv : ∀ t, Convex ℝ (carrier U t))
    (hP : ∀ t z, z ∈ carrier U t → DifferentiableAt ℂ (P t) z)
    (hmodel : ∀ t z, z ∈ carrier U t → ‖deriv (P t) z-a t‖ ≤ eModel t)
    (hsource : ∀ t z, z ∈ carrier U t →
      ‖deriv poleNormalizedZeta z-deriv (P t) z‖ ≤ eSource t)
    (hmargin : ∀ t, eModel t+eSource t < ‖a t‖) :
    ∀ t, DerivativeDisk poleNormalizedZeta (carrier U t) := fun t =>
  DerivativeDisk.ofDerivativeModel (a t) (eModel t) (eSource t)
    (hmodel0 t) (hsource0 t) (hconv t)
    (fun z _ => differentiable_poleNormalizedZeta z) (hP t) (hmodel t) (hsource t) (hmargin t)

/-- Pure quantifier control: local strict margins need not have a uniform lower bound.
This is NOT an assertion about the actual zeta derivative or a spectral gap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de9ddee70a349711bcff2758b97c1f3080691378` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
