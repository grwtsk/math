# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Disjoint.Variante93effc9d55ba2f21d97c53642331421da0af2edb469a656a01e29e510d88fd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc366185f6d298640368bc16db201bea43be48e6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variante93effc9d55ba2f21d97c53642331421da0af2edb469a656a01e29e510d88fd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variante93effc9d55ba2f21d97c53642331421da0af2edb469a656a01e29e510d88fd4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variante93effc9d55ba2f21d97c53642331421da0af2edb469a656a01e29e510d88fd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc366185f6d298640368bc16db201bea43be48e6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variante93effc9d55ba2f21d97c53642331421da0af2edb469a656a01e29e510d88fd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variante93effc9d55ba2f21d97c53642331421da0af2edb469a656a01e29e510d88fd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Disjoint` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [disjoint_atBot_principal_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variante93effc9d55ba2f21d97c53642331421da0af2edb469a656a01e29e510d88fd4.lean/declarations/disjoint-atbot-principal-ioi--ede8fd4712668ac04f4e8f8d.md) | 29 | `result-track:ede8fd4712668ac04f4e8f8d2fa4bbc7eb422220b0949e9d43275c1dc59d098d` |
| 2 | `theorem` | [disjoint_atTop_principal_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variante93effc9d55ba2f21d97c53642331421da0af2edb469a656a01e29e510d88fd4.lean/declarations/disjoint-attop-principal-iio--3291ac7e19113e0ef07c703e.md) | 32 | `result-track:3291ac7e19113e0ef07c703eb61f6020b60990050133d86bd1e5e70c8940db91` |
| 3 | `theorem` | [disjoint_atTop_principal_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variante93effc9d55ba2f21d97c53642331421da0af2edb469a656a01e29e510d88fd4.lean/declarations/disjoint-attop-principal-iic--45682de0817ee5515de432d3.md) | 35 | `result-track:45682de0817ee5515de432d35d6ca35f56922da68ed793fde8755f0502b2ae80` |
| 4 | `theorem` | [disjoint_atBot_principal_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variante93effc9d55ba2f21d97c53642331421da0af2edb469a656a01e29e510d88fd4.lean/declarations/disjoint-atbot-principal-ici--91069c0440c140de86098c62.md) | 40 | `result-track:91069c0440c140de86098c6232fe4f153109d31d96141d03df9bc497b6185a57` |
| 5 | `theorem` | [disjoint_pure_atTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variante93effc9d55ba2f21d97c53642331421da0af2edb469a656a01e29e510d88fd4.lean/declarations/disjoint-pure-attop--dfb12f23fd408e424b804241.md) | 44 | `result-track:dfb12f23fd408e424b8042416fdc95c93f6f9c470a5c4d3b448ef86e012b518b` |
| 6 | `theorem` | [disjoint_pure_atBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variante93effc9d55ba2f21d97c53642331421da0af2edb469a656a01e29e510d88fd4.lean/declarations/disjoint-pure-atbot--be10b58159fde42de0858561.md) | 48 | `result-track:be10b58159fde42de08585613b2f3b239da416707e7136bc27b48ca0b90e76b8` |
| 7 | `theorem` | [disjoint_atBot_atTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variante93effc9d55ba2f21d97c53642331421da0af2edb469a656a01e29e510d88fd4.lean/declarations/disjoint-atbot-attop--48876895ab5ea63078439fea.md) | 51 | `result-track:48876895ab5ea63078439fea343d1676dce16d9ef6f6cff2791f9249e9bb9622` |
| 8 | `theorem` | [disjoint_atTop_atBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variante93effc9d55ba2f21d97c53642331421da0af2edb469a656a01e29e510d88fd4.lean/declarations/disjoint-attop-atbot--5d612576fad42f92a2fae320.md) | 60 | `result-track:5d612576fad42f92a2fae320e2c505c5abf4546373c920feb9d60929b00919eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
