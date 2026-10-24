# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.FiniteDimension.Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d1c2a4d7b4532225c58289c25d1964dc73d5457",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d1c2a4d7b4532225c58289c25d1964dc73d5457`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.AsymptoticEquivalent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.AddTorsor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.AffineIsometry` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.RieszLemma` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.FiniteDimension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Module` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Matrix` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toLinearIsometryEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/tolinearisometryequiv--f7901059c733f84eebfc6381.md) | 68 | `declaration-track:f7901059c733f84eebfc638140328b6ac5e845286581cebce899767a34dab691` |
| 2 | `theorem` | [coe_toLinearIsometryEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/coe-tolinearisometryequiv--e7379af073092d90ddfef983.md) | 75 | `result-track:e7379af073092d90ddfef983f42e555287e8c2c15171d1a108a1a426975e8eb8` |
| 3 | `theorem` | [toLinearIsometryEquiv_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/tolinearisometryequiv-apply--dff77b660bcbb6c8cbe1dc20.md) | 81 | `result-track:dff77b660bcbb6c8cbe1dc20d2ea3ab83d136a2b005a066c9691bb348a5a3e01` |
| 4 | `def` | [toAffineIsometryEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/toaffineisometryequiv--65a00f370ce8ad92843ade5c.md) | 100 | `declaration-track:65a00f370ce8ad92843ade5c6b12ccf814b66a15e49092d303f7e00201fd1938` |
| 5 | `theorem` | [coe_toAffineIsometryEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/coe-toaffineisometryequiv--43fc80a7216903b78a301dc3.md) | 107 | `result-track:43fc80a7216903b78a301dc32f3b5711f2e18ff8ab94c038a7379608bdf94193` |
| 6 | `theorem` | [toAffineIsometryEquiv_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/toaffineisometryequiv-apply--da95bed7a34c8fbd39c94e5f.md) | 113 | `result-track:da95bed7a34c8fbd39c94e5f2d573ad09f129ad9b602bcbbcd896e3829a2eb28` |
| 7 | `theorem` | [AffineMap.continuous_of_finiteDimensional](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/affinemap-continuous-of-finitedimensional--ce0102e5ac2260c00866a042.md) | 132 | `result-track:ce0102e5ac2260c00866a04291ebd58afdf2258fb6f30a25526ba9519c8e47a0` |
| 8 | `theorem` | [AffineEquiv.continuous_of_finiteDimensional](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/affineequiv-continuous-of-finitedimensional--68ef38508370a3a2841c1f27.md) | 136 | `result-track:68ef38508370a3a2841c1f27093030059ed565783bc46f254160cfb6863add2d` |
| 9 | `def` | [AffineEquiv.toHomeomorphOfFiniteDimensional](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/affineequiv-tohomeomorphoffinitedimensional--a613514df0d09a41331c7e1c.md) | 141 | `declaration-track:a613514df0d09a41331c7e1c07e3ba182ca6dddf66e1badb64768ea2ffcb1e8e` |
| 10 | `theorem` | [AffineEquiv.coe_toHomeomorphOfFiniteDimensional](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/affineequiv-coe-tohomeomorphoffinitedimensional--53cb924d4e7d9b8f8803d06a.md) | 150 | `result-track:53cb924d4e7d9b8f8803d06af1e0a64bdef33767c0958d8861e63d17f7452ef6` |
| 11 | `theorem` | [AffineEquiv.coe_toHomeomorphOfFiniteDimensional_symm](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/affineequiv-coe-tohomeomorphoffinitedimensional-symm--b8be13cadc6d9f7b65972bff.md) | 156 | `result-track:b8be13cadc6d9f7b65972bfff97845da59fcdcfbe8b1af7305adf5cce8902170` |
| 12 | `theorem` | [ContinuousLinearMap.continuous_det](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/continuouslinearmap-continuous-det--d61ddeecdf543c703495b83f.md) | 163 | `result-track:d61ddeecdf543c703495b83ffa5b21cf8b725e74baa8e15fe30e88919300feee` |
| 13 | `theorem` | [lipschitzExtensionConstant_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/lipschitzextensionconstant-pos--d7040c94595f041da20ab591.md) | 189 | `result-track:d7040c94595f041da20ab591e8d49891bc8f3ae032418c3235ac263db8cc8109` |
| 14 | `theorem` | [LipschitzOnWith.extend_finite_dimension](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/lipschitzonwith-extend-finite-dimension--9f336126b4e1324f202e5b98.md) | 198 | `result-track:9f336126b4e1324f202e5b98751ac684ccaedf80617c689e00b886eee4981ff6` |
| 15 | `theorem` | [LinearMap.exists_antilipschitzWith](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/linearmap-exists-antilipschitzwith--33c48d0db3417247c9ef6b0e.md) | 223 | `result-track:33c48d0db3417247c9ef6b0e8408acd07e8df51f6e1a5f6ebccc8de007b8dd03` |
| 16 | `theorem` | [LinearIndependent.eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/linearindependent-eventually--1af041a6426621be162e43de.md) | 232 | `result-track:1af041a6426621be162e43de60caeedd9227bec1c7118458a79f85ba203b0b7d` |
| 17 | `theorem` | [isOpen_setOf_linearIndependent](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/isopen-setof-linearindependent--1b989a02b74e09798cfea4b7.md) | 257 | `result-track:1b989a02b74e09798cfea4b72258745e8959c928a17ad0f52b7ecefb8a3a6e9b` |
| 18 | `theorem` | [isOpen_setOf_nat_le_rank](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/isopen-setof-nat-le-rank--e52db82cc42e506254a8e978.md) | 262 | `result-track:e52db82cc42e506254a8e978068f34b1ea8b2cf9e7f35b81e55a42b22c0bcc31` |
| 19 | `theorem` | [Basis.op_nnnorm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/basis-op-nnnorm-le--57ee0fa48a0a25d7476fa772.md) | 271 | `result-track:57ee0fa48a0a25d7476fa7728462089b622c8edda60b40c143d869b7a6727121` |
| 20 | `theorem` | [Basis.op_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/basis-op-norm-le--4e3db779ead937b2294e5efa.md) | 290 | `result-track:4e3db779ead937b2294e5efafcd932fc54e9cee7f4d85b3fc71105a5a97b491e` |
| 21 | `theorem` | [Basis.exists_op_nnnorm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/basis-exists-op-nnnorm-le--b268314f83bc6f954ebcf25b.md) | 297 | `result-track:b268314f83bc6f954ebcf25b36a2aca4eec010101601c98e3225b28181286f61` |
| 22 | `theorem` | [Basis.exists_op_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/basis-exists-op-norm-le--4c47fcfa8b589326606ae96f.md) | 307 | `result-track:4c47fcfa8b589326606ae96f07c1f77eac26e89ebbd269e60cc02dd337073a58` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/instance--2f2ae2f1408abe018e0bf55e.md) | 316 | `declaration-track:2f2ae2f1408abe018e0bf55ea9bcd23ee4960c37b94c39f6c6c5d28bcf31a8b6` |
| 24 | `theorem` | [FiniteDimensional.complete](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/finitedimensional-complete--d26b63f307a7e64a3ca00039.md) | 364 | `result-track:d26b63f307a7e64a3ca00039343243bc819926d88b7a69a0eec677b9c80b7897` |
| 25 | `theorem` | [Submodule.complete_of_finiteDimensional](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/submodule-complete-of-finitedimensional--22f29b06e8be4b7e1916d4eb.md) | 373 | `result-track:22f29b06e8be4b7e1916d4eba41e28ce43aa30fcc6664c23e9485017c11fcb46` |
| 26 | `theorem` | [Submodule.closed_of_finiteDimensional](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/submodule-closed-of-finitedimensional--7c47e72dbeaf529930464c6b.md) | 379 | `result-track:7c47e72dbeaf529930464c6b02bb9551033d1704999a31bce480a826b8791cb3` |
| 27 | `theorem` | [AffineSubspace.closed_of_finiteDimensional](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/affinesubspace-closed-of-finitedimensional--3785484d6acee8e54757c02d.md) | 384 | `result-track:3785484d6acee8e54757c02d0098835baad1f60fe40d9a149ec8d1efb1121b53` |
| 28 | `theorem` | [exists_norm_le_le_norm_sub_of_finset](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/exists-norm-le-le-norm-sub-of-finset--7d444204d4612564e55b8ee0.md) | 394 | `result-track:7d444204d4612564e55b8ee0f320407f34f7c355ba999dccda236646941b6cc0` |
| 29 | `theorem` | [exists_seq_norm_le_one_le_norm_sub'](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/exists-seq-norm-le-one-le-norm-sub--63be8f46547227db4754f33f.md) | 420 | `result-track:63be8f46547227db4754f33f096be464e6cf1a5dda60694d3c64f6c8017ec5ea` |
| 30 | `theorem` | [exists_seq_norm_le_one_le_norm_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/exists-seq-norm-le-one-le-norm-sub--6f47d4b90806c526d5b3fb0f.md) | 434 | `result-track:6f47d4b90806c526d5b3fb0fd604525b2dfb62b077376a983f329877632d5d3a` |
| 31 | `theorem` | [finiteDimensional_of_isCompact_closed_ball₀](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/finitedimensional-of-iscompact-closed-ball--6ae1b16f70395c66451d5838.md) | 446 | `result-track:6ae1b16f70395c66451d58381ece9ef669aff62e7a8359a67e9e7585cce225d5` |
| 32 | `theorem` | [finiteDimensional_of_isCompact_closedBall](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/finitedimensional-of-iscompact-closedball--6b1acff08a0536253a810ff8.md) | 480 | `result-track:6b1acff08a0536253a810ff8c962623947bedc3d2ae83ce79380258e37976fb1` |
| 33 | `theorem` | [HasCompactMulSupport.eq_one_or_finiteDimensional](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/hascompactmulsupport-eq-one-or-finitedimensional--502933e1d0527baa665f30be.md) | 492 | `result-track:502933e1d0527baa665f30befba0d6acda577486bb1daa8e52c3eb73176abd14` |
| 34 | `theorem` | [LinearEquiv.closedEmbedding_of_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/linearequiv-closedembedding-of-injective--f11c9fa33f6e287511f6aed4.md) | 515 | `result-track:f11c9fa33f6e287511f6aed437468bba29a804fe73c78373f0639fcfaad6f927` |
| 35 | `theorem` | [ContinuousLinearMap.exists_right_inverse_of_surjective](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/continuouslinearmap-exists-right-inverse-of-surjective--fd11572cb4c8585414a421ed.md) | 524 | `result-track:fd11572cb4c8585414a421ede173d7b536ed450a3a71be2da4d7f386f1f68c7d` |
| 36 | `theorem` | [closedEmbedding_smul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/closedembedding-smul-left--39497ab966d6b65097ac8396.md) | 531 | `result-track:39497ab966d6b65097ac83960a1d38eb0ed1b41433e0fe90ab3ea5e62d38bf18` |
| 37 | `theorem` | [isClosedMap_smul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/isclosedmap-smul-left--fba6e287104a4b237c39d0d2.md) | 536 | `result-track:fba6e287104a4b237c39d0d2430a73300f5bde56b1e62353c55c6ebc20151ce5` |
| 38 | `def` | [ContinuousLinearEquiv.piRing](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/continuouslinearequiv-piring--9ec25562bcca96535d16252f.md) | 548 | `declaration-track:9ec25562bcca96535d16252fd79a2d32853a192e2fc643998990405861d6dee0` |
| 39 | `theorem` | [continuousOn_clm_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/continuouson-clm-apply--b10501ba978951c97840dabb.md) | 573 | `result-track:b10501ba978951c97840dabb4d6db9273fa6480c55baf7db21d14d9f1702d8f8` |
| 40 | `theorem` | [continuous_clm_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/continuous-clm-apply--fe8d06c02b13221f23baac01.md) | 585 | `result-track:fe8d06c02b13221f23baac01f4268e15bb4988ddb3e511df4e41a22e6876a455` |
| 41 | `theorem` | [FiniteDimensional.proper](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/finitedimensional-proper--05e4b2c6a44aa19f1707bf36.md) | 601 | `result-track:05e4b2c6a44aa19f1707bf362108c1ca7f35b7772df37c149aec1dbd96488292` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/instance--c65376697d35d651f2cea227.md) | 610 | `declaration-track:c65376697d35d651f2cea2272fd6551a7a930f6fba7ebc18f44c06d0bdfc79f1` |
| 43 | `theorem` | [exists_mem_frontier_infDist_compl_eq_dist](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/exists-mem-frontier-infdist-compl-eq-dist--722cf7f552aa18336cb93848.md) | 619 | `result-track:722cf7f552aa18336cb938486445c5282c9d87eba4359dd46ec09636c3a3fa95` |
| 44 | `theorem` | [IsCompact.exists_mem_frontier_infDist_compl_eq_dist](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/iscompact-exists-mem-frontier-infdist-compl-eq-dist--449f5ca06c046e619c254335.md) | 635 | `result-track:449f5ca06c046e619c2543359e398a0ea0bd630b634fadb746aa02ba6082156a` |
| 45 | `theorem` | [summable_norm_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/summable-norm-iff--64f3a550262678c22d30bf58.md) | 656 | `result-track:64f3a550262678c22d30bf583569ffe25b2d91e3c410ebf215ee9119645a0d2a` |
| 46 | `theorem` | [summable_of_isBigO'](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/summable-of-isbigo--e4ab494bc68609cfe6f1d83c.md) | 680 | `result-track:e4ab494bc68609cfe6f1d83cd6940ad818242897bc4728f46d7f1d9adbe6a2a9` |
| 47 | `theorem` | [summable_of_isBigO_nat'](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/summable-of-isbigo-nat--5c330297708826bd6c3e82ba.md) | 687 | `result-track:5c330297708826bd6c3e82baabe14ebb3bbd1f1605a27aed41837001275c1ae4` |
| 48 | `theorem` | [summable_of_isEquivalent](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/summable-of-isequivalent--39e9ce1be41984cb5268e4b1.md) | 694 | `result-track:39e9ce1be41984cb5268e4b114ebd60cc677685c3f930be508cc02facdc10aa9` |
| 49 | `theorem` | [summable_of_isEquivalent_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/summable-of-isequivalent-nat--b288576647a5d6f84a8a5b3e.md) | 700 | `result-track:b288576647a5d6f84a8a5b3ead4338d618340b55b9f5c8a91668a1dc4b99c633` |
| 50 | `theorem` | [IsEquivalent.summable_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/isequivalent-summable-iff--b4ae6dcb4d5cb06dc62edc92.md) | 706 | `result-track:b4ae6dcb4d5cb06dc62edc926ea055906df698a5aacb6a87bf3fe2b42a2e3668` |
| 51 | `theorem` | [IsEquivalent.summable_iff_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/declarations/isequivalent-summable-iff-nat--562c6d9af53455304f2bc73b.md) | 712 | `result-track:562c6d9af53455304f2bc73b0a10bc6f41628abb2a66277df20145430b9a33ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
