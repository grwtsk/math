# outer_pole_subtracted_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81e45432-c58e-842c-d5e7-47c5c408d939",
  "kind": "theorem",
  "lexical_name": "outer_pole_subtracted_bound",
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
  "slug": "outer-pole-subtracted-bound--2a698ffac9f4fe6fdd59fc5c",
  "source": {
    "blob": "52a3c7faf015ce0085c70c6188fa42c470f0f5ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 56,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a698ffac9f4fe6fdd59fc5c361280f744419839d2e459c5b260882c5c6af077",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81e45432-c58e-842c-d5e7-47c5c408d939`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem outer_pole_subtracted_bound (hsource : ConcreteNewtonPacket.SourceAcceptance)
    (root : ZeroPoint)
    (rootMember : root.1 ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ))
    (w : ℂ) (member : w ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ)) (distinct : w ≠ root.1) :
    riemannZeta w ≠ 0 ∧
      ‖deriv riemannZeta w / riemannZeta w - 1 / (w - root.1)‖ ≤ (238728 / 5 : ℝ) := by
  have bound := pole_subtracted_bound riemannZeta
    (QComplex.embed ConcreteNewtonPacket.inverse) (QComplex.embed ConcreteNewtonPacket.center)
    w root.1 (ConcreteNewtonPacket.newtonRadius : ℝ) (1 / 3 : ℝ) (21952 : ℝ)
    (by norm_num) (by norm_num) outer_analytic (outer_derivative_defect hsource)
    outer_curvature root.2.1 rootMember member distinct
  have coefficient : ‖QComplex.embed ConcreteNewtonPacket.inverse‖ * (21952 : ℝ) /
      (1 - 1 / 3) ≤ (238728 / 5 : ℝ) := by
    calc
      _ ≤ (29 / 20 : ℝ) * 21952 / (1 - 1 / 3) :=
        div_le_div_of_nonneg_right
          (mul_le_mul_of_nonneg_right multiplier_norm_upper (by norm_num)) (by norm_num)
      _ = _ := by norm_num
  exact ⟨bound.1, bound.2.trans coefficient⟩

/-- Membership is transported by the proved radius comparison, not by a new root choice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52a3c7faf015ce0085c70c6188fa42c470f0f5ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
