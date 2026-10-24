# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Exponential.Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd4e4b17b880065d3b1ee9b604a4f0dbbfc11f02",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd4e4b17b880065d3b1ee9b604a4f0dbbfc11f02`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Exponential` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.CauSeqFilter` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictFDerivAt_exp_zero_of_radius_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasstrictfderivat-exp-zero-of-radius-pos--cd3662c8bd47fc148862cb82.md) | 75 | `result-track:cd3662c8bd47fc148862cb829ba0447c1572c77930d82784994b20efb134c822` |
| 2 | `theorem` | [hasFDerivAt_exp_zero_of_radius_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasfderivat-exp-zero-of-radius-pos--b6a08e31c5d7454ea0cedf0f.md) | 85 | `result-track:b6a08e31c5d7454ea0cedf0f3fb3ba41292f2c7fcd87be74c65b05217e4a2585` |
| 3 | `theorem` | [hasFDerivAt_exp_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasfderivat-exp-of-mem-ball--c309458506ff0e0913b14b7f.md) | 100 | `result-track:c309458506ff0e0913b14b7fec35a269a97982f325bc47b77f5cc97d5bacac1b` |
| 4 | `theorem` | [hasStrictFDerivAt_exp_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasstrictfderivat-exp-of-mem-ball--b1232c1091572988b0709538.md) | 121 | `result-track:b1232c1091572988b07095383d7a6dff9a243247dc24e7c8ad4762360d528e1a` |
| 5 | `theorem` | [hasStrictDerivAt_exp_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasstrictderivat-exp-of-mem-ball--9680c1ec55aff55853af3877.md) | 136 | `result-track:9680c1ec55aff55853af3877f8dc0cc6389a3c102d932b7b92b9d72f91133bff` |
| 6 | `theorem` | [hasDerivAt_exp_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasderivat-exp-of-mem-ball--3270d4ad9d2e079282a50087.md) | 143 | `result-track:3270d4ad9d2e079282a500872121837e2cd5cda70d37510c6aa5f50fdcbf3325` |
| 7 | `theorem` | [hasStrictDerivAt_exp_zero_of_radius_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasstrictderivat-exp-zero-of-radius-pos--40142de851a132d67556ad21.md) | 150 | `result-track:40142de851a132d67556ad211e7aaafa9f6ed9b4d34c5d9331aa0197d719529c` |
| 8 | `theorem` | [hasDerivAt_exp_zero_of_radius_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasderivat-exp-zero-of-radius-pos--b486601611b220fe81eaf6bf.md) | 157 | `result-track:b486601611b220fe81eaf6bf71faa2003ccfffae4f078e59852a00de3a58774e` |
| 9 | `theorem` | [hasStrictFDerivAt_exp_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasstrictfderivat-exp-zero--88ae75b6c9166d3ec976ef61.md) | 170 | `result-track:88ae75b6c9166d3ec976ef619ea222f878a28eb7fde52c270644651febfea72f` |
| 10 | `theorem` | [hasFDerivAt_exp_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasfderivat-exp-zero--197db3b11363a9709649c573.md) | 176 | `result-track:197db3b11363a9709649c5738ca1642787d429e46567eca6e31fb49cca3bc4e4` |
| 11 | `theorem` | [hasStrictFDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasstrictfderivat-exp--60f964f2f34069fce74d6878.md) | 188 | `result-track:60f964f2f34069fce74d6878df0c6902b2301033e720ab9a4041451428e810c9` |
| 12 | `theorem` | [hasFDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasfderivat-exp--26292b6de55c43f58e11b956.md) | 194 | `result-track:26292b6de55c43f58e11b956c5d2a2758213cd71fefacd5e0c16d05e5428a045` |
| 13 | `theorem` | [hasStrictDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasstrictderivat-exp--ff90cab3f7b24343a78bb80c.md) | 206 | `result-track:ff90cab3f7b24343a78bb80c9b00a4a2d4c23e22cb7875a80c0356ef310eff8f` |
| 14 | `theorem` | [hasDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasderivat-exp--f6a53103917aa5d737d2283e.md) | 211 | `result-track:f6a53103917aa5d737d2283ee2c70902d19853092500d4796ab4b8b8d0af211f` |
| 15 | `theorem` | [hasStrictDerivAt_exp_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasstrictderivat-exp-zero--e91ab51b3bd468024b8ee73c.md) | 216 | `result-track:e91ab51b3bd468024b8ee73c25a56efbc1628fe02fedc47ced7aee560aa0c62d` |
| 16 | `theorem` | [hasDerivAt_exp_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasderivat-exp-zero--417ec71c8fb679c96675cf6c.md) | 221 | `result-track:417ec71c8fb679c96675cf6ce37a1da09ee1ec8e0a65941292ac74d2ce58065a` |
| 17 | `theorem` | [Complex.exp_eq_exp_ℂ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/complex-exp-eq-exp--0b7a22f660a3bdd044789529.md) | 227 | `result-track:0b7a22f660a3bdd0447895290d0c2fc4af79ac035b06c4d98331755793e2a833` |
| 18 | `theorem` | [Real.exp_eq_exp_ℝ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/real-exp-eq-exp--261789669291313b30eee7fb.md) | 234 | `result-track:261789669291313b30eee7fb45d7a6d6d784f051c34d85766acba886c4a61584` |
| 19 | `theorem` | [hasFDerivAt_exp_smul_const_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasfderivat-exp-smul-const-of-mem-ball--b512f6cf73bdd66afff7e772.md) | 282 | `result-track:b512f6cf73bdd66afff7e772cd6d0fec57f30981957df884fdbb9a06492a5880` |
| 20 | `theorem` | [hasFDerivAt_exp_smul_const_of_mem_ball'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasfderivat-exp-smul-const-of-mem-ball--55137e553fd4a86c2d3e785f.md) | 313 | `result-track:55137e553fd4a86c2d3e785fd6cd87a4051580584af505230cf3d1ccc1e61131` |
| 21 | `theorem` | [hasStrictFDerivAt_exp_smul_const_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasstrictfderivat-exp-smul-const-of-mem-ball--b2f0f3403ab64802e3db885a.md) | 323 | `result-track:b2f0f3403ab64802e3db885a4a13a196ff2600ffe1b46c2adc50ec6b7e2780eb` |
| 22 | `theorem` | [hasStrictFDerivAt_exp_smul_const_of_mem_ball'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasstrictfderivat-exp-smul-const-of-mem-ball--d3d3bcc332f8a229cf195419.md) | 335 | `result-track:d3d3bcc332f8a229cf19541943991b96dbbd4977442cd911fe3aac9229c6088d` |
| 23 | `theorem` | [hasStrictDerivAt_exp_smul_const_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasstrictderivat-exp-smul-const-of-mem-ball--29adb4b344a9c1dad5d0612d.md) | 348 | `result-track:29adb4b344a9c1dad5d0612d3204e9720b570ee7a1babc34b63d3d0adac3ea45` |
| 24 | `theorem` | [hasStrictDerivAt_exp_smul_const_of_mem_ball'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasstrictderivat-exp-smul-const-of-mem-ball--be81520fb834ef9aef72a767.md) | 354 | `result-track:be81520fb834ef9aef72a767be721e8ad807002f13abd66f45083103e7aa4c23` |
| 25 | `theorem` | [hasDerivAt_exp_smul_const_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasderivat-exp-smul-const-of-mem-ball--d7642f7d965474b71b933569.md) | 360 | `result-track:d7642f7d965474b71b933569bcf08f5b7bff31c9e0a856fda395b6ec99841389` |
| 26 | `theorem` | [hasDerivAt_exp_smul_const_of_mem_ball'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasderivat-exp-smul-const-of-mem-ball--e04cdbbff5b4fe7065e1cedc.md) | 366 | `result-track:e04cdbbff5b4fe7065e1cedcdf31aea2ff5cabdd764ec82ed9e61f5bab2f4187` |
| 27 | `theorem` | [hasFDerivAt_exp_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasfderivat-exp-smul-const--d7b84fd4208ff82ad99ea2d0.md) | 386 | `result-track:d7b84fd4208ff82ad99ea2d0bed887c11569dd2d3a2f428b982ec2027aa42a05` |
| 28 | `theorem` | [hasFDerivAt_exp_smul_const'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasfderivat-exp-smul-const--4a9610f49d3fe7cc051e22e2.md) | 392 | `result-track:4a9610f49d3fe7cc051e22e2e9c0315df3d4042ce1f8358f30ae7a4ca6421dc1` |
| 29 | `theorem` | [hasStrictFDerivAt_exp_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasstrictfderivat-exp-smul-const--d106fb51c4ef0c1f06337ae9.md) | 399 | `result-track:d106fb51c4ef0c1f06337ae9881c8f74294d4888d264a5e86cd353abf0dd7e93` |
| 30 | `theorem` | [hasStrictFDerivAt_exp_smul_const'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasstrictfderivat-exp-smul-const--6a8c194504b48189d07af12d.md) | 406 | `result-track:6a8c194504b48189d07af12d030f83629e933d6ddda01c4bd0f183f6c050589d` |
| 31 | `theorem` | [hasStrictDerivAt_exp_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasstrictderivat-exp-smul-const--842fa1f4becab927781cc1b3.md) | 415 | `result-track:842fa1f4becab927781cc1b3d28e132145e89aadda6ba8da8837d9629db03f05` |
| 32 | `theorem` | [hasStrictDerivAt_exp_smul_const'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasstrictderivat-exp-smul-const--064062d5e4c9c944335f2d6e.md) | 421 | `result-track:064062d5e4c9c944335f2d6e0db924501d72192b4f7dacbfe07cdc280f6c971a` |
| 33 | `theorem` | [hasDerivAt_exp_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasderivat-exp-smul-const--4650ff1036c7de5dca45d3df.md) | 427 | `result-track:4650ff1036c7de5dca45d3df1ca0b23a5fb72db18a0923452bc17527c515e493` |
| 34 | `theorem` | [hasDerivAt_exp_smul_const'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/declarations/hasderivat-exp-smul-const--49bdb101c86794eb70eadba8.md) | 432 | `result-track:49bdb101c86794eb70eadba8dbebcb303117f215c2c7638cc2ca3a39498ab385` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
