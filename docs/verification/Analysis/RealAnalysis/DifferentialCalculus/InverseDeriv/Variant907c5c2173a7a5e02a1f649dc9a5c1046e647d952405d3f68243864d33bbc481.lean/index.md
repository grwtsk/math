# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.InverseDeriv.Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cecfe155d652647c6c5f57d47d2c45bd72929cae",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cecfe155d652647c6c5f57d47d2c45bd72929cae`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Inverse` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deriv_arcsin_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/deriv-arcsin-aux--c9ba76577aa424e14010252f.md) | 24 | `result-track:c9ba76577aa424e14010252ff7d8284e7d658b6a8113b43d2284ed6c307b4de5` |
| 2 | `theorem` | [hasStrictDerivAt_arcsin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/hasstrictderivat-arcsin--71bdd75fc8417d46915fce59.md) | 45 | `result-track:71bdd75fc8417d46915fce59ccca857275c974de407ac9248aec21a718b6caf7` |
| 3 | `theorem` | [hasDerivAt_arcsin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/hasderivat-arcsin--3075c6bdbc86dffef31acf52.md) | 49 | `result-track:3075c6bdbc86dffef31acf521a2b17dcdce285b998295c5c869c9a923605ea41` |
| 4 | `theorem` | [contDiffAt_arcsin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/contdiffat-arcsin--06978954655f9ee4ba20ecbb.md) | 53 | `result-track:06978954655f9ee4ba20ecbb6e5536feceb2d4ebb65431cbce7fadaaf543b704` |
| 5 | `theorem` | [hasDerivWithinAt_arcsin_Ici](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/hasderivwithinat-arcsin-ici--13ec7834f3a22b217128320e.md) | 57 | `result-track:13ec7834f3a22b217128320ebbf935711b3a9175d0b236915abbb9520d8a50f4` |
| 6 | `theorem` | [hasDerivWithinAt_arcsin_Iic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/hasderivwithinat-arcsin-iic--bc6af3a2215435588e46a66f.md) | 64 | `result-track:bc6af3a2215435588e46a66f7d70df054f2083d24dc06b3b9b02972bb776b7cf` |
| 7 | `theorem` | [differentiableWithinAt_arcsin_Ici](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/differentiablewithinat-arcsin-ici--72bfc47a6e23d8d9e2773081.md) | 71 | `result-track:72bfc47a6e23d8d9e277308134ad1d2dd01dff345ca389f86b51a02962fcb1e5` |
| 8 | `theorem` | [differentiableWithinAt_arcsin_Iic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/differentiablewithinat-arcsin-iic--92033508a75808335c6b6aa0.md) | 80 | `result-track:92033508a75808335c6b6aa03db588d9186084d8bd9d68bb1673cb5d93e13dda` |
| 9 | `theorem` | [differentiableAt_arcsin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/differentiableat-arcsin--90d7ca4a486ee878f9fa8e02.md) | 87 | `result-track:90d7ca4a486ee878f9fa8e02966af9039a778e6241791b91eaeda0d3afc2fd0f` |
| 10 | `theorem` | [deriv_arcsin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/deriv-arcsin--b7c5731fcc6e834b702e07d2.md) | 93 | `result-track:b7c5731fcc6e834b702e07d2ac10e88536a4627355e55e5a7cb68c6df3bae996` |
| 11 | `theorem` | [differentiableOn_arcsin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/differentiableon-arcsin--69ae5b4573cbaa61df812c77.md) | 101 | `result-track:69ae5b4573cbaa61df812c77c53f31484d2aa2c54c3dbe0ceb54bbb894917b0c` |
| 12 | `theorem` | [contDiffOn_arcsin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/contdiffon-arcsin--be05a86bf2ea04b40b458494.md) | 105 | `result-track:be05a86bf2ea04b40b4584949edb66c7c4fac959ecadfccd57dcafea6f088369` |
| 13 | `theorem` | [contDiffAt_arcsin_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/contdiffat-arcsin-iff--4da2c7c1dc9e91d215c16262.md) | 108 | `result-track:4da2c7c1dc9e91d215c1626241c41bdd91b913219629e0003e9b4419670b95d7` |
| 14 | `theorem` | [hasStrictDerivAt_arccos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/hasstrictderivat-arccos--b8f492c7cadcb916076d4e59.md) | 119 | `result-track:b8f492c7cadcb916076d4e59776ae69ac8d17f86d02054874c2e1f1a05581e33` |
| 15 | `theorem` | [hasDerivAt_arccos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/hasderivat-arccos--3545a9640dd8f36b92190f93.md) | 123 | `result-track:3545a9640dd8f36b92190f933c927520098f932811ae65c9b535ce2634293ac8` |
| 16 | `theorem` | [contDiffAt_arccos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/contdiffat-arccos--bf1b19575021397077ff512b.md) | 127 | `result-track:bf1b19575021397077ff512bcd3ac81a5ef41873ed2ca6aaf072278742354f2b` |
| 17 | `theorem` | [hasDerivWithinAt_arccos_Ici](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/hasderivwithinat-arccos-ici--49e376c9b1fe154d51046345.md) | 131 | `result-track:49e376c9b1fe154d51046345860d377b7bed498d771a7f2c39322930d33f8169` |
| 18 | `theorem` | [hasDerivWithinAt_arccos_Iic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/hasderivwithinat-arccos-iic--f305d6317415642399eecc09.md) | 135 | `result-track:f305d6317415642399eecc09564ee102a42d21125c385f65520ab2016dbe8c73` |
| 19 | `theorem` | [differentiableWithinAt_arccos_Ici](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/differentiablewithinat-arccos-ici--32bed74ad75a391a95055d1b.md) | 139 | `result-track:32bed74ad75a391a95055d1bf2f818c8755f3e607020aaf23e0c3d54ba44bcf8` |
| 20 | `theorem` | [differentiableWithinAt_arccos_Iic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/differentiablewithinat-arccos-iic--1313cb80ebe409a1b720f214.md) | 143 | `result-track:1313cb80ebe409a1b720f214d6c7846b6d143fc028874ef172fea6d85e0d4421` |
| 21 | `theorem` | [differentiableAt_arccos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/differentiableat-arccos--099839e83467650637190d31.md) | 147 | `result-track:099839e83467650637190d31096cd3715cf4e8d6bd5498bc96dcd245ae68d642` |
| 22 | `theorem` | [deriv_arccos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/deriv-arccos--a55764f08762d1990260bce5.md) | 151 | `result-track:a55764f08762d1990260bce50fe8d63ac665d90b0e2547df600d055e28ebb518` |
| 23 | `theorem` | [differentiableOn_arccos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/differentiableon-arccos--6cc46c372317bc76582d69e8.md) | 154 | `result-track:6cc46c372317bc76582d69e87773f2d4bc0c56b4d48eecee7e2702742ddcdff2` |
| 24 | `theorem` | [contDiffOn_arccos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/contdiffon-arccos--aa4a82e119547569982360b1.md) | 157 | `result-track:aa4a82e119547569982360b1f4768a761c9c72f9aee52ff9bb207181fe79e3f9` |
| 25 | `theorem` | [contDiffAt_arccos_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/declarations/contdiffat-arccos-iff--39e0e3daf6f43612853a3919.md) | 160 | `result-track:39e0e3daf6f43612853a39195f805583d71c6fa09904a71b1981ba159bafa1ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
