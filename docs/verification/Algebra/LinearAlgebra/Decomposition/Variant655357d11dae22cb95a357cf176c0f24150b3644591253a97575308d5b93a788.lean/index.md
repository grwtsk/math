# Verification target: GRWTSK.Algebra.LinearAlgebra.Decomposition.Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33809360dda1439aff6e2a2055a359c8df3f6f9f",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33809360dda1439aff6e2a2055a359c8df3f6f9f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Decomposition](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decomposition--2e6901e305025dd2c08ac996.md) | 60 | `declaration-track:2e6901e305025dd2c08ac99694ffbef521198cf788923891162d8f0a0207301c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/instance--295984d45c7173941791e56a.md) | 66 | `declaration-track:295984d45c7173941791e56a6d1d75ddb0bd4d556f0a7b2dafd04267e83e6bf9` |
| 3 | `abbrev` | [Decomposition.ofAddHom](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decomposition-ofaddhom--d1b878c219c1dfb29de7f5af.md) | 75 | `declaration-track:d1b878c219c1dfb29de7f5af344c39d851884778d9a2d9a94e53705950a2cf70` |
| 4 | `def` | [IsInternal.chooseDecomposition](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/isinternal-choosedecomposition--2d5358f1660d9ad6c906edd7.md) | 83 | `declaration-track:2d5358f1660d9ad6c906edd7647ce9ac9bbfd90b8e7767ead680236254de297f` |
| 5 | `theorem` | [Decomposition.isInternal](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decomposition-isinternal--c8ea3c5c7a27d44404fe16d6.md) | 91 | `result-track:c8ea3c5c7a27d44404fe16d62a9d975e6d3d4ae4c0421466102e98169a17f952` |
| 6 | `def` | [decompose](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decompose--70187d4f655e57c4da581160.md) | 96 | `declaration-track:70187d4f655e57c4da58116085a17cd559d2e1e6e04fc050da858309ac592e86` |
| 7 | `def` | [SetLike.IsHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/setlike-ishomogeneous--ff361e3e3f6e81390a276197.md) | 105 | `declaration-track:ff361e3e3f6e81390a27619790ffab35aa3397ccfd401b13d2d3740f08a94360` |
| 8 | `theorem` | [Decomposition.inductionOn](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decomposition-inductionon--c5b47068c4882c3a037a50f0.md) | 109 | `result-track:c5b47068c4882c3a037a50f057d0e010e45f35e6f316ecf3ad9649c3367cf9c0` |
| 9 | `theorem` | [Decomposition.decompose'_eq](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decomposition-decompose-eq--f2c8b39388a19fb917448e05.md) | 127 | `result-track:f2c8b39388a19fb917448e05db5b8b3d825b312776820ee11d1bfc66087eda31` |
| 10 | `theorem` | [decompose_symm_of](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decompose-symm-of--31f52e05bb83edb8c74e8665.md) | 130 | `result-track:31f52e05bb83edb8c74e86655bf830f9c1681d0c64f1c3135a37dcedfbcb3aa5` |
| 11 | `theorem` | [decompose_coe](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decompose-coe--e35f774b67a06d2da603207c.md) | 134 | `result-track:e35f774b67a06d2da603207c3a97436587c8057d7454f37af2f5869853a80553` |
| 12 | `theorem` | [decompose_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decompose-of-mem--210dc0b3bbe7c63bfe630544.md) | 137 | `result-track:210dc0b3bbe7c63bfe630544ee17cd5f945d1fadc771b94b3ba4a2b8782b6912` |
| 13 | `theorem` | [decompose_of_mem_same](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decompose-of-mem-same--9c077ae002e7a6e76754a47c.md) | 141 | `result-track:9c077ae002e7a6e76754a47c780e368450d4d35fd082e54d4d5eaaa30ad820a1` |
| 14 | `theorem` | [decompose_of_mem_ne](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decompose-of-mem-ne--e5d59767dd70b4d9d8641be7.md) | 144 | `result-track:e5d59767dd70b4d9d8641be70aeb856dc8eb03ae70c263b45942d26f407c0812` |
| 15 | `theorem` | [degree_eq_of_mem_mem](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/degree-eq-of-mem-mem--14dfb9edfb9720d46e917cca.md) | 148 | `result-track:14dfb9edfb9720d46e917cca74a53e3c2a64ad4d84dbb17fe9e8b4e1d612e2d8` |
| 16 | `def` | [decomposeAddEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decomposeaddequiv--5197fee79e38fd5684d729e8.md) | 155 | `declaration-track:5197fee79e38fd5684d729e8049e2cdc394137084dfeb81defaa913c1896c389` |
| 17 | `theorem` | [decompose_zero](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decompose-zero--0feca5c9dd02fe8ecd801577.md) | 159 | `result-track:0feca5c9dd02fe8ecd801577629653126e06e954d583fe8502bd73eddd2e6600` |
| 18 | `theorem` | [decompose_symm_zero](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decompose-symm-zero--8f6d70e5bac046bb32faec88.md) | 163 | `result-track:8f6d70e5bac046bb32faec88755d0d5f0b54e63b9096f688d0555d1d46b77eb4` |
| 19 | `theorem` | [decompose_add](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decompose-add--fc00bd0a7b259cb69f13e0a0.md) | 167 | `result-track:fc00bd0a7b259cb69f13e0a066c9d362d222c777e0cd6676901a6c6caa6118ec` |
| 20 | `theorem` | [decompose_symm_add](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decompose-symm-add--6ea5d1aa767b8cc9fb82828a.md) | 171 | `result-track:6ea5d1aa767b8cc9fb82828a880690517e16d73072b4714c127b912d4bb2e221` |
| 21 | `theorem` | [decompose_sum](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decompose-sum--887ab43b1f1c7b512923b98c.md) | 176 | `result-track:887ab43b1f1c7b512923b98c416171cdf7932dc91b901c7785d15fb066019217` |
| 22 | `theorem` | [decompose_symm_sum](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decompose-symm-sum--82ab75e21d8abb8ee8ae9f82.md) | 181 | `result-track:82ab75e21d8abb8ee8ae9f82dc6e7bec263047bd9a5d15f33856274bdb8fbe9f` |
| 23 | `theorem` | [sum_support_decompose](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/sum-support-decompose--11f3bbb0ee375c895bde1ca7.md) | 185 | `result-track:11f3bbb0ee375c895bde1ca7a5dd89233cfeb03d7f2f6fe8708a2ed46ee057e5` |
| 24 | `theorem` | [AddSubmonoidClass.IsHomogeneous.mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/addsubmonoidclass-ishomogeneous-mem-iff--e970e5660197cb7d31048c6d.md) | 192 | `result-track:e970e5660197cb7d31048c6d93a28f3191f4feadc161c5de5146875017a45359` |
| 25 | `instance` | [addCommGroupSetLike](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/addcommgroupsetlike--b48b0af471f9157e81c5c31d.md) | 210 | `declaration-track:b48b0af471f9157e81c5c31dc2752f48c54b4c527bed94e0c1c12bf7ad1c304c` |
| 26 | `theorem` | [decompose_neg](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decompose-neg--6f45582d9a80056ef47ac1ca.md) | 220 | `result-track:6f45582d9a80056ef47ac1cad9bcb0850811cf65bcb691a5ebc8e20d82f8dbe1` |
| 27 | `theorem` | [decompose_symm_neg](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decompose-symm-neg--36dcf55221a906cbb958e912.md) | 224 | `result-track:36dcf55221a906cbb958e9126f44a44c1f9d34a285d07d95036736a35cf6353b` |
| 28 | `theorem` | [decompose_sub](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decompose-sub--b2b3662737dc202a67562536.md) | 228 | `result-track:b2b3662737dc202a67562536ce09614909615419bb968ef6e4fcee9ddfb72bc6` |
| 29 | `theorem` | [decompose_symm_sub](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decompose-symm-sub--2caec6b31fb1614c5e5a4bd8.md) | 232 | `result-track:2caec6b31fb1614c5e5a4bd89657911ac3f07721293a6e2e15a4cfeab3e847c1` |
| 30 | `abbrev` | [Decomposition.ofLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decomposition-oflinearmap--d4387365565f6ad5907854e3.md) | 245 | `declaration-track:d4387365565f6ad5907854e3aa6aaf9cbf9b74d8e515011aa434c0dd58e0312d` |
| 31 | `def` | [decomposeLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decomposelinearequiv--cc94f2945c07d52163184dad.md) | 256 | `declaration-track:cc94f2945c07d52163184dad8a85447987e704d5f7a5ededa2cf405c4ffa795b` |
| 32 | `theorem` | [decomposeLinearEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decomposelinearequiv-apply--1b6322ba1ec38304f64991c0.md) | 260 | `result-track:1b6322ba1ec38304f64991c086b9be823e4f975e8fb87e2eaea21091fe6a0b5b` |
| 33 | `theorem` | [decomposeLinearEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decomposelinearequiv-symm-apply--b62a28c794d1e50957dc1ee7.md) | 263 | `result-track:b62a28c794d1e50957dc1ee755ca2e6c87e9a7f879e5e02b8ffc8ddf15f55a90` |
| 34 | `theorem` | [decompose_smul](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decompose-smul--bbb0847ba06c710d185ad93b.md) | 267 | `result-track:bbb0847ba06c710d185ad93bd7cec10b238994ce559c6721bb2fb13e4b75309e` |
| 35 | `theorem` | [decomposeLinearEquiv_symm_comp_lof](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decomposelinearequiv-symm-comp-lof--f2def0305249a4b138eae529.md) | 270 | `result-track:f2def0305249a4b138eae529065d8c9a809ea1113dfa4a12a6ae1d0b9c55d5e9` |
| 36 | `theorem` | [decompose_lhom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/declarations/decompose-lhom-ext--935c9f3b084925ea84197429.md) | 277 | `result-track:935c9f3b084925ea84197429e6464503141b7dcab176b8b537fba079a5d747fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
