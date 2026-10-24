# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FinBoolAlgCat.Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d37861ab7d0282841174daddcea6b589eeed436",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d37861ab7d0282841174daddcea6b589eeed436`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Powerset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.BoolAlgCat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.FinBddDistLatCat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinBoolAlgCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/finboolalgcat--4d6fcf314314c766c0c0c394.md) | 46 | `declaration-track:4d6fcf314314c766c0c0c3941589b5a2bee434daa9d4acb3ac2010523554d623` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/instance--4c8e0cd7b32ea85d18e58a19.md) | 53 | `declaration-track:4c8e0cd7b32ea85d18e58a192d15a8e7c7d6b57b45aeb5dab344aabcda1e3c9d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/instance--278c1da6063cdc845a7ac619.md) | 56 | `declaration-track:278c1da6063cdc845a7ac6193e9489107a13ef0d899a3bcb72c00610a0d05e1d` |
| 4 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/of--be933c721764333f75d99688.md) | 69 | `declaration-track:be933c721764333f75d9968878d6f85bb056f0a4c0c97329ad7d64f68b5ce336` |
| 5 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/coe-of--5e4f224be6a3d2a013ad2962.md) | 74 | `result-track:5e4f224be6a3d2a013ad2962162b8e3adc80a00be8a829cd49219b8390c5249c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/instance--a7a371989e6ee409d3f58ba5.md) | 78 | `declaration-track:a7a371989e6ee409d3f58ba5bbb87953c76c9273d01236f0c7ea716a6e10e6e1` |
| 7 | `instance` | [largeCategory](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/largecategory--754bf53e23acde0ea3640b70.md) | 81 | `declaration-track:754bf53e23acde0ea3640b70a6acf1aa66ea1f1e36db4f63ad12c9ec1944d3f7` |
| 8 | `instance` | [concreteCategory](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/concretecategory--38a3d8c6b869bba7a331bfd9.md) | 85 | `declaration-track:38a3d8c6b869bba7a331bfd902fca5a523a637ca3cc38e1245bec9a39f9f908d` |
| 9 | `instance` | [instBoundedLatticeHomClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/instboundedlatticehomclass--c72f2e89391696da8eabdbe4.md) | 93 | `declaration-track:c72f2e89391696da8eabdbe4f93ec19d0f7dbb90f6276e41ccc382019fa6b583` |
| 10 | `instance` | [hasForgetToBoolAlg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/hasforgettoboolalg--13051e2ba07c1c638cdf65d0.md) | 96 | `declaration-track:13051e2ba07c1c638cdf65d0f52ea6870b7fcc40200a4f13a7f4b29ba35c04b7` |
| 11 | `instance` | [hasForgetToFinBddDistLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/hasforgettofinbdddistlat--6d48182bc45e512e461f35ea.md) | 100 | `declaration-track:6d48182bc45e512e461f35ea5a2e2458e0a2f21c123167a7bab26936fb7b6b33` |
| 12 | `instance` | [forgetToBoolAlgFull](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/forgettoboolalgfull--bdfdf59c8b07d0d20c0126b1.md) | 107 | `declaration-track:bdfdf59c8b07d0d20c0126b10dfdbeeacbbde13de9794077648b84d9c6e3abc6` |
| 13 | `instance` | [forgetToBoolAlgFaithful](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/forgettoboolalgfaithful--160ac5b9bc115149cbb012b7.md) | 111 | `declaration-track:160ac5b9bc115149cbb012b7b3167253c632351d476d44a6fb513cc35b4a6ab0` |
| 14 | `instance` | [hasForgetToFinPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/hasforgettofinpartord--1e50a0db0a72c5dbe7202ca5.md) | 116 | `declaration-track:1e50a0db0a72c5dbe7202ca54a822fa5b11576437765954c826045be4f919206` |
| 15 | `instance` | [forgetToFinPartOrdFaithful](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/forgettofinpartordfaithful--8d173dcbc6cbba785fc61859.md) | 122 | `declaration-track:8d173dcbc6cbba785fc61859ec47b988d33a01f7f4b2012dbe3bd592b60a4f2c` |
| 16 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/iso-mk--a3778dd2a1a84f9399e18903.md) | 141 | `declaration-track:a3778dd2a1a84f9399e18903b71b9de0647410d5bab9f2cb377ee5190fb462a0` |
| 17 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/dual--8c6a0ab56e60003679b1ea1e.md) | 150 | `declaration-track:8c6a0ab56e60003679b1ea1e48e5376dcba9cafa55fcd5e4484f2b5c2881337b` |
| 18 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/dualequiv--fc62d85abc7428c8ef28e6d0.md) | 157 | `declaration-track:fc62d85abc7428c8ef28e6d070d7c885514b5f4fc2538a899492e930b96e9b8d` |
| 19 | `theorem` | [finBoolAlgCat_dual_comp_forget_to_finBddDistLatCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/finboolalgcat-dual-comp-forget-to-finbdddistlatcat--039e6ef47193d6ee48a68862.md) | 166 | `result-track:039e6ef47193d6ee48a68862a207e2856cd0c48377382c32ba5429efccb10fff` |
| 20 | `def` | [fintypeToFinBoolAlgCatOp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variant35659b9ab89f792ce9ff60358b3d8699a79b264ccbd70f31b83792b3bc41a837.lean/declarations/fintypetofinboolalgcatop--ca8948e99a999d16ddf74ce9.md) | 174 | `declaration-track:ca8948e99a999d16ddf74ce991e4ffc099bf37a92015469c8ea82bbeb0730036` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
