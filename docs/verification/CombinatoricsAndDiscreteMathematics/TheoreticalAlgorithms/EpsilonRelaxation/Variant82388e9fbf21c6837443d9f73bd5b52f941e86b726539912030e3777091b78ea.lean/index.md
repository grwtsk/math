# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EpsilonRelaxation.Variant82388e9fbf21c6837443d9f73bd5b52f941e86b726539912030e3777091b78ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e2c1f566afc0e3dfa6cedb022e2a92de9f49424",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant82388e9fbf21c6837443d9f73bd5b52f941e86b726539912030e3777091b78ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant82388e9fbf21c6837443d9f73bd5b52f941e86b726539912030e3777091b78ea.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant82388e9fbf21c6837443d9f73bd5b52f941e86b726539912030e3777091b78ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e2c1f566afc0e3dfa6cedb022e2a92de9f49424`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant82388e9fbf21c6837443d9f73bd5b52f941e86b726539912030e3777091b78ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant82388e9fbf21c6837443d9f73bd5b52f941e86b726539912030e3777091b78ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Stream.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteEpsilon](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant82388e9fbf21c6837443d9f73bd5b52f941e86b726539912030e3777091b78ea.lean/declarations/finiteepsilon--eb855e2fbb9a6da2ac1f9b82.md) | 15 | `declaration-track:eb855e2fbb9a6da2ac1f9b823bb75baa518d3dafd896c78e4736ac2307c76728` |
| 2 | `structure` | [FiniteRelaxedValue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant82388e9fbf21c6837443d9f73bd5b52f941e86b726539912030e3777091b78ea.lean/declarations/finiterelaxedvalue--fbb85be7b454811c16b553cc.md) | 22 | `declaration-track:fbb85be7b454811c16b553ccbb865a700f748498f10beeeccd7fc240accf79eb` |
| 3 | `inductive` | [PolarBaseBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant82388e9fbf21c6837443d9f73bd5b52f941e86b726539912030e3777091b78ea.lean/declarations/polarbasebit--031bad805760e2151c412ed7.md) | 28 | `declaration-track:031bad805760e2151c412ed7d0472d5e3afeb3491fe28450a84799bf1ee92dfc` |
| 4 | `def` | [relaxedValueOfBase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant82388e9fbf21c6837443d9f73bd5b52f941e86b726539912030e3777091b78ea.lean/declarations/relaxedvalueofbase--e801cc27227cf304f8dde72e.md) | 33 | `declaration-track:e801cc27227cf304f8dde72e317267cc2edf50a25a6fb9b09b230dd4075313aa` |
| 5 | `theorem` | [relaxedValue_denominator_positive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonRelaxation/Variant82388e9fbf21c6837443d9f73bd5b52f941e86b726539912030e3777091b78ea.lean/declarations/relaxedvalue-denominator-positive--be3f7fee8c422008d4edacda.md) | 59 | `result-track:be3f7fee8c422008d4edacdaf4cf3a343ef356043a52351a4d08ead576a47507` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
