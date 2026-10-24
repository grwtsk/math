# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMFinitePureAssembly

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7981e637742b1d82f7d692dd11a07df4c69fd84e",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7981e637742b1d82f7d692dd11a07df4c69fd84e`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.TensorProduct.FiniteCMCanonicalAssembly`](../../../../mathematics/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent`](../../../../mathematics/LinearAlgebra/TensorProduct/RationalScalarDescent.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.NumberTheory.NumberField.CMField` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AlgebraicNumbers](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/algebraicnumbers--ac36c017d651955e817f7e5b.md) | 30 | `declaration-track:ac36c017d651955e817f7e5b8d5e4681f5bebc684d78fb4a120a18154c0ecb92` |
| 2 | `structure` | [CMGaloisIntermediateField](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmgaloisintermediatefield--6b2dae9857fcb46014f3ff38.md) | 33 | `declaration-track:6b2dae9857fcb46014f3ff38d4deadac2b9ba3c431d6e096c7282c2cb8c75756` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/instance--230bb9ff7c683b3fc15ad0a7.md) | 37 | `declaration-track:230bb9ff7c683b3fc15ad0a76957448720a65e767037a6bd28bb50540db6519a` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/instance--94f6068e45e5410f978f4d0c.md) | 40 | `declaration-track:94f6068e45e5410f978f4d0cb53f82cf7cae9ec23d04626306eb1def428958c6` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/instance--a700bc2876a28e02f50f9b51.md) | 43 | `declaration-track:a700bc2876a28e02f50f9b51a2284db2f060f13117c040d25461351c6c411f89` |
| 6 | `abbrev` | [CMFiniteCanonicalVectorTarget](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitecanonicalvectortarget--15fab78e920469f94395feb1.md) | 46 | `declaration-track:15fab78e920469f94395feb104eecb0df0448dc6bec1f39a34e96eb2f186eb4f` |
| 7 | `abbrev` | [CMFiniteFourCoefficientTensor](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitefourcoefficienttensor--649cd467f950754ac892d40f.md) | 49 | `declaration-track:649cd467f950754ac892d40f1095dc33b15d2b6dea2bbcd3a872f94385e44044` |
| 8 | `abbrev` | [CMFiniteFourPairedTensor](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitefourpairedtensor--b4795e60fdff4964b8903eea.md) | 52 | `declaration-track:b4795e60fdff4964b8903eea54c4f52511973e8815edb6c35a30afbf48ee17f0` |
| 9 | `def` | [CMFiniteFourPairedPure](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitefourpairedpure--7ce239be8d61388be3cde104.md) | 60 | `declaration-track:7ce239be8d61388be3cde1042999aef6fbdca9164b411e8ddc06f0795be8791d` |
| 10 | `def` | [CMFiniteFourSeparatedPure](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitefourseparatedpure--2a29c495e2b996166c8a73e8.md) | 68 | `declaration-track:2a29c495e2b996166c8a73e8eea58a4d8b8157e95f3e0f3e7b8434a01ec83207` |
| 11 | `theorem` | [CMFiniteFourPairedPure_eq_checked](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitefourpairedpure-eq-checked--1a9e215bcce52c2958810821.md) | 77 | `result-track:1a9e215bcce52c2958810821fc01a358c51836555efb8edcb762ec5642cfb9a0` |
| 12 | `theorem` | [CMFiniteFourSeparatedPure_eq_checked](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitefourseparatedpure-eq-checked--87bd7f82470021e5bd7c2bc6.md) | 84 | `result-track:87bd7f82470021e5bd7c2bc615c0eb5514a24635432c489591d9915079bd569e` |
| 13 | `def` | [canonicalFinitePureAssembly](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/canonicalfinitepureassembly--c150772188857f68ffed887d.md) | 92 | `declaration-track:c150772188857f68ffed887d8d4beb33fb0038f6c0c924968646ab91f30c3970` |
| 14 | `theorem` | [canonicalFinitePureAssembly_eq_checked](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/canonicalfinitepureassembly-eq-checked--df7695d970f3a5ecb03d6ae5.md) | 100 | `result-track:df7695d970f3a5ecb03d6ae56058d8b88d0c5b0773385411e241da562e95f751` |
| 15 | `def` | [CMFiniteCoefficientMultiplication](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitecoefficientmultiplication--0ad12f3db291a6f7636be76e.md) | 108 | `declaration-track:0ad12f3db291a6f7636be76ed861a9a9fc47b6f5caf81f05e7a027b1031c7cc8` |
| 16 | `theorem` | [CMFiniteCoefficientMultiplication_tmul](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitecoefficientmultiplication-tmul--929e6953da116ccc04a3a88f.md) | 114 | `result-track:929e6953da116ccc04a3a88ff90a77fef050038c3f072d888c9d764ccc221ded` |
| 17 | `theorem` | [CMFiniteCoefficientMultiplication_one](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitecoefficientmultiplication-one--696d18be6d09976b0ad04bf9.md) | 122 | `result-track:696d18be6d09976b0ad04bf948b2ed1617eee84b505a3d153bb66765e7420f6d` |
| 18 | `def` | [CMFiniteFourCoefficientMultiplication](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitefourcoefficientmultiplication--aaad256f0edfbb5bb8790691.md) | 130 | `declaration-track:aaad256f0edfbb5bb87906914c1e982f4ce30bbae837dbeb3cf2f5b0eb66dd16` |
| 19 | `theorem` | [CMFiniteFourCoefficientMultiplication_eq_checked](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitefourcoefficientmultiplication-eq-checked--8c117c591d3effe47fb489aa.md) | 137 | `result-track:8c117c591d3effe47fb489aaf1dacbc4124fcba2b46583edc1b53c175c999838` |
| 20 | `def` | [CMFiniteSeparatedCanonicalAssembly](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfiniteseparatedcanonicalassembly--54d83b306a08b443babb5bbf.md) | 143 | `declaration-track:54d83b306a08b443babb5bbf8dfd5dbb0525984663da6e6a3509b1a77b9e4c7a` |
| 21 | `theorem` | [CMFiniteFourCoefficientMultiplication_pure](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitefourcoefficientmultiplication-pure--fa191525f90afe4b93722628.md) | 152 | `result-track:fa191525f90afe4b937226285c3b90443211204c93b617e6584cf1af945f11d4` |
| 22 | `theorem` | [CMFiniteSeparatedCanonicalAssembly_pure](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfiniteseparatedcanonicalassembly-pure--08a559f61de99a044e5376c7.md) | 162 | `result-track:08a559f61de99a044e5376c7597844d5b1582f760c61de6f827802eeb169ecf5` |
| 23 | `abbrev` | [CMFiniteFourTensorShuffle](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitefourtensorshuffle--1e1703c2b35e25c6a392a3b6.md) | 174 | `declaration-track:1e1703c2b35e25c6a392a3b6e1097224bcb03b5e768992fbd408dc87a5feb76d` |
| 24 | `def` | [CMFiniteCanonicalPairedAssembly](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitecanonicalpairedassembly--18369c1733c7195adb126a2d.md) | 182 | `declaration-track:18369c1733c7195adb126a2d437a16d046ef25a200a292b00501ea29028c03dd` |
| 25 | `theorem` | [CMFiniteSeparatedCanonicalAssembly_eq_checked](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfiniteseparatedcanonicalassembly-eq-checked--035377a0221e14606daa0486.md) | 189 | `result-track:035377a0221e14606daa04864d38ec63bb0b9b2e965a3063dbffb0019d5e0606` |
| 26 | `theorem` | [CMFiniteFourTensorShuffle_eq_checked](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitefourtensorshuffle-eq-checked--8f05b5cd8a1f1a4cd320339d.md) | 195 | `result-track:8f05b5cd8a1f1a4cd320339de80469b040be49d36fa9fa0a84f9fbdd41256b89` |
| 27 | `theorem` | [CMFiniteCanonicalPairedAssembly_eq_checked](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitecanonicalpairedassembly-eq-checked--e1bb8fd81164e0ae69ae069f.md) | 201 | `result-track:e1bb8fd81164e0ae69ae069f6567b3b4379c24250b0448ea521b049e5a084049` |
| 28 | `theorem` | [CMFiniteFourTensorShuffle_pure](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitefourtensorshuffle-pure--c8aa3c4693b25a21fa51eec7.md) | 208 | `result-track:c8aa3c4693b25a21fa51eec75e4c90dcd20f4807d4f5184bd4efdb6a71aed96b` |
| 29 | `theorem` | [CMFiniteCanonicalPairedAssembly_pure](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitecanonicalpairedassembly-pure--f504d2b3ffdf81c3051504df.md) | 219 | `result-track:f504d2b3ffdf81c3051504dfe67ca2bd2f2a3c176ac448640762891d54e3a28c` |
| 30 | `theorem` | [CMFiniteCanonicalPairedAssembly_originalPure](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitecanonicalpairedassembly-originalpure--3cfd1c29eaa3c00402ef4644.md) | 232 | `result-track:3cfd1c29eaa3c00402ef4644a09e85560c4b88f7b9190683601dccadee89db1f` |
| 31 | `theorem` | [CMFiniteCanonicalPairedAssembly_originalFormula](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitecanonicalpairedassembly-originalformula--0ef43d99e3b82a86b73ad5f5.md) | 243 | `result-track:0ef43d99e3b82a86b73ad5f5f60a24589d60624cb64a102b6f776477419ba499` |
| 32 | `theorem` | [CMFiniteCanonicalPairedAssembly_unique](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitecanonicalpairedassembly-unique--526818786b7cffd1d6be074d.md) | 254 | `result-track:526818786b7cffd1d6be074db2e9f43345aef97480ccbbd271894d7664c9966d` |
| 33 | `theorem` | [CMFiniteFourTensorShuffle_unique](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitefourtensorshuffle-unique--998210d918a0e9eec2eeeaee.md) | 271 | `result-track:998210d918a0e9eec2eeeaeefb92cbc2bac5819c9ff234ae5a9eb23112af26f9` |
| 34 | `def` | [CMFiniteTwoTensorShuffle](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitetwotensorshuffle--e8f5ec9f9339225d55ef587a.md) | 299 | `declaration-track:e8f5ec9f9339225d55ef587a086c4b04efee6b5ed870b3b7df5e1e96b7954087` |
| 35 | `def` | [CMFiniteThreeTensorShuffle](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitethreetensorshuffle--dbd0cbcc66b7f61d20c3fb3b.md) | 307 | `declaration-track:dbd0cbcc66b7f61d20c3fb3b58958f6186456257cc410209e09a5d99cfbbc214` |
| 36 | `def` | [CMFiniteDiagonalScalarConjugate](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitediagonalscalarconjugate--03fb000b793da556c98363d5.md) | 318 | `declaration-track:03fb000b793da556c98363d5c405997762da590e9d17dc172a0ddc6034584cc8` |
| 37 | `theorem` | [CMFiniteDiagonalScalarConjugate_tmul](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitediagonalscalarconjugate-tmul--91b9b35e595bbb35ec9ea77f.md) | 328 | `result-track:91b9b35e595bbb35ec9ea77f7618ad2b81df61af33dd3e89c8b808cffd76e75b` |
| 38 | `theorem` | [CMFiniteCoefficientMultiplication_diagonal_equivariant](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitecoefficientmultiplication-diagonal-equivariant--79453d7099c72b5e72301d85.md) | 338 | `result-track:79453d7099c72b5e72301d85a3e429d989ce7eb4e28b98392d9542677a016903` |
| 39 | `def` | [CMFiniteTripleCoefficientConjugate](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitetriplecoefficientconjugate--70c0c4d9070fd1294547f183.md) | 362 | `declaration-track:70c0c4d9070fd1294547f183e35063538bbb72d564f21ecf88903304823b87c5` |
| 40 | `def` | [CMFiniteFourCoefficientConjugate](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitefourcoefficientconjugate--a47d8b8d443f966f79f9e898.md) | 371 | `declaration-track:a47d8b8d443f966f79f9e898c7e2b84e08e51c8ee92e01fd9e0b5c005f84939e` |
| 41 | `theorem` | [CMFiniteFourCoefficientConjugate_pure](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitefourcoefficientconjugate-pure--5025c20d272c130e8f770712.md) | 382 | `result-track:5025c20d272c130e8f770712654b8487640e803eaf5f7499ade9c3fb987db1b7` |
| 42 | `theorem` | [CMFiniteFourCoefficientMultiplication_equivariant](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitefourcoefficientmultiplication-equivariant--1fadfe6466bbf7e0fd78d2b4.md) | 395 | `result-track:1fadfe6466bbf7e0fd78d2b42f9c8a7383272f29c9fdb6e919c5db0c0abc7338` |
| 43 | `theorem` | [canonicalFinitePureAssembly_eq_coefficientMultiplication](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/canonicalfinitepureassembly-eq-coefficientmultiplication--36fc6485653249f01ff57153.md) | 425 | `result-track:36fc6485653249f01ff571539881b51b57b7ef9bc27753d4ec01722ce791befd` |
| 44 | `theorem` | [canonicalFinitePureAssembly_eq_conjugatedCoefficientProduct](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/canonicalfinitepureassembly-eq-conjugatedcoefficientproduct--5039ec6f98fe1ab321fa36c0.md) | 438 | `result-track:5039ec6f98fe1ab321fa36c096067ddf4ad050c290621ca7355a568a8e26bd07` |
| 45 | `theorem` | [canonicalFinitePureAssembly_balance_1](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/canonicalfinitepureassembly-balance-1--c86acbb37603a5a9bda669fb.md) | 453 | `result-track:c86acbb37603a5a9bda669fb92e403ef17a441696d7b3e05a0fc29489eaa7813` |
| 46 | `theorem` | [canonicalFinitePureAssembly_balance_2](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/canonicalfinitepureassembly-balance-2--00b586a03dd9a181ad631efd.md) | 464 | `result-track:00b586a03dd9a181ad631efdaa0aae655c015b5c3c59e7f564b86bd04627e4a7` |
| 47 | `theorem` | [canonicalFinitePureAssembly_balance_3](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/canonicalfinitepureassembly-balance-3--95449d64b8fa0b44b748440b.md) | 475 | `result-track:95449d64b8fa0b44b748440bdce8af2a3436580c3a9c1e4d37c49dbf00eb9928` |
| 48 | `theorem` | [canonicalFinitePureAssembly_balance_4](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/canonicalfinitepureassembly-balance-4--4343e198b4e1e9bf95b24119.md) | 486 | `result-track:4343e198b4e1e9bf95b241190324cb620f54db51e19317148abcfffe3e1c8db3` |
| 49 | `theorem` | [canonicalFinitePureAssembly_add_first](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/canonicalfinitepureassembly-add-first--0535d365539aeecf36d0800e.md) | 499 | `result-track:0535d365539aeecf36d0800ee796e76c2514b779197d7afb3c3d855e176bb0a6` |
| 50 | `theorem` | [canonicalFinitePureAssembly_add_first_vector](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/canonicalfinitepureassembly-add-first-vector--aa8b6b30aac3b5d1896b893c.md) | 508 | `result-track:aa8b6b30aac3b5d1896b893c31118a64106abed07e8ff5d9633bc82147a72142` |
| 51 | `theorem` | [canonicalFinitePureAssembly_add_coefficient_2](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/canonicalfinitepureassembly-add-coefficient-2--21ab7d61f4a8e036a7be3353.md) | 518 | `result-track:21ab7d61f4a8e036a7be3353fc350568623608bd0026f1c7fae6fca5a107ef42` |
| 52 | `theorem` | [canonicalFinitePureAssembly_add_coefficient_3](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/canonicalfinitepureassembly-add-coefficient-3--5e3a3267671b863934b4f70d.md) | 528 | `result-track:5e3a3267671b863934b4f70da7a398e78daed77d54c0063c12f3e900e65d743a` |
| 53 | `theorem` | [canonicalFinitePureAssembly_add_coefficient_4](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/canonicalfinitepureassembly-add-coefficient-4--57cbe903dff9031ec62d7aa7.md) | 538 | `result-track:57cbe903dff9031ec62d7aa70b3d1e16b862c8a1fda568fc8f277868a62f0656` |
| 54 | `theorem` | [canonicalFinitePureAssembly_add_vector_2](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/canonicalfinitepureassembly-add-vector-2--c96c58994ebdfb7bfd7efc6f.md) | 548 | `result-track:c96c58994ebdfb7bfd7efc6f84850df06103ee74db42fbe2a5b6dd698345bdd5` |
| 55 | `theorem` | [canonicalFinitePureAssembly_add_vector_3](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/canonicalfinitepureassembly-add-vector-3--e38e77031cb07539a0f50573.md) | 558 | `result-track:e38e77031cb07539a0f505734b1d2c5a327bf793bbc453832f6a1eeaaebc165f` |
| 56 | `theorem` | [canonicalFinitePureAssembly_add_vector_4](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/canonicalfinitepureassembly-add-vector-4--923f5bd3c83101baab34d987.md) | 568 | `result-track:923f5bd3c83101baab34d987b1931287539999a28fcb5e39709601a65fa5d3e0` |
| 57 | `theorem` | [canonicalFinitePureAssembly_scalarConjugate](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/canonicalfinitepureassembly-scalarconjugate--0a77a7e15a77683dee6820bd.md) | 581 | `result-track:0a77a7e15a77683dee6820bded2da6a92629047fca8fbc2ec3a273ecef5363c4` |
| 58 | `theorem` | [CMFiniteCanonicalPairedAssembly_pure_scalarConjugate](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitecanonicalpairedassembly-pure-scalarconjugate--dfce72d34a4705725a6753a8.md) | 598 | `result-track:dfce72d34a4705725a6753a86c3aefe5dd6e277440e9274304915cde939e8006` |
| 59 | `def` | [CMFiniteFourPairedCoefficientConjugate](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitefourpairedcoefficientconjugate--bbb57ddf7fee9e8b04c2ad8f.md) | 616 | `declaration-track:bbb57ddf7fee9e8b04c2ad8f9a4e74b3cc948cfbdb66645e9845fa49d4cbb76e` |
| 60 | `theorem` | [CMFiniteFourPairedCoefficientConjugate_pure](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitefourpairedcoefficientconjugate-pure--e5cd4eb2c4cf409749d0f105.md) | 628 | `result-track:e5cd4eb2c4cf409749d0f105bca3413c9fa36849b1fbf856664262f75aa5a5e8` |
| 61 | `theorem` | [CMFiniteCanonicalPairedAssembly_scalarConjugate_linearMap](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitecanonicalpairedassembly-scalarconjugate-linearmap--7da78ce9642b22a7253f2533.md) | 643 | `result-track:7da78ce9642b22a7253f2533d7e301035d674bf18d9c0db45e1f7cea5969ba0e` |
| 62 | `theorem` | [CMFiniteCanonicalPairedAssembly_scalarConjugate](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitecanonicalpairedassembly-scalarconjugate--920342e6a39f0ae52a79144a.md) | 664 | `result-track:920342e6a39f0ae52a79144a03fc7612bb580075ec50cec743274185ae6921f2` |
| 63 | `theorem` | [CMFiniteCanonicalPairedAssembly_transport_four](../../../../mathematics/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/declarations/cmfinitecanonicalpairedassembly-transport-four--9a4a19019d6bffddc56215d1.md) | 680 | `result-track:9a4a19019d6bffddc56215d1ecb066c589940e60553c095dde7b559e9eba3df3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
