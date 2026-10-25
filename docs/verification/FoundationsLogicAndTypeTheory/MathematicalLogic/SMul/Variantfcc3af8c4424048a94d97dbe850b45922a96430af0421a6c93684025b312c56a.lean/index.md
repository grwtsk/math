# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SMul.Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de20f6e0f5b6cfcf98b4459d3abc87d187b70966",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de20f6e0f5b6cfcf98b4459d3abc87d187b70966`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Regular.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Hom` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/issmulregular--87ec0e01d3e1898e6fd2aaf6.md) | 41 | `declaration-track:87ec0e01d3e1898e6fd2aaf60a84e2023e3e900b7e8228cd25583bea008b733d` |
| 2 | `theorem` | [IsLeftRegular.isSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/isleftregular-issmulregular--c59d9d396bebf3b90df69d62.md) | 44 | `result-track:c59d9d396bebf3b90df69d62a39dae577f36383f27ff1d0739d5e4d050544cba` |
| 3 | `theorem` | [isLeftRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/isleftregular-iff--f7d4b592ca2eac746273896c.md) | 48 | `result-track:f7d4b592ca2eac746273896c87bfe4329e2f551e3ad4d1e75f4c517042cda6da` |
| 4 | `theorem` | [IsRightRegular.isSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/isrightregular-issmulregular--1c8c17c6ee6fec5df01d6b2e.md) | 51 | `result-track:1c8c17c6ee6fec5df01d6b2eaa33595dd47af85c31cd3408996bcb1935f3d267` |
| 5 | `theorem` | [isRightRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/isrightregular-iff--4642e0a2f09f130ef6ffd6d5.md) | 56 | `result-track:4642e0a2f09f130ef6ffd6d533b39666b12daf50b2134e1a58a906fd02f15b1e` |
| 6 | `theorem` | [smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/smul--2c47ef68887eeda0b85a6f19.md) | 69 | `result-track:2c47ef68887eeda0b85a6f196bb4bdbac6c7103db250cdab9f6909ecd0d1458d` |
| 7 | `theorem` | [of_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/of-smul--960c28cd0d89f3b3283882e7.md) | 74 | `result-track:960c28cd0d89f3b3283882e75d1b4be87443018cfe84f320072075ee00d644d8` |
| 8 | `theorem` | [smul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/smul-iff--5b591f936d29399ab37b12a8.md) | 83 | `result-track:5b591f936d29399ab37b12a8c639993ff22c1d70dd42af358e3df2a81f5c9ac6` |
| 9 | `theorem` | [isLeftRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/isleftregular--9fb3a2943cf1176bd4b25099.md) | 86 | `result-track:9fb3a2943cf1176bd4b25099253ee94848ec938e80a6459b7c897904e4230018` |
| 10 | `theorem` | [isRightRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/isrightregular--6f7e80ea593df8a9c34fb2aa.md) | 89 | `result-track:6f7e80ea593df8a9c34fb2aa48285e8213dea090de2db7b9dcb5a9354441690c` |
| 11 | `theorem` | [mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/mul--b52bf29f6590bdb461e157e0.md) | 93 | `result-track:b52bf29f6590bdb461e157e01d9c54b62fb92286cc4ca1860e00598a3f3f923d` |
| 12 | `theorem` | [of_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/of-mul--635e1e139fd5b6c0f22ee7a3.md) | 97 | `result-track:635e1e139fd5b6c0f22ee7a3dd950c53896c09dad65c82e92b932ccb955c8447` |
| 13 | `theorem` | [mul_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/mul-iff-right--5625f81e991f9a4fc1174dd2.md) | 103 | `result-track:5625f81e991f9a4fc1174dd288233dd9fdb4a5c58ad400a3e4da44ddcc5f811c` |
| 14 | `theorem` | [mul_and_mul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/mul-and-mul-iff--a63fdd5f86ad6ca330e3f507.md) | 109 | `result-track:a63fdd5f86ad6ca330e3f50709a3acc4090c17c5c1a6353c66894a4732e744d0` |
| 15 | `lemma` | [of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/of-injective--0a95325c46ea86ee10fe0417.md) | 117 | `result-track:0a95325c46ea86ee10fe04177bbb6d81885a630337d5a587d5869b8177bb31c3` |
| 16 | `theorem` | [one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/one--b6f9d6f977f61f5f03666cfc.md) | 131 | `result-track:b6f9d6f977f61f5f03666cfcb78119084fe06c26bdde3ccdd3baa5380c9c96d5` |
| 17 | `theorem` | [of_mul_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/of-mul-eq-one--d3892cbd6434bb0a2f20ada5.md) | 139 | `result-track:d3892cbd6434bb0a2f20ada577b7208e548b5ac5079cb4809c9ff1e03ac59519` |
| 18 | `theorem` | [pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/pow--78a00e84d75db77b9f9d7e0c.md) | 143 | `result-track:78a00e84d75db77b9f9d7e0cf917d7a4a374c9b4b5771fc8c982c8d6b52cef02` |
| 19 | `theorem` | [pow_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/pow-iff--4332fe02410c11ab7f863a8d.md) | 151 | `result-track:4332fe02410c11ab7f863a8dce39c1df728c363037169d7c7fff410e14d089c3` |
| 20 | `theorem` | [of_smul_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/of-smul-eq-one--644fc2e2a2d1a79c83286be0.md) | 163 | `result-track:644fc2e2a2d1a79c83286be0565547f000add329e4cee43c75bc586ceff887b1` |
| 21 | `theorem` | [subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/subsingleton--684e25ab99ec48f6c1d72333.md) | 176 | `result-track:684e25ab99ec48f6c1d7233310af65e82344414aae3b0d1d906450d89a7994d6` |
| 22 | `theorem` | [zero_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/zero-iff-subsingleton--7514967b265bf93ee1767e2a.md) | 180 | `result-track:7514967b265bf93ee1767e2ab55faf0bfa12f50d636992a9e30872fc84d813ce` |
| 23 | `theorem` | [not_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/not-zero-iff--c9e60d793de6f5f2cc240dfd.md) | 184 | `result-track:c9e60d793de6f5f2cc240dfd93621ee5bead77716c9990e3943ecde7f3a37264` |
| 24 | `theorem` | [zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/zero--fc569f4d8e2498a695f2d77c.md) | 190 | `result-track:fc569f4d8e2498a695f2d77ce46c71eaf33350bcb55eae3fb4e47e162c8a8238` |
| 25 | `theorem` | [not_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/not-zero--ad032d53e46fd8bad817c8ec.md) | 194 | `result-track:ad032d53e46fd8bad817c8ec438691f4cc1e764d2705f4c7560f07c04a104b56` |
| 26 | `theorem` | [mul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/mul-iff--6d8be0a6f70ddc2e3fc77427.md) | 204 | `result-track:6d8be0a6f70ddc2e3fc774275f7673a11316f01dc42c20515e2904cdb157d6ec` |
| 27 | `theorem` | [isSMulRegular_of_group](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/issmulregular-of-group--fe1085fa29557c46d5605104.md) | 218 | `result-track:fe1085fa29557c46d56051049054759a08f554c98d47f71a6a00bfc336187146` |
| 28 | `theorem` | [Units.isSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/units-issmulregular--42d95ec1075f81acf04abaab.md) | 229 | `result-track:42d95ec1075f81acf04abaab0128ba343908f9de5056984457464e4a473ae2bb` |
| 29 | `theorem` | [IsUnit.isSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/isunit-issmulregular--c77867fd7fc94db87f8b2192.md) | 233 | `result-track:c77867fd7fc94db87f8b21929ade636858e11279b55f75bfe3da59a88291a7f3` |
| 30 | `lemma` | [IsSMulRegular.eq_zero_of_smul_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/issmulregular-eq-zero-of-smul-eq-zero--635372062ad4bcc6fdfce201.md) | 244 | `result-track:635372062ad4bcc6fdfce2014d38efd6fa807f2604d897809ad451d4680cc9a8` |
| 31 | `lemma` | [Equiv.isSMulRegular_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantfcc3af8c4424048a94d97dbe850b45922a96430af0421a6c93684025b312c56a.lean/declarations/equiv-issmulregular-congr--84c3ac15542a439dd648714d.md) | 250 | `result-track:84c3ac15542a439dd648714d5148faebeafe448f63f7caf318cbe6d0999a9943` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
