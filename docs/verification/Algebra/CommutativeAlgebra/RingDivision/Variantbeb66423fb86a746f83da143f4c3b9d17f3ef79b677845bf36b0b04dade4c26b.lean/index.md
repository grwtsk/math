# Verification target: GRWTSK.Algebra.CommutativeAlgebra.RingDivision.Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3abb2f5747a9a9a9774c0147dd25a7150755c4b",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3abb2f5747a9a9a9774c0147dd25a7150755c4b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Div` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_pos_of_aeval_root](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/natdegree-pos-of-aeval-root--ccc03c1c3cdc56294929869d.md) | 47 | `result-track:ccc03c1c3cdc56294929869df4c7a498df3b132d7f08104679d44b35affa9557` |
| 2 | `theorem` | [degree_pos_of_aeval_root](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/degree-pos-of-aeval-root--d5c6c2746ed874e37c685067.md) | 51 | `result-track:d5c6c2746ed874e37c68506742c363930f533f23f394451a1cf4bd4ea70a2941` |
| 3 | `theorem` | [smul_modByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/smul-modbymonic--f8d88e5048bcd9603c950dad.md) | 57 | `result-track:f8d88e5048bcd9603c950dadb151388d7247dcd42c30a49026effc0e2c56db50` |
| 4 | `def` | [modByMonicHom](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/modbymonichom--906141468ac5632333fd3422.md) | 69 | `declaration-track:906141468ac5632333fd3422affd447b751d4a6f429842d79e62b4ec09a58996` |
| 5 | `theorem` | [mem_ker_modByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/mem-ker-modbymonic--646ac851d46edd8339ca8254.md) | 74 | `result-track:646ac851d46edd8339ca82540cebed1286464ebb1a4aeca1ff3bc8a9df518b05` |
| 6 | `theorem` | [aeval_modByMonic_eq_self_of_root](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/aeval-modbymonic-eq-self-of-root--e20603b17270f5b57e0fb4bd.md) | 82 | `result-track:e20603b17270f5b57e0fb4bd459876d002705cda604f4ac515dc504b4eaf12b9` |
| 7 | `theorem` | [trailingDegree_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/trailingdegree-mul--168257cc34275b446fbd22dc.md) | 96 | `result-track:168257cc34275b446fbd22dc3d0d215ad471f3fcb67d1d2fa856b38826f3b47f` |
| 8 | `theorem` | [rootMultiplicity_eq_rootMultiplicity](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/rootmultiplicity-eq-rootmultiplicity--51e6397932382aa868aaf2ab.md) | 112 | `result-track:51e6397932382aa868aaf2ab43827efa5f3634669a0bab880d4bbc32c80c8b0c` |
| 9 | `theorem` | [rootMultiplicity_eq_natTrailingDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/rootmultiplicity-eq-nattrailingdegree--5d8e03210f8cbb0c314a352b.md) | 122 | `result-track:5d8e03210f8cbb0c314a352b6e36f48f36890edf4558cf4e571b4d2c22951b6f` |
| 10 | `theorem` | [Monic.mem_nonZeroDivisors](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/monic-mem-nonzerodivisors--1057c82650ad0e403c9cfc47.md) | 130 | `result-track:1057c82650ad0e403c9cfc47ffa1e7d02880c28d5f19f167a098534f463775f0` |
| 11 | `theorem` | [mem_nonZeroDivisors_of_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/mem-nonzerodivisors-of-leadingcoeff--2f773445bd5ce83e383fabdb.md) | 133 | `result-track:2f773445bd5ce83e383fabdbff1dc417a49955f8ec4cbed4475bdf0398c21fd7` |
| 12 | `theorem` | [mem_nonZeroDivisors_of_trailingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/mem-nonzerodivisors-of-trailingcoeff--36672ae983db225b0948a348.md) | 136 | `result-track:36672ae983db225b0948a34809b08864e423a8fa04078ca502c4d40616a6426a` |
| 13 | `theorem` | [natDegree_pos_of_monic_of_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/natdegree-pos-of-monic-of-aeval-eq-zero--c3b7753db3addff856140b65.md) | 141 | `result-track:c3b7753db3addff856140b659ba25a0663c2e0806971422ff087a869389f8b20` |
| 14 | `theorem` | [rootMultiplicity_mul_X_sub_C_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/rootmultiplicity-mul-x-sub-c-pow--e381edd7d1debc6c002a011d.md) | 147 | `result-track:e381edd7d1debc6c002a011dc0493e775033c08cfb367f8379117e24ebeaf67e` |
| 15 | `theorem` | [rootMultiplicity_X_sub_C_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/rootmultiplicity-x-sub-c-pow--df6769828573252c544183e7.md) | 158 | `result-track:df6769828573252c544183e70578b96eb026ac392ade8379ee14b8e399e955a7` |
| 16 | `theorem` | [rootMultiplicity_X_sub_C_self](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/rootmultiplicity-x-sub-c-self--80312016617adc6c51ad8f33.md) | 163 | `result-track:80312016617adc6c51ad8f336ce10890ee9f949aecdd6edce605b8f5e9f4a4a1` |
| 17 | `theorem` | [rootMultiplicity_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/rootmultiplicity-x-sub-c--1d97d305eb3d76bf61b5c094.md) | 168 | `result-track:1d97d305eb3d76bf61b5c094f0540f608a48441461f6bcc436c883c33371149e` |
| 18 | `theorem` | [rootMultiplicity_mul'](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/rootmultiplicity-mul--c7931d4b9d67ed351ea975c1.md) | 175 | `result-track:c7931d4b9d67ed351ea975c1c681827797ad3845dbcb548e57b64da67767ef7f` |
| 19 | `theorem` | [Monic.neg_one_pow_natDegree_mul_comp_neg_X](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/monic-neg-one-pow-natdegree-mul-comp-neg-x--d890422b6882e0eaad82bfcc.md) | 182 | `result-track:d890422b6882e0eaad82bfcc74332a8c5643a7d486b81268e3d7ef12d82f7dee` |
| 20 | `theorem` | [degree_eq_degree_of_associated](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/degree-eq-degree-of-associated--2018693df17fd90c02b98293.md) | 195 | `result-track:2018693df17fd90c02b98293378e62ee14a60200a95bf72c0f83cd05fc1646dc` |
| 21 | `theorem` | [prime_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/prime-x-sub-c--f212df8034707aea42829ddb.md) | 199 | `result-track:f212df8034707aea42829ddb637aaa679f84f01c4e53b181246fe28c26bad932` |
| 22 | `theorem` | [prime_X](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/prime-x--c9ec70f41667ea22421c7e7c.md) | 204 | `result-track:c9ec70f41667ea22421c7e7c7601c67d0b459af39353d68cf5efcaadb2f1c7f8` |
| 23 | `theorem` | [Monic.prime_of_degree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/monic-prime-of-degree-eq-one--142cf3e25f4322b2483b06e3.md) | 208 | `result-track:142cf3e25f4322b2483b06e3c447c6aa3a5a1bbc6b401f5fcd366695e535e634` |
| 24 | `theorem` | [irreducible_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/irreducible-x-sub-c--08099f5485cbf3909ae2f60a.md) | 212 | `result-track:08099f5485cbf3909ae2f60a3c026d13db22a62d16b612594fdbf74dd14393eb` |
| 25 | `theorem` | [irreducible_X](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/irreducible-x--3306dff448a3c89c310ea9e2.md) | 215 | `result-track:3306dff448a3c89c310ea9e282b576f3b29b5ee40ec88d16778d08674e1318f8` |
| 26 | `theorem` | [Monic.irreducible_of_degree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/monic-irreducible-of-degree-eq-one--29f18dac9c8e331204e00a91.md) | 218 | `result-track:29f18dac9c8e331204e00a915e514c3b65aaf983368cd3f56167e7dfab1667b5` |
| 27 | `lemma` | [aeval_ne_zero_of_isCoprime](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/aeval-ne-zero-of-iscoprime--db0425bfe84a170e4037e94c.md) | 221 | `result-track:db0425bfe84a170e4037e94cc7023eac4a3f2fcab8f064946e04d1b361cfd0fb` |
| 28 | `theorem` | [isCoprime_X_sub_C_of_isUnit_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/iscoprime-x-sub-c-of-isunit-sub--55940e608e292a065218aaea.md) | 228 | `result-track:55940e608e292a065218aaea70175714f18af1c8a0e523e8ba72445a1656d3a2` |
| 29 | `theorem` | [pairwise_coprime_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/pairwise-coprime-x-sub-c--b3ce53ca61c63c0ed871e75c.md) | 237 | `result-track:b3ce53ca61c63c0ed871e75c823946e1ff6ae15efa1d0174204aabb0fddc24da` |
| 30 | `theorem` | [rootMultiplicity_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/rootmultiplicity-mul--5987ca83e661f99fe2628a39.md) | 241 | `result-track:5987ca83e661f99fe2628a39d8989ef97d1738016d02e53bbafdbf923a1fce3f` |
| 31 | `theorem` | [exists_multiset_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantbeb66423fb86a746f83da143f4c3b9d17f3ef79b677845bf36b0b04dade4c26b.lean/declarations/exists-multiset-roots--b8e6d6333b22b4bda90b3c3e.md) | 251 | `result-track:b8e6d6333b22b4bda90b3c3ea7d03e366d6fd04d9e67b30e6d6f0abc9adb760f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
