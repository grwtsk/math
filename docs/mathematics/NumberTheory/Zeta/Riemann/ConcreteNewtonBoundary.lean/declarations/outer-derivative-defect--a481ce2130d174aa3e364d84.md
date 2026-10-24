# outer_derivative_defect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6c5fd6d-8402-fb0c-07ac-485278b3c483",
  "kind": "theorem",
  "lexical_name": "outer_derivative_defect",
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
  "slug": "outer-derivative-defect--a481ce2130d174aa3e364d84",
  "source": {
    "blob": "500481f020a298e3f0bc7812a4c4273d5dbfdc95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 61,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a481ce2130d174aa3e364d8458b8e27103ec14f6bfc5597ca90d1213ddaea51e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6c5fd6d-8402-fb0c-07ac-485278b3c483`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem outer_derivative_defect (hsource : ConcreteNewtonPacket.SourceAcceptance)
    (w : ℂ) (member : w ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ)) :
    ‖1 - QComplex.embed ConcreteNewtonPacket.inverse * deriv riemannZeta w‖ ≤ (1 / 3 : ℝ) := by
  have bound := (RationalNewtonWitness.source_bounds ConcreteNewtonPacket.chart true
    ConcreteNewtonPacket.newtonData ConcreteNewtonPacket.newton_admissible
    (outer_center_enclosures_of_source hsource)).2 w member
  have rate : (RationalNewtonWitness.defectBudget ConcreteNewtonPacket.chart
      ConcreteNewtonPacket.newtonData : ℝ) < (1 / 3 : ℝ) := by
    have hs := (Rat.cast_lt (K := ℝ)).2 ConcreteNewtonPacket.contraction_budget_lt_third
    simpa only [Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] using hs
  exact bound.trans rate.le

/-- This is an upper bound, not an equality with the multiplier's complex modulus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `500481f020a298e3f0bc7812a4c4273d5dbfdc95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
