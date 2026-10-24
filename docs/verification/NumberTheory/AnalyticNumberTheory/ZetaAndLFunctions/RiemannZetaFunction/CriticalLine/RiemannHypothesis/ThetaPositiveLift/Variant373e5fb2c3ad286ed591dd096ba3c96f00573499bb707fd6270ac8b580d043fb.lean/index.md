# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51b90303ccec066bdb172fb1d5e3be978adabb2b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51b90303ccec066bdb172fb1d5e3be978adabb2b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiWronskianFourCompactThreeModeDeterminant` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiWronskianFourDeterminantBound` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiThreeModeCoordinateCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean/declarations/thetaphithreemodecoordinatecoefficient--fbd1c91c5e8ebe5a0920ee25.md) | 23 | `declaration-track:fbd1c91c5e8ebe5a0920ee257e85236cf829b4acff486bc42f18b03bbaddf487` |
| 2 | `def` | [thetaPhiThreeModeCoordinateBox](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean/declarations/thetaphithreemodecoordinatebox--aeede22830bf9c48e19311a0.md) | 30 | `declaration-track:aeede22830bf9c48e19311a0f2ada0329ced51504e339d4938156dec7975df5e` |
| 3 | `def` | [thetaPhiThreeModeTailCoordinateBox](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean/declarations/thetaphithreemodetailcoordinatebox--80741af4e95b3fd571e1a782.md) | 36 | `declaration-track:80741af4e95b3fd571e1a7823619399f6b9e4df625e41aedd94e93b37172f237` |
| 4 | `theorem` | [thetaPhiThreeModeJet7_abs_le_box](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean/declarations/thetaphithreemodejet7-abs-le-box--200772805fec58e1ddcba9b2.md) | 43 | `result-track:200772805fec58e1ddcba9b2e3a3e509a5f753aea769b286daa7b7e4696322b7` |
| 5 | `theorem` | [thetaPhiThreeModeRemainderJet7_abs_le_box](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean/declarations/thetaphithreemoderemainderjet7-abs-le-box--bd4d5b6c2ba95fc9ba64d040.md) | 106 | `result-track:bd4d5b6c2ba95fc9ba64d0404f667a5d8bd6136290cf40d7d89852da1a69e6db` |
| 6 | `def` | [thetaPhiThreeModeTailDetErrorScalar](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean/declarations/thetaphithreemodetaildeterrorscalar--5f8729ea5cb02f53b2cd3b47.md) | 129 | `declaration-track:5f8729ea5cb02f53b2cd3b477b83288bc8f0a6c5af863ca492bfaf1222e1a2e8` |
| 7 | `theorem` | [thetaPhiThreeModeTail_box_majorant_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean/declarations/thetaphithreemodetail-box-majorant-identity--7282f2a042184f183287ad4a.md) | 140 | `result-track:7282f2a042184f183287ad4ac80b5a7c5370c2e26effc5f83b9872558dbfcb23` |
| 8 | `def` | [thetaPhiThreeModeBoxMargin](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean/declarations/thetaphithreemodeboxmargin--4e95a1080498d41170d5a614.md) | 159 | `declaration-track:4e95a1080498d41170d5a614d7f63929827c4a82cde1fb76148bba9f1878c734` |
| 9 | `theorem` | [thetaPhiJetDet4_three_mode_ge_box_margin](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean/declarations/thetaphijetdet4-three-mode-ge-box-margin--0de6cd6d1c5974f0add4c5d3.md) | 166 | `result-track:0de6cd6d1c5974f0add4c5d3f5ea355201b581513eb06e64b987b4348669e547` |
| 10 | `theorem` | [thetaExpNegFifteen_eq_fifth_expNegThree](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean/declarations/thetaexpnegfifteen-eq-fifth-expnegthree--1bd69babbfdba0a8fb322707.md) | 204 | `result-track:1bd69babbfdba0a8fb322707d6354b13e84e5eee18391a14c4977c06207a3e42` |
| 11 | `theorem` | [thetaPhiThreeModeTailDetErrorScalar_last_box_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean/declarations/thetaphithreemodetaildeterrorscalar-last-box-nonneg--9deba35e2a34c73645504828.md) | 212 | `result-track:9deba35e2a34c73645504828ea518b11b1bd2e274f868ab37b7d96b35b6666ef` |
| 12 | `theorem` | [thetaPhiThreeModeTailDetErrorScalar_last_box_lt_margin](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean/declarations/thetaphithreemodetaildeterrorscalar-last-box-lt-margin--29aa85e9086c6920c76fa74e.md) | 224 | `result-track:29aa85e9086c6920c76fa74e3c01e432b8ed2a9acb64a0abf4ac96e18899f03a` |
| 13 | `theorem` | [thetaPhiNormalizedJet7_det_pos_of_compact_box](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean/declarations/thetaphinormalizedjet7-det-pos-of-compact-box--0669cd34703bb8b4fec61f3f.md) | 244 | `result-track:0669cd34703bb8b4fec61f3f9269d972018f71bafe131de04b4fd2830ed16ed4` |
| 14 | `theorem` | [thetaPhiNormalizedJet7_det_pos_of_modeA_le_twelve](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean/declarations/thetaphinormalizedjet7-det-pos-of-modea-le-twelve--c5385e9ac1d645e0a18b52ed.md) | 382 | `result-track:c5385e9ac1d645e0a18b52edc93daad4458f04a10e5c25972b84d3970dee94a1` |
| 15 | `theorem` | [thetaPhiWronskianFour_pos_of_modeA_le_twelve](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean/declarations/thetaphiwronskianfour-pos-of-modea-le-twelve--59781e602ac168e73c39b339.md) | 592 | `result-track:59781e602ac168e73c39b339e913d908001a4198cc1511d3cde557faaa2bdb18` |
| 16 | `theorem` | [thetaPhiWronskianFour_positive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb.lean/declarations/thetaphiwronskianfour-positive--767d03fb5823fcf85821dcd7.md) | 604 | `result-track:767d03fb5823fcf85821dcd7445c61cf57b162254641260c16718bc7e21a6864` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
