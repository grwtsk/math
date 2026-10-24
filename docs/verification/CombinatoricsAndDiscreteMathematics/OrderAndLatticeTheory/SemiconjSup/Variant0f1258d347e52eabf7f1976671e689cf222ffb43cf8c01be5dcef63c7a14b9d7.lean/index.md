# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SemiconjSup.Variant0f1258d347e52eabf7f1976671e689cf222ffb43cf8c01be5dcef63c7a14b9d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6649e4377d723af8d6804dccc6b8318456c0b31e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant0f1258d347e52eabf7f1976671e689cf222ffb43cf8c01be5dcef63c7a14b9d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant0f1258d347e52eabf7f1976671e689cf222ffb43cf8c01be5dcef63c7a14b9d7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant0f1258d347e52eabf7f1976671e689cf222ffb43cf8c01be5dcef63c7a14b9d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6649e4377d723af8d6804dccc6b8318456c0b31e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant0f1258d347e52eabf7f1976671e689cf222ffb43cf8c01be5dcef63c7a14b9d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant0f1258d347e52eabf7f1976671e689cf222ffb43cf8c01be5dcef63c7a14b9d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.End` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Conjugate` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.OrderIso` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrdContinuous` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsOrderRightAdjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant0f1258d347e52eabf7f1976671e689cf222ffb43cf8c01be5dcef63c7a14b9d7.lean/declarations/isorderrightadjoint--6a3fd1cc27d73266c775053e.md) | 51 | `declaration-track:6a3fd1cc27d73266c775053e4a81c3351812cbe69dbe7a7acb4997f3b8f02ea9` |
| 2 | `theorem` | [isOrderRightAdjoint_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant0f1258d347e52eabf7f1976671e689cf222ffb43cf8c01be5dcef63c7a14b9d7.lean/declarations/isorderrightadjoint-ssup--eba8c004480d32b688092674.md) | 54 | `result-track:eba8c004480d32b6880926749a5f87312deaba606613d1f2e18f0251c8daaa0a` |
| 3 | `theorem` | [isOrderRightAdjoint_csSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant0f1258d347e52eabf7f1976671e689cf222ffb43cf8c01be5dcef63c7a14b9d7.lean/declarations/isorderrightadjoint-cssup--171c3c61f0cf4ede3d5c1c54.md) | 57 | `result-track:171c3c61f0cf4ede3d5c1c54cb09da46543b6846d166b879bc8a8b76ea8d6dfc` |
| 4 | `theorem` | [unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant0f1258d347e52eabf7f1976671e689cf222ffb43cf8c01be5dcef63c7a14b9d7.lean/declarations/unique--6477ec07d1116081048bc491.md) | 63 | `result-track:6477ec07d1116081048bc4911fae80254aa1e7241ae2a23fdab5cf6dbab5a871` |
| 5 | `theorem` | [right_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant0f1258d347e52eabf7f1976671e689cf222ffb43cf8c01be5dcef63c7a14b9d7.lean/declarations/right-mono--74254f20c00af61eb3968a23.md) | 67 | `result-track:74254f20c00af61eb3968a23da9503e9922846bba46e1faca01330179b36961c` |
| 6 | `theorem` | [orderIso_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant0f1258d347e52eabf7f1976671e689cf222ffb43cf8c01be5dcef63c7a14b9d7.lean/declarations/orderiso-comp--651bb288f7d19aca04f1b421.md) | 70 | `result-track:651bb288f7d19aca04f1b4218da1703551e00d1d50c4040007e41e128cf0c5d0` |
| 7 | `theorem` | [comp_orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant0f1258d347e52eabf7f1976671e689cf222ffb43cf8c01be5dcef63c7a14b9d7.lean/declarations/comp-orderiso--2d73947d87d2e8827424cfb4.md) | 74 | `result-track:2d73947d87d2e8827424cfb46a4d59618a076c0986f12b4634d77a849eaaf445` |
| 8 | `theorem` | [Semiconj.symm_adjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant0f1258d347e52eabf7f1976671e689cf222ffb43cf8c01be5dcef63c7a14b9d7.lean/declarations/semiconj-symm-adjoint--766a756d6effeead22aaee4a.md) | 91 | `result-track:766a756d6effeead22aaee4a6ed2ddc7081cd970cbab1154409e29dfe5ae7545` |
| 9 | `theorem` | [semiconj_of_isLUB](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant0f1258d347e52eabf7f1976671e689cf222ffb43cf8c01be5dcef63c7a14b9d7.lean/declarations/semiconj-of-islub--2f55e313157fb0eb61d27794.md) | 100 | `result-track:2f55e313157fb0eb61d277947e141fa092eba03996955017e80ae7e553aac035` |
| 10 | `theorem` | [sSup_div_semiconj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant0f1258d347e52eabf7f1976671e689cf222ffb43cf8c01be5dcef63c7a14b9d7.lean/declarations/ssup-div-semiconj--6d7aaa5b94163383f623bb53.md) | 113 | `result-track:6d7aaa5b94163383f623bb53be7c08d06a4081a48c7c62f000b32b6cd8a39bd7` |
| 11 | `theorem` | [csSup_div_semiconj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant0f1258d347e52eabf7f1976671e689cf222ffb43cf8c01be5dcef63c7a14b9d7.lean/declarations/cssup-div-semiconj--f77fef6b8f85eab1c88bffee.md) | 123 | `result-track:f77fef6b8f85eab1c88bffee0bcfbda372f57acc33f4552578c6dbf34c7e4215` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
