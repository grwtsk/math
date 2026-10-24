# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Vector.Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ec0031fba39f43316e247cde4697bfa2be6999b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ec0031fba39f43316e247cde4697bfa2be6999b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Vector.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Data.Iterators.Lemmas.Consumers.Collect` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Data.Iterators.Lemmas.Consumers.Loop` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 15; external provider; requires a separately pinned dependency.
- `Std.Data.Iterators.Lemmas.Producers.Monadic.Vector` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Vector.iter_eq_toIter_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/vector-iter-eq-toiter-iterm--a2fb4b390f2c57fef85a38b9.md) | 33 | `result-track:a2fb4b390f2c57fef85a38b93e7b4e019c1ab9ccb77d74c0dcdb7342869dff33` |
| 2 | `theorem` | [Vector.iter_eq_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/vector-iter-eq-iterfromidx--33d44144d85ab515d603b4f8.md) | 37 | `result-track:33d44144d85ab515d603b4f897caf3f0901edd98e3b5ba140d003c3c5c45ea08` |
| 3 | `theorem` | [Vector.iterFromIdx_eq_toIter_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/vector-iterfromidx-eq-toiter-iterfromidxm--df6682a4c0fcf3718d3a1013.md) | 41 | `result-track:df6682a4c0fcf3718d3a1013b506ecc76a8d05fb410dbe7de4c2ca3276035420` |
| 4 | `theorem` | [Std.Iterators.Vector.isPlausibleStep_iterFromIdx_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/std-iterators-vector-isplausiblestep-iterfromidx-of-lt--828979d0e1a08d66df9f39a6.md) | 45 | `result-track:828979d0e1a08d66df9f39a6363c5d6cf5b9b974e77031b456ab20bdb74bb9d6` |
| 5 | `theorem` | [Std.Iterators.Vector.isPlausibleStep_iterFromIdx_of_not_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/std-iterators-vector-isplausiblestep-iterfromidx-of-not-lt--6d440ab62db0d7574f2641d4.md) | 52 | `result-track:6d440ab62db0d7574f2641d4173ae0584da12fb100ad397928166bfb6117037c` |
| 6 | `theorem` | [Std.Iterators.Vector.isPlausibleStep_iter_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/std-iterators-vector-isplausiblestep-iter-of-pos--79fa470770229d9494438aed.md) | 58 | `result-track:79fa470770229d9494438aedace68e73c2d989ce0be8645a74b7b67b53340432` |
| 7 | `theorem` | [Std.Iterators.Vector.isPlausibleStep_iter_of_not_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/std-iterators-vector-isplausiblestep-iter-of-not-pos--caeda8d6dd9e33124c1cf15e.md) | 64 | `result-track:caeda8d6dd9e33124c1cf15e4d6aced664caecd75a6b5a290820a2430ed1dcd8` |
| 8 | `theorem` | [Vector.iterFromIdx_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/vector-iterfromidx-toarray--777757c43c8a24abf943e095.md) | 71 | `result-track:777757c43c8a24abf943e09501f4bcac663b96ec34bdeef0c63fe36cff382d9b` |
| 9 | `theorem` | [Vector.iter_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/vector-iter-toarray--b5434303beb2c3636cdfa889.md) | 76 | `result-track:b5434303beb2c3636cdfa889b5aaffae2da08c7544028b4ab9593f44945a8db3` |
| 10 | `theorem` | [Vector.step_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/vector-step-iterfromidx--d661fee5bf5070375414dac1.md) | 80 | `result-track:d661fee5bf5070375414dac15b4d08e86ca2770550034382da2cec3595c30f50` |
| 11 | `theorem` | [Vector.step_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/vector-step-iter--cf756e0560c6b0c937850de5.md) | 90 | `result-track:cf756e0560c6b0c937850de56e3ca5dbd040c8afd738bfd199c47b806802902a` |
| 12 | `theorem` | [Vector.toList_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/vector-tolist-iterfromidx--f92d464239a9060163298242.md) | 101 | `result-track:f92d464239a90601632982426aab048c85a8c65ce62a082bfeec06fa77a68984` |
| 13 | `theorem` | [Vector.toList_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/vector-tolist-iter--2bdd6cc59550abdf5e7961d5.md) | 107 | `result-track:2bdd6cc59550abdf5e7961d50f030891829627e6d625b26d5559b36743c5eb93` |
| 14 | `theorem` | [Vector.toArray_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/vector-toarray-iterfromidx--a42730a39061d32ead56ebd1.md) | 112 | `result-track:a42730a39061d32ead56ebd1acbe2ec34d73ee279c8b317d5048bf608abe19a3` |
| 15 | `theorem` | [Vector.toArray_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/vector-toarray-iter--da8231c3b8b24eeffbd534aa.md) | 117 | `result-track:da8231c3b8b24eeffbd534aafb6ef2625e071e7e401ce04698eee606143b962e` |
| 16 | `theorem` | [Vector.toListRev_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/vector-tolistrev-iterfromidx--05bd0b9e8e86084edd280f75.md) | 122 | `result-track:05bd0b9e8e86084edd280f75a7bfcac8bf6aaaeb67bf195a98153ef9db8fdc5d` |
| 17 | `theorem` | [Vector.toListRev_toIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/vector-tolistrev-toiter--eb72c8ef31ef76501ffe607b.md) | 127 | `result-track:eb72c8ef31ef76501ffe607bba1ca7fddfcd6ac6b3d3d3a570447684d93fefc5` |
| 18 | `theorem` | [Vector.length_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/vector-length-iterfromidx--511229ab070b96753afecd7c.md) | 132 | `result-track:511229ab070b96753afecd7cc004ca64b29fdc9e8f5b183192f96660117c167b` |
| 19 | `theorem` | [Vector.length_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/vector-length-iter--a73f9ddd1acc0091cb586988.md) | 137 | `result-track:a73f9ddd1acc0091cb586988ccca9634827fa898d90542066cbce04943b76471` |
| 20 | `theorem` | [Vector.iterFromIdx_equiv_iter_drop_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/vector-iterfromidx-equiv-iter-drop-tolist--0d2ecdf47a35e0c7bb8cd65d.md) | 143 | `result-track:0d2ecdf47a35e0c7bb8cd65d85cbd21c3054a098d7add00bace232ff0bdcd387` |
| 21 | `theorem` | [Vector.iter_equiv_iter_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant6ccf8da294f65cfe2e93c059e0eea871273fd824e4b27a0be58f8f0d67cb0dfe.lean/declarations/vector-iter-equiv-iter-tolist--ed15c388a57e0be8a79dd7e4.md) | 148 | `result-track:ed15c388a57e0be8a79dd7e48886f062a5ef6d1c38f2e30ff4338dce548ff7a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
