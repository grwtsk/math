# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LHopital.Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed5037cd0c85e279b7e8da3ec04e11b7258aaa77",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed5037cd0c85e279b7e8da3ec04e11b7258aaa77`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lhopital_zero_right_on_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-right-on-ioo--0ed4e278eb8c93e986d41ecb.md) | 49 | `result-track:0ed4e278eb8c93e986d41ecbfc094bd2ddd0fef287cd0964d0b41a860dac303e` |
| 2 | `theorem` | [lhopital_zero_right_on_Ico](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-right-on-ico--2ba341eeb21e90db51b77f53.md) | 92 | `result-track:2ba341eeb21e90db51b77f53db3d2db28711486ce4d9e3f3090b3d2145e068f2` |
| 3 | `theorem` | [lhopital_zero_left_on_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-left-on-ioo--6830f392f942e0821688f31c.md) | 103 | `result-track:6830f392f942e0821688f31ca54d409ad0bb70f8238ef4371abdb1385c3cb15d` |
| 4 | `theorem` | [lhopital_zero_left_on_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-left-on-ioc--10d5b07091060c6dc849770e.md) | 127 | `result-track:10d5b07091060c6dc849770ea9862817fe9aac731aee5a6186e4b46ddef9f142` |
| 5 | `theorem` | [lhopital_zero_atTop_on_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-attop-on-ioi--98c858ab4e01264942a9c547.md) | 138 | `result-track:98c858ab4e01264942a9c547c2277760d87ac92257b3f9bd69fa62d81a6e7404` |
| 6 | `theorem` | [lhopital_zero_atBot_on_Iio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-atbot-on-iio--2711491d2efcbfc78ecba887.md) | 167 | `result-track:2711491d2efcbfc78ecba8873ea6903836c00e0bd925db0f6b53a622ca165db7` |
| 7 | `theorem` | [lhopital_zero_right_on_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-right-on-ioo--bb726276ce51dcc6b18b4555.md) | 195 | `result-track:bb726276ce51dcc6b18b45557b3b7acb8ce6c63f38fd0ad06585a1ded47ec429` |
| 8 | `theorem` | [lhopital_zero_right_on_Ico](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-right-on-ico--8d66f1db5f95ac4f2a9f0f18.md) | 207 | `result-track:8d66f1db5f95ac4f2a9f0f181ead60e164dae941d47b1685352e5fb4134ace9e` |
| 9 | `theorem` | [lhopital_zero_left_on_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-left-on-ioo--ee788b49533cb55810388fcf.md) | 218 | `result-track:ee788b49533cb55810388fcf72756a820a5ca44093f425715b38f733b6d19880` |
| 10 | `theorem` | [lhopital_zero_atTop_on_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-attop-on-ioi--000a59a2dabf19019cd4c7bd.md) | 230 | `result-track:000a59a2dabf19019cd4c7bd9e88bba13e80f6ff3a1db429a55642ea1e2b452d` |
| 11 | `theorem` | [lhopital_zero_atBot_on_Iio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-atbot-on-iio--beedef7ca475c04c90ee3c3c.md) | 241 | `result-track:beedef7ca475c04c90ee3c3c70904591c32a10a1ba106ac009229bda8f85641c` |
| 12 | `theorem` | [lhopital_zero_nhdsGT](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-nhdsgt--5818c2b047dbf8b45ad2aa61.md) | 265 | `result-track:5818c2b047dbf8b45ad2aa61f7316c0e7977e269bf9b77d91e91787712ccc21c` |
| 13 | `theorem` | [lhopital_zero_nhdsLT](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-nhdslt--6f983d814bc0d7dc94fd6a03.md) | 285 | `result-track:6f983d814bc0d7dc94fd6a0341ba61bf0908d08295a77c2370d0918272b6f422` |
| 14 | `theorem` | [lhopital_zero_nhdsNE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-nhdsne--cb10b70710e354a425783724.md) | 306 | `result-track:cb10b70710e354a42578372497f2e3f6ca570e5b277c49dbd0fd6b26163d2988` |
| 15 | `theorem` | [lhopital_zero_nhds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-nhds--df27398f35d3effd6f7677a7.md) | 319 | `result-track:df27398f35d3effd6f7677a76dc64cbc62463d9c74cd84909370bd8bd2ef72c0` |
| 16 | `theorem` | [lhopital_zero_atTop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-attop--4371810def563c3655463430.md) | 328 | `result-track:4371810def563c36554634301703a643e1fea488bf1998f44972b22b8786f4b2` |
| 17 | `theorem` | [lhopital_zero_atBot](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-atbot--59b0ac1a3f412a4cc4bb085d.md) | 345 | `result-track:59b0ac1a3f412a4cc4bb085d92adbbd77223cc835a9d97035f4161c62f435e38` |
| 18 | `theorem` | [lhopital_zero_nhdsGT](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-nhdsgt--de6b24ea56576ddfad64ee0c.md) | 366 | `result-track:de6b24ea56576ddfad64ee0c23338795133e267ccf0415b18d9fb039ed14a41b` |
| 19 | `theorem` | [lhopital_zero_nhdsLT](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-nhdslt--fcc0b79fdd17fb6a776f05ee.md) | 383 | `result-track:fcc0b79fdd17fb6a776f05ee1138881fe2863b258dc4c6f398c86dabbd6b8cdb` |
| 20 | `theorem` | [lhopital_zero_nhdsNE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-nhdsne--8089848c1f80031691a1755d.md) | 401 | `result-track:8089848c1f80031691a1755dc056689ffadf7e1bc930da9183791d76b6ad9ab0` |
| 21 | `theorem` | [lhopital_zero_nhds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-nhds--2fd55e90298585f33817f870.md) | 414 | `result-track:2fd55e90298585f33817f870e9020d20564893ba23d6e976e346c9008037296a` |
| 22 | `theorem` | [lhopital_zero_atTop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-attop--17fb22475fa35a0c59c82611.md) | 423 | `result-track:17fb22475fa35a0c59c826116ba793e2f0b78617ec7425587e836bf08f0cbdca` |
| 23 | `theorem` | [lhopital_zero_atBot](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/declarations/lhopital-zero-atbot--be4e18a04a40d089bcac3a7c.md) | 437 | `result-track:be4e18a04a40d089bcac3a7c345b2f7a999389489c3b250ae7efb067e5e2eecf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
