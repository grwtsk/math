# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.StrongEpi.Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4759023a30a1a89ee48dc0fdf241cba2c610d5de",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4759023a30a1a89ee48dc0fdf241cba2c610d5de`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Balanced` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.LiftingProperties.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [StrongEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/strongepi--02618ba32ec055eb2c6396e0.md) | 54 | `declaration-track:02618ba32ec055eb2c6396e0ea9b67c0558e0ba20b621fa4f5f09a60a31b7e7f` |
| 2 | `theorem` | [StrongEpi.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/strongepi-mk--a82573a76d0c86a11bf8d11b.md) | 61 | `result-track:a82573a76d0c86a11bf8d11b76e26ef0901e5372f13db58fc281c3d22073cdee` |
| 3 | `class` | [StrongMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/strongmono--67eaf3c768650fa1be7d8b99.md) | 70 | `declaration-track:67eaf3c768650fa1be7d8b99bf079944a4d7e9da6a6aed375cb169d896cb208d` |
| 4 | `theorem` | [StrongMono.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/strongmono-mk--dcf98d34dbba6669f7029e8f.md) | 76 | `result-track:dcf98d34dbba6669f7029e8f70f0cd02b211bf6b26934ea0ecf917505b83a2ee` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/instance--6e81971e43fd31d75396a79b.md) | 86 | `declaration-track:6e81971e43fd31d75396a79ba6b5c74c64a5532974d2fbfdc7b9f8082b06c82b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/instance--8574d164f92090b78d6a99ae.md) | 89 | `declaration-track:8574d164f92090b78d6a99ae3b33e0d5155a68c3be7dcdf9dca18baf26f8eb49` |
| 7 | `theorem` | [strongEpi_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/strongepi-comp--0935a4d52c3ac247a550aa34.md) | 97 | `result-track:0935a4d52c3ac247a550aa34afb28ec6348401df1bef9ab067ae18c1b0513b88` |
| 8 | `theorem` | [strongMono_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/strongmono-comp--262a7d40e590c620be045b99.md) | 104 | `result-track:262a7d40e590c620be045b99dc0d840641537be76d93eb308ba94a37f0de90ec` |
| 9 | `theorem` | [strongEpi_of_strongEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/strongepi-of-strongepi--1c6048cb67bd48cbc30d5bd6.md) | 111 | `result-track:1c6048cb67bd48cbc30d5bd6a18f9ffe28441c99a596ad7ea16a5d376b0c65ea` |
| 10 | `theorem` | [strongMono_of_strongMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/strongmono-of-strongmono--768958bb3383024f0890d712.md) | 123 | `result-track:768958bb3383024f0890d7121ea570113ba16ce6a7380772fef0c9535cedfca3` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/instance--423207141724075305147551.md) | 134 | `declaration-track:423207141724075305147551da7bf4ba035ca4cab718c23c95f07299fc39c201` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/instance--274b162f113afb4fa972239d.md) | 139 | `declaration-track:274b162f113afb4fa972239d3d58dac23d13dffc5f4a745c0cdeffdaee8b8c12` |
| 13 | `theorem` | [StrongEpi.of_arrow_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/strongepi-of-arrow-iso--7117b9b88d67460edae73bd1.md) | 143 | `result-track:7117b9b88d67460edae73bd152b7743c0bedb9a9bc8818a013bf2311fd387a47` |
| 14 | `theorem` | [StrongMono.of_arrow_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/strongmono-of-arrow-iso--73f96e65463b9f3edc92d3eb.md) | 152 | `result-track:73f96e65463b9f3edc92d3eb8ecdf55a26a1f5abc914c9194762c55c51961a02` |
| 15 | `theorem` | [StrongEpi.iff_of_arrow_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/strongepi-iff-of-arrow-iso--3c33da59e9b19cc2da07c0b0.md) | 161 | `result-track:3c33da59e9b19cc2da07c0b06f9a99b475f6d3608eb9ff317fa4e5378aa5b693` |
| 16 | `theorem` | [StrongMono.iff_of_arrow_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/strongmono-iff-of-arrow-iso--8061c165de9f0b4ba82f5f3c.md) | 166 | `result-track:8061c165de9f0b4ba82f5f3c74cfdda7c18372405106ef55386f015dafb0912d` |
| 17 | `theorem` | [isIso_of_mono_of_strongEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/isiso-of-mono-of-strongepi--c95e3599ef7cd5e89974f79d.md) | 174 | `result-track:c95e3599ef7cd5e89974f79d4bac599082039427daf3c2811686ce7f4fb7d0d2` |
| 18 | `theorem` | [isIso_of_epi_of_strongMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/isiso-of-epi-of-strongmono--cff0b794d1d25f4b0937ef8d.md) | 178 | `result-track:cff0b794d1d25f4b0937ef8daf3020c002345ed38e0bf5e6d5e74989b54916fb` |
| 19 | `class` | [StrongEpiCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/strongepicategory--b9ea281af030ec72cadb9ae4.md) | 186 | `declaration-track:b9ea281af030ec72cadb9ae48c65a0fcc0b99d6faf81e5c2cd954b88e067f6ec` |
| 20 | `class` | [StrongMonoCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/strongmonocategory--cddaf30aa1a5acc6135fe0d7.md) | 191 | `declaration-track:cddaf30aa1a5acc6135fe0d7970de7c528c76986b9bf8dd444eed4ee925dc835` |
| 21 | `theorem` | [strongEpi_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/strongepi-of-epi--4e15cfdbe3d4f2db82fcb0a1.md) | 197 | `result-track:4e15cfdbe3d4f2db82fcb0a1316b9d61d171324439a39f7e7df6a28f15ca2990` |
| 22 | `theorem` | [strongMono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/strongmono-of-mono--b30b016c322d54e7f49e7b84.md) | 200 | `result-track:b30b016c322d54e7f49e7b840189899f06f82cd033d34feffa23574c66572d02` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/instance--f9e4ee151a1ae92f05f42269.md) | 207 | `declaration-track:f9e4ee151a1ae92f05f422692cf8192bd4ba72c63e5eb13adfcf67dc35f5eefb` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variantcad201ba90bc3da750cef7759304c0957fb643d98b5610d20f9e2e4b53e2c57e.lean/declarations/instance--d91daea03544d57b8c31136d.md) | 216 | `declaration-track:d91daea03544d57b8c31136d0ec3892f28f5c02be48ba3874c64d14bf27a2700` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
