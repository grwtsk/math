# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Finset.Variant8e0cc0905913adc7280ac5800278b348f352957ba7aea9fcd25186f345796022

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11ad4f953091cfae318faca96f363a358d1b12de",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finset/Variant8e0cc0905913adc7280ac5800278b348f352957ba7aea9fcd25186f345796022.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finset/Variant8e0cc0905913adc7280ac5800278b348f352957ba7aea9fcd25186f345796022.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finset/Variant8e0cc0905913adc7280ac5800278b348f352957ba7aea9fcd25186f345796022.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11ad4f953091cfae318faca96f363a358d1b12de`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finset/Variant8e0cc0905913adc7280ac5800278b348f352957ba7aea9fcd25186f345796022.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finset/Variant8e0cc0905913adc7280ac5800278b348f352957ba7aea9fcd25186f345796022.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Fin.Tuple` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Set` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Insert` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orderIsoSingleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finset/Variant8e0cc0905913adc7280ac5800278b348f352957ba7aea9fcd25186f345796022.lean/declarations/orderisosingleton--1d4ad91e113b3ad0435c6fcf.md) | 38 | `declaration-track:1d4ad91e113b3ad0435c6fcff3d7492e2442a033734871a745d449ac3b50d1e0` |
| 2 | `lemma` | [orderIsoSingleton_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finset/Variant8e0cc0905913adc7280ac5800278b348f352957ba7aea9fcd25186f345796022.lean/declarations/orderisosingleton-apply--249f7eb5730b4af24ad3e813.md) | 43 | `result-track:249f7eb5730b4af24ad3e81357e44c4d0cc613736f46aef2c163fa8c2c712cce` |
| 3 | `def` | [orderIsoPair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finset/Variant8e0cc0905913adc7280ac5800278b348f352957ba7aea9fcd25186f345796022.lean/declarations/orderisopair--298c27f42fffa077bab90ad2.md) | 53 | `declaration-track:298c27f42fffa077bab90ad27848b82a3623de25831f4808e17df00ab5d0bcf6` |
| 4 | `lemma` | [orderIsoPair_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finset/Variant8e0cc0905913adc7280ac5800278b348f352957ba7aea9fcd25186f345796022.lean/declarations/orderisopair-zero--90dfd9c8619e37c356933d9d.md) | 62 | `result-track:90dfd9c8619e37c356933d9d2d7433a3955ed399eed650aec77c1df63d66968b` |
| 5 | `lemma` | [orderIsoPair_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finset/Variant8e0cc0905913adc7280ac5800278b348f352957ba7aea9fcd25186f345796022.lean/declarations/orderisopair-one--db95edaf6f6e8cb3d34880aa.md) | 63 | `result-track:db95edaf6f6e8cb3d34880aae9bf470d784e3db4d336b235ec8f2b53e8f96507` |
| 6 | `def` | [orderIsoTriple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finset/Variant8e0cc0905913adc7280ac5800278b348f352957ba7aea9fcd25186f345796022.lean/declarations/orderisotriple--435b8edc44f63d564e6f23fd.md) | 73 | `declaration-track:435b8edc44f63d564e6f23fd6961091e6069047c1853071d61f30ac997ea04a3` |
| 7 | `lemma` | [orderIsoTriple_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finset/Variant8e0cc0905913adc7280ac5800278b348f352957ba7aea9fcd25186f345796022.lean/declarations/orderisotriple-zero--e7dee9443db35ff2395d2e9b.md) | 83 | `result-track:e7dee9443db35ff2395d2e9b3f45e9318a3a64ae30f62caf208e8bfde8e3698b` |
| 8 | `lemma` | [orderIsoTriple_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finset/Variant8e0cc0905913adc7280ac5800278b348f352957ba7aea9fcd25186f345796022.lean/declarations/orderisotriple-one--e01f131c0fe7b72e99fcbbce.md) | 84 | `result-track:e01f131c0fe7b72e99fcbbce73a2fd5b679ca9c6668b908aa7df1a123fc04495` |
| 9 | `lemma` | [orderIsoTriple_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finset/Variant8e0cc0905913adc7280ac5800278b348f352957ba7aea9fcd25186f345796022.lean/declarations/orderisotriple-two--6feb05ba626a90c88645cd80.md) | 85 | `result-track:6feb05ba626a90c88645cd807cba3fde53109e0aba1b4207241a76b6d7399df7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
