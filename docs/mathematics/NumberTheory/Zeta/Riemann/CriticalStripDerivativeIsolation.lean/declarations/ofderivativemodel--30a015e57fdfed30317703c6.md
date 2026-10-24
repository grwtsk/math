# ofDerivativeModel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9e413c8241bd0a8bc9626c0515f09f8d3008c381ce648219f9838fa12110b6d",
  "kind": "def",
  "lexical_name": "ofDerivativeModel",
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
  "slug": "ofderivativemodel--30a015e57fdfed30317703c6",
  "source": {
    "blob": "f378227390bbb9559399c2df24157ed40994e1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 116,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30a015e57fdfed30317703c63ffd76a6ccdc049176bcb401e609da83e96ac0db",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9e413c8241bd0a8bc9626c0515f09f8d3008c381ce648219f9838fa12110b6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofDerivativeModel {P : ℂ → ℂ} (a : ℂ) (eModel eSource : ℝ)
    (heModel : 0 ≤ eModel) (heSource : 0 ≤ eSource) (hconv : Convex ℝ U)
    (hF : ∀ z ∈ U, DifferentiableAt ℂ F z)
    (hP : ∀ z ∈ U, DifferentiableAt ℂ P z)
    (hmodel : ∀ z ∈ U, ‖deriv P z - a‖ ≤ eModel)
    (hsource : ∀ z ∈ U, ‖deriv F z - deriv P z‖ ≤ eSource)
    (hmargin : eModel + eSource < ‖a‖) : DerivativeDisk F U where
  linearPart := a
  radius := eModel + eSource
  radius_nonneg := add_nonneg heModel heSource
  convex := hconv
  differentiable := hF
  encloses := by
    intro z hz
    have htriangle : ‖deriv F z - a‖ ≤
        ‖deriv F z - deriv P z‖ + ‖deriv P z - a‖ := by
      calc
        _ = ‖(deriv F z - deriv P z) + (deriv P z - a)‖ := by congr 1; ring
        _ ≤ _ := norm_add_le _ _
    linarith [hsource z hz, hmodel z hz]
  strict_margin := hmargin

/-- An inhabited affine certificate shows that a zero is permitted, not rejected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f378227390bbb9559399c2df24157ed40994e1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
