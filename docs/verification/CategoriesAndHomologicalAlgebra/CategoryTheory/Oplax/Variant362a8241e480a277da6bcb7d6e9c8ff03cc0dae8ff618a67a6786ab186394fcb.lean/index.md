# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Oplax.Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c715f76d17cae803419d2771951514bff37c15a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c715f76d17cae803419d2771951514bff37c15a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Functor.Oplax` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OplaxTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/oplaxtrans--16636926ddb3ba40be34d7d7.md) | 68 | `declaration-track:16636926ddb3ba40be34d7d7f72f71d07dd8684028006e83962aa9c0d9437d88` |
| 2 | `theorem` | [whiskerLeft_naturality_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/whiskerleft-naturality-naturality--1bcb56605ddd2289d3a84007.md) | 103 | `result-track:1bcb56605ddd2289d3a840071e4120cbd6215c6882e3dd5c368a42fd19fe1352` |
| 3 | `theorem` | [whiskerRight_naturality_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/whiskerright-naturality-naturality--9f4eac650a20b3aa228ae59a.md) | 109 | `result-track:9f4eac650a20b3aa228ae59a3dd19e95f7b1e74e02127b21def51b47ca3e606d` |
| 4 | `theorem` | [whiskerLeft_naturality_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/whiskerleft-naturality-comp--75df1799148a0e2744b5a182.md) | 115 | `result-track:75df1799148a0e2744b5a18273c42a2d9ed01e197ce76e87454d01af57311cd2` |
| 5 | `theorem` | [whiskerRight_naturality_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/whiskerright-naturality-comp--4852ec516cea6711b1715c42.md) | 124 | `result-track:4852ec516cea6711b1715c426577eb5160f8a2c4e643abaf8c7d3904bef38550` |
| 6 | `theorem` | [whiskerLeft_naturality_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/whiskerleft-naturality-id--c382c1b4c528b466fe50c9aa.md) | 136 | `result-track:c382c1b4c528b466fe50c9aa608a14ae7044b90e12af9405f9385fa3b6001754` |
| 7 | `theorem` | [whiskerRight_naturality_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/whiskerright-naturality-id--6ea7735788d93c86faa815c3.md) | 142 | `result-track:6ea7735788d93c86faa815c35301102d3f46c2934be22cfbbdc169908d9c7f25` |
| 8 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/id--758ab17a0d7d3ddcc5be4542.md) | 151 | `declaration-track:758ab17a0d7d3ddcc5be454264a0a25921fe7a2f643aa8250bb8adabee8f0a40` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/instance--3ef5a7d0108bad177910ece5.md) | 155 | `declaration-track:3ef5a7d0108bad177910ece5048c3cb0838171ffb8ef68b30a451f0a883124f3` |
| 10 | `def` | [vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/vcomp--92842aba926c5914e3475346.md) | 159 | `declaration-track:92842aba926c5914e3475346b1ce02ba949edd16c8b16704a461feee7170eefc` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/instance--cf43d372255c25c0f55de848.md) | 183 | `declaration-track:cf43d372255c25c0f55de8487d3eafe18f1d12cbaeea19377664ec5ef0a3355e` |
| 12 | `structure` | [StrongTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/strongtrans--eb61bb7243fb9e67ab1fa987.md) | 200 | `declaration-track:eb61bb7243fb9e67ab1fa9879e55b3b5c6716efa82f3f089488b413525b92dff` |
| 13 | `structure` | [OplaxTrans.StrongCore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/oplaxtrans-strongcore--5d5016fe53917507719edc26.md) | 227 | `declaration-track:5d5016fe53917507719edc26a04253892839b3081c4ace3ea865e73172bcebff` |
| 14 | `def` | [toOplax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/tooplax--364d2f287f7409d53f3f415a.md) | 239 | `declaration-track:364d2f287f7409d53f3f415aafc87be9d6babc6d461b036bd3a24385b75dd6f2` |
| 15 | `def` | [mkOfOplax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/mkofoplax--b4e864fda1cce1604d7b7dd6.md) | 245 | `declaration-track:b4e864fda1cce1604d7b7dd6fe1f9cc53f0a2f48e94eb5e794b9058e077463d3` |
| 16 | `def` | [mkOfOplax'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/mkofoplax--6f325e1263cfc14521826759.md) | 252 | `declaration-track:6f325e1263cfc14521826759efe50403e5b61f0ed3ba6cceb58244cc41053c7b` |
| 17 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/id--1a52e04f2995587d650e6694.md) | 262 | `declaration-track:1a52e04f2995587d650e669439b1a7d52ec0a3af72fd793ccc9a0702089c1014` |
| 18 | `lemma` | [id.toOplax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/id-tooplax--6b8d5f93f7b8eb6b0c585bf0.md) | 266 | `result-track:6b8d5f93f7b8eb6b0c585bf025d57dfe3031bec5fbfb2f78ae685bdf1fab95f9` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/instance--5d21e10224f5da784809fa9e.md) | 269 | `declaration-track:5d21e10224f5da784809fa9edb7b12dfde31efbbccbdaee92fe6ae60dbdc4ad0` |
| 20 | `def` | [vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/vcomp--fa3761c6f2b9c10c588b0909.md) | 277 | `declaration-track:fa3761c6f2b9c10c588b0909c2055dbd459b50ece81622939e52887f75b18909` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/instance--902723dc22ab9408f66353dc.md) | 286 | `declaration-track:902723dc22ab9408f66353dc90e7fd5ca65ce49a47a9d95e07e559b6a4e282cb` |
| 22 | `theorem` | [whiskerLeft_naturality_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/whiskerleft-naturality-naturality--f359265ef2d62015b8e644e1.md) | 296 | `result-track:f359265ef2d62015b8e644e18b00e57e11d8e7ead7245680cc720d1988027920` |
| 23 | `theorem` | [whiskerRight_naturality_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/whiskerright-naturality-naturality--41be5d74879e7b6e13efd50f.md) | 302 | `result-track:41be5d74879e7b6e13efd50f6928faaa977952375a01f719c588611b0b49d911` |
| 24 | `theorem` | [whiskerLeft_naturality_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/whiskerleft-naturality-comp--ff9b1a4fb9f2c8fb815366c1.md) | 308 | `result-track:ff9b1a4fb9f2c8fb815366c186d77619ca2b0476f56d7c9e7b1e285366e06d1c` |
| 25 | `theorem` | [whiskerRight_naturality_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/whiskerright-naturality-comp--6f7a56245a09962d12251039.md) | 317 | `result-track:6f7a56245a09962d122510394e4cbed9a5285973d259e389cfb58473e691147f` |
| 26 | `theorem` | [whiskerLeft_naturality_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/whiskerleft-naturality-id--62c5964ca264640e48b61ad0.md) | 329 | `result-track:62c5964ca264640e48b61ad03b8769be9faa9b36f49eb214c72b124737921048` |
| 27 | `theorem` | [whiskerRight_naturality_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/declarations/whiskerright-naturality-id--18422e3059a53a395a96b0aa.md) | 335 | `result-track:18422e3059a53a395a96b0aa5aab0d04abad385ee71e3baaee5fb81f605167a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
