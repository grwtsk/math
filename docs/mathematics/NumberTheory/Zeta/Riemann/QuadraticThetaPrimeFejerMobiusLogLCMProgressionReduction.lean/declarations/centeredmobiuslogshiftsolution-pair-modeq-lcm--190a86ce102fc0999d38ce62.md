# centeredMobiusLogShiftSolution_pair_modEq_lcm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:caddb95c-eb80-3802-b257-fdc8e882de73",
  "kind": "theorem",
  "lexical_name": "centeredMobiusLogShiftSolution_pair_modEq_lcm",
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
  "slug": "centeredmobiuslogshiftsolution-pair-modeq-lcm--190a86ce102fc0999d38ce62",
  "source": {
    "blob": "1487c73221bb96a0ac1dc2edce6bd31a7123be56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 283,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:190a86ce102fc0999d38ce626514e57112a531b99b748f49d3e542062a5564b9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caddb95c-eb80-3802-b257-fdc8e882de73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredMobiusLogShiftSolution_pair_modEq_lcm
    {d e h n₁ n₂ : ℕ}
    (h₁ : CenteredMobiusLogShiftSolution d e h n₁)
    (h₂ : CenteredMobiusLogShiftSolution d e h n₂) :
    n₁ ≡ n₂ [MOD Nat.lcm d e] := by
  have hd₁ : n₁ ≡ 0 [MOD d] := h₁.1.modEq_zero_nat
  have hd₂ : n₂ ≡ 0 [MOD d] := h₂.1.modEq_zero_nat
  have he₁ : n₁ + h ≡ 0 [MOD e] := h₁.2.modEq_zero_nat
  have he₂ : n₂ + h ≡ 0 [MOD e] := h₂.2.modEq_zero_nat
  have hd : n₁ ≡ n₂ [MOD d] :=
    hd₁.trans hd₂.symm
  have he_add : n₁ + h ≡ n₂ + h [MOD e] :=
    he₁.trans he₂.symm
  have he : n₁ ≡ n₂ [MOD e] :=
    Nat.ModEq.add_right_cancel' h he_add
  exact Nat.mod_lcm hd he

/-- Finite progression fiber inside the shifted octave interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1487c73221bb96a0ac1dc2edce6bd31a7123be56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
