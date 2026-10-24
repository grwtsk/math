# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Predicates.Variantdf84aec1e918ab1a0c83a721a1b3d70d8cddd5cac4897c9ac41777603de231d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7668c2f5aa5b8bcca6eb7825bba846fdcf7e251e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Predicates/Variantdf84aec1e918ab1a0c83a721a1b3d70d8cddd5cac4897c9ac41777603de231d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Predicates/Variantdf84aec1e918ab1a0c83a721a1b3d70d8cddd5cac4897c9ac41777603de231d3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Predicates/Variantdf84aec1e918ab1a0c83a721a1b3d70d8cddd5cac4897c9ac41777603de231d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7668c2f5aa5b8bcca6eb7825bba846fdcf7e251e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Predicates/Variantdf84aec1e918ab1a0c83a721a1b3d70d8cddd5cac4897c9ac41777603de231d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Predicates/Variantdf84aec1e918ab1a0c83a721a1b3d70d8cddd5cac4897c9ac41777603de231d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.SemiLocalDefect.WP1.All` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HilbertEnd](../../../../../mathematics/Analysis/FunctionalAnalysis/Predicates/Variantdf84aec1e918ab1a0c83a721a1b3d70d8cddd5cac4897c9ac41777603de231d3.lean/declarations/hilbertend--46531effe97eab53ab5d11d5.md) | 13 | `declaration-track:46531effe97eab53ab5d11d506fc17d72fa5e4697ef309dec74a66fbb2ae800d` |
| 2 | `def` | [OperatorSelfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/Predicates/Variantdf84aec1e918ab1a0c83a721a1b3d70d8cddd5cac4897c9ac41777603de231d3.lean/declarations/operatorselfadjoint--8a1b771cbf9c6018a8808ae9.md) | 19 | `declaration-track:8a1b771cbf9c6018a8808ae9c98ca91de377d30fcdbf283eba1ca00d88d0ec5f` |
| 3 | `def` | [OperatorIdempotent](../../../../../mathematics/Analysis/FunctionalAnalysis/Predicates/Variantdf84aec1e918ab1a0c83a721a1b3d70d8cddd5cac4897c9ac41777603de231d3.lean/declarations/operatoridempotent--1b1b0d98c66be863887f6a29.md) | 29 | `declaration-track:1b1b0d98c66be863887f6a29142776e955a7e97cf300fe52780428a4987ee250` |
| 4 | `def` | [OperatorNonnegative](../../../../../mathematics/Analysis/FunctionalAnalysis/Predicates/Variantdf84aec1e918ab1a0c83a721a1b3d70d8cddd5cac4897c9ac41777603de231d3.lean/declarations/operatornonnegative--6c405b44d4951b983d0729fd.md) | 37 | `declaration-track:6c405b44d4951b983d0729fd7fe62bad233be9c538a1201fbe1e101e02111a41` |
| 5 | `def` | [OperatorLE](../../../../../mathematics/Analysis/FunctionalAnalysis/Predicates/Variantdf84aec1e918ab1a0c83a721a1b3d70d8cddd5cac4897c9ac41777603de231d3.lean/declarations/operatorle--20d5d0947fcb5bfee8279ba5.md) | 46 | `declaration-track:20d5d0947fcb5bfee8279ba52563bc99ec30a6b43a3a9a7b0e737f9d90ea6c1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
