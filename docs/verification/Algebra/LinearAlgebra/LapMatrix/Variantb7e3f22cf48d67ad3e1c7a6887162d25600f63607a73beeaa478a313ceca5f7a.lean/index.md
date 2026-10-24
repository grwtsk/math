# Verification target: GRWTSK.Algebra.LinearAlgebra.LapMatrix.Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f211046e228ee9f5ae10ef17a259a3df5c378792",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f211046e228ee9f5ae10ef17a259a3df5c378792`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Star.Real` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Units` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Finset` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/ishermitian--0b33bee7985b9b6616787e70.md) | 52 | `result-track:0b33bee7985b9b6616787e7046f9c9700d4b7d4a336d9576b907c8ac18c877a4` |
| 2 | `theorem` | [isHermitian_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/ishermitian-adjmatrix--13ca83a5a3e2a8dd1ebc59ab.md) | 65 | `result-track:13ca83a5a3e2a8dd1ebc59ab97d3bb2185317557604dd2c3b62c0ad11368aefc` |
| 3 | `theorem` | [IsRegularOfDegree.mem_spectrum_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/isregularofdegree-mem-spectrum-adjmatrix--4804d1d5f83b5769a1b0236d.md) | 68 | `result-track:4804d1d5f83b5769a1b0236d3c34e6443299610ef082625997b92093b0eec8d6` |
| 4 | `theorem` | [degree_eq_sum_if_adj](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/degree-eq-sum-if-adj--a895e3d1ba8b8e398467b325.md) | 76 | `result-track:a895e3d1ba8b8e398467b325dfbf7333e78275535c8fdca0c2adb71871845ce0` |
| 5 | `def` | [degMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/degmatrix--558d9278ad77684180beffb1.md) | 84 | `declaration-track:558d9278ad77684180beffb1701238b23426bcde731348b7a6300627a9d7da55` |
| 6 | `def` | [lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/lapmatrix--df6c9dc80f3f58670a0b0ec0.md) | 88 | `declaration-track:df6c9dc80f3f58670a0b0ec0bc043f331027ed9ad0226db95a5337805e96bd4c` |
| 7 | `theorem` | [isSymm_degMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/issymm-degmatrix--9ff2c28286d222c3121772ed.md) | 90 | `result-track:9ff2c28286d222c3121772ed9c81d66d078270b2848db432ca575ea92eb61c23` |
| 8 | `theorem` | [isHermitian_degMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/ishermitian-degmatrix--1e28d333bca8dbd091bb13d8.md) | 93 | `result-track:1e28d333bca8dbd091bb13d8c2e97529795d0996bfd79853d289bfa7a53fe28e` |
| 9 | `theorem` | [isSymm_lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/issymm-lapmatrix--12c4a6067a5aa51eeb6f7304.md) | 96 | `result-track:12c4a6067a5aa51eeb6f730438fad0c4afaed05280b894a74cec3d6b0eee9f28` |
| 10 | `theorem` | [isHermitian_lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/ishermitian-lapmatrix--ab9ff6575d4c63c01e3f95fe.md) | 99 | `result-track:ab9ff6575d4c63c01e3f95fe7f67da51ed1bfdd3addd5f47995ba7104847103f` |
| 11 | `theorem` | [degMatrix_mulVec_apply](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/degmatrix-mulvec-apply--3442c4a4156467937d3c21ab.md) | 104 | `result-track:3442c4a4156467937d3c21abcf6d3acbb61069ddde10add4ca22eadee32effd8` |
| 12 | `theorem` | [IsRegularOfDegree.degMatrix_eq](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/isregularofdegree-degmatrix-eq--961eff82e1743d6605a37b4d.md) | 109 | `result-track:961eff82e1743d6605a37b4dc222e50fc7e5b7a0266502477c1737fafb728773` |
| 13 | `theorem` | [degMatrix_bot](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/degmatrix-bot--1b6c845c2e0bd17a08068931.md) | 115 | `result-track:1b6c845c2e0bd17a0806893151dc9b23470b68d2d9e0a7767be3c9eb1f0915f6` |
| 14 | `theorem` | [degMatrix_top](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/degmatrix-top--c1367e879f744f88c84f8a7c.md) | 120 | `result-track:c1367e879f744f88c84f8a7c6460dc74623c4e96bc97488f6028edcc24c83418` |
| 15 | `theorem` | [IsIsolated.not_isUnit_degMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/isisolated-not-isunit-degmatrix--1eece225fec2264d2ffac506.md) | 125 | `result-track:1eece225fec2264d2ffac50659e745a86ee66a1bdaa7cb5fa2816f540611a7e6` |
| 16 | `theorem` | [lapMatrix_mulVec_apply](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/lapmatrix-mulvec-apply--f7b598ca7f4349c5b3e58abf.md) | 129 | `result-track:f7b598ca7f4349c5b3e58abfdc132d98818742eec717f870fc72354b275f64d4` |
| 17 | `theorem` | [lapMatrix_mulVec_apply'](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/lapmatrix-mulvec-apply--bec05f739fc429989c755a84.md) | 133 | `result-track:bec05f739fc429989c755a84505571f0862bdc6877dd82d1d4fc68ed2b70fc99` |
| 18 | `theorem` | [lapMatrix_mulVec_one_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/lapmatrix-mulvec-one-eq-zero--14ec724c642b9237f6f3878e.md) | 138 | `result-track:14ec724c642b9237f6f3878e8a43e51474fce488a1b6208dde7b1c49b1f68b78` |
| 19 | `theorem` | [det_lapMatrix_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/det-lapmatrix-eq-zero--a1e868525a1e6a4801c3885b.md) | 144 | `result-track:a1e868525a1e6a4801c3885b0f723c6a6805e3314056125b289b6db134e4eefd` |
| 20 | `theorem` | [not_isUnit_lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/not-isunit-lapmatrix--16fb53669dc123070c9bf41e.md) | 151 | `result-track:16fb53669dc123070c9bf41e3a0d56188788e6af0b9cf069a7f2a6649d4f33ff` |
| 21 | `theorem` | [zero_mem_spectrum_lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/zero-mem-spectrum-lapmatrix--8a904c1bd869f61fe86d1ac3.md) | 157 | `result-track:8a904c1bd869f61fe86d1ac3e50e8f8776107fcbb074c1b42c88dfb76e46d5af` |
| 22 | `theorem` | [lapMatrix_bot](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/lapmatrix-bot--530b9364b784fe22d70be9a4.md) | 163 | `result-track:530b9364b784fe22d70be9a4470b1a6ec4d7a6fa89e93ac8d48afa75e943d46f` |
| 23 | `theorem` | [lapMatrix_top](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/lapmatrix-top--d2417dc2da0134d85d4b5bdd.md) | 168 | `result-track:d2417dc2da0134d85d4b5bdd3b3340510bd430b44958983210742870397a0986` |
| 24 | `theorem` | [dotProduct_mulVec_degMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/dotproduct-mulvec-degmatrix--b4084a781fe07e6fa441aca6.md) | 175 | `result-track:b4084a781fe07e6fa441aca6adc4ee2eb45bfd9155a96f4b4712e0212b5c29a9` |
| 25 | `theorem` | [lapMatrix_toLinearMap₂'](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/lapmatrix-tolinearmap--dd3bb35a119348a7697a9811.md) | 184 | `result-track:dd3bb35a119348a7697a9811755777f0b48c87a50f8d7b9d191386d8c64b7b5f` |
| 26 | `theorem` | [posSemidef_lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/possemidef-lapmatrix--0bf6b7c83d32bea19e0f76d4.md) | 199 | `result-track:0bf6b7c83d32bea19e0f76d4af2f94d26b0e0d25e6c155e5250fc320a6b26983` |
| 27 | `theorem` | [lapMatrix_toLinearMap₂'_apply'_eq_zero_iff_forall_adj](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/lapmatrix-tolinearmap-apply-eq-zero-iff-forall-adj--226ba2bff6ea50e258e02053.md) | 206 | `result-track:226ba2bff6ea50e258e02053ea9a360431c8e68240877f3c9a208983042cdf16` |
| 28 | `theorem` | [lapMatrix_mulVec_eq_zero_iff_forall_adj](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/lapmatrix-mulvec-eq-zero-iff-forall-adj--f2c32860e0d3dc3558b742f8.md) | 212 | `result-track:f2c32860e0d3dc3558b742f80d98ffbc1bb1d4264054c336c19d99d27705bc45` |
| 29 | `theorem` | [lapMatrix_toLinearMap₂'_apply'_eq_zero_iff_forall_reachable](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/lapmatrix-tolinearmap-apply-eq-zero-iff-forall-reachable--3190ddf52b9889adcdc691af.md) | 217 | `result-track:3190ddf52b9889adcdc691afd8f83fc72fcad4bf3547450d66cea9b4cb04630c` |
| 30 | `theorem` | [lapMatrix_mulVec_eq_zero_iff_forall_reachable](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/lapmatrix-mulvec-eq-zero-iff-forall-reachable--4ab4fef0a5414e292a6565fa.md) | 227 | `result-track:4ab4fef0a5414e292a6565fa55a450bd84412487febc0ee67701349eaa5907a5` |
| 31 | `lemma` | [mem_ker_toLin'_lapMatrix_of_connectedComponent](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/mem-ker-tolin-lapmatrix-of-connectedcomponent--28ac4837a16792fdb60d161d.md) | 236 | `result-track:28ac4837a16792fdb60d161dc06d57ff5d9e567daae31422b3f1f3225a3f27ab` |
| 32 | `def` | [lapMatrix_ker_basis_aux](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/lapmatrix-ker-basis-aux--cc22740a55847217a93f2dc5.md) | 247 | `declaration-track:cc22740a55847217a93f2dc5d6cab3ce94974f5136d6750a0886b5e72239fc94` |
| 33 | `lemma` | [linearIndependent_lapMatrix_ker_basis_aux](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/linearindependent-lapmatrix-ker-basis-aux--7f9d409f18fc678549b834c2.md) | 252 | `result-track:7f9d409f18fc678549b834c2dc0e0fedf2d8c334a26b304b21dea45b0a003ebf` |
| 34 | `lemma` | [top_le_span_range_lapMatrix_ker_basis_aux](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/top-le-span-range-lapmatrix-ker-basis-aux--5bbf95d12a8a9e1da63eb422.md) | 269 | `result-track:5bbf95d12a8a9e1da63eb42283f785c6b9980293ae4f5e5c9fee15f47299aa20` |
| 35 | `def` | [lapMatrix_ker_basis](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/lapmatrix-ker-basis--395528bc171eaac323a84b48.md) | 285 | `declaration-track:395528bc171eaac323a84b48f7fcd0f7850682564f8de035fce6d39e87e9b62b` |
| 36 | `theorem` | [card_connectedComponent_eq_finrank_ker_toLin'_lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/declarations/card-connectedcomponent-eq-finrank-ker-tolin-lapmatrix--f89a9c0e0d856ad96bd8c865.md) | 291 | `result-track:f89a9c0e0d856ad96bd8c8652b3037d56a5efa162c5dc7e2d57651fae6c3cec7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
