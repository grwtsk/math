# Verification target: GRWTSK.Algebra.LinearAlgebra.Inner.Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "583f697e054712bb4da876bf3becc182955138b1",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `583f697e054712bb4da876bf3becc182955138b1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wInner](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner--3b6fa1686d04082d74facccb.md) | 44 | `declaration-track:3b6fa1686d04082d74facccb267e7db911ce02fe31a9d2f18b5b56f30069fe1f` |
| 2 | `abbrev` | [cWeight](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/cweight--16781cccbe17f363a42d824c.md) | 47 | `declaration-track:16781cccbe17f363a42d824c1432b8d9b6fdca81518474c789008e7108cb2fdb` |
| 3 | `lemma` | [wInner_cWeight_eq_smul_wInner_one](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-cweight-eq-smul-winner-one--d9ff5eb6df6426a7ea40daf0.md) | 57 | `result-track:d9ff5eb6df6426a7ea40daf022e04fce10cfd69c5d51f523563a73967dd11bb1` |
| 4 | `lemma` | [conj_wInner_symm](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/conj-winner-symm--f147fa5d7208070fbfb2df02.md) | 61 | `result-track:f147fa5d7208070fbfb2df02c2d7ef4aa697df592a3a482d38a719f95a0a48af` |
| 5 | `lemma` | [wInner_zero_left](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-zero-left--7ecdb99638c50c05028e5fb1.md) | 65 | `result-track:7ecdb99638c50c05028e5fb195a9620196df00e4ed9e51655b3e6b98e236ba15` |
| 6 | `lemma` | [wInner_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-zero-right--a02e8394e6645a5244b516f0.md) | 66 | `result-track:a02e8394e6645a5244b516f0519d501a0591f67ed48e91fdea94e60561a75c16` |
| 7 | `lemma` | [wInner_add_left](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-add-left--19dfe9eb0cf0a33c92378749.md) | 68 | `result-track:19dfe9eb0cf0a33c9237874919f03e51c1f2288436b80187e3377cf70035512c` |
| 8 | `lemma` | [wInner_add_right](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-add-right--660ee6139905edac17c2277b.md) | 72 | `result-track:660ee6139905edac17c2277bebb1d27822a6698788295402f0840938ef6d8e42` |
| 9 | `lemma` | [wInner_neg_left](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-neg-left--6f6ef1af514fcc2704a3dffb.md) | 76 | `result-track:6f6ef1af514fcc2704a3dffb504332fd854f4bc177285902766776d12b34d55c` |
| 10 | `lemma` | [wInner_neg_right](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-neg-right--5c624ca1a565c59bb8b517f2.md) | 79 | `result-track:5c624ca1a565c59bb8b517f243dbd881a1291e749672b0abdd85edc1db172451` |
| 11 | `lemma` | [wInner_sub_left](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-sub-left--5c636716457cf8637c3a1bfa.md) | 82 | `result-track:5c636716457cf8637c3a1bfa23134b5be9f0fba6c64ba16f76f86570ec1c553b` |
| 12 | `lemma` | [wInner_sub_right](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-sub-right--b905f72df77fdb260d503747.md) | 86 | `result-track:b905f72df77fdb260d5037473bfbe3c471e9372f02286a327d0a5b5284fb4040` |
| 13 | `lemma` | [wInner_of_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-of-isempty--59e6bf145dbb2872637074be.md) | 90 | `result-track:59e6bf145dbb2872637074be8f971ff967c6ce24ee186f6710fc4eb46a5b9b32` |
| 14 | `lemma` | [wInner_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-smul-left--9452552d253c38b377072b5a.md) | 93 | `result-track:9452552d253c38b377072b5ae7b6a6abe5f623f5a69e80bdc1e878c9b2174d55` |
| 15 | `lemma` | [wInner_smul_right](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-smul-right--0f6b922746ebc41aa94242f8.md) | 99 | `result-track:0f6b922746ebc41aa94242f8b273f45e77c2a4d3bf90ab14a89e50ef8384e98d` |
| 16 | `lemma` | [mul_wInner_left](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/mul-winner-left--25f0caf5b3200fa0763b6178.md) | 104 | `result-track:25f0caf5b3200fa0763b6178f22ad7f5bf5a1fc18fb002b471f96b36d9e805ba` |
| 17 | `lemma` | [wInner_one_eq_sum](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-one-eq-sum--d542278951c5826e28f96eef.md) | 107 | `result-track:d542278951c5826e28f96eef44571975fc9b5ce272a6723369e507448a36e99f` |
| 18 | `lemma` | [wInner_cWeight_eq_expect](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-cweight-eq-expect--e548af8153188497124d147c.md) | 108 | `result-track:e548af8153188497124d147c255b1b99aea2094a9e6f09e54e85343fa25fc555` |
| 19 | `lemma` | [wInner_const_left](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-const-left--f1f22708561d493a7c36b8be.md) | 116 | `result-track:f1f22708561d493a7c36b8be0507b14987e469cd871b6c2fbf285762f3a45294` |
| 20 | `lemma` | [wInner_const_right](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-const-right--0c23be62556fb350544c17c5.md) | 119 | `result-track:0c23be62556fb350544c17c532b05c3dc17d85398cb6f6e688c8c222510c8d77` |
| 21 | `lemma` | [wInner_one_const_left](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-one-const-left--aaed1353ada62b7d7d1bdf99.md) | 122 | `result-track:aaed1353ada62b7d7d1bdf990041dcb51c1a4536514abd250130e4af3f2b4a87` |
| 22 | `lemma` | [wInner_one_const_right](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-one-const-right--cb7d82ef74a42c0a173fbc03.md) | 125 | `result-track:cb7d82ef74a42c0a173fbc032718c96aa61a156e0e969fd6e072f39801ce94ac` |
| 23 | `lemma` | [wInner_cWeight_const_left](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-cweight-const-left--3f3a7f60dbe1bc9e6d413507.md) | 128 | `result-track:3f3a7f60dbe1bc9e6d4135071d7d4cd299dace7160ca594d3862a1339e3c078f` |
| 24 | `lemma` | [wInner_cWeight_const_right](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-cweight-const-right--e0eb9d60cd0bc150c396fa48.md) | 131 | `result-track:e0eb9d60cd0bc150c396fa48a8f686156c434553eae571ad1b576bde7a63f4fe` |
| 25 | `lemma` | [wInner_one_eq_inner](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-one-eq-inner--e5ac698353c8716919aa014c.md) | 134 | `result-track:e5ac698353c8716919aa014cb04a551d65b74c97d82dad4e66615f5719871e3f` |
| 26 | `lemma` | [inner_eq_wInner_one](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/inner-eq-winner-one--1b94d3787cd42acef499eae3.md) | 138 | `result-track:1b94d3787cd42acef499eae3f8839c4c312e0527cf82a548ce9af128216a0ef6` |
| 27 | `lemma` | [linearIndependent_of_ne_zero_of_wInner_one_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/linearindependent-of-ne-zero-of-winner-one-eq-zero--95c6d40a69d30953f2b96602.md) | 141 | `result-track:95c6d40a69d30953f2b96602dac448fabf6963ec941e7e7319f0052d9b109054` |
| 28 | `lemma` | [linearIndependent_of_ne_zero_of_wInner_cWeight_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/linearindependent-of-ne-zero-of-winner-cweight-eq-zero--e2333753137b584d46d3ae8f.md) | 147 | `result-track:e2333753137b584d46d3ae8fe1acda808997080f5fe2efc8d27d3131c3d2bf7a` |
| 29 | `lemma` | [wInner_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/winner-nonneg--b7eb888c7a1ac9188c12fd9e.md) | 155 | `result-track:b7eb888c7a1ac9188c12fd9e92e5845b0a2f72bff840793cd888602e745f1fec` |
| 30 | `lemma` | [norm_wInner_le](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/norm-winner-le--e0a2427bbd9404b0c1cfe95f.md) | 158 | `result-track:e0a2427bbd9404b0c1cfe95f9a8d911bcd2beb06f51959cc85b44844f038d7fc` |
| 31 | `lemma` | [abs_wInner_le](../../../../../mathematics/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/declarations/abs-winner-le--5d4348eca00372e9aac44b98.md) | 167 | `result-track:5d4348eca00372e9aac44b98ec7b63a68ae96f475e61bee28c0f454fdb44087d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
