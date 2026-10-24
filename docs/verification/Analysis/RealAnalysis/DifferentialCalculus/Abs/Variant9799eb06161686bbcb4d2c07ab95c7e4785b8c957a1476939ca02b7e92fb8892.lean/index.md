# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Abs.Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77bc918f457014cbe5185b84042ca7848bf34e20",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77bc918f457014cbe5185b84042ca7848bf34e20`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contDiffAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/contdiffat-abs--79284ca74ef29dc2b3859b8e.md) | 26 | `result-track:79284ca74ef29dc2b3859b8e3f752918c82801f20edd4aa1dbc0a20c640a8be3` |
| 2 | `theorem` | [ContDiffAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/contdiffat-abs--a0c0cf399ce5c54086237102.md) | 28 | `result-track:a0c0cf399ce5c5408623710235e6fa9eead3b16bc747abe251b686201d40e68a` |
| 3 | `theorem` | [contDiffWithinAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/contdiffwithinat-abs--45575ad91f164d28c01cace3.md) | 31 | `result-track:45575ad91f164d28c01cace363865cff7b2aeb90ab30fdec674b997b9ca2f291` |
| 4 | `theorem` | [ContDiffWithinAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/contdiffwithinat-abs--6c97bdebe97e8bb98e47f312.md) | 34 | `result-track:6c97bdebe97e8bb98e47f3124cb57d319f065356cc2885cab5dea6bd1e1817ca` |
| 5 | `theorem` | [contDiffOn_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/contdiffon-abs--1024d00ef8e695566fade792.md) | 38 | `result-track:1024d00ef8e695566fade79237dc99d267abf1916dbe3a8d240828ee46992d8a` |
| 6 | `theorem` | [ContDiffOn.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/contdiffon-abs--70dc569c6dc106118a6321b7.md) | 41 | `result-track:70dc569c6dc106118a6321b733ed230e7833b6ee802faa55f6b384ac53e868e8` |
| 7 | `theorem` | [ContDiff.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/contdiff-abs--feddc36c827aa9d0dbb8bf76.md) | 44 | `result-track:feddc36c827aa9d0dbb8bf76eb55932f08d525ec17ac31c6cb651afb865f7212` |
| 8 | `theorem` | [hasStrictDerivAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/hasstrictderivat-abs-neg--d85919de042d3d5d69ea6b53.md) | 47 | `result-track:d85919de042d3d5d69ea6b53f67c1610aa112bffcb5d00b973baa9d972158175` |
| 9 | `theorem` | [hasDerivAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/hasderivat-abs-neg--3f22f4658b63aa8d54af1ae3.md) | 52 | `result-track:3f22f4658b63aa8d54af1ae388df38e020f2e2b7ead1f30637206ad35748d4e4` |
| 10 | `theorem` | [hasStrictDerivAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/hasstrictderivat-abs-pos--8a78a892c86faf481ecae138.md) | 55 | `result-track:8a78a892c86faf481ecae1382499a60f358844b93c71290822f76cb52714cc63` |
| 11 | `theorem` | [hasDerivAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/hasderivat-abs-pos--b396ef4fdc207f1588ae0146.md) | 60 | `result-track:b396ef4fdc207f1588ae01463a939356711e726cee82d7068382772d5f843510` |
| 12 | `theorem` | [hasStrictDerivAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/hasstrictderivat-abs--be9e8b169fe405ba134aac96.md) | 63 | `result-track:be9e8b169fe405ba134aac9663ec734a3026361ce9583387c2858c5ce929434e` |
| 13 | `theorem` | [hasDerivAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/hasderivat-abs--71c2394ba5dc188171e82281.md) | 69 | `result-track:71c2394ba5dc188171e82281d843b850b5f63f13f8787b54ac8f7f1859bde30d` |
| 14 | `theorem` | [HasStrictFDerivAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/hasstrictfderivat-abs-of-neg--e36a80da6614be380f585bf8.md) | 72 | `result-track:e36a80da6614be380f585bf8d863355c39d9c1de1da3ce86ca8c9735be0fc40f` |
| 15 | `theorem` | [HasFDerivAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/hasfderivat-abs-of-neg--cdfc9f0df8f726ef91ab3bee.md) | 78 | `result-track:cdfc9f0df8f726ef91ab3bee203001ae8efb3145871c6cddd1013a2ff535d868` |
| 16 | `theorem` | [HasStrictFDerivAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/hasstrictfderivat-abs-of-pos--c0e65a30ccadb0a3210b2c5b.md) | 84 | `result-track:c0e65a30ccadb0a3210b2c5bc6462d49306b588251550a2b6f6acb26068d5ee1` |
| 17 | `theorem` | [HasFDerivAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/hasfderivat-abs-of-pos--9d048516ac4db57ab65482ac.md) | 90 | `result-track:9d048516ac4db57ab65482acd24d891ac649f7319e5efb0086f20372aba5ed4d` |
| 18 | `theorem` | [HasStrictFDerivAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/hasstrictfderivat-abs--f3e05f485798c1d348e5124a.md) | 96 | `result-track:f3e05f485798c1d348e5124a23c75bab9929f23c2e141a53f226440795020e96` |
| 19 | `theorem` | [HasFDerivAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/hasfderivat-abs--b7bb47d8a6746899064a692d.md) | 102 | `result-track:b7bb47d8a6746899064a692d82eeb7ce7666a3d76c5fe1d81c77f868992bc8bb` |
| 20 | `theorem` | [hasDerivWithinAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/hasderivwithinat-abs-neg--0f85127f0c264a1bb9f19934.md) | 108 | `result-track:0f85127f0c264a1bb9f19934d9db344609e88a855325e6b338a305a3fecf1adf` |
| 21 | `theorem` | [hasDerivWithinAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/hasderivwithinat-abs-pos--b45e7cab94471994edb69920.md) | 111 | `result-track:b45e7cab94471994edb699203836c14b20906e7974be13cbc840519686360139` |
| 22 | `theorem` | [hasDerivWithinAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/hasderivwithinat-abs--d9b10154aa80285db0e2bffd.md) | 114 | `result-track:d9b10154aa80285db0e2bffdaabbf661060cb01a55ac3a7912011d3f46d9facc` |
| 23 | `theorem` | [HasFDerivWithinAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/hasfderivwithinat-abs-of-neg--5a091bab0c84fc0221fe475b.md) | 117 | `result-track:5a091bab0c84fc0221fe475ba163c1dd73083ddb05cf9cd246daf76ed69cf278` |
| 24 | `theorem` | [HasFDerivWithinAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/hasfderivwithinat-abs-of-pos--8168b0702cbb295afcb69afe.md) | 122 | `result-track:8168b0702cbb295afcb69afeaabd137b489c903d3e764e6094c7105c19ae664a` |
| 25 | `theorem` | [HasFDerivWithinAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/hasfderivwithinat-abs--6c65ba2fb2d186f06a210b1f.md) | 127 | `result-track:6c65ba2fb2d186f06a210b1f40535b027163c276a3bb6884622539f3c0997ffd` |
| 26 | `theorem` | [differentiableAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/differentiableat-abs-neg--ca87266f2f797cd796e0f0ab.md) | 131 | `result-track:ca87266f2f797cd796e0f0abcef5cc95ef1127c9c9d694ad860cafdb69bce6cb` |
| 27 | `theorem` | [differentiableAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/differentiableat-abs-pos--d1ea2eb17230f114ca3990ba.md) | 134 | `result-track:d1ea2eb17230f114ca3990bac3d515f4ecbcc88209915ee46695dd5b06164f26` |
| 28 | `theorem` | [differentiableAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/differentiableat-abs--2049b64c5e55af11e87d366d.md) | 137 | `result-track:2049b64c5e55af11e87d366db091e577aa4f6fb61cacdee8cdeb4eb5a6700a78` |
| 29 | `theorem` | [DifferentiableAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/differentiableat-abs-of-neg--b82a1bb5eabca903be28c248.md) | 140 | `result-track:b82a1bb5eabca903be28c2481cfc3a06beb7f9cd7b1a2bb3520df7db0a91eb25` |
| 30 | `theorem` | [DifferentiableAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/differentiableat-abs-of-pos--28b81ce10e0142e6f11247d5.md) | 143 | `result-track:28b81ce10e0142e6f11247d569491a3d091cde0d618f8addff49d6a99d2a6a5e` |
| 31 | `theorem` | [DifferentiableAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/differentiableat-abs--b693b26e1d873afcaa113c5e.md) | 146 | `result-track:b693b26e1d873afcaa113c5ef007ac997c885635ee2606de346e13cb0332c1cd` |
| 32 | `theorem` | [differentiableWithinAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/differentiablewithinat-abs-neg--6e8b0cc7ce21f9009fb18144.md) | 149 | `result-track:6e8b0cc7ce21f9009fb1814495095a6c07cd311f3bf848c7b75c1c682e59e4d3` |
| 33 | `theorem` | [differentiableWithinAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/differentiablewithinat-abs-pos--053097bdbc97b0d9d806ff7a.md) | 152 | `result-track:053097bdbc97b0d9d806ff7a9200e2462c0ec7c4e2e65897253cfae2ced1581f` |
| 34 | `theorem` | [differentiableWithinAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/differentiablewithinat-abs--9decd96137a0b3c5ae60a27a.md) | 155 | `result-track:9decd96137a0b3c5ae60a27aab4358b7f02ccbaca036f88c8714f7f25542e63d` |
| 35 | `theorem` | [DifferentiableWithinAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/differentiablewithinat-abs-of-neg--12b858111bc13d2d5ab28ce8.md) | 158 | `result-track:12b858111bc13d2d5ab28ce838270c62d83b4b4947255c66d78196b91eb509a4` |
| 36 | `theorem` | [DifferentiableWithinAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/differentiablewithinat-abs-of-pos--4ba8c5124969376b6ff61893.md) | 162 | `result-track:4ba8c5124969376b6ff61893a150201d94a2809ffbf74565197d00997a2f2246` |
| 37 | `theorem` | [DifferentiableWithinAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/differentiablewithinat-abs--47645a79f0a5fdeb6fa68c30.md) | 166 | `result-track:47645a79f0a5fdeb6fa68c3042e19632a7d2927f165585c3bf3196efb7b7c33d` |
| 38 | `theorem` | [differentiableOn_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/differentiableon-abs--4d6cdeea556619c5fe790e47.md) | 170 | `result-track:4d6cdeea556619c5fe790e47f6c55e06a184d48b858a28ced8861fbde65d4477` |
| 39 | `theorem` | [DifferentiableOn.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/differentiableon-abs--140f6c11d50cc7af30bf73e3.md) | 173 | `result-track:140f6c11d50cc7af30bf73e3b8ea9b896c8ff4fe2a5222ae8bd74fe3c94f92a5` |
| 40 | `theorem` | [Differentiable.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/differentiable-abs--f216941d45f7de096902db51.md) | 177 | `result-track:f216941d45f7de096902db5146b91014c31d8f5cc0daad6bd97cf26de48f004e` |
| 41 | `theorem` | [not_differentiableAt_abs_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/not-differentiableat-abs-zero--cf38967e9497dee654608532.md) | 180 | `result-track:cf38967e9497dee6546085329187e70d929dce19db5140ef6fac5b5b9e3b0ddc` |
| 42 | `theorem` | [deriv_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/deriv-abs-neg--5bdea43fc9c86b6c3b9c0493.md) | 190 | `result-track:5bdea43fc9c86b6c3b9c04932a7209eb7a727095558deb09a50a18f1dd647d65` |
| 43 | `theorem` | [deriv_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/deriv-abs-pos--6dd4ddb06a78980673c0b99d.md) | 192 | `result-track:6dd4ddb06a78980673c0b99dcb686d26d704a8a6807bac26de4800aadba270eb` |
| 44 | `theorem` | [deriv_abs_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/deriv-abs-zero--454d120b2011edca0444b2c3.md) | 194 | `result-track:454d120b2011edca0444b2c3d0dca21ce0ac217db6a2fd5976ccbad50f96d02b` |
| 45 | `theorem` | [deriv_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant9799eb06161686bbcb4d2c07ab95c7e4785b8c957a1476939ca02b7e92fb8892.lean/declarations/deriv-abs--e1592f721871de8f85d161e7.md) | 197 | `result-track:e1592f721871de8f85d161e76e80aae29e3bd4f35a4e794286cf2dca27e2edf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
