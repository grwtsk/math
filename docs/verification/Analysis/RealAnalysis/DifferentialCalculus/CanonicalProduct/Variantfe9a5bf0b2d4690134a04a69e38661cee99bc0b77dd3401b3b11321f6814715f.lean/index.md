# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CanonicalProduct.Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5e75cb4e32039c193ea54a23e37deb70d711d13",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5e75cb4e32039c193ea54a23e37deb70d711d13`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean.json)

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
| 1 | `def` | [canonicalProduct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/declarations/canonicalproduct--b7c3d0e935cf204ee13e0a38.md) | 33 | `declaration-track:b7c3d0e935cf204ee13e0a38e250ee06642e0467ca018e877288a0d1c170bfa2` |
| 2 | `theorem` | [canonicalProduct_def](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/declarations/canonicalproduct-def--b3ca4516819325c41f3bcbb7.md) | 36 | `result-track:b3ca4516819325c41f3bcbb7018fd1aed789891fbcbd9ad8ccf13cc588c89dc1` |
| 3 | `theorem` | [hasProdLocallyUniformlyOn_canonicalProduct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/declarations/hasprodlocallyuniformlyon-canonicalproduct--242bc99d5fb7c4a1399c772a.md) | 42 | `result-track:242bc99d5fb7c4a1399c772a1caccd02a0911b7ae6ee032d1dee88b9f24f7571` |
| 4 | `theorem` | [multipliableLocallyUniformlyOn_canonicalProduct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/declarations/multipliablelocallyuniformlyon-canonicalproduct--055b3cc7db177e3a53cf0ff0.md) | 52 | `result-track:055b3cc7db177e3a53cf0ff0d84fec0995592b0cc8d412e5e9bcda8554de282c` |
| 5 | `theorem` | [hasProdUniformlyOn_canonicalProduct_compact](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/declarations/hasproduniformlyon-canonicalproduct-compact--83fc97eea6caa4cb69179964.md) | 61 | `result-track:83fc97eea6caa4cb69179964ae1ecadba3a443cabea9bd7e1021b597589ec793` |
| 6 | `theorem` | [canonicalProduct_converges_uniformOn_compact](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/declarations/canonicalproduct-converges-uniformon-compact--c5430906984e76ae309a1722.md) | 72 | `result-track:c5430906984e76ae309a172276af36f6d41f64553ba18b8ef5dcc0957e03409b` |
| 7 | `theorem` | [differentiable_canonicalProduct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/declarations/differentiable-canonicalproduct--9bf6f1d6416ef8707f7cbc79.md) | 82 | `result-track:9bf6f1d6416ef8707f7cbc7945291bf0d302c6be53f42adecb6c4d642b2aa511` |
| 8 | `theorem` | [analyticOnNhd_canonicalProduct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/declarations/analyticonnhd-canonicalproduct--775b12c09985774a8dab9dc8.md) | 101 | `result-track:775b12c09985774a8dab9dc8a2ba9ca6612ae45321b4ccfe5fe8c0ff71d0c94a` |
| 9 | `theorem` | [logDeriv_weierstrassFactor_one_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/declarations/logderiv-weierstrassfactor-one-div--932930429f152da5f37e8728.md) | 109 | `result-track:932930429f152da5f37e8728fa2ac20b8ae6fff24478872a2b0cd83cea85abc7` |
| 10 | `theorem` | [canonicalProduct_apply_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/declarations/canonicalproduct-apply-eq-zero--fb79552de14ac5f03f0f4f3b.md) | 146 | `result-track:fb79552de14ac5f03f0f4f3bcc48f99689ae7090fac9f1f47ca2da7f06417f95` |
| 11 | `theorem` | [canonicalProduct_eq_zero_of_mem_range](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/declarations/canonicalproduct-eq-zero-of-mem-range--cfe4bc722abd514d1a3cbfc5.md) | 165 | `result-track:cfe4bc722abd514d1a3cbfc5b19d8e4cbfbff2a5706824c672f43d50c83654b5` |
| 12 | `theorem` | [canonicalProduct_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/declarations/canonicalproduct-ne-zero--95b5dad3a7217ea4e3ce5ad2.md) | 173 | `result-track:95b5dad3a7217ea4e3ce5ad2a89cd280040d219f93fa73ee0fe8d52313f84de6` |
| 13 | `theorem` | [differentiableOn_canonicalPartialProduct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/declarations/differentiableon-canonicalpartialproduct--c91d352a7431feaecc6352f2.md) | 192 | `result-track:c91d352a7431feaecc6352f2ddb8bb28b98095d3dd512c2c782bd9cde9b3b694` |
| 14 | `theorem` | [tendsto_deriv_canonicalPartialProduct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/declarations/tendsto-deriv-canonicalpartialproduct--b8977c50431b86be322b660e.md) | 198 | `result-track:b8977c50431b86be322b660e815fe71f243095600702132116f00ce2ef60b32b` |
| 15 | `theorem` | [canonicalProduct_eq_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/declarations/canonicalproduct-eq-zero-iff--5d921566a64c4b6754df32c0.md) | 217 | `result-track:5d921566a64c4b6754df32c0469b9145a985f1962bc8fe1deb9ed129ac1362d3` |
| 16 | `theorem` | [canonicalProduct_ne_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/declarations/canonicalproduct-ne-zero-iff--108e7ceb174cc3e255a87b5c.md) | 228 | `result-track:108e7ceb174cc3e255a87b5cc259b3600d3ba0360606810ffd08011cb51f6fdf` |
| 17 | `theorem` | [logDeriv_canonicalProduct_one_eq_tsum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantfe9a5bf0b2d4690134a04a69e38661cee99bc0b77dd3401b3b11321f6814715f.lean/declarations/logderiv-canonicalproduct-one-eq-tsum--c5f5b44eccac22c76e496993.md) | 237 | `result-track:c5f5b44eccac22c76e496993c8bd8134dfcf737e1a70425fc5fb441a0a128d74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
