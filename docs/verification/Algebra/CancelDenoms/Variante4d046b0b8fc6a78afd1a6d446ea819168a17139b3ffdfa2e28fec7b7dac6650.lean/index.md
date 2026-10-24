# Verification target: GRWTSK.Algebra.CancelDenoms.Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5c4dd14d4394c4f6fc3ff7752bd8acb6ce2de2c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/index.md) · [Full source](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5c4dd14d4394c4f6fc3ff7752bd8acb6ce2de2c`.

Source path: `GRWTSK/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Util.SynthesizeUsing` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Tree` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Qq` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/initialize--751b5190dc79aedd27d6815d.md) | 41 | `declaration-track:751b5190dc79aedd27d6815df7735390aa0aa77b1438914ade5c27f52fb1c83f` |
| 2 | `theorem` | [mul_subst](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/mul-subst--3a44ca0ab9d6f324d608c842.md) | 47 | `result-track:3a44ca0ab9d6f324d608c842861bb8f3f69e56b5ffcccbfa12e909efb30a6d4f` |
| 3 | `theorem` | [div_subst](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/div-subst--8ba0a1f8fdcaa683cfd13ef8.md) | 53 | `result-track:8ba0a1f8fdcaa683cfd13ef867cb925ceb31243eff7448467d68ed062cb8fc64` |
| 4 | `theorem` | [cancel_factors_eq_div](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/cancel-factors-eq-div--f21f7b69e195ea3611244fcf.md) | 58 | `result-track:f21f7b69e195ea3611244fcfcf17cddbaf3a70268ab2d4dd28e28c7a86b0ff73` |
| 5 | `theorem` | [add_subst](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/add-subst--21065324102005d621a0b707.md) | 63 | `result-track:21065324102005d621a0b7079041d4f0bccceecdfe27085fe27ad12143bfd956` |
| 6 | `theorem` | [sub_subst](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/sub-subst--85e8e61e72050c7f3668aa6c.md) | 67 | `result-track:85e8e61e72050c7f3668aa6c38be19632f0406db836280829c2b81c2e39d7d50` |
| 7 | `theorem` | [neg_subst](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/neg-subst--46ea1aa11cf4adab5d76b1fa.md) | 71 | `result-track:46ea1aa11cf4adab5d76b1fa34caf877923fb49f4eb5335acc067841f9ccd511` |
| 8 | `theorem` | [cancel_factors_lt](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/cancel-factors-lt--59a7de1b777b3bc9706a21da.md) | 74 | `result-track:59a7de1b777b3bc9706a21daf3374e1e5c0b82389b354920a3d5100de791b52e` |
| 9 | `theorem` | [cancel_factors_le](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/cancel-factors-le--1cb9c8a3d33b45829c5cbc4a.md) | 82 | `result-track:1cb9c8a3d33b45829c5cbc4a559d185160275d759737332c4fdf930646cab8fd` |
| 10 | `theorem` | [cancel_factors_eq](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/cancel-factors-eq--73d35b0d615d8447e31e3209.md) | 90 | `result-track:73d35b0d615d8447e31e32099208331a507dc768825b2d03d1ab8da5f05b8b89` |
| 11 | `theorem` | [cancel_factors_ne](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/cancel-factors-ne--aa99378f8d1d8ba9fa4456aa.md) | 106 | `result-track:aa99378f8d1d8ba9fa4456aa863c06d8303a8548fedf789d14cc55d6fbed307f` |
| 12 | `def` | [findCancelFactor](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/findcancelfactor--cc43ef5aba5cfbe7577de9f8.md) | 119 | `declaration-track:cc43ef5aba5cfbe7577de9f8d07e85b3e6f92d1b8f842b60f4a5bc861b0ee678` |
| 13 | `def` | [synthesizeUsingNormNum](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/synthesizeusingnormnum--f66f117bbcfd5e38f3a12bd1.md) | 142 | `declaration-track:f66f117bbcfd5e38f3a12bd18fd5ad773178baa2e9dbdaaa3141458e773352c0` |
| 14 | `def` | [mkProdPrf](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/mkprodprf--c5d2817842e439db1ee9446f.md) | 153 | `declaration-track:c5d2817842e439db1ee9446f74241e770ea31278a54cb6c7100c925444ab5bac` |
| 15 | `def` | [deriveThms](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/derivethms--cc097d346df117da7f522d5d.md) | 195 | `declaration-track:cc097d346df117da7f522d5dd5ab48c4a41d141106e8aee7b15271a0be68fda4` |
| 16 | `theorem` | [derive_trans](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/derive-trans--579a4b98871c20e386baf734.md) | 199 | `result-track:579a4b98871c20e386baf734bafc361002805f0b371f240e36246c618a7c1adc` |
| 17 | `def` | [derive](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/derive--470617b622e62e306346a9ed.md) | 205 | `declaration-track:470617b622e62e306346a9edf0070d9d5a024d2ebb348f22c6042d2edaa14e47` |
| 18 | `def` | [findCompLemma](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/findcomplemma--76a12d613119dff44f0e67f1.md) | 231 | `declaration-track:76a12d613119dff44f0e67f1ef1650a4c9d9d4384a61ea3d0803d50684ed48ce` |
| 19 | `def` | [cancelDenominatorsInType](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/canceldenominatorsintype--1f48a68de020a60261b12fad.md) | 247 | `declaration-track:1f48a68de020a60261b12fad0f2d1ade6f4cb595ddc3aa152516c14ce22df159` |
| 20 | `syntax` | [(anonymous)](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/syntax--3ebd2c88f683a43adf789ea6.md) | 294 | `declaration-track:3ebd2c88f683a43adf789ea6527711c198b45821b07cf10ed0abf2d53b28150b` |
| 21 | `def` | [cancelDenominatorsAt](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/canceldenominatorsat--7aa4b7f49cd1554410dbabe3.md) | 298 | `declaration-track:7aa4b7f49cd1554410dbabe3c5ed45c2abcd63a2decb4a9a9b3a061edca79228` |
| 22 | `def` | [cancelDenominatorsTarget](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/canceldenominatorstarget--748886b3e4a3892315981f3c.md) | 305 | `declaration-track:748886b3e4a3892315981f3c9b87f3a04940a7f38a68363d3763b1e3ac71c90c` |
| 23 | `def` | [cancelDenominators](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/canceldenominators--a1409e3e86fd526f682bacef.md) | 309 | `declaration-track:a1409e3e86fd526f682bacefba200d9bc294405a397d2c83c2f6c29cb7ae8b6c` |
| 24 | `elab` | [(anonymous)](../../../../mathematics/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/declarations/elab--4e39271a3397329ed308bfca.md) | 313 | `declaration-track:4e39271a3397329ed308bfca15b3dcca74698e5cbe1fa3fca2ddee200038014e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
