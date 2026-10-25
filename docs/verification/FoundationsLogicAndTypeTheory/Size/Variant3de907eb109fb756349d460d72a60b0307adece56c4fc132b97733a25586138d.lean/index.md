# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Size.Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93c8a60ad350592f99db3fd497301db1548b550a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93c8a60ad350592f99db3fd497301db1548b550a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Pow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Bits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [shiftLeft_eq_mul_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/shiftleft-eq-mul-pow--d972c7d9de39587c4c87a239.md) | 20 | `result-track:d972c7d9de39587c4c87a2394da3f46501756bb54fa376ce26c413e4ba4c93e2` |
| 2 | `theorem` | [shiftLeft'_tt_eq_mul_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/shiftleft-tt-eq-mul-pow--f7a7b84f44ef35fcade1e354.md) | 23 | `result-track:f7a7b84f44ef35fcade1e354d3702bf18c8887675927236e314f4939e9a1925b` |
| 3 | `theorem` | [zero_shiftLeft](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/zero-shiftleft--d90920d212aff81e16c663c8.md) | 36 | `result-track:d90920d212aff81e16c663c8f08f30c9fdc92cb3ece5a1e4d1d75f489e862c5b` |
| 4 | `theorem` | [shiftRight_eq_div_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/shiftright-eq-div-pow--5dd670a36477d597eb2c8f61.md) | 39 | `result-track:5dd670a36477d597eb2c8f61a6de6c706e4bfafeea67360cdd2f7163c433cb50` |
| 5 | `theorem` | [shiftLeft'_ne_zero_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/shiftleft-ne-zero-left--c936a42113840e698bffa83d.md) | 46 | `result-track:c936a42113840e698bffa83d66b5c93e1fc6269a11e64f9a835a1e2fead81a4e` |
| 6 | `theorem` | [shiftLeft'_tt_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/shiftleft-tt-ne-zero--ada4c0e5760860c7d2e605a6.md) | 50 | `result-track:ada4c0e5760860c7d2e605a624117f84f15015f9ca829d7c62e121345153c1ba` |
| 7 | `theorem` | [size_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/size-zero--9d76020904405e4ec11273f4.md) | 59 | `result-track:9d76020904405e4ec11273f4387a8d0b4fb87ebb03a9b16d0f7ed96af426ebdb` |
| 8 | `theorem` | [size_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/size-bit--0ca5ddf41cfc183c99f80e8d.md) | 63 | `result-track:0ca5ddf41cfc183c99f80e8d15fb696535ac495caeb833e5525ea4b1014d4f73` |
| 9 | `theorem` | [size_bit0](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/size-bit0--3dd0a6d49b852f6fcbe6eca7.md) | 76 | `result-track:3dd0a6d49b852f6fcbe6eca72ca4ee3a0f90aea06782c4a1f455fdc38c2c39b4` |
| 10 | `theorem` | [size_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/size-bit1--690600fe2ee92d47785d20bf.md) | 81 | `result-track:690600fe2ee92d47785d20bf5c2d878a1d80aeda52eb4a021293907111f23981` |
| 11 | `theorem` | [size_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/size-one--e50458a8ae5b76c81b440485.md) | 86 | `result-track:e50458a8ae5b76c81b440485cf83f2b6b4da027f883dd55eed9a80aa3fe2ccf4` |
| 12 | `theorem` | [size_shiftLeft'](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/size-shiftleft--6bcaac9750792fe6ff7e9c60.md) | 93 | `result-track:6bcaac9750792fe6ff7e9c60427ab859dc21b2309d6224078aa1108829468851` |
| 13 | `theorem` | [size_shiftLeft](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/size-shiftleft--2f605403fd8914af9db6780c.md) | 113 | `result-track:2f605403fd8914af9db6780c99627f99a261eb7a6521e7809146f1ddc5b5e403` |
| 14 | `theorem` | [lt_size_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/lt-size-self--e377bb0cb00a533f7d405c60.md) | 117 | `result-track:e377bb0cb00a533f7d405c6016702a8cf6c47aed6c3a80622963c88ec3cffe42` |
| 15 | `theorem` | [size_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/size-le--4bf8e0fd979d76966040cbf9.md) | 129 | `result-track:4bf8e0fd979d76966040cbf98e0da7114624edf366a06740ee0f37a3207fb9ec` |
| 16 | `theorem` | [lt_size](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/lt-size--d8337653acb9b7b64de828a8.md) | 147 | `result-track:d8337653acb9b7b64de828a8a0504b112135f101dd58847f86319f5d27fd44ac` |
| 17 | `theorem` | [size_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/size-pos--72f2f60f254643df522174df.md) | 151 | `result-track:72f2f60f254643df522174df5b2e07c80d9c263f8a317c633671a07ccbf58d50` |
| 18 | `theorem` | [size_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/size-eq-zero--8825d436a450a358da0d376a.md) | 154 | `result-track:8825d436a450a358da0d376a37791bb826df708f980d3280c6d9dfe14e368763` |
| 19 | `theorem` | [size_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/size-pow--8941647ff8beb791d9eed0b1.md) | 158 | `result-track:8941647ff8beb791d9eed0b1de6249230614077d9414231964a32ad4883365db` |
| 20 | `theorem` | [size_le_size](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/size-le-size--a3fd56d2f6c95ae9d097bc47.md) | 163 | `result-track:a3fd56d2f6c95ae9d097bc473c65608da87cdf22b6c99c7d10f8c6a4cc8cdf29` |
| 21 | `theorem` | [size_eq_bits_len](../../../../mathematics/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/declarations/size-eq-bits-len--ce0cf5673c778fa6ce8bb1d7.md) | 167 | `result-track:ce0cf5673c778fa6ce8bb1d77565a8f89ab20d559098fd2472f71dc28730b54b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
