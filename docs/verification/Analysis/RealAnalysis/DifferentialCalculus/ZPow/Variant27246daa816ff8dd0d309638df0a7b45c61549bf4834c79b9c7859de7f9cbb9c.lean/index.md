# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ZPow.Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2ef23c541dc79e6e3849b41d61d51664106792b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2ef23c541dc79e6e3849b41d61d51664106792b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictDerivAt_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/hasstrictderivat-zpow--6a61e7a62b66becdc694c6c0.md) | 40 | `result-track:6a61e7a62b66becdc694c6c058bca2ab441b7fd391ed8b5716b0224dd140401e` |
| 2 | `theorem` | [hasDerivAt_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/hasderivat-zpow--96fad262a2605b6eb7004443.md) | 61 | `result-track:96fad262a2605b6eb70044434bb7dd71322a0e86f540c9f93bb8737780b9bc1f` |
| 3 | `theorem` | [hasDerivWithinAt_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/hasderivwithinat-zpow--7c6f563e2e8eaa900e842824.md) | 65 | `result-track:7c6f563e2e8eaa900e842824d0adba6742d3f77c8a75e7dd857eba7c0b875140` |
| 4 | `theorem` | [differentiableAt_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/differentiableat-zpow--c9af3fec30cd8e32568dd674.md) | 69 | `result-track:c9af3fec30cd8e32568dd67439c0a95fce6d19b88c73e1d5054d01b7c3755667` |
| 5 | `theorem` | [differentiableWithinAt_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/differentiablewithinat-zpow--0304bfebb3e46ce4598ebd86.md) | 73 | `result-track:0304bfebb3e46ce4598ebd8619cfbc2f6e47e8c9ea5a4972ecf2854cf2f3cc37` |
| 6 | `theorem` | [differentiableOn_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/differentiableon-zpow--84e198182be62ec8d85c7d8b.md) | 77 | `result-track:84e198182be62ec8d85c7d8bc27eeabe5e6e2d0ba5854483112d21b9b5c92e61` |
| 7 | `theorem` | [deriv_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/deriv-zpow--cde797e0d645e29c47c3e20c.md) | 81 | `result-track:cde797e0d645e29c47c3e20cc10c541cd03cb949066e91a3d6d627530420d49b` |
| 8 | `theorem` | [deriv_zpow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/deriv-zpow--d30e67fdfb2af6d48b142501.md) | 90 | `result-track:d30e67fdfb2af6d48b14250147736805671eed4c5e31a5f869f629e824185f05` |
| 9 | `theorem` | [derivWithin_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/derivwithin-zpow--d82b8f591d234eabf7aacad8.md) | 93 | `result-track:d82b8f591d234eabf7aacad81cc76cefe3d2dbe3529ed518d2ea90a728c3c3f4` |
| 10 | `theorem` | [iter_deriv_zpow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/iter-deriv-zpow--bfde89da20871cd141c25bd0.md) | 98 | `result-track:bfde89da20871cd141c25bd0f64d82b5c56f180482da0cea4a7c3b3e43a9ae5a` |
| 11 | `theorem` | [iter_deriv_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/iter-deriv-zpow--eafde6d734d31851dbaed130.md) | 109 | `result-track:eafde6d734d31851dbaed1307d852ce21d125158f75314dece14a2b91a99df4d` |
| 12 | `theorem` | [iter_deriv_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/iter-deriv-pow--f6060c7fa92362d756f60ef9.md) | 113 | `result-track:f6060c7fa92362d756f60ef98acd806822c44978e98f8ecfb9168ab65f3f3834` |
| 13 | `theorem` | [iter_deriv_pow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/iter-deriv-pow--379bb64b3a5c4465571404e7.md) | 123 | `result-track:379bb64b3a5c4465571404e7c4955afd982235051468b5be4ab4ddbffdd4b12e` |
| 14 | `theorem` | [iter_deriv_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/iter-deriv-inv--326c1288518c414d05c76cc7.md) | 128 | `result-track:326c1288518c414d05c76cc7e2a295b42bdee9319349ca566a7b248985869375` |
| 15 | `theorem` | [iter_deriv_inv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/iter-deriv-inv--e4755477036957d0483b349e.md) | 138 | `result-track:e4755477036957d0483b349e6231d5a74204abc1e8018fbd3c5938fa8c4a2a1f` |
| 16 | `theorem` | [iter_deriv_inv_linear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/iter-deriv-inv-linear--c7cc0ebdcbe91545a41b802d.md) | 143 | `result-track:c7cc0ebdcbe91545a41b802d0841096b1a6ea7ca0e915c51ce88ba49f6aa1931` |
| 17 | `theorem` | [iter_deriv_inv_linear_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/iter-deriv-inv-linear-sub--4c0a0d3795f2cf211cd01041.md) | 164 | `result-track:4c0a0d3795f2cf211cd0104171343187ca91be3bdba1efe5fd4c954c9640cf1d` |
| 18 | `theorem` | [DifferentiableWithinAt.zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/differentiablewithinat-zpow--34f7542cc37e01a6187df04c.md) | 172 | `result-track:34f7542cc37e01a6187df04cbea874f07318b528dceaa3876c7916cecfcef858` |
| 19 | `theorem` | [DifferentiableAt.zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/differentiableat-zpow--2dd7f792a37f597e8a85a361.md) | 177 | `result-track:2dd7f792a37f597e8a85a361179195ccc4d2ca19bfe128e6ecbd44867b1fd7d3` |
| 20 | `theorem` | [DifferentiableOn.zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/differentiableon-zpow--62533724c9131ac6911ecb9f.md) | 182 | `result-track:62533724c9131ac6911ecb9f7a975cdf26b8816c632138a1d9ccdd7d3b287738` |
| 21 | `theorem` | [Differentiable.zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant27246daa816ff8dd0d309638df0a7b45c61549bf4834c79b9c7859de7f9cbb9c.lean/declarations/differentiable-zpow--30b6ab288a85430cdff3c001.md) | 187 | `result-track:30b6ab288a85430cdff3c001c8de10a30c727fe42a44b0a32acdd39637eb3a6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
