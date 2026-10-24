# Verification target: GRWTSK.Algebra.LinearAlgebra.LapMatrix.Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e55ce542e06d18a49cd91f157707d25df3250427",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e55ce542e06d18a49cd91f157707d25df3250427`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Star.Real` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Units` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Finset` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/ishermitian--302fe773efd5a213e9c58964.md) | 44 | `result-track:302fe773efd5a213e9c589649ed95c02c9f37f08d203b0a991a3ba5637f3c2d7` |
| 2 | `theorem` | [isHermitian_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/ishermitian-adjmatrix--0a9b0d243f4628766428abe8.md) | 57 | `result-track:0a9b0d243f4628766428abe88029fe898ce7254684969b97e803f98ee2ca0bcc` |
| 3 | `theorem` | [IsRegularOfDegree.mem_spectrum_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/isregularofdegree-mem-spectrum-adjmatrix--49dab652f0e044c36570ec71.md) | 60 | `result-track:49dab652f0e044c36570ec712998fc506cec997edcbced419ee98fdd63aca395` |
| 4 | `theorem` | [degree_eq_sum_if_adj](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/degree-eq-sum-if-adj--25f03122456c4044d81666ef.md) | 68 | `result-track:25f03122456c4044d81666efa3e7a8cfbfcb14ac3b07962449d86cbb24b141da` |
| 5 | `def` | [degMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/degmatrix--efe9bdee998bc04753b6e8dc.md) | 76 | `declaration-track:efe9bdee998bc04753b6e8dc4d05d1a023c8b3c291b31372e351e1ea3e15a91b` |
| 6 | `def` | [lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/lapmatrix--17ae81c84a2560e5d9199d75.md) | 80 | `declaration-track:17ae81c84a2560e5d9199d75590b0d42282ba59297337b42cb916110ddcc99f4` |
| 7 | `theorem` | [isSymm_degMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/issymm-degmatrix--8faa888a0b3be129164b4906.md) | 82 | `result-track:8faa888a0b3be129164b49066347d6154183ea54daf5db628349c61d8814593e` |
| 8 | `theorem` | [isHermitian_degMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/ishermitian-degmatrix--45a74e68f6ffbbc3256cc2c2.md) | 85 | `result-track:45a74e68f6ffbbc3256cc2c2a90338d38332973c8e477d640a67bf8041cdef2c` |
| 9 | `theorem` | [isSymm_lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/issymm-lapmatrix--51f2619904a23736a0866646.md) | 88 | `result-track:51f2619904a23736a0866646ed688812619a64e72fc3c3fb05c4e34e7d064a5d` |
| 10 | `theorem` | [isHermitian_lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/ishermitian-lapmatrix--688aa2cd5a1c6cafc8fa65da.md) | 91 | `result-track:688aa2cd5a1c6cafc8fa65dac5b83a7ec4f18cd805e75ebaa17cc010e9cc6f85` |
| 11 | `theorem` | [degMatrix_mulVec_apply](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/degmatrix-mulvec-apply--5dee74661201aa76fbfa2377.md) | 96 | `result-track:5dee74661201aa76fbfa2377b6274abc55ea50d4545fe5e08d2049179d0aaf0e` |
| 12 | `theorem` | [IsRegularOfDegree.degMatrix_eq](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/isregularofdegree-degmatrix-eq--c4da02f1a69a71559728ffb3.md) | 101 | `result-track:c4da02f1a69a71559728ffb313570b40deec88143a88de770a3f83386aa60a38` |
| 13 | `theorem` | [degMatrix_bot](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/degmatrix-bot--92e158da43f91ca74648637f.md) | 107 | `result-track:92e158da43f91ca74648637f9a9e091d14422657105e1ddf95b5138a40cbffc6` |
| 14 | `theorem` | [degMatrix_top](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/degmatrix-top--014471d20d4f8b4ece787ba9.md) | 112 | `result-track:014471d20d4f8b4ece787ba938e01de6db91fb6caef619618fde9a87747ac35e` |
| 15 | `theorem` | [IsIsolated.not_isUnit_degMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/isisolated-not-isunit-degmatrix--60ab928cc0eda0ac0c1c6cd1.md) | 117 | `result-track:60ab928cc0eda0ac0c1c6cd11350a0c610e1c111c0b065b89ee553afd7e55d40` |
| 16 | `theorem` | [lapMatrix_mulVec_apply](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/lapmatrix-mulvec-apply--0592d08ac03319968f657b63.md) | 121 | `result-track:0592d08ac03319968f657b63feb1bf68085a2564ef72d2e42682bd14a9bb6a80` |
| 17 | `theorem` | [lapMatrix_mulVec_apply'](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/lapmatrix-mulvec-apply--159ca0ae040dbb80a139db1f.md) | 125 | `result-track:159ca0ae040dbb80a139db1f823e187247b9bfe806672a49edf87891c7bdf02c` |
| 18 | `theorem` | [lapMatrix_mulVec_one_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/lapmatrix-mulvec-one-eq-zero--2652d0c06e54da1783621d48.md) | 130 | `result-track:2652d0c06e54da1783621d4884623c0eb6d047a9d185735653e5eb8436e9c8f2` |
| 19 | `theorem` | [det_lapMatrix_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/det-lapmatrix-eq-zero--4af6217c9e8d8516cccfee23.md) | 136 | `result-track:4af6217c9e8d8516cccfee23d9f28d462256d362de7609f2040730316d803d21` |
| 20 | `theorem` | [not_isUnit_lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/not-isunit-lapmatrix--139812f38c93c6ab13e71b7b.md) | 143 | `result-track:139812f38c93c6ab13e71b7b994f5ae2d44ee7940ee4f288a43ab6ded6000eb3` |
| 21 | `theorem` | [zero_mem_spectrum_lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/zero-mem-spectrum-lapmatrix--8e49518830d32dde624df318.md) | 149 | `result-track:8e49518830d32dde624df318e758ed22e4d760ca7d5d95619593c8ec02c66d53` |
| 22 | `theorem` | [lapMatrix_bot](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/lapmatrix-bot--4eb10c16d6538552df0b422f.md) | 155 | `result-track:4eb10c16d6538552df0b422fa9bc20c2390579ea621c33214c89cec63ccbed42` |
| 23 | `theorem` | [lapMatrix_top](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/lapmatrix-top--d61d9013fb53211a4d6c5894.md) | 160 | `result-track:d61d9013fb53211a4d6c5894ad259db7816e4be644f41ff7ae39bd478396aeca` |
| 24 | `theorem` | [dotProduct_mulVec_degMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/dotproduct-mulvec-degmatrix--7c2679adb1bd8e3288c1c832.md) | 167 | `result-track:7c2679adb1bd8e3288c1c83211fcd07c86afef2c7ba8241b187249b919cc99b1` |
| 25 | `theorem` | [lapMatrix_toLinearMap₂'](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/lapmatrix-tolinearmap--2d4eb270253d4799abe40ea0.md) | 176 | `result-track:2d4eb270253d4799abe40ea05be6647d6d62bf921f47d9326a5af20ee70041d7` |
| 26 | `theorem` | [posSemidef_lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/possemidef-lapmatrix--1021333e230a6481a6757d3f.md) | 191 | `result-track:1021333e230a6481a6757d3f7d7472f381c47cbd3e11cf76981e2411833a0a2c` |
| 27 | `theorem` | [lapMatrix_toLinearMap₂'_apply'_eq_zero_iff_forall_adj](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/lapmatrix-tolinearmap-apply-eq-zero-iff-forall-adj--809c9a037efcdef9356c3522.md) | 198 | `result-track:809c9a037efcdef9356c3522690b92019200477a9da981dc80528b2b1a93fcce` |
| 28 | `theorem` | [lapMatrix_mulVec_eq_zero_iff_forall_adj](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/lapmatrix-mulvec-eq-zero-iff-forall-adj--c4bceb37470aa6bb72d2260c.md) | 204 | `result-track:c4bceb37470aa6bb72d2260c87a7d97dce3d82ccaf899a8e3d016cf116d0fceb` |
| 29 | `theorem` | [lapMatrix_toLinearMap₂'_apply'_eq_zero_iff_forall_reachable](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/lapmatrix-tolinearmap-apply-eq-zero-iff-forall-reachable--8dc26173cbcb09a58c37cce1.md) | 209 | `result-track:8dc26173cbcb09a58c37cce166d05f222f3db6db0c91471101cf6320a6b9ddef` |
| 30 | `theorem` | [lapMatrix_mulVec_eq_zero_iff_forall_reachable](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/lapmatrix-mulvec-eq-zero-iff-forall-reachable--21cdade70ab351bd588e0fa2.md) | 219 | `result-track:21cdade70ab351bd588e0fa28b7584526a6c857ebcd8918b9a233a82bb573809` |
| 31 | `lemma` | [mem_ker_toLin'_lapMatrix_of_connectedComponent](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/mem-ker-tolin-lapmatrix-of-connectedcomponent--05053d41d15666244e627888.md) | 228 | `result-track:05053d41d15666244e6278885d42de86cf1021846a969c9e1ad72f49c39f22c4` |
| 32 | `def` | [lapMatrix_ker_basis_aux](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/lapmatrix-ker-basis-aux--9db94e79c2e22d53f265e64e.md) | 239 | `declaration-track:9db94e79c2e22d53f265e64e179676497f9aa186a1feb30ba22dcfbffcac55f4` |
| 33 | `lemma` | [linearIndependent_lapMatrix_ker_basis_aux](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/linearindependent-lapmatrix-ker-basis-aux--ce1f41bf2ad1c9ae1ab8508b.md) | 244 | `result-track:ce1f41bf2ad1c9ae1ab8508bc1efd89f73b18d705d840cb384987eeded691f6d` |
| 34 | `lemma` | [top_le_span_range_lapMatrix_ker_basis_aux](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/top-le-span-range-lapmatrix-ker-basis-aux--691a2f22ea0f920990fc13f6.md) | 261 | `result-track:691a2f22ea0f920990fc13f6528942f642de1b2353f4f9164a1d26f011c75e2e` |
| 35 | `def` | [lapMatrix_ker_basis](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/lapmatrix-ker-basis--37cd28cb404e2016cb077994.md) | 277 | `declaration-track:37cd28cb404e2016cb07799400b1ed9909cd4fc0dc6c0344ef52590c820df994` |
| 36 | `theorem` | [card_connectedComponent_eq_finrank_ker_toLin'_lapMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LapMatrix/Variant6412946a4d4e340d59f42026ebfe2d47ab468da8596be53d055c5627df20faf0.lean/declarations/card-connectedcomponent-eq-finrank-ker-tolin-lapmatrix--233abe903788985bfd0d7ac1.md) | 283 | `result-track:233abe903788985bfd0d7ac19da7a053a14f9121040bf334e6a8ccb2687f2861` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
