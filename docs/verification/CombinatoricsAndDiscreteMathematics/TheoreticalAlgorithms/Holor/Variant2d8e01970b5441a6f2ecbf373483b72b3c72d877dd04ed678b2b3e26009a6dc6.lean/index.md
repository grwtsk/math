# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Holor.Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdd63b666ab69a2ac52e90f222158b3cfa6b3b6b",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdd63b666ab69a2ac52e90f222158b3cfa6b3b6b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Find` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HolorIndex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/holorindex--8cc39e06f4120d614d6a9d3f.md) | 41 | `declaration-track:8cc39e06f4120d614d6a9d3fa970ce2a7b0ce8512111d9622a9632ac73f5f1e3` |
| 2 | `def` | [take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/take--121da9117f0dbcb42692c62c.md) | 49 | `declaration-track:121da9117f0dbcb42692c62c18b402f3150f5bf63a2add477fe63a6fad448a07` |
| 3 | `def` | [drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/drop--639f96b4ed3484ddb9bff994.md) | 53 | `declaration-track:639f96b4ed3484ddb9bff994f4ab1cd2021a5963a55871e1d2589a7cc4ba1f1c` |
| 4 | `theorem` | [cast_type](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/cast-type--5dae96131108ef697bf5bd29.md) | 56 | `result-track:5dae96131108ef697bf5bd299119ba72bd9f1873ea5da4fec84916760f0a7c7d` |
| 5 | `def` | [assocRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/assocright--3f3cb2753b9189c66ea54b02.md) | 60 | `declaration-track:3f3cb2753b9189c66ea54b025733f56980b59c49e0a4aa9f86b2468675f89a2c` |
| 6 | `def` | [assocLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/assocleft--dff3dfc998c1221310ef42db.md) | 64 | `declaration-track:dff3dfc998c1221310ef42db99d4b9b57a58ef3632b0b8b84ad9806d296d11ed` |
| 7 | `theorem` | [take_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/take-take--dc2eeecf82069775514b766f.md) | 67 | `result-track:dc2eeecf82069775514b766fb49929c88f3669cf4eedbd8111a51480b46f3f9b` |
| 8 | `theorem` | [drop_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/drop-take--0f4ff7e5671459dafe87f41e.md) | 72 | `result-track:0f4ff7e5671459dafe87f41ee289da7810ca7607d1327eba30717fc65313adcc` |
| 9 | `theorem` | [drop_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/drop-drop--42601ca74d3b1b6edb574fb8.md) | 75 | `result-track:42601ca74d3b1b6edb574fb83f9299593fb8fc60476e6cc00c4a1eafaa28506c` |
| 10 | `def` | [Holor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/holor--b8206794ba4c9a009cb890f8.md) | 81 | `declaration-track:b8206794ba4c9a009cb890f8b17b97a559d79d6062a9e421d1949fe1f9ddd396` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/instance--6c1d43910cf28a014f411de6.md) | 88 | `declaration-track:6c1d43910cf28a014f411de670e713e9154f97019e4b8ec0c9eb5fcc9f0091c5` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/instance--3ffd0740ec04927e5db12679.md) | 91 | `declaration-track:3ffd0740ec04927e5db12679139ba0abcf6f7763d73c1d320f1653e0b8e339f9` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/instance--44d33f432d49fb3286e8b3e0.md) | 94 | `declaration-track:44d33f432d49fb3286e8b3e0b8cbf319e3e6dc8c8ac8ec158125a62fcccf7515` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/instance--8c1de2d5d2939a67c7c6a09a.md) | 97 | `declaration-track:8c1de2d5d2939a67c7c6a09a5371ff2ca362dd2de02bf06af525352fc520c436` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/instance--40e74c3a9f51f4dd85550834.md) | 100 | `declaration-track:40e74c3a9f51f4dd855508349791c33e2e9bbecc7c4b2188d6e42ef410941456` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/instance--e3248396e899ffd9a9bbc6b0.md) | 102 | `declaration-track:e3248396e899ffd9a9bbc6b0b13352a3691e4cb8be96fc4c05438306d81655c3` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/instance--2494cad699def0a9a04ba08f.md) | 104 | `declaration-track:2494cad699def0a9a04ba08f577048aa7d29e611aec9a8dfe04300bb1433953c` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/instance--91b4c28fd2abc8f645758ed9.md) | 106 | `declaration-track:91b4c28fd2abc8f645758ed9d88b2a46d66bea98229fb31ebe4a6e9d679dfcac` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/instance--8eaa0fe740189b9a4688a9a5.md) | 108 | `declaration-track:8eaa0fe740189b9a4688a9a55e276c2c21fa044da3da3b37310bb7a5bba0c9b2` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/instance--cb698365f6b209d4d9cbc0b8.md) | 110 | `declaration-track:cb698365f6b209d4d9cbc0b8cdbf070bd5a9ef56829bb051f10998170c824565` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/instance--ef4c52b82bdfcdbc8da97069.md) | 113 | `declaration-track:ef4c52b82bdfcdbc8da97069348e41a3298d973d7a5114588e6e3266558fe637` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/instance--67b813a3b3ec72eb287991f1.md) | 116 | `declaration-track:67b813a3b3ec72eb287991f1d21de83c12e150d2f4f1565167516f4dece946c6` |
| 23 | `def` | [mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/mul--11e6d44bd6b031f27888da47.md) | 119 | `declaration-track:11e6d44bd6b031f27888da472459cbad85da0528c3d36bf6f66c4644fa57cb14` |
| 24 | `theorem` | [cast_type](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/cast-type--10680e4c7ad6a4532f13e1a4.md) | 124 | `result-track:10680e4c7ad6a4532f13e1a4a0f4e89d8b2d61183f31ac13eb0b0457a71d73e0` |
| 25 | `def` | [assocRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/assocright--4440ef1f4e8d0a310db250ea.md) | 129 | `declaration-track:4440ef1f4e8d0a310db250ea51ba5ce2dc081dd1fea1e83960abfee2152aa1f9` |
| 26 | `def` | [assocLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/assocleft--3019b4e25245cd8914858c09.md) | 133 | `declaration-track:3019b4e25245cd8914858c09433204c79032299db90c8f4ecbb73e2362d1212c` |
| 27 | `theorem` | [mul_assoc0](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/mul-assoc0--b6631c304c1c93a2660b09e4.md) | 136 | `result-track:b6631c304c1c93a2660b09e4f6568dbaad5cd7a68c52ceebfb0da3acc3d0ad48` |
| 28 | `theorem` | [mul_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/mul-assoc--a848346064134a56a81c0ce5.md) | 146 | `result-track:a848346064134a56a81c0ce5f1d07407f0f56f6006ea3efc4a3d1c8fe3bf33a4` |
| 29 | `theorem` | [mul_left_distrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/mul-left-distrib--3b3b40be18c015038f0230b2.md) | 149 | `result-track:3b3b40be18c015038f0230b211c4c00e568b65a81f72f31fcf9c2ee434b498fb` |
| 30 | `theorem` | [mul_right_distrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/mul-right-distrib--ba218029cbc891e3a957c826.md) | 152 | `result-track:ba218029cbc891e3a957c826a6185b8bf8d054688648e6973c24bec21deb7ec1` |
| 31 | `theorem` | [zero_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/zero-mul--f8e95f5d6a9ab974bcab0bc7.md) | 156 | `result-track:f8e95f5d6a9ab974bcab0bc72895b193b25f3fc54e291b08fde7d1f786a0434c` |
| 32 | `theorem` | [mul_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/mul-zero--9aa4524f783980ab8ff94e05.md) | 160 | `result-track:9aa4524f783980ab8ff94e05e32c99cbec1b4afc111330c9ccdf0bfc616d9aee` |
| 33 | `theorem` | [mul_scalar_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/mul-scalar-mul--9474ab5572e1b516cd3f660e.md) | 163 | `result-track:9474ab5572e1b516cd3f660e6746f5e4f8eb4f2a86f40bb8eebe1ecd463c5917` |
| 34 | `def` | [slice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/slice--904dfadd575ad0b28244e58e.md) | 170 | `declaration-track:904dfadd575ad0b28244e58ea141345aaf34b37f496b320f3ac95d67b2b232fb` |
| 35 | `def` | [unitVec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/unitvec--3b443a600cc64cfe8f787c8c.md) | 174 | `declaration-track:3b443a600cc64cfe8f787c8c0286b77b2868567276164a941f772362d2a82f0c` |
| 36 | `theorem` | [holor_index_cons_decomp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/holor-index-cons-decomp--a8a263028986f7595fffd450.md) | 177 | `result-track:a8a263028986f7595fffd4505ce54649da4c68e3e9d05c4b6c29d7765a5a4350` |
| 37 | `theorem` | [slice_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/slice-eq--4f214c26395b4dab0c5a56e4.md) | 184 | `result-track:4f214c26395b4dab0c5a56e4aa3f6e967ae40b0ad43e68ac115626dbf0fbc217` |
| 38 | `theorem` | [slice_unitVec_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/slice-unitvec-mul--2f6f32698a479b33f05c379d.md) | 195 | `result-track:2f6f32698a479b33f05c379dc86e5d5d9780c6aec8e843af65ccf10194db1cd2` |
| 39 | `theorem` | [slice_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/slice-add--75b1f404269bc58b075c6a60.md) | 201 | `result-track:75b1f404269bc58b075c6a60d6cd323fdb49e78e5d1b22bb383b9e49d6e2f328` |
| 40 | `theorem` | [slice_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/slice-zero--6fd4a0f8f6796b0aa9634a77.md) | 205 | `result-track:6fd4a0f8f6796b0aa9634a77acd84a3582dd6dd111f35f99246b6e053f8ba363` |
| 41 | `theorem` | [slice_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/slice-sum--75af5276fa297bdc27b439e7.md) | 208 | `result-track:75af5276fa297bdc27b439e7e062ba9e39abcd89c4311d4e8e916652d9626a51` |
| 42 | `theorem` | [sum_unitVec_mul_slice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/sum-unitvec-mul-slice--5febc66f7403e94674c0e722.md) | 219 | `result-track:5febc66f7403e94674c0e72262aba0649b3cb5a8218b45cd9822e61668941ab5` |
| 43 | `inductive` | [CPRankMax1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/cprankmax1--18efb65c6a1084ad4c13e275.md) | 239 | `declaration-track:18efb65c6a1084ad4c13e275578a277dbb8d2a80d0b00fe9036e621fcd8909ba` |
| 44 | `inductive` | [CPRankMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/cprankmax--ca8c0cde943eb900d101d1a0.md) | 245 | `declaration-track:ca8c0cde943eb900d101d1a060c645e55c73f01ac8ead03675414ae248212ea5` |
| 45 | `theorem` | [cprankMax_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/cprankmax-nil--9d2b154ab8654311145a1eff.md) | 250 | `result-track:9d2b154ab8654311145a1eff1a74e887c4d4c8c687860ff69e9290268d455e0c` |
| 46 | `theorem` | [cprankMax_1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/cprankmax-1--a9663b6f3b53acc0fd36e8db.md) | 254 | `result-track:a9663b6f3b53acc0fd36e8db3931c14d9befda50ea0a9038ed2b86394820296a` |
| 47 | `theorem` | [cprankMax_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/cprankmax-add--7fa470c2c211051fbb65ea21.md) | 259 | `result-track:7fa470c2c211051fbb65ea2119302df18131a386c80c37790bdbe7aa15ff4ee6` |
| 48 | `theorem` | [cprankMax_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/cprankmax-mul--ad706dc2e300791feb1894a6.md) | 272 | `result-track:ad706dc2e300791feb1894a6ab3177f6a420c10370eaec68b25c2bf38a6d15a5` |
| 49 | `theorem` | [cprankMax_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/cprankmax-sum--3caab9293cf137fe9c60449b.md) | 282 | `result-track:3caab9293cf137fe9c60449b0f3940059466229e8645a2b363873da385ce4919` |
| 50 | `theorem` | [cprankMax_upper_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/cprankmax-upper-bound--ba1334203630a14f4d80ae87.md) | 297 | `result-track:ba1334203630a14f4d80ae876cc1eafaa8e7524543272945e75214b5b97ef5b7` |
| 51 | `def` | [cprank](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/cprank--b4cd88300f8703080c0f5eb8.md) | 321 | `declaration-track:b4cd88300f8703080c0f5eb8cec6d9caa8818a5c0a2656734b0f7b5a9eb7cf99` |
| 52 | `theorem` | [cprank_upper_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant2d8e01970b5441a6f2ecbf373483b72b3c72d877dd04ed678b2b3e26009a6dc6.lean/declarations/cprank-upper-bound--734f2f73737752e82bb856dc.md) | 324 | `result-track:734f2f73737752e82bb856dcd609c77c23203c4c3d3eb8df873cfe97f6c62569` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
