# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenSourceFrame

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21eff5b8ad91d9884ad1b40437cbab9479abfcf6",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21eff5b8ad91d9884ad1b40437cbab9479abfcf6`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.MellinNormalizedGrowingCellPacking`](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedGrowingCellPacking.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.VonMangoldt.ComplexReadout`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredLogarithmAtom](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/declarations/centeredlogarithmatom--e16e81ce82653e03afe5574d.md) | 48 | `declaration-track:e16e81ce82653e03afe5574df59f7f6f6f4175fb77ba2cb511227f04200a104d` |
| 2 | `def` | [primeGreenFrameAtom](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/declarations/primegreenframeatom--bb89dca8c0dc89d1a179bd63.md) | 51 | `declaration-track:bb89dca8c0dc89d1a179bd63ba7a75ae2ffadd79c87856e1bfffa31508643d4b` |
| 3 | `def` | [greenSourceFrameValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/declarations/greensourceframevalue--74fbd02de63852c20d3ce522.md) | 54 | `declaration-track:74fbd02de63852c20d3ce522b83adf93a5e123e4600af631dde664a1a06e66cc` |
| 4 | `theorem` | [greenSourceFrameValue_eq_centeredResidual](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/declarations/greensourceframevalue-eq-centeredresidual--edaaaaeeb4a124c68d8dbbe2.md) | 58 | `result-track:edaaaaeeb4a124c68d8dbbe2e74269cf20ad1c3c6c43ad3724e5abbb459b07d5` |
| 5 | `theorem` | [greenEnergy_eq_sourceFrame](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/declarations/greenenergy-eq-sourceframe--2b5aced7ab70b648bbd4e5bc.md) | 69 | `result-track:2b5aced7ab70b648bbd4e5bc232960b95efe53632fcd5b16234d8e3ca583ba9b` |
| 6 | `def` | [greenSourceFrameNormSq](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/declarations/greensourceframenormsq--0f0866a80e1b153ce53172ba.md) | 78 | `declaration-track:0f0866a80e1b153ce53172ba2824aea84c5e9dcf20348cdabe219aa941e335a6` |
| 7 | `theorem` | [greenSourceFrameNormSq_eq_augmentedEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/declarations/greensourceframenormsq-eq-augmentedenergy--846b88a6d6311fb94d66afff.md) | 82 | `result-track:846b88a6d6311fb94d66afffc65e708fbfbb957f7c4a4b669c5f563f8863491b` |
| 8 | `theorem` | [greenSourceFrameNormSq_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/declarations/greensourceframenormsq-nonnegative--bd15678af8cdd3f24cb9f71c.md) | 89 | `result-track:bd15678af8cdd3f24cb9f71ce78ae83ca65c008652eff3b8d4f1fb37ec93c8b2` |
| 9 | `theorem` | [window_card](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/declarations/window-card--98e4c3a35a46d67e666799f2.md) | 95 | `result-track:98e4c3a35a46d67e666799f2fe560148ce960defddeb18b9d27d642ac063fc5b` |
| 10 | `def` | [greenSourceFrameAtomCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/declarations/greensourceframeatomcount--ae3e9d79626e01015197cf15.md) | 100 | `declaration-track:ae3e9d79626e01015197cf154f1f5ce3ef220e57edd13099e36bb5e646f24c7a` |
| 11 | `theorem` | [greenSourceFrameAtomCount_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/declarations/greensourceframeatomcount-eq--c18a09649df6f9b4878af7ed.md) | 103 | `result-track:c18a09649df6f9b4878af7ed77c36a9b42e4b927abd09ff7b56a913cacd0013e` |
| 12 | `theorem` | [dyadicGreenSourceFrameAtomCount_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/declarations/dyadicgreensourceframeatomcount-eq--fabc4c1a64421eaf193b34a6.md) | 108 | `result-track:fabc4c1a64421eaf193b34a6647f8b0735d83b313499d4dcc67cf1c45b255ff2` |
| 13 | `def` | [greenSourceFrameReadout](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/declarations/greensourceframereadout--bd2a1ac9eba051a8ba1b9be1.md) | 114 | `declaration-track:bd2a1ac9eba051a8ba1b9be12b91a6e65dcc35546f7c93c58cd0e211119356e7` |
| 14 | `theorem` | [action_eq_greenSourceFrameReadout](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/declarations/action-eq-greensourceframereadout--91fb4c7cc36b4b543b062646.md) | 122 | `result-track:91fb4c7cc36b4b543b062646e9893df1cf76ad4d169c71d7e07ae51f69da27fb` |
| 15 | `theorem` | [safePlusDyadicAction_eq_frameReadout](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/declarations/safeplusdyadicaction-eq-framereadout--50df03429f6a685c6eacff66.md) | 133 | `result-track:50df03429f6a685c6eacff665e03463fa56c72e5bd1e224c92f2df55618b46c7` |
| 16 | `theorem` | [safeMinusDyadicAction_eq_frameReadout](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/declarations/safeminusdyadicaction-eq-framereadout--9029ec5e83e337f12ec53d6d.md) | 142 | `result-track:9029ec5e83e337f12ec53d6dad6c4b4f7e1d353f6eb7e069fcdd5ce4d50a1898` |
| 17 | `theorem` | [safeCenterDyadicAction_eq_frameReadout](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/declarations/safecenterdyadicaction-eq-framereadout--be08fa7352fbbcc3f3b3d8e6.md) | 151 | `result-track:be08fa7352fbbcc3f3b3d8e67a22707a3adfc63be86c0733a9cd11db268f033d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
