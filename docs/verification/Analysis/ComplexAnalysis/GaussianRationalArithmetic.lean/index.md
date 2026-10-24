# Verification target: GRWTSK.Analysis.Complex.GaussianRationalArithmetic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a107790fc7b88f039af17678aeb843736a0d427",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/GaussianRationalArithmetic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a107790fc7b88f039af17678aeb843736a0d427`.

Source path: `GRWTSK/Analysis/Complex/GaussianRationalArithmetic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/GaussianRationalArithmetic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.SymmetricPairRational`](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofRat](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/ofrat--6dde1e1444143784967edd16.md) | 19 | `declaration-track:6dde1e1444143784967edd16a1ca888e32a03bf8fe741114612c416c28d7f424` |
| 2 | `def` | [qadd](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/qadd--f3d25f7d40aa30da4e67608b.md) | 20 | `declaration-track:f3d25f7d40aa30da4e67608b1536aea1c3249f7b39a592f1f3f4b8574f61f134` |
| 3 | `def` | [qsub](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/qsub--605445a3a365463010f0e673.md) | 21 | `declaration-track:605445a3a365463010f0e673226e6b227f8dfd7af92116c661eba1749284536f` |
| 4 | `def` | [qmul](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/qmul--e3d696ba1898998cdc4fa5af.md) | 22 | `declaration-track:e3d696ba1898998cdc4fa5aff52483fbca35bd7090e175d1247476b86c11db87` |
| 5 | `def` | [qscale](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/qscale--cfc3112a0056e995a98f6aee.md) | 23 | `declaration-track:cfc3112a0056e995a98f6aee809db8388b6806e92759fb5fe4d87f725bb67b1b` |
| 6 | `def` | [qpow](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/qpow--fef0de0f3c4038baeb9daf11.md) | 24 | `declaration-track:fef0de0f3c4038baeb9daf11ec36d9d18e862c89fafec8c6a4c1b188714f3cac` |
| 7 | `def` | [qsum](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/qsum--a34c35ff7b0a452396d1b6c1.md) | 28 | `declaration-track:a34c35ff7b0a452396d1b6c1fd4bf76f0eff3b0fe4f39feff31475b528915e8b` |
| 8 | `def` | [l1](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/l1--9648e4342e578fd84a850526.md) | 31 | `declaration-track:9648e4342e578fd84a850526e0de33e1527d989d7fc78a52da3ec152983b03f3` |
| 9 | `theorem` | [value_ofRat](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/value-ofrat--eea24d069fc16c36360a5d90.md) | 33 | `result-track:eea24d069fc16c36360a5d906dd1c723a776207cf97c1520fad0efca839e49c0` |
| 10 | `theorem` | [value_qadd](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/value-qadd--d8649095a0736ee3b36a0bbb.md) | 35 | `result-track:d8649095a0736ee3b36a0bbb9b520a462d57a7a52dd4309ba241b49537896590` |
| 11 | `theorem` | [value_qsub](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/value-qsub--5cafb7fe49833f020086d5dd.md) | 37 | `result-track:5cafb7fe49833f020086d5dde476b1421ddbd84502b0f2c171071ad1d6e4ad8c` |
| 12 | `theorem` | [value_qmul](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/value-qmul--f673df242eee5365bf223129.md) | 39 | `result-track:f673df242eee5365bf2231299cdc98904287f6d4c2f3eb8e388c46219ad60056` |
| 13 | `theorem` | [value_qscale](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/value-qscale--769129e21bf2ab207daa6828.md) | 41 | `result-track:769129e21bf2ab207daa6828ad3d859084327ef1c5aa4f1af82904c925d80cbb` |
| 14 | `theorem` | [value_qpow](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/value-qpow--5243a0e2d58b962ca51d2bb5.md) | 44 | `result-track:5243a0e2d58b962ca51d2bb5f35a92b1043a0bede017c443f188d1a0a3237118` |
| 15 | `theorem` | [value_qsum](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/value-qsum--f42c8a8fe2029bcc68821e31.md) | 48 | `result-track:f42c8a8fe2029bcc68821e31cd1c6dfd7edb63bcc11b6a0044189433398cb560` |
| 16 | `lemma` | [l1_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/l1-nonneg--7a0ea577769ae48990601a36.md) | 52 | `result-track:7a0ea577769ae48990601a36ffcc3fd7d5b34873d9f03a2c6f9c25e7430b915c` |
| 17 | `lemma` | [norm_value_le_l1](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/norm-value-le-l1--bca4d66590b5510befe30043.md) | 54 | `result-track:bca4d66590b5510befe30043b150623009b578e2d08641576594bf61af10504f` |
| 18 | `def` | [expTaylor](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/exptaylor--a513cb229b6d732e55f2ccf8.md) | 59 | `declaration-track:a513cb229b6d732e55f2ccf801647ec9410dadbc8bf0931fb0747220f6d6fdf5` |
| 19 | `lemma` | [expTaylor_value](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/exptaylor-value--1352cb5c1955ed296b73a9fb.md) | 62 | `result-track:1352cb5c1955ed296b73a9fbc2d2b82e7a97bc1cced120b40f1154958a6b42fa` |
| 20 | `lemma` | [recenter_bound](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/declarations/recenter-bound--92395b2653307c2bd6f39259.md) | 71 | `result-track:92395b2653307c2bd6f392592cdca2c1c6157492e7896f0077c25383e82b87c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
