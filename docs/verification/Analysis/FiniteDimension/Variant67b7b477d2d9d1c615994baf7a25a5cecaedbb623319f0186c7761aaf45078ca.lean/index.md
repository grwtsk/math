# Verification target: GRWTSK.Analysis.FiniteDimension.Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3191cc571e0ba59fb2e2dc833e98f2f3ba15c502",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/index.md) · [Full source](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3191cc571e0ba59fb2e2dc833e98f2f3ba15c502`.

Source path: `GRWTSK/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Series` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.Convolution` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.InnerProduct` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.EuclideanDist` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pointwise.Support` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_smooth_tsupport_subset](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/exists-smooth-tsupport-subset--01e802b3d70e7aec33aadec8.md) | 50 | `result-track:01e802b3d70e7aec33aadec835a730becfe84ae81d5059dd77adf9de6e1ea3ed` |
| 2 | `theorem` | [IsOpen.exists_smooth_support_eq](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/isopen-exists-smooth-support-eq--0315920ad76cd83bb98b486f.md) | 86 | `result-track:0315920ad76cd83bb98b486f7db51cc35034bf99144baeb6e71ba7e8c1dc8b7c` |
| 3 | `def` | [φ](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/anonymous--e8225ad36347f431835bb7c0.md) | 213 | `declaration-track:e8225ad36347f431835bb7c00188f5b6d3649994c726d26d81d38b2451f6ed14` |
| 4 | `theorem` | [u_exists](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/u-exists--65cd59b92209aeff233890ba.md) | 223 | `result-track:65cd59b92209aeff233890baa033c74cbb691af5154f66b88eb36580570ffca2` |
| 5 | `def` | [u](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/u--8227d7bade1fa197879036eb.md) | 257 | `declaration-track:8227d7bade1fa197879036eb484d455f7c372d21a2131e09dd8bbbf836b24757` |
| 6 | `theorem` | [u_smooth](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/u-smooth--01433c1dff5108e93e3c0a8b.md) | 263 | `result-track:01433c1dff5108e93e3c0a8b984f9891b7296eff9ec01bf002233ac191cb0f7a` |
| 7 | `theorem` | [u_continuous](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/u-continuous--87e0420fad614e113556a118.md) | 267 | `result-track:87e0420fad614e113556a1185aa9d9fa3bd1edf03e96d7dd3c49bde388f74183` |
| 8 | `theorem` | [u_support](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/u-support--abcb4552fec20d3d2a813b95.md) | 271 | `result-track:abcb4552fec20d3d2a813b9593e91f880651a102171e4fa709cbd56fa45199e8` |
| 9 | `theorem` | [u_compact_support](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/u-compact-support--28690311524d07cecd1a42db.md) | 275 | `result-track:28690311524d07cecd1a42db25bbcec15f40099d6be9c3b2a81266955b8749ea` |
| 10 | `theorem` | [u_nonneg](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/u-nonneg--e99627eb7474260a6f990c09.md) | 282 | `result-track:e99627eb7474260a6f990c09461628c7bb7afce7c0035825cc3f69d055b75d18` |
| 11 | `theorem` | [u_le_one](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/u-le-one--657304118ad0594dfdb0b82b.md) | 286 | `result-track:657304118ad0594dfdb0b82b40b30d1a5ee863a28d83a6abfd521703e0efa0dd` |
| 12 | `theorem` | [u_neg](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/u-neg--1d05859c5d67174222019f99.md) | 290 | `result-track:1d05859c5d67174222019f99ba5c47fb04a4c43eef945c88b4c2eadba0a3a2fa` |
| 13 | `theorem` | [u_int_pos](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/u-int-pos--44d8e7ba876cb9c2dca1f86d.md) | 300 | `result-track:44d8e7ba876cb9c2dca1f86d8a8ea3f0d7158ba138fe970f40052f7792f41e14` |
| 14 | `def` | [w](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/w--e9086277ee6973647b703e5b.md) | 312 | `declaration-track:e9086277ee6973647b703e5b2385271f2099b5d66f771f9900ebe2933ce2da36` |
| 15 | `theorem` | [w_def](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/w-def--3dacfee8ffbb3bdb1892e6b4.md) | 316 | `result-track:3dacfee8ffbb3bdb1892e6b435be1eb2a09d34200836d601d46b5117610b9c43` |
| 16 | `theorem` | [w_nonneg](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/w-nonneg--36e82f0fe40a49e8a5d80b92.md) | 321 | `result-track:36e82f0fe40a49e8a5d80b92718df43cc663f9c85991dd41527c124a7acda0af` |
| 17 | `theorem` | [w_mul_φ_nonneg](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/w-mul-nonneg--62f649a0deb7d062f7768e87.md) | 329 | `result-track:62f649a0deb7d062f7768e877396eb89e499506b12e95b6e2bfd7f854cd78a5d` |
| 18 | `theorem` | [w_integral](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/w-integral--ee2efbe9110907fa2f231a29.md) | 335 | `result-track:ee2efbe9110907fa2f231a29e61869d49628fc49d888e86232d903347071e1bb` |
| 19 | `theorem` | [w_support](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/w-support--ed0507e5fa67c3bd4e5119ef.md) | 341 | `result-track:ed0507e5fa67c3bd4e5119ef60d86baac91ea5c9608033e4b8da4c46eb53c122` |
| 20 | `theorem` | [w_compact_support](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/w-compact-support--378755915a199ab88e80281b.md) | 352 | `result-track:378755915a199ab88e80281beafa2779dec78cf2eeb310b44feffd7aadbf95e4` |
| 21 | `def` | [y](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/y--35a2a8ed739721f77aaa36f9.md) | 363 | `declaration-track:35a2a8ed739721f77aaa36f9598dac7682181b42dfbfe2d30475b9a5ef951df8` |
| 22 | `theorem` | [y_neg](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/y-neg--bcc7d8d85cd934e5f543a452.md) | 367 | `result-track:bcc7d8d85cd934e5f543a45261c075a349d52e6922a3a8a6a6f3ae070d892a5d` |
| 23 | `theorem` | [y_eq_one_of_mem_closedBall](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/y-eq-one-of-mem-closedball--659682c7f24fedc7854dccea.md) | 375 | `result-track:659682c7f24fedc7854dccea631cd915b18c2d56298b28ae013b4557272ad4fb` |
| 24 | `theorem` | [y_eq_zero_of_not_mem_ball](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/y-eq-zero-of-not-mem-ball--b028d14a47928b1c558cb4df.md) | 394 | `result-track:b028d14a47928b1c558cb4df026463f129579ff024e58f098c3a35b2a411f288` |
| 25 | `theorem` | [y_nonneg](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/y-nonneg--2b3d8dfe2283f6503732bc28.md) | 412 | `result-track:2b3d8dfe2283f6503732bc28423411bed38602c503eb3b035365a0a9ae41a977` |
| 26 | `theorem` | [y_le_one](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/y-le-one--399dd4405f88b93dcae4138b.md) | 416 | `result-track:399dd4405f88b93dcae4138bb88aedc89d86944590b85bd239f20a39a03100a8` |
| 27 | `theorem` | [y_pos_of_mem_ball](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/y-pos-of-mem-ball--3b6bdbff9e333e144f1fdd0e.md) | 431 | `result-track:3b6bdbff9e333e144f1fdd0e18c286e3c6738788040d885ffe6254154e113568` |
| 28 | `theorem` | [y_smooth](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/y-smooth--807e9ca69e88f90a540d4a92.md) | 476 | `result-track:807e9ca69e88f90a540d4a9292d1f1c647846f716ab303615f10f46374394362` |
| 29 | `theorem` | [y_support](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/y-support--f6626dab63ba02c8c7d9e6fa.md) | 504 | `result-track:f6626dab63ba02c8c7d9e6fa8b6f89205d7a46b0bf2e1b01d3caa03fcb198c56` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Analysis/FiniteDimension/Variant67b7b477d2d9d1c615994baf7a25a5cecaedbb623319f0186c7761aaf45078ca.lean/declarations/instance--3220491c8605a7fbe0e3f13c.md) | 515 | `declaration-track:3220491c8605a7fbe0e3f13c9e5dc0996276063e0b8612ad8ba2464de3423d2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
