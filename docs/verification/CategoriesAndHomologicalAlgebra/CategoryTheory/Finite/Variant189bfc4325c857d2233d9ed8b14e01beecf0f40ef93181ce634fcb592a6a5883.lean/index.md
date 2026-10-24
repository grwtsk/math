# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Finite.Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58891ed32398e6f37b6d1ad9026ad3ab91eafaca",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58891ed32398e6f37b6d1ad9026ad3ab91eafaca`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FinCategory` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/declarations/preservesfinitelimits--c4b1f21553429109fe9b4d93.md) | 45 | `declaration-track:c4b1f21553429109fe9b4d93a77d8d86edf867e07dea7c31a31f3236282b31f8` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/declarations/instance--e218e224010dde382434f450.md) | 54 | `declaration-track:e218e224010dde382434f450516b97a0d2c8cebe427c3b3b5cffb6504e1160f7` |
| 3 | `def` | [PreservesLimitsOfSize.preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/declarations/preserveslimitsofsize-preservesfinitelimits--e18477c702de2c05589729d9.md) | 62 | `declaration-track:e18477c702de2c05589729d959c3f4f2b9f15abd7d0af702c9bd48987b4da572` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/declarations/instance--20e48e49c1994d80ad3e9e97.md) | 70 | `declaration-track:20e48e49c1994d80ad3e9e973be9444b9c7f8d969e76379dea1eaa420b6c0e89` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/declarations/instance--59f2dc32c27074cd97f4e107.md) | 76 | `declaration-track:59f2dc32c27074cd97f4e107b0827402f49ed0191c960c0174299afdb0bff079` |
| 6 | `def` | [preservesFiniteLimitsOfPreservesFiniteLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/declarations/preservesfinitelimitsofpreservesfinitelimitsofsize--e9039c7cd85b0592c45dae51.md) | 85 | `declaration-track:e9039c7cd85b0592c45dae5193bf4d108d5276e6bd4756e26428467ad6b294d0` |
| 7 | `instance` | [idPreservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/declarations/idpreservesfinitelimits--bc25160d6720de3a0495d28b.md) | 95 | `declaration-track:bc25160d6720de3a0495d28b006bac1ba653f046d5a91802475e457a6c74c605` |
| 8 | `def` | [compPreservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/declarations/comppreservesfinitelimits--8dc41722dfb571a18206d7f3.md) | 100 | `declaration-track:8dc41722dfb571a18206d7f302fcd2270a2f80f8ff1f759865a93d7186f912de` |
| 9 | `class` | [PreservesFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/declarations/preservesfiniteproducts--cd69446224d2369a868bdbc5.md) | 109 | `declaration-track:cd69446224d2369a868bdbc50b5d3ed26d16ac512b7a54a6b78f8cd1e3f4dd35` |
| 10 | `class` | [PreservesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/declarations/preservesfinitecolimits--724ebcc1f5d5049c9c61637c.md) | 115 | `declaration-track:724ebcc1f5d5049c9c61637ce71c845ee502af23d05377f5af551383722b1e6a` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/declarations/instance--977e76dad27bc93b310a272d.md) | 125 | `declaration-track:977e76dad27bc93b310a272d63e1976db4a1ed44614331c2faae6b3f00a2e4e4` |
| 12 | `def` | [PreservesColimitsOfSize.preservesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/declarations/preservescolimitsofsize-preservesfinitecolimits--1f19c0ae1c5cd1be64f40839.md) | 133 | `declaration-track:1f19c0ae1c5cd1be64f40839067a74928b2a4362419e8e18b5bea7b127b54181` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/declarations/instance--cec6bad31e56a52601e874a1.md) | 141 | `declaration-track:cec6bad31e56a52601e874a1454f077c67debafb0cd546c915ab4fad1d143ddb` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/declarations/instance--dfa78163d2b2f9b19b8e7065.md) | 147 | `declaration-track:dfa78163d2b2f9b19b8e7065a34de9f949ad0a7303feca2b442ab1f8f04a2b1c` |
| 15 | `def` | [preservesFiniteColimitsOfPreservesFiniteColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/declarations/preservesfinitecolimitsofpreservesfinitecolimitsofsize--a5c7840924fed957de029218.md) | 156 | `declaration-track:a5c7840924fed957de029218619473f59f7e1f889d133de4d556c631c4ece098` |
| 16 | `instance` | [idPreservesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/declarations/idpreservesfinitecolimits--a31d153aedf72fe6ba6a44b7.md) | 169 | `declaration-track:a31d153aedf72fe6ba6a44b7131d18b3568faff44642c115570ac26b9616c6b3` |
| 17 | `def` | [compPreservesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/declarations/comppreservesfinitecolimits--5b8e7801b1529cc1596b6308.md) | 174 | `declaration-track:5b8e7801b1529cc1596b6308cb30f60850aacbe3ba09efb47add9fc417f10c24` |
| 18 | `class` | [PreservesFiniteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant189bfc4325c857d2233d9ed8b14e01beecf0f40ef93181ce634fcb592a6a5883.lean/declarations/preservesfinitecoproducts--ae2c6cf57d3fa11421cc647c.md) | 183 | `declaration-track:ae2c6cf57d3fa11421cc647cefb5adb29a9386d586beaf46851672fbf19858bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
