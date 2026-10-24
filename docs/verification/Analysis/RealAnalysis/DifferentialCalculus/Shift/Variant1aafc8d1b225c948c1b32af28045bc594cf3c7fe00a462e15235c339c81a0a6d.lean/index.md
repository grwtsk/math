# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Shift.Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a0aac3fe640e20f2c716517e810e59dac8c5d4d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a0aac3fe640e20f2c716517e810e59dac8c5d4d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.CompMul` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [HasDerivAt.comp_const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d.lean/declarations/hasderivat-comp-const-add--6ee6f5db3d05c807f4abfc74.md) | 31 | `result-track:6ee6f5db3d05c807f4abfc74a5d0e3bf584076a286833871e04e466808271d2e` |
| 2 | `lemma` | [HasDerivAt.comp_add_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d.lean/declarations/hasderivat-comp-add-const--cd539ad410edb3f25ad673c4.md) | 36 | `result-track:cd539ad410edb3f25ad673c4530c63215e2352bf5af7676e794c0c93c2903b5c` |
| 3 | `lemma` | [HasDerivAt.comp_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d.lean/declarations/hasderivat-comp-const-sub--9807cd9398bf5d23639fdd6c.md) | 41 | `result-track:9807cd9398bf5d23639fdd6c6188dbb1b6f28120ee650e44cbf1de0640d246cc` |
| 4 | `lemma` | [HasDerivAt.comp_sub_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d.lean/declarations/hasderivat-comp-sub-const--34cf3fa7d38e43126d74da67.md) | 46 | `result-track:34cf3fa7d38e43126d74da6777fb962a7a246f689abb21b1d9c59ba80127548a` |
| 5 | `lemma` | [derivWithin_comp_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d.lean/declarations/derivwithin-comp-neg--0f3874cbde7a561ddbe49fd3.md) | 53 | `result-track:0f3874cbde7a561ddbe49fd319f380ac60e7bec400b73a729fc6c97a1588a075` |
| 6 | `lemma` | [deriv_comp_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d.lean/declarations/deriv-comp-neg--bd86b27f88fe9be4ebed79f9.md) | 57 | `result-track:bd86b27f88fe9be4ebed79f97ea770c1c212e15c6ccafcd81720c2a9d1d25a06` |
| 7 | `lemma` | [derivWithin_comp_const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d.lean/declarations/derivwithin-comp-const-add--67b76b01bdb0e1e65f10f9a8.md) | 61 | `result-track:67b76b01bdb0e1e65f10f9a8c892a030b595a0731676dea62fb309e76f680941` |
| 8 | `lemma` | [deriv_comp_const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d.lean/declarations/deriv-comp-const-add--21540b77c983ebc59db9c147.md) | 66 | `result-track:21540b77c983ebc59db9c14769796cb6e51917092a4e7dc4afe4a179065f8053` |
| 9 | `lemma` | [derivWithin_comp_add_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d.lean/declarations/derivwithin-comp-add-const--d3a0dd6f1acd6e5728e15b82.md) | 70 | `result-track:d3a0dd6f1acd6e5728e15b827d875ab19757c1a3d1863693b0f5ce07f4f2d37e` |
| 10 | `lemma` | [deriv_comp_add_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d.lean/declarations/deriv-comp-add-const--8fa8d5f02d54842ca4f74f48.md) | 75 | `result-track:8fa8d5f02d54842ca4f74f48064c6d678b0a08375b8bd891c29e5e38c187b93c` |
| 11 | `lemma` | [derivWithin_comp_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d.lean/declarations/derivwithin-comp-const-sub--41eb91cef4aae46276d9fafd.md) | 78 | `result-track:41eb91cef4aae46276d9fafd9057ca7a40f69fab2e649b3e01433d58a280fec7` |
| 12 | `lemma` | [deriv_comp_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d.lean/declarations/deriv-comp-const-sub--f6b9bf45dd9617427be59cb7.md) | 83 | `result-track:f6b9bf45dd9617427be59cb767df8ec7a52d2a215a05615ac102e7982bd7f32e` |
| 13 | `lemma` | [derivWithin_comp_sub_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d.lean/declarations/derivwithin-comp-sub-const--20308424e4edad0f97619b1c.md) | 86 | `result-track:20308424e4edad0f97619b1c69a8c70b7152eb5e75cc5c3affb7330a7c5a81f8` |
| 14 | `lemma` | [deriv_comp_sub_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant1aafc8d1b225c948c1b32af28045bc594cf3c7fe00a462e15235c339c81a0a6d.lean/declarations/deriv-comp-sub-const--5b97a51e240800019d61539d.md) | 90 | `result-track:5b97a51e240800019d61539db133c763daf7510dcdaf209c83eb3a19c9f6845c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
