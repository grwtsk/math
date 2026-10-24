# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleUnitPoleWinding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4710a505ef0a6ee812fba7fbd78b55a6c5760826",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4710a505ef0a6ee812fba7fbd78b55a6c5760826`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectanglePrincipalPartWinding`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectanglePrincipalPartWinding.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bottomDisplacement](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/bottomdisplacement--43806cfbe6329c69d9a7dee7.md) | 49 | `declaration-track:43806cfbe6329c69d9a7dee7a9a4ac2d46c2ae8494c0f8a9d294e6ccb1a57dcd` |
| 2 | `def` | [topDisplacement](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/topdisplacement--baf77ec59614383925ad1a1f.md) | 53 | `declaration-track:baf77ec59614383925ad1a1febffadcafef36839ecce126136ca8104438c21e1` |
| 3 | `def` | [rightDisplacement](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/rightdisplacement--60214316cb3cc4a84c5335b9.md) | 57 | `declaration-track:60214316cb3cc4a84c5335b95dd4907af625e6d6d4072a2a2cfe856288d751dd` |
| 4 | `def` | [leftReflectedDisplacement](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/leftreflecteddisplacement--2eda8836721a0d7c2cbeb305.md) | 62 | `declaration-track:2eda8836721a0d7c2cbeb305f78b39840eef155c91447606ea1ed2c126c95d83` |
| 5 | `theorem` | [rightDisplacement_bottom](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/rightdisplacement-bottom--89a4cda3e67f73181be66e1f.md) | 65 | `result-track:89a4cda3e67f73181be66e1f555420908e8bfdf18a50a02ebb6e34464f71d105` |
| 6 | `theorem` | [rightDisplacement_top](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/rightdisplacement-top--e6b6f8565bca3e18f41976bb.md) | 71 | `result-track:e6b6f8565bca3e18f41976bb2a3f0d07ea7e8734e25d9fae6af3dc575376042d` |
| 7 | `theorem` | [leftReflectedDisplacement_bottom](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/leftreflecteddisplacement-bottom--6bd1ee30df361a65b153f94f.md) | 77 | `result-track:6bd1ee30df361a65b153f94fcea2ce8113ccda6be9d2a53e54ca6533e312dab2` |
| 8 | `theorem` | [leftReflectedDisplacement_top](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/leftreflecteddisplacement-top--45bf951f7e0c5d5078a8082c.md) | 84 | `result-track:45bf951f7e0c5d5078a8082ce0c1025e8851228742f83672d646b6b801b5a8bb` |
| 9 | `theorem` | [bottomDisplacement_mem_slitPlane](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/bottomdisplacement-mem-slitplane--c82402362cf50273f3f4ea87.md) | 92 | `result-track:c82402362cf50273f3f4ea87d3de950112972a6fdffec43678d58d74a1f4da29` |
| 10 | `theorem` | [topDisplacement_mem_slitPlane](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/topdisplacement-mem-slitplane--2a9d20baf5b58cfd493bea84.md) | 104 | `result-track:2a9d20baf5b58cfd493bea84fef2e8724cc354f3f9ecb423c8dfceb1045865ca` |
| 11 | `theorem` | [rightDisplacement_mem_slitPlane](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/rightdisplacement-mem-slitplane--b5e294e15fa84491016d749a.md) | 116 | `result-track:b5e294e15fa84491016d749a9bb0a0091b7590f9f30b423229133ce86e711cd0` |
| 12 | `theorem` | [leftReflectedDisplacement_mem_slitPlane](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/leftreflecteddisplacement-mem-slitplane--9be8a3760d51e599d79cc1d5.md) | 126 | `result-track:9be8a3760d51e599d79cc1d5523bbdf20a40465ae74e29ab4eefe2f6d3cbfafb` |
| 13 | `theorem` | [hasDerivAt_bottomDisplacement](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/hasderivat-bottomdisplacement--b67d24533960989e20d455f8.md) | 136 | `result-track:b67d24533960989e20d455f876b101ed3f94e7e90a708c55f994cddee914f131` |
| 14 | `theorem` | [hasDerivAt_topDisplacement](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/hasderivat-topdisplacement--2ed387db68010535a1135ada.md) | 144 | `result-track:2ed387db68010535a1135ada9ae8e4c0a1c89381a504739908dd1455416e4ed3` |
| 15 | `theorem` | [hasDerivAt_rightDisplacement](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/hasderivat-rightdisplacement--1c3abd748746f5f3f9620526.md) | 151 | `result-track:1c3abd748746f5f3f9620526b9a0a6d2cde505b445da66f0908b42418c3fa3ac` |
| 16 | `theorem` | [hasDerivAt_leftReflectedDisplacement](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/hasderivat-leftreflecteddisplacement--16674c0867acbc8be5bfd672.md) | 158 | `result-track:16674c0867acbc8be5bfd67225eda03d80cef2d14f374d73064105f8520edc70` |
| 17 | `theorem` | [hasDerivAt_log_bottom](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/hasderivat-log-bottom--c40fbe7b92440096f0b63817.md) | 165 | `result-track:c40fbe7b92440096f0b63817dad72f8f4ba84c360488ef682647ecc4fdf341ee` |
| 18 | `theorem` | [hasDerivAt_log_top](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/hasderivat-log-top--7823257ae97a12b8f237268f.md) | 174 | `result-track:7823257ae97a12b8f237268f624587f52d0edef1e3cd80480cc798e121bfc802` |
| 19 | `theorem` | [hasDerivAt_log_right](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/hasderivat-log-right--b8b3e2ac10037eafe7fc0a65.md) | 183 | `result-track:b8b3e2ac10037eafe7fc0a65d617ff57bf76730bb9bce7f977f636e65a502eec` |
| 20 | `theorem` | [hasDerivAt_log_leftReflected](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/hasderivat-log-leftreflected--10c49b6b3471381b318abd77.md) | 193 | `result-track:10c49b6b3471381b318abd7764ea517c780cd6341ceddf05d185800469445952` |
| 21 | `theorem` | [bottom_unitPole_integral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/bottom-unitpole-integral--7e84f170a438a6e3c8e5903b.md) | 203 | `result-track:7e84f170a438a6e3c8e5903b3a584de5e1ff85d2870d9024db6e91263ae18f70` |
| 22 | `theorem` | [top_unitPole_integral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/top-unitpole-integral--bbbae244be03fdcd9d567f31.md) | 222 | `result-track:bbbae244be03fdcd9d567f31e470dcae92f51e3d17fa80e40a89aaf6b5f9e712` |
| 23 | `theorem` | [right_unitPole_boundaryTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/right-unitpole-boundaryterm--10cf02cd40806ec1bec9c024.md) | 241 | `result-track:10cf02cd40806ec1bec9c0241dae6bf803523c73911907a232cc2aa35d8dc6dd` |
| 24 | `theorem` | [left_unitPole_boundaryTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/left-unitpole-boundaryterm--648ca365911afe5425809bcc.md) | 265 | `result-track:648ca365911afe5425809bcc26902fbab764be9ff24af851077276e3d1e5b2d2` |
| 25 | `theorem` | [log_neg_sub_log_of_im_neg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/log-neg-sub-log-of-im-neg--fbe754cf02c6f233617ec012.md) | 302 | `result-track:fbe754cf02c6f233617ec012a6ca787cf4a8c9fc056f51583ba0386c4e2201e4` |
| 26 | `theorem` | [log_sub_log_neg_of_im_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/log-sub-log-neg-of-im-pos--e6389bf8c3f4c1c7cea1d78e.md) | 311 | `result-track:e6389bf8c3f4c1c7cea1d78e7f1c46193fd6103acf045e37f97cf77f9aa8ab4c` |
| 27 | `theorem` | [rectangleBoundaryIntegral_unitPole](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/rectangleboundaryintegral-unitpole--cfb0181566dd4c2114f857b2.md) | 319 | `result-track:cfb0181566dd4c2114f857b2d31f17ff8bdba035d321bad4df825887ba44b053` |
| 28 | `def` | [rectangleUnitPoleWindingCertificate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/rectangleunitpolewindingcertificate--67745e3ceb0b7e3234df4028.md) | 352 | `declaration-track:67745e3ceb0b7e3234df40283fbdbba909dd9722fe5396e187104bd742c1c0b9` |
| 29 | `def` | [rectanglePrincipalPartWindingCertificate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/declarations/rectangleprincipalpartwindingcertificate--c347b85b4314b5194306c3a2.md) | 359 | `declaration-track:c347b85b4314b5194306c3a264770e0961bc432c28abc6b6d01e5322242509a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
