# Verification target: GRWTSK.Algebra.CommutativeAlgebra.RuleOfSigns.Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1dcffcc72e321c9d49dd4a56bc9e6e5f5cc2b57",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1dcffcc72e321c9d49dd4a56bc9e6e5f5cc2b57`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signVariations](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean/declarations/signvariations--a87de6a213e9839861f07d56.md) | 50 | `declaration-track:a87de6a213e9839861f07d565586c2cff7d48fe051b5f20711b5899aa5d0addb` |
| 2 | `theorem` | [signVariations_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean/declarations/signvariations-zero--e2afb64a79efa2b48177852f.md) | 54 | `result-track:e2afb64a79efa2b48177852faf0e991673c5a683d49ec5f82b17ea7c771ac85e` |
| 3 | `theorem` | [signVariations_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean/declarations/signvariations-monomial--d1b67fac3c37fa21b08d59fa.md) | 59 | `result-track:d1b67fac3c37fa21b08d59fa017c8604de773f5c0f1ad06eb4bfc0f55759a937` |
| 4 | `theorem` | [signVariations_eraseLead](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean/declarations/signvariations-eraselead--deead5095518bcb56653a581.md) | 65 | `result-track:deead5095518bcb56653a581ed15f71d32b722cc0f073db8054b9e954abe2e48` |
| 5 | `theorem` | [signVariations_eq_eraseLead_add_ite](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean/declarations/signvariations-eq-eraselead-add-ite--b978a25f69c5ad99d6bc6c06.md) | 76 | `result-track:b978a25f69c5ad99d6bc6c060c69834cdda4c590187f07b9e8650e6a6ee93733` |
| 6 | `theorem` | [signVariations_eraseLead_le](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean/declarations/signvariations-eraselead-le--8eb4cae6d4ca1188c998727b.md) | 93 | `result-track:8eb4cae6d4ca1188c998727b7acddfc1e843945492bfa8b86534da8bec77652b` |
| 7 | `theorem` | [signVariations_le_eraseLead_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean/declarations/signvariations-le-eraselead-succ--2d3b10ffb6ab784bb91a7ce6.md) | 99 | `result-track:2d3b10ffb6ab784bb91a7ce6ea1746a1191da2a4906acf24607eb6908da11de8` |
| 8 | `theorem` | [signVariations_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean/declarations/signvariations-neg--43906965d8999713ff4c3691.md) | 112 | `result-track:43906965d8999713ff4c3691f5d644f5bc825720e0d42d0539f194842fd5c638` |
| 9 | `theorem` | [signVariations_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean/declarations/signvariations-c-mul--808d345f23f65e901e27df9b.md) | 124 | `result-track:808d345f23f65e901e27df9bac05519486aec81bec6593059013c8662ca555bc` |
| 10 | `lemma` | [signVariations_eraseLead_mul_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean/declarations/signvariations-eraselead-mul-x-sub-c--5df9ea76224ad2bb5cc43070.md) | 136 | `result-track:5df9ea76224ad2bb5cc430701718ae066dbbda42282e4e975de45b3d83aa88e0` |
| 11 | `lemma` | [succ_signVariations_X_sub_C_mul_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean/declarations/succ-signvariations-x-sub-c-mul-monomial--ceebda93629cc42c7fc4be5c.md) | 178 | `result-track:ceebda93629cc42c7fc4be5ca90e01bd1f8738137a13b71cfd16ed8cbdf7cd89` |
| 12 | `lemma` | [exists_cons_of_leadingCoeff_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean/declarations/exists-cons-of-leadingcoeff-pos--1d79ce59b19037e53bae0491.md) | 193 | `result-track:1d79ce59b19037e53bae049101934fcf7aa3dae1c57dc6b262bb05892baa21a4` |
| 13 | `lemma` | [signVariations_X_sub_C_mul_eraseLead_le](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean/declarations/signvariations-x-sub-c-mul-eraselead-le--a9cd9fedc8ed28e4128fa6bd.md) | 246 | `result-track:a9cd9fedc8ed28e4128fa6bd19698aa825f819c2afa4fb6ef9a7f6fe56a1b08d` |
| 14 | `theorem` | [succ_signVariations_le_X_sub_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean/declarations/succ-signvariations-le-x-sub-c-mul--49e42d485e689f5dc44ded96.md) | 265 | `result-track:49e42d485e689f5dc44ded969d47d3aa893e3d6818cd913a7d9fcfe90da0dfb6` |
| 15 | `theorem` | [roots_countP_pos_le_signVariations](../../../../../mathematics/Algebra/CommutativeAlgebra/RuleOfSigns/Variant3383288e9303f56c4e17b5036b83df6b2dbc56c210bfcc4090a3a30a96cfb9b1.lean/declarations/roots-countp-pos-le-signvariations--80c2604e6804f3142542b0bf.md) | 346 | `result-track:80c2604e6804f3142542b0bf83016ad8f7f3aa6d4046b80fad09cb07691ea8ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
