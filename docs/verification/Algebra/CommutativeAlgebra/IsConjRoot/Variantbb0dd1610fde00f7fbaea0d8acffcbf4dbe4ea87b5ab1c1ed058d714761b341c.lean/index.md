# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IsConjRoot.Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd9f0eb93edac6bdedb10ab906150f8eed729c86",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd9f0eb93edac6bdedb10ab906150f8eed729c86`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Extension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Adjoin.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Normal.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsConjRoot](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot--0e1c5ff67f4ef44b4da1bda2.md) | 51 | `declaration-track:0e1c5ff67f4ef44b4da1bda2e4f3f880ccc6a7ad91fbdd1e0fcccaa7951184f5` |
| 2 | `theorem` | [isConjRoot_def](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-def--6a4baaf766740c611bcbea55.md) | 56 | `result-track:6a4baaf766740c611bcbea551b8845af14f989a5ff3aa9d5c14bce82444542d2` |
| 3 | `theorem` | [refl](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/refl--65501662b86fdfbce99812b0.md) | 63 | `result-track:65501662b86fdfbce99812b05d816df7fe517aab6f34e43556b829a9153c4759` |
| 4 | `theorem` | [symm](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/symm--cd013bf1d741ee3edecb341f.md) | 68 | `result-track:cd013bf1d741ee3edecb341f589f1a320a0121c1f7b973ae45ed56ce6103dc20` |
| 5 | `theorem` | [trans](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/trans--65ae4a3ff76121921d7a5d98.md) | 74 | `result-track:65ae4a3ff76121921d7a5d9827fe5ab0591e1cc252067a43d13a9665518c58e1` |
| 6 | `def` | [setoid](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/setoid--f30e894a30f7055a4571be9c.md) | 81 | `declaration-track:f30e894a30f7055a4571be9cc4bf969729ed0db7fcba70ca3b534c09e3822075` |
| 7 | `theorem` | [aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/aeval-eq-zero--2522bff340bcf1d30c68577c.md) | 88 | `result-track:2522bff340bcf1d30c68577c00ca25907ba341f0d2adadf95b2e251497518e34` |
| 8 | `theorem` | [add_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/add-algebramap--8721f5d9050f931f1017302a.md) | 95 | `result-track:8721f5d9050f931f1017302a6f6a59fc49c820d89dcc228035422ab582996709` |
| 9 | `theorem` | [sub_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/sub-algebramap--b16f019c23bef78339310968.md) | 103 | `result-track:b16f019c23bef783393109688effdc4bd39b432a6c773407a7cdc4a0239409f1` |
| 10 | `theorem` | [neg](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/neg--90296a0051195fd06b07e9a0.md) | 110 | `result-track:90296a0051195fd06b07e9a04eda5eedffc0d986aa236a82594884e8472ab16f` |
| 11 | `theorem` | [isConjRoot_algHom_iff_of_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-alghom-iff-of-injective--3bd1b68c4a82dd15e3e53bd6.md) | 124 | `result-track:3bd1b68c4a82dd15e3e53bd60bbffdb89c5f300d28e19253aaa622368f589dcb` |
| 12 | `theorem` | [isConjRoot_algHom_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-alghom-iff--c804bc2db83105aedebd03b7.md) | 132 | `result-track:c804bc2db83105aedebd03b75ee90987ad0eed85544c49dc090d4b6305f003fe` |
| 13 | `theorem` | [isConjRoot_of_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-of-aeval-eq-zero--9a69188b6abf872a26f99d87.md) | 140 | `result-track:9a69188b6abf872a26f99d87a47aa65d0177654b5769c00f4a95921539776e91` |
| 14 | `theorem` | [isConjRoot_iff_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-iff-aeval-eq-zero--de2d5a68d6368e6695a46e44.md) | 148 | `result-track:de2d5a68d6368e6695a46e4410a7b909c0522867cc05653f03b92170d8ad0bd4` |
| 15 | `theorem` | [isConjRoot_of_algEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-of-algequiv--a32044797beaf27014e9ccb7.md) | 156 | `result-track:a32044797beaf27014e9ccb7f704042ace0c9a348cf74167fc82f94d51abdeb4` |
| 16 | `theorem` | [isConjRoot_of_algEquiv'](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-of-algequiv--090825efe77451d82ba59a62.md) | 164 | `result-track:090825efe77451d82ba59a62bd01a530f239139961387b91f1f7a01ca35591f3` |
| 17 | `theorem` | [isConjRoot_of_algEquiv₂](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-of-algequiv--40d26284421f6d8d505c25b0.md) | 171 | `result-track:40d26284421f6d8d505c25b05e1c5db2d8c0479be7f1c95fa1373c738433a421` |
| 18 | `theorem` | [IsConjRoot.exists_algEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-exists-algequiv--8d5c27fd32b6423d279205f6.md) | 179 | `result-track:8d5c27fd32b6423d279205f62794f6ef7674116100a1e7b740f92c127a56f4ef` |
| 19 | `theorem` | [isConjRoot_iff_exists_algEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-iff-exists-algequiv--aeeec835d4c70797d1a96f89.md) | 190 | `result-track:aeeec835d4c70797d1a96f8915d884388f882150173215d853dfd66c28e78ce5` |
| 20 | `theorem` | [isConjRoot_iff_orbitRel](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-iff-orbitrel--b1552ec344e7430d5c467703.md) | 199 | `result-track:b1552ec344e7430d5c467703c92c728d30acb1b100417e753967df81bc4059f1` |
| 21 | `theorem` | [IsConjRoot.of_isScalarTower](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-of-isscalartower--0043eb8738cc866085009959.md) | 210 | `result-track:0043eb8738cc866085009959cfdb8f8f7e8ec7454197fad5caea933857a83130` |
| 22 | `theorem` | [isConjRoot_iff_mem_minpoly_aroots](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-iff-mem-minpoly-aroots--2f3c8e9d235acccc8fc80168.md) | 218 | `result-track:2f3c8e9d235acccc8fc801686f02c676431f127375981c0bf2160d5c79a4b8c9` |
| 23 | `theorem` | [isConjRoot_iff_mem_minpoly_rootSet](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-iff-mem-minpoly-rootset--e3c52c09ce421dfa8a47f512.md) | 228 | `result-track:e3c52c09ce421dfa8a47f5125d722634ea3747d2307720e5b2e53e543da55a6f` |
| 24 | `theorem` | [isIntegral](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isintegral--014ff780a83fa1750e8145ee.md) | 238 | `result-track:014ff780a83fa1750e8145ee53ce373d977596d84e690a18cdf8235b5b4fc3de` |
| 25 | `theorem` | [eq_algebraMap_of_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/eq-algebramap-of-injective--eba8c1b40374f8bd08d4127e.md) | 248 | `result-track:eba8c1b40374f8bd08d4127e6ac186403864ab6c47e607058abb5a6bba3090a8` |
| 26 | `theorem` | [eq_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/eq-algebramap--a404ab87b94e96ead90c1440.md) | 261 | `result-track:a404ab87b94e96ead90c14407daa60ac227fef32314818549329f990a0f59206` |
| 27 | `theorem` | [eq_zero_of_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/eq-zero-of-injective--848559722867ee174cabeae1.md) | 270 | `result-track:848559722867ee174cabeae1e09a62f17b73c2e11425bf22af77932b3f59195c` |
| 28 | `theorem` | [eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/eq-zero--c4664ae150a4b86ba282b01b.md) | 277 | `result-track:c4664ae150a4b86ba282b01b99b249c892e20a2f67b5e32923cb45def3894ac8` |
| 29 | `theorem` | [isConjRoot_iff_eq_algebraMap_of_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-iff-eq-algebramap-of-injective--09591f6b24754df3af740d17.md) | 288 | `result-track:09591f6b24754df3af740d1720859574d34e80c9dea9795eea7cbef0e45e7166` |
| 30 | `theorem` | [isConjRoot_iff_eq_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-iff-eq-algebramap--d677cb899c36bc2eb9ef66fc.md) | 298 | `result-track:d677cb899c36bc2eb9ef66fc7a0289facdf676d603c5eed31d9eaa2d14636601` |
| 31 | `theorem` | [isConjRoot_iff_eq_algebraMap'](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-iff-eq-algebramap--9400b98e4f26c5e530488f87.md) | 308 | `result-track:9400b98e4f26c5e530488f87cbd1d6614e91a94667b9f6d2d013136c0c7037e2` |
| 32 | `theorem` | [isConjRoot_zero_iff_eq_zero_of_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-zero-iff-eq-zero-of-injective--310f806c190971e02e56f102.md) | 317 | `result-track:310f806c190971e02e56f10252a40a429c0afc2e8cd554e19da5c57fd8bb0060` |
| 33 | `theorem` | [isConjRoot_zero_iff_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-zero-iff-eq-zero--6e586c3433638a0b05574792.md) | 325 | `result-track:6e586c3433638a0b055747922f659e971a7a4b98acbf85a0cad6c31d91be3313` |
| 34 | `theorem` | [isConjRoot_zero_iff_eq_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/isconjroot-zero-iff-eq-zero--81dd56db06ec9e042cfc92b2.md) | 332 | `result-track:81dd56db06ec9e042cfc92b24959fc040e110d4f90cf111ec1cc555009ccb985` |
| 35 | `theorem` | [ne_zero_of_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/ne-zero-of-injective--20a9f83869ea447c5ca3cd67.md) | 342 | `result-track:20a9f83869ea447c5ca3cd67aad52949bd5e887660f2fe6631b320105e46d784` |
| 36 | `theorem` | [ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/ne-zero--37213528520a0b20d91d85d4.md) | 349 | `result-track:37213528520a0b20d91d85d4896e22efe29371187d7408d0e6935ba703557529` |
| 37 | `theorem` | [notMem_iff_exists_ne_and_isConjRoot](../../../../../mathematics/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/declarations/notmem-iff-exists-ne-and-isconjroot--e0dbca322f052996680013f9.md) | 359 | `result-track:e0dbca322f052996680013f94210b5d44f51ed5340a48fedd22b8ecf0e447295` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
