# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bifunctor.Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cebab3a5a4b271b985f4d249920df7546ed5343",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cebab3a5a4b271b985f4d249920df7546ed5343`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Functor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sum.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/bifunctor--32c2cc924fed565e018b4a6b.md) | 42 | `declaration-track:32c2cc924fed565e018b4a6b0a8734c16391ed12b65d4f50ecb3add7179c3b99` |
| 2 | `class` | [LawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/lawfulbifunctor--57ede9abb050dd84cf0b4eb9.md) | 49 | `declaration-track:57ede9abb050dd84cf0b4eb9804743472edb66e52e770aae1b8a404fe1a81814` |
| 3 | `def` | [fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/fst--bdab4e3a335ca96031ac6989.md) | 72 | `declaration-track:bdab4e3a335ca96031ac6989394870307ef6c63e68a513b304fd3ee1a05650b0` |
| 4 | `def` | [snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/snd--e4d1a496d13c2ba03a44e862.md) | 78 | `declaration-track:e4d1a496d13c2ba03a44e86211dcacc5034592284f835041727e9c3e872b9f36` |
| 5 | `theorem` | [id_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/id-fst--12855599a3572016b8d2dfb1.md) | 85 | `result-track:12855599a3572016b8d2dfb15fa9bd8ba39608b06a3597ad86f327ea11013f0f` |
| 6 | `theorem` | [id_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/id-snd--4cfdc58918d1515a8cffccff.md) | 91 | `result-track:4cfdc58918d1515a8cffccff3b443f0cb4bf37f5545f0fe0191a992ae39ac9df` |
| 7 | `theorem` | [comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/comp-fst--8c9c44ceca1886366c9ee6a2.md) | 97 | `result-track:8c9c44ceca1886366c9ee6a2483816236ec54c660e1c0880495a5bda2ebb3fe3` |
| 8 | `theorem` | [fst_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/fst-snd--52e742b9d8c7dfd3123bee5b.md) | 103 | `result-track:52e742b9d8c7dfd3123bee5b50c2fe7bc9d2c0f4ac69d46188f09c9475bbf424` |
| 9 | `theorem` | [snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/snd-fst--2d69af3a533447895a0550a4.md) | 109 | `result-track:2d69af3a533447895a0550a4b340ac9a92a54cf0f73e64c91c8203019337d564` |
| 10 | `theorem` | [comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/comp-snd--dbddce5659ccca71434fe078.md) | 115 | `result-track:dbddce5659ccca71434fe0784f6110bd86ece07a3088accc0c48822a1f8cfc16` |
| 11 | `instance` | [Prod.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/prod-bifunctor--150f17a535895dfa6058ec2e.md) | 128 | `declaration-track:150f17a535895dfa6058ec2e6db32e3b32b09438ea249a6d9b3c7cbf99799cbb` |
| 12 | `instance` | [Prod.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/prod-lawfulbifunctor--f5fc59f67a5bb646097ccdae.md) | 131 | `declaration-track:f5fc59f67a5bb646097ccdae443ac879fa28ee3bea034a84635ac53559d04f1e` |
| 13 | `instance` | [Bifunctor.const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/bifunctor-const--13994bba82e9e03c25b835d7.md) | 135 | `declaration-track:13994bba82e9e03c25b835d7c1c90e141c3977e789be6f39385d319beda6d712` |
| 14 | `instance` | [LawfulBifunctor.const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/lawfulbifunctor-const--fad59b7b4063ad0e822806d9.md) | 138 | `declaration-track:fad59b7b4063ad0e822806d9034aea9af9507007e7740b89a954291249a46599` |
| 15 | `instance` | [Bifunctor.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/bifunctor-flip--02593384d87a28ff9932a907.md) | 141 | `declaration-track:02593384d87a28ff9932a90736e66e9ce5c213373dad2a0dc1d753ecd53bf1c5` |
| 16 | `instance` | [LawfulBifunctor.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/lawfulbifunctor-flip--17a07a3431131f0872d3822c.md) | 145 | `declaration-track:17a07a3431131f0872d3822c7540ec7d932eb6961f36368386711dfddc4e2891` |
| 17 | `instance` | [Sum.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/sum-bifunctor--58d7b2042f4b3dfa74982319.md) | 149 | `declaration-track:58d7b2042f4b3dfa74982319252ebee383306a464e015f8f202a868a23b860d4` |
| 18 | `instance` | [Sum.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/sum-lawfulbifunctor--61d2f5c712e78301b85804e4.md) | 152 | `declaration-track:61d2f5c712e78301b85804e4a8c4c333ba05e2d678a356d8c4963d1bb89ba762` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/instance--380e2e8c800c9680ea7ab1d7.md) | 158 | `declaration-track:380e2e8c800c9680ea7ab1d714b92a458314be63ce9444f13d280a908a8db68b` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/instance--cf0bae0b09c50150b0e4cb28.md) | 161 | `declaration-track:cf0bae0b09c50150b0e4cb281d07ed53e08a2be688439187d464f35d783bb2a6` |
| 21 | `instance` | [Function.bicompl.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/function-bicompl-bifunctor--79696e5f10899171aa0c31d1.md) | 170 | `declaration-track:79696e5f10899171aa0c31d1f07451949493b30a3285ca00ab4c36abc5e0cc11` |
| 22 | `instance` | [Function.bicompl.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/function-bicompl-lawfulbifunctor--2687fcd683b4257e36d0381a.md) | 174 | `declaration-track:2687fcd683b4257e36d0381a8c59897bc6c5cf1a6463451eeb5997cd1495cb57` |
| 23 | `instance` | [Function.bicompr.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/function-bicompr-bifunctor--da5ad5388ba2dd584516198a.md) | 185 | `declaration-track:da5ad5388ba2dd584516198ad7dce30132b181449be8c5320c1e6e415a619369` |
| 24 | `instance` | [Function.bicompr.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6938eb13706086708a38938596e2ebd5e281f5c1528b8594f9e4f7429ff0e228.lean/declarations/function-bicompr-lawfulbifunctor--208892ee3afecf7efa31fd98.md) | 189 | `declaration-track:208892ee3afecf7efa31fd98f51ece87ff6564c9ad82d4ef15733408e422c13e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
