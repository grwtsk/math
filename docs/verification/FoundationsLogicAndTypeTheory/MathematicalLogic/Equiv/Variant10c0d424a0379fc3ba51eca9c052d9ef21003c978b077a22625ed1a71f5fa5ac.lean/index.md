# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "719103839c199ca51fb5d360854b7ba6991321d1",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `719103839c199ca51fb5d360854b7ba6991321d1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Traversable.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean/declarations/map--3cfc76241aea37ebf6c40b41.md) | 42 | `declaration-track:3cfc76241aea37ebf6c40b419f11b52cb3fb204887c9e72fb91604943e79b6c2` |
| 2 | `def` | [functor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean/declarations/functor--a115472db032722db9bb0086.md) | 47 | `declaration-track:a115472db032722db9bb008658375129904b9e3e449a30ae8ba38a8d73685fb0` |
| 3 | `theorem` | [id_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean/declarations/id-map--82ee02dd0bf8bd3630b26b15.md) | 51 | `result-track:82ee02dd0bf8bd3630b26b151598a44173dcd34bfc9881140be75a1a88f05e93` |
| 4 | `theorem` | [comp_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean/declarations/comp-map--98aff6350d83f6dada5b7c7f.md) | 54 | `result-track:98aff6350d83f6dada5b7c7f6280dcb050bba7067d8f07321af9ddb95f048e23` |
| 5 | `theorem` | [lawfulFunctor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean/declarations/lawfulfunctor--1fe7c6d3dbc81e856dc06fa4.md) | 58 | `result-track:1fe7c6d3dbc81e856dc06fa4a6e0c6bf09398809bf23414ecf847473ac6fc70f` |
| 6 | `theorem` | [lawfulFunctor'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean/declarations/lawfulfunctor--5e6b48c871d8ccb588cb2910.md) | 65 | `result-track:5e6b48c871d8ccb588cb2910f58146afcde5bd2c84237d9584cb4460b04a050d` |
| 7 | `def` | [traverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean/declarations/traverse--97cfa93bee65bc4e01660325.md) | 88 | `declaration-track:97cfa93bee65bc4e01660325e85c06a761c63151a6e1eeaa7723f5efdede44bd` |
| 8 | `theorem` | [traverse_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean/declarations/traverse-def--bcd3f1bfa860be9231f6015f.md) | 91 | `result-track:bcd3f1bfa860be9231f6015f6d22cf6561e15d02e1dc34ce65323b888c13b9eb` |
| 9 | `def` | [traversable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean/declarations/traversable--91d4f188961d362cd9665066.md) | 97 | `declaration-track:91d4f188961d362cd966506658398600c15cc30021eb30533b5867793f53658e` |
| 10 | `theorem` | [id_traverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean/declarations/id-traverse--c409e3b77ca86ff16b450a1b.md) | 116 | `result-track:c409e3b77ca86ff16b450a1b470fb7533c16e5fb49b939ee8d54cfbebd8c79c3` |
| 11 | `theorem` | [traverse_eq_map_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean/declarations/traverse-eq-map-id--be574d09baee4dd931a021c5.md) | 119 | `result-track:be574d09baee4dd931a021c5974ee898d85f82ab1849413d1609197ffd948344` |
| 12 | `theorem` | [comp_traverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean/declarations/comp-traverse--fe8b2d00ba445a584c2da942.md) | 123 | `result-track:fe8b2d00ba445a584c2da9429acaa1c7872a5db1d31948b9b11df55ea3a86cea` |
| 13 | `theorem` | [naturality](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean/declarations/naturality--feaebba2b9c2d9123512c8f6.md) | 129 | `result-track:feaebba2b9c2d9123512c8f6f96f9d461f47d6d58e0819ce01397edb48d4456b` |
| 14 | `theorem` | [isLawfulTraversable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean/declarations/islawfultraversable--8daa58e82bcf685314e2ccd9.md) | 136 | `result-track:8daa58e82bcf685314e2ccd9a53ad4399eb43fca20cc0f2a30008daad91c56a7` |
| 15 | `theorem` | [isLawfulTraversable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant10c0d424a0379fc3ba51eca9c052d9ef21003c978b077a22625ed1a71f5fa5ac.lean/declarations/islawfultraversable--11943f64ffc0803a13f1eba8.md) | 150 | `result-track:11943f64ffc0803a13f1eba8ddc4cad0ed2cea697dbd0ddcdfc527c842a49a22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
