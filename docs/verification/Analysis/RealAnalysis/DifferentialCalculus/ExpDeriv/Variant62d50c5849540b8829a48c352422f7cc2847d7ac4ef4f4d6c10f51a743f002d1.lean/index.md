# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ExpDeriv.Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f7b815ef10e696e693dbc78620040fced130b2f",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f7b815ef10e696e693dbc78620040fced130b2f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.RealDeriv` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/hasderivat-exp--5ee2400e41713d26ba102528.md) | 32 | `result-track:5ee2400e41713d26ba102528471da77f3f1da94872192dcbb73901a11e55ed7c` |
| 2 | `theorem` | [differentiable_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/differentiable-exp--4b2e9b442ad3be0865473f73.md) | 41 | `result-track:4b2e9b442ad3be0865473f7370cb0aa25b566c05c9860361556a1f472a171b28` |
| 3 | `theorem` | [differentiableAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/differentiableat-exp--328b7aadadd94a3fd35d5c22.md) | 45 | `result-track:328b7aadadd94a3fd35d5c22e478aab8ad59684142b2a9cbb699251d89f9f3b1` |
| 4 | `theorem` | [deriv_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/deriv-exp--7543f398cbcab351a84c7e72.md) | 50 | `result-track:7543f398cbcab351a84c7e7239de336e8dbca2578c7dad1694bb993bff58ed86` |
| 5 | `theorem` | [iter_deriv_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/iter-deriv-exp--467dbc57efbbbf6da6838111.md) | 55 | `result-track:467dbc57efbbbf6da683811108aa64d11aa6b38c2ac57dbd7cbd1519722b47f3` |
| 6 | `theorem` | [contDiff_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/contdiff-exp--056cb63597ba149e27af571c.md) | 60 | `result-track:056cb63597ba149e27af571c8f0f88e21ea1df068254196fd431a06b6229ec05` |
| 7 | `theorem` | [hasStrictDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/hasstrictderivat-exp--69d49e908a430eeadf698749.md) | 72 | `result-track:69d49e908a430eeadf6987490b2fff9c05be34b586f1604bae90182e160dcfc4` |
| 8 | `theorem` | [hasStrictFDerivAt_exp_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/hasstrictfderivat-exp-real--c94f1ef73a9a30c4226b61a8.md) | 76 | `result-track:c94f1ef73a9a30c4226b61a8447e50de8d527f5bf75ce4fa9e4b39bd2ae21764` |
| 9 | `theorem` | [HasStrictDerivAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/hasstrictderivat-cexp--74628164a74d550e0ea04a85.md) | 87 | `result-track:74628164a74d550e0ea04a85f4a1eeac6c722ac92acc9e58d2e68b8a51859b36` |
| 10 | `theorem` | [HasDerivAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/hasderivat-cexp--faf12cf451c6ca0ab4b0b696.md) | 92 | `result-track:faf12cf451c6ca0ab4b0b6966900fd4926b2be97b92a2a8060525e6cfa09c251` |
| 11 | `theorem` | [HasDerivWithinAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/hasderivwithinat-cexp--82e0fb71b70b4fa232d58b14.md) | 97 | `result-track:82e0fb71b70b4fa232d58b148d8bd9eb432aa9e3cf212b4891011c89a0d7f6d7` |
| 12 | `theorem` | [derivWithin_cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/derivwithin-cexp--7d2f46db3cbaf696af0e3e0d.md) | 102 | `result-track:7d2f46db3cbaf696af0e3e0dd8494930d7151934dea426a6193333ef7b0bbd29` |
| 13 | `theorem` | [deriv_cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/deriv-cexp--62c7b415da93d0278bcae293.md) | 108 | `result-track:62c7b415da93d0278bcae293d1285aad54adf60eaf8a1084e43ac93e3db31f3a` |
| 14 | `theorem` | [HasStrictFDerivAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/hasstrictfderivat-cexp--7787426fa80943c37d6af04b.md) | 120 | `result-track:7787426fa80943c37d6af04bf2a34b19dd89c51dc3458be88efe5eb801729a62` |
| 15 | `theorem` | [HasFDerivWithinAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/hasfderivwithinat-cexp--5699b8bb31a783ea69d3eed8.md) | 125 | `result-track:5699b8bb31a783ea69d3eed8c61c206a0416ce58e05fd878cc217e89f5b2716c` |
| 16 | `theorem` | [HasFDerivAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/hasfderivat-cexp--0c8dbb6ded601f51eac1c571.md) | 130 | `result-track:0c8dbb6ded601f51eac1c5716697c13f16ee778cd408a2185b6ffcac8efb5ce6` |
| 17 | `theorem` | [DifferentiableWithinAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/differentiablewithinat-cexp--27a31f3bb874064793828e5f.md) | 135 | `result-track:27a31f3bb874064793828e5fefa3de88e6682d2168947beecba5f56d5e46bf31` |
| 18 | `theorem` | [DifferentiableAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/differentiableat-cexp--85e51f7f5483bfe8f27bf2fb.md) | 141 | `result-track:85e51f7f5483bfe8f27bf2fbcbc5bf02f63f9e1ea1108c55fcfd2a8f9429e09b` |
| 19 | `theorem` | [DifferentiableOn.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/differentiableon-cexp--0cc143bfb209c92216ac6dd5.md) | 146 | `result-track:0cc143bfb209c92216ac6dd580b04864dcc1ca0508a2089d0e1a6e2246884b70` |
| 20 | `theorem` | [Differentiable.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/differentiable-cexp--1a0efaf17f637d44ca41bb10.md) | 151 | `result-track:1a0efaf17f637d44ca41bb10ed4b1bf73b3550b42718f1e8400b34d84cf589c7` |
| 21 | `theorem` | [ContDiff.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/contdiff-cexp--71c92270e801b2c761bb7eba.md) | 155 | `result-track:71c92270e801b2c761bb7eba69d5b08525e375dbcc2919ab29502ac9196f11aa` |
| 22 | `theorem` | [ContDiffAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/contdiffat-cexp--3e34691a31fff654c2ea3f38.md) | 159 | `result-track:3e34691a31fff654c2ea3f38845374a1597ed2cedec50aed810f069c3470f082` |
| 23 | `theorem` | [ContDiffOn.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/contdiffon-cexp--fde1fcd3a8c95d78c4771423.md) | 164 | `result-track:fde1fcd3a8c95d78c477142352b84b2c4711fb5e66c6734764fc229434a66c52` |
| 24 | `theorem` | [ContDiffWithinAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/contdiffwithinat-cexp--c84c01e5b96f1f3500ff1077.md) | 169 | `result-track:c84c01e5b96f1f3500ff1077dbd71b17942f27a59cf62607432c96dedba89349` |
| 25 | `theorem` | [hasStrictDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/hasstrictderivat-exp--2a77d1ee12d943eb864330a9.md) | 180 | `result-track:2a77d1ee12d943eb864330a97fc4ea4478462f41e070a459b03c3bb1fb47f9e9` |
| 26 | `theorem` | [hasDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/hasderivat-exp--32a8aa3b822913d45343845a.md) | 184 | `result-track:32a8aa3b822913d45343845a62a859efa29942ccd1e2995b0f9e018a904d8447` |
| 27 | `theorem` | [contDiff_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/contdiff-exp--f1695e159af95784c98922b5.md) | 188 | `result-track:f1695e159af95784c98922b509f458639196e3d4cdb13cc444d9507eea9f65e3` |
| 28 | `theorem` | [differentiable_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/differentiable-exp--badca079d1543c1329169895.md) | 192 | `result-track:badca079d1543c13291698958019ba2524b8f78df062ec72691d9d3274724741` |
| 29 | `theorem` | [differentiableAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/differentiableat-exp--47da4d2d88bd7fc38a8554b5.md) | 195 | `result-track:47da4d2d88bd7fc38a8554b5d305730def958df71e343a893691c8fe24a2142c` |
| 30 | `theorem` | [deriv_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/deriv-exp--2293918d837c00ade71a3f36.md) | 200 | `result-track:2293918d837c00ade71a3f36ae46526593122589be781c51cf5e800b29e5ca24` |
| 31 | `theorem` | [iter_deriv_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/iter-deriv-exp--fd7c6eaa957f03a6d09ba305.md) | 205 | `result-track:fd7c6eaa957f03a6d09ba305a421e54216291be64a89239af41e9d0871e31119` |
| 32 | `theorem` | [HasStrictDerivAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/hasstrictderivat-exp--1021a2e8f5608471c17ea5d6.md) | 220 | `result-track:1021a2e8f5608471c17ea5d64a5815e34ed1d72cb11c249bfeb6d621aeccfc0c` |
| 33 | `theorem` | [HasDerivAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/hasderivat-exp--bbdd2fc69c19d1ad2715fd1e.md) | 225 | `result-track:bbdd2fc69c19d1ad2715fd1e4944a65bb99b5dea43b16bdd2ac19b73e806815f` |
| 34 | `theorem` | [HasDerivWithinAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/hasderivwithinat-exp--70ecfe46de336a523be3b156.md) | 230 | `result-track:70ecfe46de336a523be3b156833a20dce85887414cf8bb907754195556c8164b` |
| 35 | `theorem` | [derivWithin_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/derivwithin-exp--5960f03681d18ac8af718b75.md) | 235 | `result-track:5960f03681d18ac8af718b75e40255f786054ea12bada00149dece8c640469bb` |
| 36 | `theorem` | [deriv_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/deriv-exp--c71cdedfbaa9c4699df6f52e.md) | 241 | `result-track:c71cdedfbaa9c4699df6f52ef5c03de2394a674c55aa967f9ff4c3645dc2c8e5` |
| 37 | `theorem` | [ContDiff.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/contdiff-exp--7e8ddb994b15810e2187df2b.md) | 257 | `result-track:7e8ddb994b15810e2187df2b827e70d74cb5a95f72f22e5b1bea15a97760f31e` |
| 38 | `theorem` | [ContDiffAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/contdiffat-exp--f5556f3ef539f6a8dc6721e2.md) | 261 | `result-track:f5556f3ef539f6a8dc6721e284a9aaf66bb1585dea9ce5da9362a55b6c86ef7b` |
| 39 | `theorem` | [ContDiffOn.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/contdiffon-exp--4a6fdd8459d00d76b514e9bc.md) | 265 | `result-track:4a6fdd8459d00d76b514e9bc39a474b611a914de8aad21b4874e182454635d55` |
| 40 | `theorem` | [ContDiffWithinAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/contdiffwithinat-exp--80915a03407d1e11519da751.md) | 269 | `result-track:80915a03407d1e11519da751612fac7a2990fac5d2717fccabc65020bc081269` |
| 41 | `theorem` | [HasFDerivWithinAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/hasfderivwithinat-exp--05b0ac71a4943a98c693e8e2.md) | 274 | `result-track:05b0ac71a4943a98c693e8e20c7ad3ed29043a366a11d042cf753cd24386eb99` |
| 42 | `theorem` | [HasFDerivAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/hasfderivat-exp--777e5d3b246c4fe4124a9b04.md) | 279 | `result-track:777e5d3b246c4fe4124a9b04e2f52a653c039c91c800686ce849ddc98f27f0c3` |
| 43 | `theorem` | [HasStrictFDerivAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/hasstrictfderivat-exp--87a1b37377415b1d0962da82.md) | 284 | `result-track:87a1b37377415b1d0962da82a5e7c17d0c8991b53dc2049de267f839cfa1e7c0` |
| 44 | `theorem` | [DifferentiableWithinAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/differentiablewithinat-exp--8ea5ff25636ccd699a1d6133.md) | 289 | `result-track:8ea5ff25636ccd699a1d6133f38ecbb9f7864f213d4e089e2ca16a48a5dbe247` |
| 45 | `theorem` | [DifferentiableAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/differentiableat-exp--bd14e0c521e38b6a8546daa4.md) | 295 | `result-track:bd14e0c521e38b6a8546daa4d7ef100c94dc99a596d0304d0f752853644d6a1c` |
| 46 | `theorem` | [DifferentiableOn.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/differentiableon-exp--e07ad5dcd30608978b3624f4.md) | 300 | `result-track:e07ad5dcd30608978b3624f46c8e2679797726314e8ff24e34bb89f5b6934217` |
| 47 | `theorem` | [Differentiable.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/differentiable-exp--da3eb522d2b68129bf370ac4.md) | 305 | `result-track:da3eb522d2b68129bf370ac4a46be1a2d1d5bd18ed8934636dc939121cdfbc37` |
| 48 | `theorem` | [fderivWithin_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/fderivwithin-exp--5404446c74d2243a0ed9ea0d.md) | 309 | `result-track:5404446c74d2243a0ed9ea0d608067b8f47614c55ae8c8157557c83c70700491` |
| 49 | `theorem` | [fderiv_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1.lean/declarations/fderiv-exp--b21ea676415cb32e176f437c.md) | 315 | `result-track:b21ea676415cb32e176f437c76451301307e7c0a69f90d08bcbe23977d1c130e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
