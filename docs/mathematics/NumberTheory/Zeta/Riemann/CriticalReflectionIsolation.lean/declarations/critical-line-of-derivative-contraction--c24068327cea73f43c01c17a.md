# critical_line_of_derivative_contraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:189ae918-662e-c098-10f2-2462e228c8f9",
  "kind": "theorem",
  "lexical_name": "critical_line_of_derivative_contraction",
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
  "slug": "critical-line-of-derivative-contraction--c24068327cea73f43c01c17a",
  "source": {
    "blob": "33a5123d384e404d23dd8af54db8c04e0bc28dc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 111,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c24068327cea73f43c01c17a47ee61af0aa3d3d27ab6fe1b4973679f1853c12b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:189ae918-662e-c098-10f2-2462e228c8f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem critical_line_of_derivative_contraction (c s a : ℂ) (r q : ℝ)
    (centerOnLine : c.re = 1 / 2) (zero : NontrivialZetaZero s)
    (member : s ∈ closedBall c r) (rateStrict : q < 1)
    (differentiable : ∀ z ∈ closedBall c r, DifferentiableAt ℂ riemannZeta z)
    (derivativeBound : ∀ z ∈ closedBall c r, ‖1 - a * deriv riemannZeta z‖ ≤ q) :
    s.re = 1 / 2 := by
  have reflectedMember := reflection_mem_centered_closedBall c s r centerOnLine member
  have derivative (z : ℂ) (hz : z ∈ closedBall c r) :
      HasDerivWithinAt (fun w : ℂ => w - a * riemannZeta w)
        (1 - a * deriv riemannZeta z) (closedBall c r) z :=
    ((hasDerivAt_id z).sub ((differentiable z hz).hasDerivAt.const_mul a)).hasDerivWithinAt
  have pairBound :
      ‖(s - a * riemannZeta s) -
        (criticalReflection s - a * riemannZeta (criticalReflection s))‖ ≤
          q * ‖s - criticalReflection s‖ :=
    (convex_closedBall c r).norm_image_sub_le_of_norm_hasDerivWithin_le
      derivative derivativeBound reflectedMember member
  by_contra offLine
  exact (not_le_of_gt rateStrict) (off_line_pair_rate_barrier s a q zero offLine pairBound)

/-- A small centered disk lies in the open strip, so a witnessed zero retains all RH exclusions.
The radius restriction is needed here for the domain adapter, not for reflection invariance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33a5123d384e404d23dd8af54db8c04e0bc28dc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
