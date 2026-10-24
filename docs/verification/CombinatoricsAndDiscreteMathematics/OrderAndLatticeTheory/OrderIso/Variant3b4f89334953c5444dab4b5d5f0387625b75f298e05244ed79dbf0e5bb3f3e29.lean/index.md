# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIso.Variant3b4f89334953c5444dab4b5d5f0387625b75f298e05244ed79dbf0e5bb3f3e29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebdbd64aa1dcc69599af71ccc757e9e1a916076a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant3b4f89334953c5444dab4b5d5f0387625b75f298e05244ed79dbf0e5bb3f3e29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant3b4f89334953c5444dab4b5d5f0387625b75f298e05244ed79dbf0e5bb3f3e29.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant3b4f89334953c5444dab4b5d5f0387625b75f298e05244ed79dbf0e5bb3f3e29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebdbd64aa1dcc69599af71ccc757e9e1a916076a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant3b4f89334953c5444dab4b5d5f0387625b75f298e05244ed79dbf0e5bb3f3e29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant3b4f89334953c5444dab4b5d5f0387625b75f298e05244ed79dbf0e5bb3f3e29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [OrderIso.inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant3b4f89334953c5444dab4b5d5f0387625b75f298e05244ed79dbf0e5bb3f3e29.lean/declarations/orderiso-inv--9db5e6dcdb9cbeecf132b0fd.md) | 35 | `declaration-track:9db5e6dcdb9cbeecf132b0fda2fb36c3aec04409bb2cdb607f9ae78bc2cad59b` |
| 2 | `theorem` | [inv_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant3b4f89334953c5444dab4b5d5f0387625b75f298e05244ed79dbf0e5bb3f3e29.lean/declarations/inv-le--f65b2168585fa353c43faac6.md) | 42 | `result-track:f65b2168585fa353c43faac60b90cbf7414203469d11ec2c1d35ddeb9fad4f70` |
| 3 | `theorem` | [le_inv'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant3b4f89334953c5444dab4b5d5f0387625b75f298e05244ed79dbf0e5bb3f3e29.lean/declarations/le-inv--fb9dc4fb2e6280b32c36278f.md) | 50 | `result-track:fb9dc4fb2e6280b32c36278f78a8389742ffab777ef8acfea33e516cb3bb3758` |
| 4 | `def` | [OrderIso.divLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant3b4f89334953c5444dab4b5d5f0387625b75f298e05244ed79dbf0e5bb3f3e29.lean/declarations/orderiso-divleft--563edbdf405576540657ea61.md) | 55 | `declaration-track:563edbdf405576540657ea61920f264d7424f3770c86dc02fb1abb902c758ac0` |
| 5 | `def` | [OrderIso.mulRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant3b4f89334953c5444dab4b5d5f0387625b75f298e05244ed79dbf0e5bb3f3e29.lean/declarations/orderiso-mulright--0738b93d241c9c69bdc22c92.md) | 78 | `declaration-track:0738b93d241c9c69bdc22c92cd52b5901c7427c4ff85932959a4bc32e705b8a4` |
| 6 | `theorem` | [OrderIso.mulRight_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant3b4f89334953c5444dab4b5d5f0387625b75f298e05244ed79dbf0e5bb3f3e29.lean/declarations/orderiso-mulright-symm--d8a4ca5758b8b31b2058b141.md) | 83 | `result-track:d8a4ca5758b8b31b2058b141bcf7d273d1c6b702cae99ae50544e578a69e8356` |
| 7 | `def` | [OrderIso.divRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant3b4f89334953c5444dab4b5d5f0387625b75f298e05244ed79dbf0e5bb3f3e29.lean/declarations/orderiso-divright--183a236bf82dd6739ddd88a5.md) | 89 | `declaration-track:183a236bf82dd6739ddd88a51f9384b6fcc6885ece08b32c49158e3407a2f02e` |
| 8 | `def` | [OrderIso.mulLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant3b4f89334953c5444dab4b5d5f0387625b75f298e05244ed79dbf0e5bb3f3e29.lean/declarations/orderiso-mulleft--bd58d98b16a68b33789d1695.md) | 102 | `declaration-track:bd58d98b16a68b33789d16954ab55c2e08f6e29c28ae2d949473b62e78e4d5f4` |
| 9 | `theorem` | [OrderIso.mulLeft_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant3b4f89334953c5444dab4b5d5f0387625b75f298e05244ed79dbf0e5bb3f3e29.lean/declarations/orderiso-mulleft-symm--79c57c14c7b73ccda931c21a.md) | 107 | `result-track:79c57c14c7b73ccda931c21a3edc05455be654ef54a0f42ae887e7815a1c4e72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
