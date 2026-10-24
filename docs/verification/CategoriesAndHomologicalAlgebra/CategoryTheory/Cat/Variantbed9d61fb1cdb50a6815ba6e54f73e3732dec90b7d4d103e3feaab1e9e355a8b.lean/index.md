# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cat.Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c450448f0ae1c0ea58e23acddce66ca8f832aef",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c450448f0ae1c0ea58e23acddce66ca8f832aef`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Cartesian.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [chosenTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/chosenterminal--68e224fad8e5f0032fba0a4c.md) | 31 | `declaration-track:68e224fad8e5f0032fba0a4c07d4f32cc8c086d3b9cf112bec9b049b77e31bfa` |
| 2 | `def` | [chosenTerminalIsTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/chosenterminalisterminal--99b7a993565cbd53e00e3fa8.md) | 34 | `declaration-track:99b7a993565cbd53e00e3fa856454a928df949a156df47fd6195d2cfe9bc130f` |
| 3 | `def` | [prodCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/prodcone--7c6bf6bd4bcf88e54be460ba.md) | 38 | `declaration-track:7c6bf6bd4bcf88e54be460ba19a17735de4311431c3e9c479bd7acfdffe908cd` |
| 4 | `def` | [isLimitProdCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/islimitprodcone--59a7aa0302c87e6f6d4363a5.md) | 42 | `declaration-track:59a7aa0302c87e6f6d4363a53e916dbf137d1f4a9f0d55f2b170e3267a1097dd` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/instance--6607583149a594fc533aa475.md) | 48 | `declaration-track:6607583149a594fc533aa47540134662cccdadaf2fd52fad5600871e5026b233` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/instance--ec3b66f08867698404c3cf21.md) | 52 | `declaration-track:ec3b66f08867698404c3cf21d1b0d42c0a219266ad10016c64afeabd6fad981b` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/example--848b2c3cd1aa53f6e168eefc.md) | 55 | `declaration-track:848b2c3cd1aa53f6e168eefc1382d236a9847e820bacced1d6144f68d1b02470` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/example--86c752d07e4241fe487cb699.md) | 59 | `declaration-track:86c752d07e4241fe487cb699b9d726b381702780b95cec035a9f394ae2de2c93` |
| 9 | `lemma` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/tensorobj--a51fb0684f521e4a47960d4e.md) | 67 | `result-track:a51fb0684f521e4a47960d4e324291aa19cc512cb4c554293d56f9687dddec68` |
| 10 | `lemma` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/whiskerleft--d7eb2d49d49d430a67a0fcef.md) | 69 | `result-track:d7eb2d49d49d430a67a0fcefd1ccc43749b454307f3f2291f0ee2a4a65577761` |
| 11 | `lemma` | [whiskerLeft_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/whiskerleft-fst--9cf17baf971836034bdb05e7.md) | 72 | `result-track:9cf17baf971836034bdb05e7361be64c067d282133fbb3d0e4fcc552fb84bf6d` |
| 12 | `lemma` | [whiskerLeft_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/whiskerleft-snd--ef7f069161bcc22c2d5f60ef.md) | 75 | `result-track:ef7f069161bcc22c2d5f60efb9d910fdbc34957f7305a54c9b44dadb32260f2c` |
| 13 | `lemma` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/whiskerright--2384d443fb62bab9386ecc2a.md) | 78 | `result-track:2384d443fb62bab9386ecc2a2d74756802f5a1969acbe824a23984c4d10fc874` |
| 14 | `lemma` | [whiskerRight_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/whiskerright-fst--b2a0f076042b0b6089909c09.md) | 81 | `result-track:b2a0f076042b0b6089909c09c0b936e9f9ea94f4a27a952c14ac17046eb64a39` |
| 15 | `lemma` | [whiskerRight_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/whiskerright-snd--3740707ad21d05f122928264.md) | 84 | `result-track:3740707ad21d05f122928264745c5ec71ab0ba6eb2bc556a0f325cf9319c09d5` |
| 16 | `lemma` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/tensorhom--ad29d11ef526eb7554390cc2.md) | 87 | `result-track:ad29d11ef526eb7554390cc2fec5dbeb640b48b13a8ce584ba588f4f22eb6cb5` |
| 17 | `lemma` | [tensorUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/tensorunit--93869583888885e066a9e326.md) | 90 | `result-track:93869583888885e066a9e326c7b0d7790030c45f4273cbfda68c5741155e0c99` |
| 18 | `lemma` | [associator_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/associator-hom--6a044b92a854e43c45957a38.md) | 92 | `result-track:6a044b92a854e43c45957a3850870abc59085965dcedbec9db62db322b564d8b` |
| 19 | `lemma` | [associator_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/associator-inv--72cdfe6d4fa1143648274902.md) | 97 | `result-track:72cdfe6d4fa1143648274902b27865ac92a942cc9184ca71f2838a80fe8f8379` |
| 20 | `lemma` | [leftUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/leftunitor-hom--28cce84126c861d22706cdc6.md) | 101 | `result-track:28cce84126c861d22706cdc6e9a1c132cf131962171c4be936db814caab612b0` |
| 21 | `lemma` | [leftUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/leftunitor-inv--b4ad6eab4fb674dfa413b85a.md) | 103 | `result-track:b4ad6eab4fb674dfa413b85a363ca9073c567fadaa71e6e7e586cb81056308ad` |
| 22 | `lemma` | [rightUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/rightunitor-hom--ad65d9bad1a44d79571c1e20.md) | 105 | `result-track:ad65d9bad1a44d79571c1e20304e702eb6a54d478d4d5815ade9d0ed381b9dd7` |
| 23 | `lemma` | [rightUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantbed9d61fb1cdb50a6815ba6e54f73e3732dec90b7d4d103e3feaab1e9e355a8b.lean/declarations/rightunitor-inv--18697d185ff495cf57c51c04.md) | 107 | `result-track:18697d185ff495cf57c51c042967ce761f0d5a62dad3c0245519bc1de36ea85b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
