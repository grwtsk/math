# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Arcosh.Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cedf463bb399bb1956d0d9172903eeefd99d600b",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cedf463bb399bb1956d0d9172903eeefd99d600b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean.json)

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
| 1 | `def` | [arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/arcosh--6cc4a0ed833009d89f1939df.md) | 69 | `declaration-track:6cc4a0ed833009d89f1939df44e7f7d3ee51a3a78ea13c9b38cdd1522a6b1d20` |
| 2 | `theorem` | [exp_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/exp-arcosh--c4c7884bdb00d2b88a922789.md) | 72 | `result-track:c4c7884bdb00d2b88a92278924be247a338ab88221a19c3c70e90d1237ba333c` |
| 3 | `theorem` | [arcosh_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/arcosh-zero--6f77a452b30f84dee89b3b42.md) | 77 | `result-track:6f77a452b30f84dee89b3b423416bd1e3b6b985e4491b5ab40cec782d761c8b4` |
| 4 | `lemma` | [add_sqrt_self_sq_sub_one_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/add-sqrt-self-sq-sub-one-inv--d186119db31a868385c04bb2.md) | 79 | `result-track:d186119db31a868385c04bb2c59bc8088c59fc22ffc71da642adf29392e2429b` |
| 5 | `theorem` | [cosh_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/cosh-arcosh--424eb589c6766b10f9182367.md) | 85 | `result-track:424eb589c6766b10f91823671b53fe38111fd95083f7a394c7d6340cb56580e5` |
| 6 | `theorem` | [arcosh_eq_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/arcosh-eq-zero-iff--e717847449893b4982b1fc84.md) | 89 | `result-track:e717847449893b4982b1fc84b136e8ddb5adfc2199124e9319fe73356a326ded` |
| 7 | `theorem` | [sinh_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/sinh-arcosh--db54cfb8c019f8f26883cd95.md) | 93 | `result-track:db54cfb8c019f8f26883cd959f13850566f377053889457ca6bcbd16217f1737` |
| 8 | `theorem` | [tanh_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/tanh-arcosh--4f81b83a626a3c314d5f46eb.md) | 97 | `result-track:4f81b83a626a3c314d5f46eb05be7a89183b59e4175cf8ded203f7dbb5956e45` |
| 9 | `theorem` | [arcosh_cosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/arcosh-cosh--b8499699548a7f5322a98a21.md) | 101 | `result-track:b8499699548a7f5322a98a21ef9002cc41f43a93e6cc804c175378e5f82abd4c` |
| 10 | `theorem` | [arcosh_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/arcosh-nonneg--f7b11d6149b16759870fadee.md) | 105 | `result-track:f7b11d6149b16759870fadee57016845c8ab7c7b118f371c664d54aa18a0103b` |
| 11 | `theorem` | [arcosh_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/arcosh-pos--caee59db81e64bd8d4ba0b2b.md) | 111 | `result-track:caee59db81e64bd8d4ba0b2bcaa5323986390be0e0c3444d60a3f7cd5c949dfb` |
| 12 | `theorem` | [strictMonoOn_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/strictmonoon-arcosh--f95ea5eecc0b9dabb6906400.md) | 118 | `result-track:f95ea5eecc0b9dabb690640064fae0a779ad97475e0e6cee5eb11d4bf23dce16` |
| 13 | `theorem` | [arcosh_le_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/arcosh-le-arcosh--1f126f4fb9acad4a4f15b8b1.md) | 123 | `result-track:1f126f4fb9acad4a4f15b8b1d2009cba52d22baff1c38d0c21b1a2dd45429c90` |
| 14 | `theorem` | [arcosh_lt_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/arcosh-lt-arcosh--17112120990ce3e2c1b2b922.md) | 127 | `result-track:17112120990ce3e2c1b2b9227bcfa1c69334d430f6805c897bc33141a0af8981` |
| 15 | `def` | [coshPartialEquiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/coshpartialequiv--f6b51a65543fb6a7004af5e7.md) | 131 | `declaration-track:f6b51a65543fb6a7004af5e70de4ae9fcbbbb2f493c5341fb03973cd5d63bd0c` |
| 16 | `theorem` | [continuousOn_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/continuouson-arcosh--53b9d3ca9d4e81fa44232f63.md) | 141 | `result-track:53b9d3ca9d4e81fa44232f6323b389b25d58cab5e81c65d8a60786ed50abb8b8` |
| 17 | `def` | [coshOpenPartialHomeomorph](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/coshopenpartialhomeomorph--ee89af22e9c7c94ee6fd2927.md) | 147 | `declaration-track:ee89af22e9c7c94ee6fd2927d3f83fb0226c8681b0ca5aa0e4479ee34be361c3` |
| 18 | `theorem` | [hasStrictDerivAt_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/hasstrictderivat-arcosh--4b3a8d2d131bbc7e0e76688a.md) | 161 | `result-track:4b3a8d2d131bbc7e0e76688a7986eef4c50f5210256216b0255bdb76ee58b52c` |
| 19 | `theorem` | [hasDerivAt_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/hasderivat-arcosh--4d6309b18d54b15574628e6b.md) | 168 | `result-track:4d6309b18d54b15574628e6b772ca01efbd487742aa0783523208f30f00e7bb4` |
| 20 | `theorem` | [differentiableAt_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/differentiableat-arcosh--3087ae8b261b2fa3ab9a2ff6.md) | 171 | `result-track:3087ae8b261b2fa3ab9a2ff69c0ed2be52400b74569891d24ba469b0fa6e0a22` |
| 21 | `theorem` | [differentiableOn_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/differentiableon-arcosh--98bb1388cd7c7946ad4c85f5.md) | 174 | `result-track:98bb1388cd7c7946ad4c85f54f4bca86dde44e43d77fcd403298bc36e938de3e` |
| 22 | `theorem` | [contDiffAt_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/contdiffat-arcosh--4e0f972c8a7d2a140abe2061.md) | 177 | `result-track:4e0f972c8a7d2a140abe20611ef0dffe01208ebd6877ab20603f94240f5963e0` |
| 23 | `theorem` | [contDiffOn_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/contdiffon-arcosh--5ab85e50f9e79df5fdef77ee.md) | 183 | `result-track:5ab85e50f9e79df5fdef77ee8458dbb4d40ed773e039b8f0460bbf8914311d1a` |
| 24 | `lemma` | [analyticAt_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/analyticat-arcosh--f527cc986a9b99d38c3bfca3.md) | 188 | `result-track:f527cc986a9b99d38c3bfca3c6328e3644c23ff5bc97cf18d7d5af8f1f3cbd6c` |
| 25 | `lemma` | [analyticWithinAt_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/analyticwithinat-arcosh--7afb30cf9b0d9112826c7069.md) | 192 | `result-track:7afb30cf9b0d9112826c70699ef2cc585115098cb1c78f1ab1fb8c73e489b223` |
| 26 | `theorem` | [analyticOnNhd_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/analyticonnhd-arcosh--f12d73f4c6cc865898d55c4c.md) | 197 | `result-track:f12d73f4c6cc865898d55c4c2670acd9e394961a4ab8f89b38d7b84574cf378c` |
| 27 | `lemma` | [analyticOn_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/analyticon-arcosh--c5481b70f026f5a875bcf2c9.md) | 201 | `result-track:c5481b70f026f5a875bcf2c97448f02a04bb2b03c3c92783edb469b0e37a98d0` |
| 28 | `theorem` | [cosh_bijOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/cosh-bijon--05eb9e65181afbcc18f30868.md) | 204 | `result-track:05eb9e65181afbcc18f30868adffd505ea65b26feb1908e95242d61303f9677a` |
| 29 | `theorem` | [cosh_injOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/cosh-injon--cfced0c5fabd27918a98e6d2.md) | 206 | `result-track:cfced0c5fabd27918a98e6d2638b640374b07fdc046c2dc0b2793fcdee5bd5b4` |
| 30 | `theorem` | [cosh_surjOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/cosh-surjon--4bfaae8d220624467c6a51e4.md) | 208 | `result-track:4bfaae8d220624467c6a51e4dcd034a0a213b887cee01dd5930217d8776c52ae` |
| 31 | `theorem` | [arcosh_bijOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/arcosh-bijon--0383390300cf181145561700.md) | 210 | `result-track:0383390300cf181145561700ec04083aa8bc38fec25d9eb7945bee14db9a0016` |
| 32 | `theorem` | [arcosh_injOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/arcosh-injon--4a9ee236146ab3fda05dd0bc.md) | 212 | `result-track:4a9ee236146ab3fda05dd0bc019c7306b5cb6f708aefbd894154255ae03e106b` |
| 33 | `theorem` | [arcosh_surjOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/declarations/arcosh-surjon--d9ce4467b57b378d6a06c620.md) | 214 | `result-track:d9ce4467b57b378d6a06c620bfaf1a9ac0a0e50f634fe9adcad425842d259a6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
