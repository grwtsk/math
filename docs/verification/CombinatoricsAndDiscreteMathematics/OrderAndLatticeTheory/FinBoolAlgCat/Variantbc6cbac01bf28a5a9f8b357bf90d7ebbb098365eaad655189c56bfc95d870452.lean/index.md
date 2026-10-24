# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FinBoolAlgCat.Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c6f97cc2fc9ea5d7b08dd64e5269df60860d9d6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c6f97cc2fc9ea5d7b08dd64e5269df60860d9d6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Powerset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.BoolAlgCat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.FinBddDistLatCat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinBoolAlgCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/finboolalgcat--4d40760ee7080d46191497d3.md) | 38 | `declaration-track:4d40760ee7080d46191497d3c0ad1513e20aa32c19eb3b1c6f0e6e99dd627abb` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/instance--e9c4d77cc2f4d908331f1fc5.md) | 45 | `declaration-track:e9c4d77cc2f4d908331f1fc5961566be74c1032163d83b6bb0818ea2b26d9eeb` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/instance--4fa0f06e8569fe7b11f7b463.md) | 48 | `declaration-track:4fa0f06e8569fe7b11f7b463a533e265f2a35caf72af2e200a96f98d458697c9` |
| 4 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/of--e098f33ca94762cc18157d71.md) | 61 | `declaration-track:e098f33ca94762cc18157d7142aba23c9efb72ac984fc5cb77f522b65d411529` |
| 5 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/coe-of--e2954d946a21ee99f23b021d.md) | 66 | `result-track:e2954d946a21ee99f23b021d16835c1e23d524701daa2adec6b73566d84cec7e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/instance--150243a0e75c5c04719cca91.md) | 70 | `declaration-track:150243a0e75c5c04719cca912c4adb9de9db1d3456d0c6d6e5f9d11d96df35a7` |
| 7 | `instance` | [largeCategory](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/largecategory--ccdd60ac1c74aaeaf0c9f8fd.md) | 73 | `declaration-track:ccdd60ac1c74aaeaf0c9f8fdd871b3e94fcf939ba84dc6622a13d101c15209b5` |
| 8 | `instance` | [concreteCategory](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/concretecategory--8b0a2decff5f108cc6c4265f.md) | 77 | `declaration-track:8b0a2decff5f108cc6c4265fd286123af1ccb35f70ffb5d8e9473336cbc5f3b7` |
| 9 | `instance` | [instBoundedLatticeHomClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/instboundedlatticehomclass--6d204b09b3b1a029f1722130.md) | 85 | `declaration-track:6d204b09b3b1a029f1722130a1dda00735da5657b3d8c3570497a49ac314ce27` |
| 10 | `instance` | [hasForgetToBoolAlg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/hasforgettoboolalg--7fcff7ecaecd07ed0fb1f7d1.md) | 88 | `declaration-track:7fcff7ecaecd07ed0fb1f7d13a4c7ec70da682c26dafeba5b5c6f469041d3c5b` |
| 11 | `instance` | [hasForgetToFinBddDistLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/hasforgettofinbdddistlat--0c17bc58b7690d9f2cb8b133.md) | 92 | `declaration-track:0c17bc58b7690d9f2cb8b1334a20dc573d2c8587c7b70300dc6da15b2950a529` |
| 12 | `instance` | [forgetToBoolAlgFull](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/forgettoboolalgfull--1b8cebc99001988976341eb4.md) | 99 | `declaration-track:1b8cebc99001988976341eb47f8bac0fefd6ebc05bb829a207f0cc579fa9174f` |
| 13 | `instance` | [forgetToBoolAlgFaithful](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/forgettoboolalgfaithful--39004d2465c493ce9996d8da.md) | 103 | `declaration-track:39004d2465c493ce9996d8da86f6441c49ab036d7c1c5291a66bb2fefebb4bf6` |
| 14 | `instance` | [hasForgetToFinPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/hasforgettofinpartord--2c3e71068fad6cf637f59c75.md) | 108 | `declaration-track:2c3e71068fad6cf637f59c75fff75d14f977a32a7d12d2179121021a411142fe` |
| 15 | `instance` | [forgetToFinPartOrdFaithful](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/forgettofinpartordfaithful--a23604bc4abec2e0490d6542.md) | 114 | `declaration-track:a23604bc4abec2e0490d6542a01134df4272ea979e9bb83b0fbf5a01bc583164` |
| 16 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/iso-mk--ebbe1623e6631136b69a231d.md) | 133 | `declaration-track:ebbe1623e6631136b69a231d3a378c64f1878e85f15b1a65a840cbc5aab9d0da` |
| 17 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/dual--9bc9dd5e3997f57768b2b194.md) | 142 | `declaration-track:9bc9dd5e3997f57768b2b194b2c65dee46eb8220a46c0d448102ba1bc2aab84c` |
| 18 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/dualequiv--81ecc9180d09c395c163cd19.md) | 149 | `declaration-track:81ecc9180d09c395c163cd19e5e8322c979b8b2e67eff483bb3d1072b5c0434e` |
| 19 | `theorem` | [finBoolAlgCat_dual_comp_forget_to_finBddDistLatCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/finboolalgcat-dual-comp-forget-to-finbdddistlatcat--c6c16caaf4a3f616cd8f3860.md) | 158 | `result-track:c6c16caaf4a3f616cd8f38609d12544f051a1ebff81fedae9382802fe6b3a4cb` |
| 20 | `def` | [fintypeToFinBoolAlgCatOp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/declarations/fintypetofinboolalgcatop--728b0c028d39753b289d96a2.md) | 166 | `declaration-track:728b0c028d39753b289d96a24d2429ab40122087d9bed97e9de0382abd424f28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
