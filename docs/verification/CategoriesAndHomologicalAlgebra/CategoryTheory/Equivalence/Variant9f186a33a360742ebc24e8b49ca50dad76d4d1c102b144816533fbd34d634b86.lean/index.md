# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equivalence.Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "935b6d2858b83de8c782654e3eaa5a22b5e67bda",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `935b6d2858b83de8c782654e3eaa5a22b5e67bda`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.DenseSubsite.InducedTopology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallyBijective` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.PreservesLocallyBijective` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/instance--e1ecb38aef24e1f49957b470.md) | 51 | `declaration-track:e1ecb38aef24e1f49957b4706b2c2d99480476f11a963535ec75cda88ed6cdc6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/instance--7fe50afd1a1706338ae25e26.md) | 63 | `declaration-track:7fe50afd1a1706338ae25e26b1be687168294036b1f5445dd64d7fe95085b9a4` |
| 3 | `lemma` | [eq_inducedTopology_of_isDenseSubsite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/eq-inducedtopology-of-isdensesubsite--14b8bd4be118fa5e3e33eaa3.md) | 72 | `result-track:14b8bd4be118fa5e3e33eaa314776e73f3411db94d8cc8dd8f0a5d2f54984794` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/instance--cb5b621c3ecfe3e56423302b.md) | 79 | `declaration-track:cb5b621c3ecfe3e56423302b0e623a48d6b9ba5531be1edf137953212d6c40c5` |
| 5 | `def` | [sheafCongr.functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/sheafcongr-functor--b7825d5bc01e09d8e75a3d4e.md) | 85 | `declaration-track:b7825d5bc01e09d8e75a3d4ef8329979ef7c6a2163da9e21b44f4385375ff6bf` |
| 6 | `def` | [sheafCongr.inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/sheafcongr-inverse--ea5c00339ef40c3979068b8b.md) | 91 | `declaration-track:ea5c00339ef40c3979068b8bb9b083deaa0324869b2ca661cb0c154b6c40f368` |
| 7 | `def` | [sheafCongr.unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/sheafcongr-unitiso--88a4012354830e991a4c6667.md) | 97 | `declaration-track:88a4012354830e991a4c6667b1a5fb9d9bb037c08aa3a6410db23e906c2d3c2a` |
| 8 | `def` | [sheafCongr.counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/sheafcongr-counitiso--2b30ead37502bd4042d1e370.md) | 105 | `declaration-track:2b30ead37502bd4042d1e370937b37c7c5b5d1ce2c49205f8acd9382adf795ba` |
| 9 | `def` | [sheafCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/sheafcongr--629f61cba3227028585fa1af.md) | 112 | `declaration-track:629f61cba3227028585fa1af26d0e0d001a35594a33476d83e8eae1d9c364147` |
| 10 | `def` | [transportAndSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/transportandsheafify--f7d28c90bb5774eef677e93f.md) | 131 | `declaration-track:f7d28c90bb5774eef677e93f58d6b0f025846599a49f7051d343c38e40bf56ee` |
| 11 | `def` | [transportIsoSheafToPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/transportisosheaftopresheaf--13b0f37f53342e0c80d7402c.md) | 136 | `declaration-track:13b0f37f53342e0c80d7402c2ab6690d01983c1cdd29cb81f9c80a9364cd2b68` |
| 12 | `def` | [transportSheafificationAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/transportsheafificationadjunction--b3cdc1b185f54ebb359d9091.md) | 143 | `declaration-track:b3cdc1b185f54ebb359d9091c56e75960a7fb5e26dff04bfa1eabfbfe004a36f` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/instance--a483ac87abe926fdc5d98483.md) | 148 | `declaration-track:a483ac87abe926fdc5d9848375dfdccde8c412d5cb60b7a4547cb26de3ee1fc9` |
| 14 | `theorem` | [hasSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/hassheafify--f5925c9c5d4d5f09fc1f6339.md) | 153 | `result-track:f5925c9c5d4d5f09fc1f63396137917ab81afab3f6e715057333a7e78c3bf7e0` |
| 15 | `theorem` | [hasSheafCompose](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/hassheafcompose--314f7929aacf1842bca9c99c.md) | 160 | `result-track:314f7929aacf1842bca9c99c774352f7d81e68aff922ededc06dad861ff784bd` |
| 16 | `def` | [smallSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/smallsheafify--12a2901cbca0d46a010942d1.md) | 181 | `declaration-track:12a2901cbca0d46a010942d1902ddb2844d5c7b3cba5071bdeeda0209d380286` |
| 17 | `def` | [smallSheafificationAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/smallsheafificationadjunction--cba26a9f5f135bf05cfb7a7b.md) | 189 | `declaration-track:cba26a9f5f135bf05cfb7a7bf35072e8c28bd623a67c808228b8be2c8af08fb8` |
| 18 | `instance` | [hasSheafifyEssentiallySmallSite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/hassheafifyessentiallysmallsite--31b72c16161a6fb8bd66c55e.md) | 192 | `declaration-track:31b72c16161a6fb8bd66c55eda81648271dc70dae250a531e766a9a28ab21120` |
| 19 | `instance` | [hasSheafComposeEssentiallySmallSite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/hassheafcomposeessentiallysmallsite--14b352d76399564cf29a92af.md) | 195 | `declaration-track:14b352d76399564cf29a92af034ee745e717952f951d1fa354d3d94750b1f010` |
| 20 | `instance` | [hasLimitsEssentiallySmallSite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/haslimitsessentiallysmallsite--46b04ac6d36712af9c2cda4a.md) | 198 | `declaration-track:46b04ac6d36712af9c2cda4a3bba8d8d709c1b1cb77b8f9f1c63b404473a4b7c` |
| 21 | `instance` | [hasColimitsEssentiallySmallSite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/hascolimitsessentiallysmallsite--b0788195eb05fdbba7c6507c.md) | 204 | `declaration-track:b0788195eb05fdbba7c6507c76a1ca444e2609e6612d0cd1ee2636d3e003910f` |
| 22 | `lemma` | [W_inverseImage_whiskeringLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/w-inverseimage-whiskeringleft--7751e743569f37d9c409de0a.md) | 222 | `result-track:7751e743569f37d9c409de0a8152945eaabcb9a120f3625326631e844ba7606d` |
| 23 | `lemma` | [W_whiskerLeft_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/w-whiskerleft-iff--d3d1fd62fd4674dc67a3d3c3.md) | 253 | `result-track:d3d1fd62fd4674dc67a3d3c31d27dce9cb34ac24fbe2a40c07da7f42f0df8be6` |
| 24 | `lemma` | [PreservesSheafification.transport](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/preservessheafification-transport--22d0949f1908c7b70b7fe0f2.md) | 260 | `result-track:22d0949f1908c7b70b7fe0f25aeb03dd9c952c1795e0aa5a073e768517a3f88a` |
| 25 | `lemma` | [WEqualsLocallyBijective.transport](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/wequalslocallybijective-transport--421f0cfb818569bb6f551f65.md) | 278 | `result-track:421f0cfb818569bb6f551f65dd9641d5bdb83b99569dd5001020bbbc7c16e154` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/instance--7d76aa761f0672bcd181acca.md) | 287 | `declaration-track:7d76aa761f0672bcd181acca1e5aeda6d5d29c042db4058205b93293112bd94d` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/declarations/instance--c9d00363ba2933cca89c3eb1.md) | 295 | `declaration-track:c9d00363ba2933cca89c3eb1ffdaaafcf2477078efcfebc079f6de37bbcc4a8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
