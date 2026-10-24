# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FaaDiBruno.Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0f50ac31fb17a14f013b69198cb12da51c07864",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0f50ac31fb17a14f013b69198cb12da51c07864`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iteratedDerivWithin_vcomp_eq_sum_orderedFinpartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/declarations/iteratedderivwithin-vcomp-eq-sum-orderedfinpartition--1582e0e977ee3ef39d627275.md) | 50 | `result-track:1582e0e977ee3ef39d627275cddfe84c36972b90046a9a38ea5ba65d4d1e9711` |
| 2 | `theorem` | [iteratedDeriv_vcomp_eq_sum_orderedFinpartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/declarations/iteratedderiv-vcomp-eq-sum-orderedfinpartition--479f2340ee24de853a132c6f.md) | 60 | `result-track:479f2340ee24de853a132c6fee1f987b0d113012da1f76105268d3c00b58400d` |
| 3 | `theorem` | [iteratedDerivWithin_vcomp_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/declarations/iteratedderivwithin-vcomp-two--ee398958bf34e52ade7160b2.md) | 69 | `result-track:ee398958bf34e52ade7160b296e328edf78262df4fcae95c8d0a2abb86f84a20` |
| 4 | `theorem` | [iteratedDeriv_vcomp_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/declarations/iteratedderiv-vcomp-two--8d8bbb21055acd2768a72e92.md) | 84 | `result-track:8d8bbb21055acd2768a72e92db0ceae1522cfdcf87cb3ef5ce7acff48e93e5e4` |
| 5 | `theorem` | [iteratedDerivWithin_vcomp_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/declarations/iteratedderivwithin-vcomp-three--d9856a43f15d9ceb37cf3579.md) | 92 | `result-track:d9856a43f15d9ceb37cf3579f9905967c59798828d0185397dd246eb9ee61d20` |
| 6 | `theorem` | [iteratedDeriv_vcomp_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/declarations/iteratedderiv-vcomp-three--2103a860ed6f388134038872.md) | 119 | `result-track:2103a860ed6f388134038872e4a6a5c8949c0143a91b8cb5d5bc5be6562cdff4` |
| 7 | `theorem` | [iteratedDerivWithin_scomp_eq_sum_orderedFinpartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/declarations/iteratedderivwithin-scomp-eq-sum-orderedfinpartition--543dd19cfd8d22eb0eeeee79.md) | 137 | `result-track:543dd19cfd8d22eb0eeeee7906ca2c273fa4ddb3447e3bf0a56b27dce8fec71d` |
| 8 | `theorem` | [iteratedDeriv_scomp_eq_sum_orderedFinpartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/declarations/iteratedderiv-scomp-eq-sum-orderedfinpartition--12f79709f6060c8618847014.md) | 147 | `result-track:12f79709f6060c86188470146be90f1da31d849d40f7c7e3ac617697aff1617c` |
| 9 | `theorem` | [iteratedDerivWithin_scomp_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/declarations/iteratedderivwithin-scomp-two--55c6b77d230d990ec56a0e8a.md) | 155 | `result-track:55c6b77d230d990ec56a0e8a16054ccbc9943adef564c0c65de6713a731b7130` |
| 10 | `theorem` | [iteratedDeriv_scomp_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/declarations/iteratedderiv-scomp-two--ecfa0ba98f654e2c42f85d4a.md) | 164 | `result-track:ecfa0ba98f654e2c42f85d4ab6be1069bf8d5264a947a6072bde4830803c39e5` |
| 11 | `theorem` | [iteratedDerivWithin_scomp_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/declarations/iteratedderivwithin-scomp-three--be0f652b2caf7ac9d5887bbf.md) | 171 | `result-track:be0f652b2caf7ac9d5887bbf2fbf220fe8dcd7459c89e3070b10732d07bff87c` |
| 12 | `theorem` | [iteratedDeriv_scomp_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/declarations/iteratedderiv-scomp-three--6994e13b8d765bbf03338fbd.md) | 188 | `result-track:6994e13b8d765bbf03338fbd8deec2626f7a3a05d131959e1b24b998d745a407` |
| 13 | `theorem` | [iteratedDerivWithin_comp_eq_sum_orderedFinpartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/declarations/iteratedderivwithin-comp-eq-sum-orderedfinpartition--5da9bc66c5b7908c23e1c480.md) | 204 | `result-track:5da9bc66c5b7908c23e1c480dc1e9731c336a68fa48abc6f0aa8553db0312ccd` |
| 14 | `theorem` | [iteratedDeriv_comp_eq_sum_orderedFinpartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/declarations/iteratedderiv-comp-eq-sum-orderedfinpartition--7fa40a1d9d990d4660105318.md) | 213 | `result-track:7fa40a1d9d990d46601053186e96f5c31c0c2f21c6cca04fae27939921720787` |
| 15 | `theorem` | [iteratedDerivWithin_comp_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/declarations/iteratedderivwithin-comp-two--00bddd4c2691021988006a4f.md) | 221 | `result-track:00bddd4c2691021988006a4f043ad2021567f3ec2dfec9176a6d2fb99220d90b` |
| 16 | `theorem` | [iteratedDeriv_comp_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/declarations/iteratedderiv-comp-two--33b601e68aa5ebdf11b7b373.md) | 230 | `result-track:33b601e68aa5ebdf11b7b373c2d351b65cee3af20634585e307568de9eb74a28` |
| 17 | `theorem` | [iteratedDerivWithin_comp_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/declarations/iteratedderivwithin-comp-three--9e3ded700d7a469536588bfc.md) | 237 | `result-track:9e3ded700d7a469536588bfc3e787a0d41795adb72415ddd60e0dc360379a5e7` |
| 18 | `theorem` | [iteratedDeriv_comp_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variant7e285c4c2fb91f124728d6d1cd2a63b86a5b937d42f942996fb8a9bd76cce8d9.lean/declarations/iteratedderiv-comp-three--d4b995d5ed2eaaa04ad103fa.md) | 248 | `result-track:d4b995d5ed2eaaa04ad103facd8a1226e762cb29c19d51b056c4ca6783f6137b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
