# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenHybridEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6151e9a9a0e9b27580e5cc24e3984af2a31089f9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridEnergy.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6151e9a9a0e9b27580e5cc24e3984af2a31089f9`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenHybridTail`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridTail.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Analysis.PSeries` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenLowPrincipalHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridEnergy.lean/declarations/greenlowprincipalhead--74feb80464eebb0ffd4b82a0.md) | 14 | `declaration-track:74feb80464eebb0ffd4b82a006919d977f530c5ed43a1e6f509150aefda65caf` |
| 2 | `theorem` | [card_greenLowPrincipalHead_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridEnergy.lean/declarations/card-greenlowprincipalhead-le--58763146943d3e6d0a2bbd7c.md) | 16 | `result-track:58763146943d3e6d0a2bbd7c19d8b6560f17994ad821e8b1664fbaeec4234067` |
| 3 | `def` | [greenLowPrincipalResidualEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridEnergy.lean/declarations/greenlowprincipalresidualenergy--6823b3ac227715228dba9193.md) | 22 | `declaration-track:6823b3ac227715228dba91938c62cb2ee9d31aa3578ddc90ac3f61e73b424992` |
| 4 | `theorem` | [greenLowPrincipalResidualEnergy_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridEnergy.lean/declarations/greenlowprincipalresidualenergy-le--094445758c3500dca3e1a7f2.md) | 24 | `result-track:094445758c3500dca3e1a7f28034a9387d561cfd3b07dd6a656f8a411a4c526e` |
| 5 | `theorem` | [exists_reciprocalSquarePartialSumBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridEnergy.lean/declarations/exists-reciprocalsquarepartialsumbound--59813d2731f4427bf82f3cf6.md) | 54 | `result-track:59813d2731f4427bf82f3cf6f409b5dc8511fdd2a0b595576e2f4f0a8a32192a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
