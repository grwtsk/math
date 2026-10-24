# inner_posterior_lt_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce555c37-3b1a-6738-030b-9f3d3a5936fe",
  "kind": "theorem",
  "lexical_name": "inner_posterior_lt_radius",
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
  "slug": "inner-posterior-lt-radius--a85145ca07baff72216d446f",
  "source": {
    "blob": "dea0f21b0d65708e51c6ad36ad032685557a2f73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 116,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a85145ca07baff72216d446fdcf9ec0cd22c1120d278690f29744ac2a3f249a6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce555c37-3b1a-6738-030b-9f3d3a5936fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_posterior_lt_radius :
    (RationalNewtonWitness.residualBudget innerData : ℝ) /
      (1 - (RationalNewtonWitness.defectBudget ConcreteNewtonPacket.chart innerData : ℝ)) <
        (innerRadius : ℝ) := by
  have rate : (RationalNewtonWitness.defectBudget ConcreteNewtonPacket.chart innerData : ℝ) < 1 := by
    exact_mod_cast inner_admissible.2.2.2.2.1
  have slack : (1 / 100000000 : ℝ) < (innerRadius : ℝ) -
      (RationalNewtonWitness.residualBudget innerData : ℝ) -
      (RationalNewtonWitness.defectBudget ConcreteNewtonPacket.chart innerData : ℝ) *
        (innerRadius : ℝ) := by
    have hs := (Rat.cast_lt (K := ℝ)).2 inner_self_map_slack
    simpa only [Rat.cast_div, Rat.cast_one, Rat.cast_ofNat, Rat.cast_sub, Rat.cast_mul] using hs
  apply (div_lt_iff₀ (by linarith : (0 : ℝ) <
    1 - (RationalNewtonWitness.defectBudget ConcreteNewtonPacket.chart innerData : ℝ))).mpr
  nlinarith

/-- The smaller witness is identified with the ORIGINAL local zero by outer uniqueness.
The full posterior bound and original outer uniqueness region are both retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dea0f21b0d65708e51c6ad36ad032685557a2f73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
