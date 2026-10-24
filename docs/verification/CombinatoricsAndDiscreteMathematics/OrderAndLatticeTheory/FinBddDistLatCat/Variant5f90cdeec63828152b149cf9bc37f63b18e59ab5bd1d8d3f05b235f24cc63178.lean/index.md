# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FinBddDistLatCat.Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55e2cf3936773bfa24736c6ce0b90264615dbc2d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55e2cf3936773bfa24736c6ce0b90264615dbc2d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.BddDistLatCat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.FinPartOrd` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinBddDistLatCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean/declarations/finbdddistlatcat--25f36b833a1e46f4b988f475.md) | 34 | `declaration-track:25f36b833a1e46f4b988f4757535bed32c8bb0d018e30a423ed9a8bb1562d653` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean/declarations/instance--ce9719de300475f696e33457.md) | 41 | `declaration-track:ce9719de300475f696e334576b83e61d3c16a5a2042e6ddd5c4a9295591f88b5` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean/declarations/instance--558199b6895e1cb5a81beba7.md) | 44 | `declaration-track:558199b6895e1cb5a81beba71c4eaf8c60d94a65fc5b88af064dd9844fafe03c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean/declarations/instance--57194cbde708daca7edaa139.md) | 47 | `declaration-track:57194cbde708daca7edaa139f10ed339f041e66476d3667f9db53f54dca857bc` |
| 5 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean/declarations/of--90a4c5718b24e07ff50fdccb.md) | 53 | `declaration-track:90a4c5718b24e07ff50fdccb8545c0bd71349124a64a96a4d7bde566b0c40290` |
| 6 | `def` | [of'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean/declarations/of--4a119625e16083dfa20640fb.md) | 60 | `declaration-track:4a119625e16083dfa20640fbc682b39171810c67f56dae5b147858fda55361b1` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean/declarations/instance--1d97af4b30b58e82ddbfdaa3.md) | 67 | `declaration-track:1d97af4b30b58e82ddbfdaa33dabb2338937ef9324572abe6d54204d509784e6` |
| 8 | `instance` | [largeCategory](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean/declarations/largecategory--14801587ec78601c4dda5869.md) | 70 | `declaration-track:14801587ec78601c4dda5869d449958c9603a4ad7e0e259013c07aa5c920b050` |
| 9 | `instance` | [concreteCategory](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean/declarations/concretecategory--16c88ac8682fad2e0283205e.md) | 74 | `declaration-track:16c88ac8682fad2e0283205ed16d7fb3c273d537695db72487177f2917390714` |
| 10 | `instance` | [hasForgetToBddDistLatCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean/declarations/hasforgettobdddistlatcat--24c4a680b02ab687600daa9f.md) | 78 | `declaration-track:24c4a680b02ab687600daa9f59a18ea3f8dd7a9531083e6e99c382afc1b9b223` |
| 11 | `instance` | [hasForgetToFinPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean/declarations/hasforgettofinpartord--2ccc681c84dde016e046d632.md) | 82 | `declaration-track:2ccc681c84dde016e046d6327f5791d09547c0f81ec2182b1e705f4f8f888c7c` |
| 12 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean/declarations/iso-mk--12b7201fed3fcfd5048c156c.md) | 91 | `declaration-track:12b7201fed3fcfd5048c156c24ef5f1da4d5db84c006c13f7b792bd310a30b17` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean/declarations/example--ff847df3dfa8be696bc3e412.md) | 98 | `declaration-track:ff847df3dfa8be696bc3e412d72ee01daf546d0ec71ef2a05e5b515891ecefc4` |
| 14 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean/declarations/dual--eed2326f2d28990e0daba2ec.md) | 103 | `declaration-track:eed2326f2d28990e0daba2eccaec0908ad62e32a8524be4718f38387dec5dd5d` |
| 15 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean/declarations/dualequiv--b81489c10bd69e8c4486fc28.md) | 110 | `declaration-track:b81489c10bd69e8c4486fc2876844162661dbf8096401c3998b51839962dae33` |
| 16 | `theorem` | [finBddDistLatCat_dual_comp_forget_to_bddDistLatCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178.lean/declarations/finbdddistlatcat-dual-comp-forget-to-bdddistlatcat--696f0f278735b2dc0e9fe38b.md) | 119 | `result-track:696f0f278735b2dc0e9fe38b3aeed087c5eff842b75588a96e10c76e90687531` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
