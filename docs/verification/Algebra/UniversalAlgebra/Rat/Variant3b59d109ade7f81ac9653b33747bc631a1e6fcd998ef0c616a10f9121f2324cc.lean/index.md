# Verification target: GRWTSK.Algebra.UniversalAlgebra.Rat.Variant3b59d109ade7f81ac9653b33747bc631a1e6fcd998ef0c616a10f9121f2324cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b47d8017c85881dce0570202c43bc69a3d0e36d1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variant3b59d109ade7f81ac9653b33747bc631a1e6fcd998ef0c616a10f9121f2324cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant3b59d109ade7f81ac9653b33747bc631a1e6fcd998ef0c616a10f9121f2324cc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant3b59d109ade7f81ac9653b33747bc631a1e6fcd998ef0c616a10f9121f2324cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b47d8017c85881dce0570202c43bc69a3d0e36d1`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Rat/Variant3b59d109ade7f81ac9653b33747bc631a1e6fcd998ef0c616a10f9121f2324cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Rat/Variant3b59d109ade7f81ac9653b33747bc631a1e6fcd998ef0c616a10f9121f2324cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Module.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Order` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [PosSMulMono.nnrat_of_rat](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant3b59d109ade7f81ac9653b33747bc631a1e6fcd998ef0c616a10f9121f2324cc.lean/declarations/possmulmono-nnrat-of-rat--e5d2438fe8fbe57a6073a853.md) | 24 | `declaration-track:e5d2438fe8fbe57a6073a85321704f327bdec8be57989b0e4069d3602f3ae290` |
| 2 | `instance` | [PosSMulStrictMono.nnrat_of_rat](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant3b59d109ade7f81ac9653b33747bc631a1e6fcd998ef0c616a10f9121f2324cc.lean/declarations/possmulstrictmono-nnrat-of-rat--9cc73a901ea23bfe3250f06e.md) | 27 | `declaration-track:9cc73a901ea23bfe3250f06e49b8d748c87c5c151048a96f15d4f73a23b042ef` |
| 3 | `lemma` | [abs_nnqsmul](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant3b59d109ade7f81ac9653b33747bc631a1e6fcd998ef0c616a10f9121f2324cc.lean/declarations/abs-nnqsmul--c1011b14be197ad6b2d9921e.md) | 33 | `result-track:c1011b14be197ad6b2d9921e4bdeb828d3953c508fd895f544a9a060ba7868ed` |
| 4 | `lemma` | [abs_qsmul](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant3b59d109ade7f81ac9653b33747bc631a1e6fcd998ef0c616a10f9121f2324cc.lean/declarations/abs-qsmul--7c2d373f900211674cf814e9.md) | 38 | `result-track:7c2d373f900211674cf814e92f6ba54573c39a2ce7e1115ba24873851ef4d0c3` |
| 5 | `instance` | [LinearOrderedSemifield.toPosSMulStrictMono_rat](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant3b59d109ade7f81ac9653b33747bc631a1e6fcd998ef0c616a10f9121f2324cc.lean/declarations/linearorderedsemifield-topossmulstrictmono-rat--018b465ef0b103d8793b2fcb.md) | 49 | `declaration-track:018b465ef0b103d8793b2fcbae47bb39bba982d119d1159bd6fcafdfcef96320` |
| 6 | `instance` | [LinearOrderedField.toPosSMulStrictMono_rat](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant3b59d109ade7f81ac9653b33747bc631a1e6fcd998ef0c616a10f9121f2324cc.lean/declarations/linearorderedfield-topossmulstrictmono-rat--1d757a1b8f0e0353a0297420.md) | 58 | `declaration-track:1d757a1b8f0e0353a029742006d2b4dbc6953b3168348d307b4b4eb23ec468f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
