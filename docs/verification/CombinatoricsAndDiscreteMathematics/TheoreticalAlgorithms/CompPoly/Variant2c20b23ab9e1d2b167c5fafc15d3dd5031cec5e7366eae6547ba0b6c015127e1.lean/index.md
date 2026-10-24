# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompPoly.Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9dd1bd2c5d838d3b9319e05507001cc0df7ad7ef",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9dd1bd2c5d838d3b9319e05507001cc0df7ad7ef`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalDyadic` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRat.Taylor` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Integrate` — import line 14; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalDyadic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Dy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/dy--033a3b01443031112dd8629f.md) | 39 | `declaration-track:033a3b01443031112dd8629ff28418aa2bcd5ed9cdd161a21f272a7f5a260a4d` |
| 2 | `structure` | [DyPoly](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/dypoly--58ee5159aef6452bc565ab33.md) | 45 | `declaration-track:58ee5159aef6452bc565ab332402d278644d4fffb0dfdb0ba9f8f424b14a8b22` |
| 3 | `def` | [zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/zero--287f4b7de1c815c10a0e481d.md) | 51 | `declaration-track:287f4b7de1c815c10a0e481d2d6dbaa5e3cc9525b1327e3f8ef70e112778a222` |
| 4 | `def` | [const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/const--d9facf87fa8b98f0b8598a4a.md) | 53 | `declaration-track:d9facf87fa8b98f0b8598a4a19605d911b362466deda0ae16722729a8ef95ceb` |
| 5 | `def` | [coeff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/coeff--442bac3929fb43cac2c5ac4f.md) | 56 | `declaration-track:442bac3929fb43cac2c5ac4f85678f52125af27649c62c6c81621dc714cc1672` |
| 6 | `def` | [evalInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/evalinterval--94c6a11a952dbdff29eeb33b.md) | 60 | `declaration-track:94c6a11a952dbdff29eeb33b9c09621868dd8fd8b3fc01924182eb1cfd547baf` |
| 7 | `def` | [add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/add--8cf30cb8aba9c14736c21ed5.md) | 67 | `declaration-track:8cf30cb8aba9c14736c21ed545bb0497909e6fdb78869f5e5ac7f218c9c94bc8` |
| 8 | `def` | [neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/neg--f6217b4a2b03d3278262204a.md) | 71 | `declaration-track:f6217b4a2b03d3278262204a863529f9067351fcc01dd6cfc9c3c86ceff9ca21` |
| 9 | `def` | [scale](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/scale--55df2b31586b7f5b22564ee7.md) | 75 | `declaration-track:55df2b31586b7f5b22564ee748a6a953646d0b705aea65f69c3d301bdf1717c9` |
| 10 | `def` | [normalize](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/normalize--fe40f8a8d0020a125b4af9c3.md) | 79 | `declaration-track:fe40f8a8d0020a125b4af9c373064571ba17f1fd5c40e479e4f42f1558ca7ccd` |
| 11 | `def` | [mulTrunc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/multrunc--58647c4f3a9c0e32f4af0797.md) | 84 | `declaration-track:58647c4f3a9c0e32f4af0797fcb47365c4598f9a2773546ce5cc407e5e6ea52d` |
| 12 | `def` | [mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/mul--e47bfb162a897f8f0650ffc1.md) | 97 | `declaration-track:e47bfb162a897f8f0650ffc162a0d4394a6f87f7c0027892320c676e83c1a883` |
| 13 | `def` | [tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/tail--44a07119b8f7925c5a360f44.md) | 110 | `declaration-track:44a07119b8f7925c5a360f44c94fc885773265ab10cf7c1874fc5d03cdfcf467` |
| 14 | `def` | [antiderivativeCoeffDown](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/antiderivativecoeffdown--5d02b2f6c41d09e13be2f218.md) | 118 | `declaration-track:5d02b2f6c41d09e13be2f218271bdc04b710e2b47d0bcdd4de3cc931ff402ba1` |
| 15 | `def` | [antiderivativeCoeffUp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/antiderivativecoeffup--cecc89ef59aa27714f5df8cd.md) | 129 | `declaration-track:cecc89ef59aa27714f5df8cda2a03dea8a4d1b8f1368c7d74c7861fad22473ff` |
| 16 | `def` | [definiteIntegral](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/definiteintegral--4a3674e39843c51e20bd44da.md) | 135 | `declaration-track:4a3674e39843c51e20bd44da88df6a6a105d1d6ff3b8812993e538b3866987cc` |
| 17 | `structure` | [DyTM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/dytm--3ad35c30ebaa8036a9e6f269.md) | 161 | `declaration-track:3ad35c30ebaa8036a9e6f2693e3c0cbffedceeb36a44cdefc98764c04e8aa962` |
| 18 | `def` | [shiftedDomain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/shifteddomain--95c575af1426c3b088ff4c8f.md) | 171 | `declaration-track:95c575af1426c3b088ff4c8f95017720b94d06414c352a6ac53246870ceb3d08` |
| 19 | `def` | [bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/bound--27f8ccc5214c0b340e341d58.md) | 174 | `declaration-track:27f8ccc5214c0b340e341d58e3db458a6cc89611849f4e73a13a218fd84915d0` |
| 20 | `def` | [const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/const--b06bc12e56211899be15e610.md) | 177 | `declaration-track:b06bc12e56211899be15e610ac3df27948b7fd2e6875b7410daf1cb7f0d1016d` |
| 21 | `def` | [identity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/identity--2b5eac0bfc9627ac227cf512.md) | 184 | `declaration-track:2b5eac0bfc9627ac227cf5125d3da1fc6d2d20eb513b76674051346168740da0` |
| 22 | `def` | [add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/add--1c0242878594a4ce48b0514e.md) | 192 | `declaration-track:1c0242878594a4ce48b0514ef69d91cadd139d615ea5b2827a84ce2531649629` |
| 23 | `def` | [neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/neg--c0ef5af795dbb84e38d5d7b5.md) | 199 | `declaration-track:c0ef5af795dbb84e38d5d7b57da7d9e216377a3d0123e660a81523a2eac53907` |
| 24 | `def` | [scaleDyadic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/scaledyadic--3a3815ee9c7013bebf182370.md) | 206 | `declaration-track:3a3815ee9c7013bebf1823701778ab5b681662a82859e759d92f4c63f03767e0` |
| 25 | `def` | [mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/mul--04849c105d2ecd092ed09c75.md) | 214 | `declaration-track:04849c105d2ecd092ed09c758ad17af311e08c56b2d8cf551e8b7d26d65bb5b0` |
| 26 | `def` | [inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/inv--06e8378260e277c350280421.md) | 235 | `declaration-track:06e8378260e277c350280421708d2110e2e7e4b488a8e93aafcc318a994351d9` |
| 27 | `def` | [log](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/log--f32621548d6c53507a8f5020.md) | 282 | `declaration-track:f32621548d6c53507a8f50206c044a3f7eddb4457f535bf7cdd7796d432c6d35` |
| 28 | `def` | [fromInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/frominterval--0ec628fc1784936ff11da543.md) | 345 | `declaration-track:0ec628fc1784936ff11da54314d0ae0d3fb8cd802912591751222ffcbb53e180` |
| 29 | `def` | [dyTMFromExpr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/dytmfromexpr--8923b26c42ee6bcb1e4a018f.md) | 353 | `declaration-track:8923b26c42ee6bcb1e4a018fd47caab007ff14acd7065fd0ab801304dcf0f2f1` |
| 30 | `def` | [integrateDyTM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/integratedytm--238a0b464ff454c17c1e1e28.md) | 395 | `declaration-track:238a0b464ff454c17c1e1e28f56ebbf4400a2fa23c8a9192abad73c5a78bc435` |
| 31 | `def` | [integrateDyadicFallback](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/integratedyadicfallback--24466e566f0f3cc07cfa115b.md) | 409 | `declaration-track:24466e566f0f3cc07cfa115b5ae5c199ef58c4b2a17936f104222b915a45e8c5` |
| 32 | `def` | [integrateDyPolyAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/integratedypolyaux--97619f53b7a71985d7ee3326.md) | 417 | `declaration-track:97619f53b7a71985d7ee332676a1ba2b6110686df01fdf11474f36a752780ae3` |
| 33 | `def` | [integrateDyPoly](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/integratedypoly--7c93227715983feb8aa40970.md) | 426 | `declaration-track:7c93227715983feb8aa4097012650b95e8ae98e739ce4205520a4f1b0f7ea766` |
| 34 | `def` | [checkIntegralLowerBoundDyPoly](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/checkintegrallowerbounddypoly--6bbc209c19a4b74372fc4e4a.md) | 431 | `declaration-track:6bbc209c19a4b74372fc4e4a0b8342b4dbdef94d815fe4ebf7532283f314399c` |
| 35 | `def` | [checkIntegralUpperBoundDyPoly](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/declarations/checkintegralupperbounddypoly--270ada20dae5928a1fe1a5ea.md) | 437 | `declaration-track:270ada20dae5928a1fe1a5ea6623f9b1af01168ff4a38cee301d141a40b6fbe0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
