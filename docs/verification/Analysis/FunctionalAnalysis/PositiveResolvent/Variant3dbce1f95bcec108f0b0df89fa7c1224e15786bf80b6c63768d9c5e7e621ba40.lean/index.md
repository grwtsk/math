# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PositiveResolvent.Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddd656b14382670c78238ec192069ea576369b6c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddd656b14382670c78238ec192069ea576369b6c`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveShift](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean/declarations/positiveshift--1ad215ef1d08e40b916180bd.md) | 29 | `declaration-track:1ad215ef1d08e40b916180bd31db802b4dc1c7bd358d394c8b66f3363f7f1f32` |
| 2 | `theorem` | [positiveShift_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean/declarations/positiveshift-ispositive--52bcaa807de98dc52435a80a.md) | 33 | `result-track:52bcaa807de98dc52435a80aa1e913119c780d3ba871d2d431bd1fc9a492c979` |
| 3 | `theorem` | [positiveShift_coercive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean/declarations/positiveshift-coercive--80c8b70347da6f849134b7c5.md) | 40 | `result-track:80c8b70347da6f849134b7c5ca25fa2a727b4a0697f1be3e4fd0ab9e4a460a6c` |
| 4 | `theorem` | [positiveShift_isUnit](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean/declarations/positiveshift-isunit--b712c97c2d1f46b7216f0dc9.md) | 55 | `result-track:b712c97c2d1f46b7216f0dc9d022fe9cc3107ea41a58f2b0f0bea9ea84cc3c25` |
| 5 | `def` | [positiveResolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean/declarations/positiveresolvent--1b151c8af63b6a48802d0e32.md) | 66 | `declaration-track:1b151c8af63b6a48802d0e325d156ecfb44aaa160753d778f92ed63448133d89` |
| 6 | `theorem` | [positiveShift_mul_resolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean/declarations/positiveshift-mul-resolvent--4f91ebaebb12e53c42740f18.md) | 70 | `result-track:4f91ebaebb12e53c42740f18421969493325c54423ca6ee6bbbc4dca6a529c2c` |
| 7 | `theorem` | [resolvent_mul_positiveShift](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean/declarations/resolvent-mul-positiveshift--7e3041ddeb2df1fb449aecc6.md) | 75 | `result-track:7e3041ddeb2df1fb449aecc66c4524071cba4ade468fe72033f0267b95aa74a7` |
| 8 | `theorem` | [positiveShift_resolvent_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean/declarations/positiveshift-resolvent-apply--7b110b0e05d7bd4ba7781519.md) | 80 | `result-track:7b110b0e05d7bd4ba7781519b54ed057be475a005077214f28a6f41461817e18` |
| 9 | `theorem` | [positiveResolvent_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean/declarations/positiveresolvent-norm-le--04a7467e8604b5bff65bf005.md) | 87 | `result-track:04a7467e8604b5bff65bf00561ec747f2872ceb7beb1de6fd59d92196a5834e3` |
| 10 | `theorem` | [positiveResolvent_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean/declarations/positiveresolvent-ispositive--ef8bd49081475e71023e778d.md) | 103 | `result-track:ef8bd49081475e71023e778df20b2d5a66dfcfb63b782f56a6e0c5abe7fa97fc` |
| 11 | `theorem` | [positiveResolvent_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean/declarations/positiveresolvent-sub--ef4cecf1e205ab0868fac1d0.md) | 114 | `result-track:ef4cecf1e205ab0868fac1d01a10a8c677163786dd3519fb297de7cf57d4a4dd` |
| 12 | `theorem` | [positiveResolvent_sub_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean/declarations/positiveresolvent-sub-norm-le--102c223634d6985e791f4d77.md) | 126 | `result-track:102c223634d6985e791f4d774aee94d45d1123b75a4ee42902e4027ff48442b4` |
| 13 | `def` | [regularizedMass](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean/declarations/regularizedmass--de150dfda0a055d9950b677a.md) | 140 | `declaration-track:de150dfda0a055d9950b677aa7c1cdb92c7872b8b87a545c23b8d6cfde27be9b` |
| 14 | `theorem` | [abs_re_inner_map_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean/declarations/abs-re-inner-map-le--c2df93cddb03a6f0e234fc6d.md) | 144 | `result-track:c2df93cddb03a6f0e234fc6d9a241e3d4b1c6f3da91d4aba8d8342c066272eb0` |
| 15 | `theorem` | [regularizedMass_sub_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean/declarations/regularizedmass-sub-abs-le--88a67ed2f15755a8c9eb9a61.md) | 153 | `result-track:88a67ed2f15755a8c9eb9a613d2691238a67e1d3525af2dbff5ba39846086203` |
| 16 | `theorem` | [reference_regularizedMass_sub_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean/declarations/reference-regularizedmass-sub-abs-le--765f5a008146b3b707c5d0a7.md) | 173 | `result-track:765f5a008146b3b707c5d0a7890bc009e4695bca75a546f90647309114fe9f98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
