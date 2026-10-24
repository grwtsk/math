# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DiffContOnCl.Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2aee13826a87560cd4f4bdffe6e2f919503dc7cb",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2aee13826a87560cd4f4bdffe6e2f919503dc7cb`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Real` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Mul` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DiffContOnCl](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/diffcontoncl--ed7eb75acb6f58abc7f6ea60.md) | 37 | `declaration-track:ed7eb75acb6f58abc7f6ea60d4c1cc17e031b64dfd2249b083aa8a0b8df0e451` |
| 2 | `theorem` | [DifferentiableOn.diffContOnCl](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/differentiableon-diffcontoncl--84fe80f9aa6f82dd6fa45781.md) | 43 | `result-track:84fe80f9aa6f82dd6fa45781eb77761ca9cabaa1e3c7426876b21d08eca27acf` |
| 3 | `theorem` | [Differentiable.diffContOnCl](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/differentiable-diffcontoncl--7cc770bc07d7bc127c667b50.md) | 46 | `result-track:7cc770bc07d7bc127c667b50eacc567752d6fe8938caa3182b874c78acbba9fe` |
| 4 | `theorem` | [IsClosed.diffContOnCl_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/isclosed-diffcontoncl-iff--d1cc62feb8a68cc25bd1f2a2.md) | 49 | `result-track:d1cc62feb8a68cc25bd1f2a27facb67074ae9eec6bfaa5a6831ffb16026254a6` |
| 5 | `theorem` | [diffContOnCl_univ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/diffcontoncl-univ--5a294946698871cb8b16544c.md) | 52 | `result-track:5a294946698871cb8b16544c60b6cb9a6e39fd63e520f951e2f533a8b102c9aa` |
| 6 | `theorem` | [diffContOnCl_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/diffcontoncl-const--8fa1d8fb733ece4cc9b1d7fd.md) | 55 | `result-track:8fa1d8fb733ece4cc9b1d7fdbb88622e47318308efd49924d95d820e8812a8ac` |
| 7 | `theorem` | [comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/comp--22d3d5fc5eb16f885a8d4ef3.md) | 60 | `result-track:22d3d5fc5eb16f885a8d4ef3180bb0f07003629d4733fbca23f7128a9a3b1f4f` |
| 8 | `theorem` | [continuousOn_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/continuouson-ball--be3424ac20b77aef93d531da.md) | 64 | `result-track:be3424ac20b77aef93d531da74d7c73b4c03d5a870db974225ae93a91cdbc6ea` |
| 9 | `theorem` | [mk_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/mk-ball--d8e80869c3d286bfc60705d6.md) | 72 | `result-track:d8e80869c3d286bfc60705d67d31bd99b6b810243e854e2df577b19f07d51243` |
| 10 | `theorem` | [differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/differentiableat--eac009510c118ee378b28898.md) | 76 | `result-track:eac009510c118ee378b2889810291a27ebadb604759143c48a1a3734776b085d` |
| 11 | `theorem` | [differentiableAt'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/differentiableat--b49f2a4b6ca3330c7cdae72e.md) | 80 | `result-track:b49f2a4b6ca3330c7cdae72e943e7c47314cc1a58c3114fb11fcba92320dc938` |
| 12 | `theorem` | [mono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/mono--f998dc2fa1015fccd27aa7ad.md) | 83 | `result-track:f998dc2fa1015fccd27aa7add062832ec6576072164c77dfdde914c792a4084f` |
| 13 | `theorem` | [add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/add--3733e48a1aa4d60dde32d937.md) | 86 | `result-track:3733e48a1aa4d60dde32d937e12d2854be1de526c992879495424fb44b9be488` |
| 14 | `theorem` | [add_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/add-const--9a62e039518d1a897fe885e5.md) | 89 | `result-track:9a62e039518d1a897fe885e5e1f91580c49f08d2ff801b4cc044143c31d1b8fa` |
| 15 | `theorem` | [const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/const-add--84b28716ed1cf06d75f277b2.md) | 92 | `result-track:84b28716ed1cf06d75f277b2459fee44a30a9bfcb16e9a4d5b9482878d2b732a` |
| 16 | `theorem` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/neg--6b1d4f61c5d4063d8a2c5786.md) | 95 | `result-track:6b1d4f61c5d4063d8a2c5786d5a5df8d4e4c1383528bfdb3af3b3c6444dd5454` |
| 17 | `theorem` | [sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/sub--e659ec115f95cbc1a4e7b0ba.md) | 98 | `result-track:e659ec115f95cbc1a4e7b0baa1467f6b4f6ef8cd2021c223ce17d49c4a3718f9` |
| 18 | `theorem` | [sub_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/sub-const--779bdbbf6e79a947da96fa94.md) | 101 | `result-track:779bdbbf6e79a947da96fa94b4c60b0e86b96b941e232541e0d88b82a0247687` |
| 19 | `theorem` | [const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/const-sub--778e9443dc7c71ba24a66a82.md) | 104 | `result-track:778e9443dc7c71ba24a66a821a764bde9d1feb4706b16be087f649fac5650e1c` |
| 20 | `theorem` | [const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/const-smul--ee372a9e2cfb34406acdc39f.md) | 107 | `result-track:ee372a9e2cfb34406acdc39f013d0b80bdec9a91c76d26f28e71c68636fa1aab` |
| 21 | `theorem` | [smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/smul--45df269df8035b82a2e3b4b8.md) | 111 | `result-track:45df269df8035b82a2e3b4b85c5a9efd9ef437f2542211da78b41daf214f1b31` |
| 22 | `theorem` | [smul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/smul-const--1a36f377a7ab4035d423327c.md) | 116 | `result-track:1a36f377a7ab4035d423327ccf83103b2ba5cb3d7f79fac80197607546f41ba3` |
| 23 | `theorem` | [inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/inv--3bffad11e6af7f88baf96769.md) | 121 | `result-track:3bffad11e6af7f88baf96769bbf0128ac37416fb50c7255fd2c44a3aa12f9a4f` |
| 24 | `theorem` | [Differentiable.comp_diffContOnCl](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/differentiable-comp-diffcontoncl--ecc10d968c28bef46d70e1ce.md) | 127 | `result-track:ecc10d968c28bef46d70e1ce8d6036c3ff90a26f9aecc4e4650a87d087121eb6` |
| 25 | `theorem` | [DifferentiableOn.diffContOnCl_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variant998b25eec407b9099bb6f1bf41bb09e469ff638cca401b3695ffa00c97209e33.lean/declarations/differentiableon-diffcontoncl-ball--3ce88a851ee7a4cf619b19c5.md) | 131 | `result-track:3ce88a851ee7a4cf619b19c5f33c4a71710e4a76492023defa25c8f7ee406b57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
