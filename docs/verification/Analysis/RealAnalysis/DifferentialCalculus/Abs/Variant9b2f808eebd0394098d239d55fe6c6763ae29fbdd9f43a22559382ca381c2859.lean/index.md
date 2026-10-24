# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Abs.Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3101803958c5856a1e7b7b86f23b1dc75fcd9fb5",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3101803958c5856a1e7b7b86f23b1dc75fcd9fb5`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean.json)

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
| 1 | `theorem` | [contDiffAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/contdiffat-abs--d726e2d9f4834023e65dd027.md) | 30 | `result-track:d726e2d9f4834023e65dd027d33f475356b16a0de4d696368a593f749dee58d9` |
| 2 | `theorem` | [ContDiffAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/contdiffat-abs--783970ab282b2d122264b690.md) | 32 | `result-track:783970ab282b2d122264b690cc5be0b1f38e3ef4b313c6395255ca15499bc184` |
| 3 | `theorem` | [contDiffWithinAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/contdiffwithinat-abs--c83d8c311be3148dc51f3a0e.md) | 35 | `result-track:c83d8c311be3148dc51f3a0e387daa08d72871d428bc8d6bc9b911840ac3ac83` |
| 4 | `theorem` | [ContDiffWithinAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/contdiffwithinat-abs--3242bf3dedbc3f4241480c1a.md) | 38 | `result-track:3242bf3dedbc3f4241480c1ad3bb723efdcfcf6d30deb9c8109c8bffb17101c9` |
| 5 | `theorem` | [contDiffOn_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/contdiffon-abs--16d900e84c3011ea70163969.md) | 42 | `result-track:16d900e84c3011ea70163969a662e0fcfc356c4c77e702f414b52a7c2e3912c1` |
| 6 | `theorem` | [ContDiffOn.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/contdiffon-abs--65e3bf0bb190be8ea6f566bd.md) | 45 | `result-track:65e3bf0bb190be8ea6f566bdae1958e09cfb2482c400ab2dac6191ea26445fe1` |
| 7 | `theorem` | [ContDiff.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/contdiff-abs--b63a7c07eac2e767ba333a23.md) | 48 | `result-track:b63a7c07eac2e767ba333a231ac8246cbf7106320d12307704ee1100e886de73` |
| 8 | `theorem` | [hasStrictDerivAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/hasstrictderivat-abs-neg--a8c7e6b27839a7e98e7e936b.md) | 51 | `result-track:a8c7e6b27839a7e98e7e936b72479ea6b47915273ff87d0f7f9494f14fa8ea93` |
| 9 | `theorem` | [hasDerivAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/hasderivat-abs-neg--c6d66fdffab65e3066cff14b.md) | 56 | `result-track:c6d66fdffab65e3066cff14ba03aae6efe51d43c43fe3c05d72bf17e02b1e448` |
| 10 | `theorem` | [hasStrictDerivAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/hasstrictderivat-abs-pos--4039e37108bb2397437306cc.md) | 59 | `result-track:4039e37108bb2397437306ccc949e10766695e0233cf561d557c53f2fbc3bcb3` |
| 11 | `theorem` | [hasDerivAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/hasderivat-abs-pos--c0b1a34e9ebbd212b6b47336.md) | 64 | `result-track:c0b1a34e9ebbd212b6b47336e50138ed8515a25c397f514a9067948d506d3e79` |
| 12 | `theorem` | [hasStrictDerivAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/hasstrictderivat-abs--ca059ab6197c3c73316fb11f.md) | 67 | `result-track:ca059ab6197c3c73316fb11fa1a7fee3f3dd3b0dc81e4e0678378294c8e4a170` |
| 13 | `theorem` | [hasDerivAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/hasderivat-abs--fc960ddf3a00d7500a810b5b.md) | 73 | `result-track:fc960ddf3a00d7500a810b5b38e99cd68b7ef0a85b756255e0250a6931fdf508` |
| 14 | `theorem` | [HasStrictFDerivAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/hasstrictfderivat-abs-of-neg--beca84a391a3acd6ded2fd87.md) | 76 | `result-track:beca84a391a3acd6ded2fd87d177c3e3b68483ff1622a858f889e3f83b354c65` |
| 15 | `theorem` | [HasFDerivAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/hasfderivat-abs-of-neg--b96cbdf904056a20f430baf6.md) | 82 | `result-track:b96cbdf904056a20f430baf6c12d02d93ba2b42d3ca0d28c036ce32f7c6efbf6` |
| 16 | `theorem` | [HasStrictFDerivAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/hasstrictfderivat-abs-of-pos--5f2314348489905279e6bd96.md) | 88 | `result-track:5f2314348489905279e6bd961188dc9cca181e496b76628eb6eaefa0968d3fc4` |
| 17 | `theorem` | [HasFDerivAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/hasfderivat-abs-of-pos--83cd59fe2e3963d4bc1eda1a.md) | 94 | `result-track:83cd59fe2e3963d4bc1eda1aa71e9e4dfffb814bd0df29b6277b2947f2178bfd` |
| 18 | `theorem` | [HasStrictFDerivAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/hasstrictfderivat-abs--91af37b7d490b703faf372d2.md) | 100 | `result-track:91af37b7d490b703faf372d2d5c104e06b447075fc2acb04229213f7593f7f6f` |
| 19 | `theorem` | [HasFDerivAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/hasfderivat-abs--ce025b83eb0dc90afba2adb6.md) | 106 | `result-track:ce025b83eb0dc90afba2adb67b8ed2407d38753a6a0004a124dbf58f38af542b` |
| 20 | `theorem` | [hasDerivWithinAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/hasderivwithinat-abs-neg--1f601af7164c717a8f11e200.md) | 112 | `result-track:1f601af7164c717a8f11e2003dc20217b9c0f5d3d2630a96634081afa79fc7ef` |
| 21 | `theorem` | [hasDerivWithinAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/hasderivwithinat-abs-pos--4c87b31cfd218e97f5bc7855.md) | 115 | `result-track:4c87b31cfd218e97f5bc78558c5c8291bfa5b6c40350d79042863b7c3e4e351a` |
| 22 | `theorem` | [hasDerivWithinAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/hasderivwithinat-abs--d8e1ac7bc7f84899fa36a22b.md) | 118 | `result-track:d8e1ac7bc7f84899fa36a22bf955f56f225ec4527c5da8054424f3fc71ed0233` |
| 23 | `theorem` | [HasFDerivWithinAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/hasfderivwithinat-abs-of-neg--1d380df61cf76f0259b31001.md) | 121 | `result-track:1d380df61cf76f0259b310013f7ad42bea8cd29856cf35a021828a4d0f4e0597` |
| 24 | `theorem` | [HasFDerivWithinAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/hasfderivwithinat-abs-of-pos--becaa9f36a9a26b80e43c12f.md) | 126 | `result-track:becaa9f36a9a26b80e43c12fa1236de592af33142644abbef5157c58edc0e40d` |
| 25 | `theorem` | [HasFDerivWithinAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/hasfderivwithinat-abs--334746a77a4ebad8391c5e06.md) | 131 | `result-track:334746a77a4ebad8391c5e06aff931dacdb20c3880f370c402706dd75780bbb3` |
| 26 | `theorem` | [differentiableAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/differentiableat-abs-neg--5cd9bcc6cdc97ed5df0bc3b0.md) | 135 | `result-track:5cd9bcc6cdc97ed5df0bc3b0f44c62ddc713d7f2a59b6718c120cc2caca3dee3` |
| 27 | `theorem` | [differentiableAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/differentiableat-abs-pos--74896f836b40917a71de393d.md) | 138 | `result-track:74896f836b40917a71de393d92f6dd47c7e526f570ba037dc6274fcf109ead41` |
| 28 | `theorem` | [differentiableAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/differentiableat-abs--e583c70dde97d4ac21323170.md) | 141 | `result-track:e583c70dde97d4ac2132317032db094307efe2002e76c380250d1272515b6293` |
| 29 | `theorem` | [DifferentiableAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/differentiableat-abs-of-neg--ccb59dcdfe80b6520b1c6064.md) | 144 | `result-track:ccb59dcdfe80b6520b1c6064ba6af4ffc6f3373583bc68d7d9a4c1daeb8daa07` |
| 30 | `theorem` | [DifferentiableAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/differentiableat-abs-of-pos--e633942fcb9bbcf2aff544c2.md) | 147 | `result-track:e633942fcb9bbcf2aff544c2636f147ffd450ba68c341a18c05e2c45d62f5b0e` |
| 31 | `theorem` | [DifferentiableAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/differentiableat-abs--4a5f4363919eac6d7c91083c.md) | 150 | `result-track:4a5f4363919eac6d7c91083c2c7982b84e2e18319a17b3243d90a94f5a3dd0e0` |
| 32 | `theorem` | [differentiableWithinAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/differentiablewithinat-abs-neg--3695dfeb85f628b68e0faa37.md) | 153 | `result-track:3695dfeb85f628b68e0faa3783f28e234915423126659833a21a18bbdee0d228` |
| 33 | `theorem` | [differentiableWithinAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/differentiablewithinat-abs-pos--5213eb111ec7e6de7af79559.md) | 156 | `result-track:5213eb111ec7e6de7af7955999b539fa8fac7c71c52eef956661774fa9268458` |
| 34 | `theorem` | [differentiableWithinAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/differentiablewithinat-abs--65a745df10d30d17b9bba4cf.md) | 159 | `result-track:65a745df10d30d17b9bba4cf4ec7986b69d7273ce00cc413be158ead42a62e59` |
| 35 | `theorem` | [DifferentiableWithinAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/differentiablewithinat-abs-of-neg--20f00dd516883a5ea41e25f6.md) | 162 | `result-track:20f00dd516883a5ea41e25f6a36309909a2ee7d6f6a13aac933fa2d167c9e54b` |
| 36 | `theorem` | [DifferentiableWithinAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/differentiablewithinat-abs-of-pos--b358accf64e7ab7aca54d2a0.md) | 166 | `result-track:b358accf64e7ab7aca54d2a00175259891a63e8b44e576b5aeba0718e1ee666d` |
| 37 | `theorem` | [DifferentiableWithinAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/differentiablewithinat-abs--b3c5c9423035c80f5e6ac8dc.md) | 170 | `result-track:b3c5c9423035c80f5e6ac8dc8dd26c9979e8856606efd414976f674b5769a779` |
| 38 | `theorem` | [differentiableOn_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/differentiableon-abs--3189871174dfea7ee0805f5e.md) | 174 | `result-track:3189871174dfea7ee0805f5e37e2474ae4568ac18e407d255c9c463425cc76f8` |
| 39 | `theorem` | [DifferentiableOn.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/differentiableon-abs--cec2aa2812b9c0f774e8d26b.md) | 177 | `result-track:cec2aa2812b9c0f774e8d26be4327f16cc89d01be4d32dbbedf5da0c20c0e527` |
| 40 | `theorem` | [Differentiable.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/differentiable-abs--104b486c4af01b643ec0057f.md) | 181 | `result-track:104b486c4af01b643ec0057fdf48ab05afdd6d09c59ddf4e486029d1879c78f4` |
| 41 | `theorem` | [not_differentiableAt_abs_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/not-differentiableat-abs-zero--8e2e7beb3960a060a539e97c.md) | 184 | `result-track:8e2e7beb3960a060a539e97c606f15291a20efece14ebee32584c508848ea991` |
| 42 | `theorem` | [deriv_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/deriv-abs-neg--0becbe40f621af8ff1c9a373.md) | 194 | `result-track:0becbe40f621af8ff1c9a373430edbe1f68ea3df98a5fd27c0da1bb37d401622` |
| 43 | `theorem` | [deriv_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/deriv-abs-pos--23d7c184728ff639ee161421.md) | 196 | `result-track:23d7c184728ff639ee16142151409f87ae114ae6845e3f0a9c3b954f2f65e4a2` |
| 44 | `theorem` | [deriv_abs_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/deriv-abs-zero--bdbccd454cc6c2f724331e48.md) | 198 | `result-track:bdbccd454cc6c2f724331e48802ef8dee580c7af2296642354c3c2e1154b1e81` |
| 45 | `theorem` | [deriv_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9b2f808eebd0394098d239d55fe6c6763ae29fbdd9f43a22559382ca381c2859.lean/declarations/deriv-abs--44aaefd065044a26c2a2d788.md) | 201 | `result-track:44aaefd065044a26c2a2d78821778861f54aa7fb2c66ccc3c49a9b8cdcbc4b22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
