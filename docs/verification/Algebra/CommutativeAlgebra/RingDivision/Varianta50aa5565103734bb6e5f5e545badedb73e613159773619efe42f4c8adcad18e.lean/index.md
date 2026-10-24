# Verification target: GRWTSK.Algebra.CommutativeAlgebra.RingDivision.Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee07ac58a9851d0d892781c8e72a192fc2749bf0",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee07ac58a9851d0d892781c8e72a192fc2749bf0`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Div` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_pos_of_aeval_root](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/natdegree-pos-of-aeval-root--f97b40d83bf904b56caf0d37.md) | 39 | `result-track:f97b40d83bf904b56caf0d37a51eb9953cc2280ff06c651dcd11a6f7035e02b6` |
| 2 | `theorem` | [degree_pos_of_aeval_root](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/degree-pos-of-aeval-root--99eca306744e05d4b7f4e80e.md) | 43 | `result-track:99eca306744e05d4b7f4e80e7fef8f48ac461c12160fdf7769dfdc8e1ea0b908` |
| 3 | `theorem` | [smul_modByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/smul-modbymonic--2d46afe8a6addfec9b9fe096.md) | 49 | `result-track:2d46afe8a6addfec9b9fe096e2dc9372a320c52ffa33bcc5e6ffb6d005e7ceb4` |
| 4 | `def` | [modByMonicHom](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/modbymonichom--17dd6325008bd2b23e4742f3.md) | 61 | `declaration-track:17dd6325008bd2b23e4742f3388a616f2f1ad06dcdaa3194ed113187e8e63553` |
| 5 | `theorem` | [mem_ker_modByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/mem-ker-modbymonic--fae20a440bc2585588278e13.md) | 66 | `result-track:fae20a440bc2585588278e13027e0c48860e1dd4b0ee23cdbf438a4d487b4203` |
| 6 | `theorem` | [aeval_modByMonic_eq_self_of_root](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/aeval-modbymonic-eq-self-of-root--ca97add2ec5fbf7ffc2785cf.md) | 74 | `result-track:ca97add2ec5fbf7ffc2785cf37119c2ca93e6e599820738d52d7a3ec58fe262d` |
| 7 | `theorem` | [trailingDegree_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/trailingdegree-mul--0d0ebf882d5da75c4c588178.md) | 88 | `result-track:0d0ebf882d5da75c4c5881786d2419fa665028b5b0bfbc62bf6d7198e4fcbe97` |
| 8 | `theorem` | [rootMultiplicity_eq_rootMultiplicity](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/rootmultiplicity-eq-rootmultiplicity--51d370a20e0a9160ed151602.md) | 104 | `result-track:51d370a20e0a9160ed15160225eb18b12817058c24a2be73670c956e940536b5` |
| 9 | `theorem` | [rootMultiplicity_eq_natTrailingDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/rootmultiplicity-eq-nattrailingdegree--e556f52db455483400a8c7cd.md) | 114 | `result-track:e556f52db455483400a8c7cd1119b85fb9c2506c27a3bd2757cda9e02b3d2dc8` |
| 10 | `theorem` | [Monic.mem_nonZeroDivisors](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/monic-mem-nonzerodivisors--13bea2012072ecfbce1d89d7.md) | 122 | `result-track:13bea2012072ecfbce1d89d740bd1ca9eadc5a21361a4f8e8b86e16410cf8130` |
| 11 | `theorem` | [mem_nonZeroDivisors_of_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/mem-nonzerodivisors-of-leadingcoeff--a0828619569c16f6ab33fbd1.md) | 125 | `result-track:a0828619569c16f6ab33fbd17ae9e38eb08650efa14eb5ed02b606aa56c71a68` |
| 12 | `theorem` | [mem_nonZeroDivisors_of_trailingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/mem-nonzerodivisors-of-trailingcoeff--c7e57100a7bf62d7465a9204.md) | 128 | `result-track:c7e57100a7bf62d7465a9204a2205448efd5bc1edabd7eed2b2156f4f718b52d` |
| 13 | `theorem` | [natDegree_pos_of_monic_of_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/natdegree-pos-of-monic-of-aeval-eq-zero--46d77dc316fd33dc521e925f.md) | 133 | `result-track:46d77dc316fd33dc521e925fcb9cc5ea134dec57d231105d0ba4c56fde7e5fa1` |
| 14 | `theorem` | [rootMultiplicity_mul_X_sub_C_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/rootmultiplicity-mul-x-sub-c-pow--b28aae2dd7c85a0fb95ef134.md) | 139 | `result-track:b28aae2dd7c85a0fb95ef13428bcd79c7bfd91ef1ab9c0bb74314f0f08c70ba4` |
| 15 | `theorem` | [rootMultiplicity_X_sub_C_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/rootmultiplicity-x-sub-c-pow--d96754eeec93e95d918a690b.md) | 150 | `result-track:d96754eeec93e95d918a690bdf2f51bdffa3dffcf9159093b53791bf54bc8588` |
| 16 | `theorem` | [rootMultiplicity_X_sub_C_self](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/rootmultiplicity-x-sub-c-self--73af9ffa5d7d3f54938ff9b2.md) | 155 | `result-track:73af9ffa5d7d3f54938ff9b2db2f2b88a9bf415d9ffe1c266dfbd73d70a6a558` |
| 17 | `theorem` | [rootMultiplicity_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/rootmultiplicity-x-sub-c--f25229a35355c0ab04c941ac.md) | 160 | `result-track:f25229a35355c0ab04c941ac1df7658dca83efb317305e130df1b6487d0f471f` |
| 18 | `theorem` | [rootMultiplicity_mul'](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/rootmultiplicity-mul--0712f9ca56bba4c60755ea49.md) | 167 | `result-track:0712f9ca56bba4c60755ea4998659966e98d37331d33314300cb43fa247be07d` |
| 19 | `theorem` | [Monic.neg_one_pow_natDegree_mul_comp_neg_X](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/monic-neg-one-pow-natdegree-mul-comp-neg-x--4aef83befc0709dd5673ffd0.md) | 174 | `result-track:4aef83befc0709dd5673ffd036f12bcf425f62eae10c6e2b2de987c944c1db5e` |
| 20 | `theorem` | [degree_eq_degree_of_associated](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/degree-eq-degree-of-associated--1d2317d4b29a910f0c39ce9e.md) | 187 | `result-track:1d2317d4b29a910f0c39ce9e4837e64af7bd5e9e286b62a6a9d17555f128b86a` |
| 21 | `theorem` | [prime_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/prime-x-sub-c--c02340c34027e0dbdb320975.md) | 191 | `result-track:c02340c34027e0dbdb320975003a7a8c2a91a438322a762b8f19107accd65179` |
| 22 | `theorem` | [prime_X](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/prime-x--53269ba17b270c28c7c3e79f.md) | 196 | `result-track:53269ba17b270c28c7c3e79f63a45a8d350924cb9942c89afdb19368947405fc` |
| 23 | `theorem` | [Monic.prime_of_degree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/monic-prime-of-degree-eq-one--a4f8632278dc12749baaa605.md) | 200 | `result-track:a4f8632278dc12749baaa60555894932a6a2db6979d163118818d40b30d8ff59` |
| 24 | `theorem` | [irreducible_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/irreducible-x-sub-c--9a51e712ab0e56f42574d703.md) | 204 | `result-track:9a51e712ab0e56f42574d703577cdd69d232884598dd94bf30ca4f0eea5ad8d6` |
| 25 | `theorem` | [irreducible_X](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/irreducible-x--f3103a3aefe41e324e7888b9.md) | 207 | `result-track:f3103a3aefe41e324e7888b900f50b187068f429439f540121fab069074db229` |
| 26 | `theorem` | [Monic.irreducible_of_degree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/monic-irreducible-of-degree-eq-one--c83a66343ad0aa85101bc19b.md) | 210 | `result-track:c83a66343ad0aa85101bc19b96c014838abb5bfbd35febf32d2aa045429be955` |
| 27 | `lemma` | [aeval_ne_zero_of_isCoprime](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/aeval-ne-zero-of-iscoprime--3968f1283763e06d2c209b1b.md) | 213 | `result-track:3968f1283763e06d2c209b1b410af4a79a409321adf81f220ff3bd5bb60cb0ba` |
| 28 | `theorem` | [isCoprime_X_sub_C_of_isUnit_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/iscoprime-x-sub-c-of-isunit-sub--ad5dc572a64dfc40062a56bd.md) | 220 | `result-track:ad5dc572a64dfc40062a56bdfaeeb6cb29c662cbf26f36d51e2cf202d5d1d276` |
| 29 | `theorem` | [pairwise_coprime_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/pairwise-coprime-x-sub-c--075e4831a77e91d37919c412.md) | 229 | `result-track:075e4831a77e91d37919c4129bdf2ac1bcc4ce57a1e48855c66fbb866d795c70` |
| 30 | `theorem` | [rootMultiplicity_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/rootmultiplicity-mul--324557ed63c94bbd06892a67.md) | 233 | `result-track:324557ed63c94bbd06892a67cbb0145bd25bbbcdbfaecf85259ce16e79e24849` |
| 31 | `theorem` | [exists_multiset_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Varianta50aa5565103734bb6e5f5e545badedb73e613159773619efe42f4c8adcad18e.lean/declarations/exists-multiset-roots--f39b0c72e95a5417b2c8400a.md) | 243 | `result-track:f39b0c72e95a5417b2c8400ae2082b3fe6f7a00d256cee965783e31620597c0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
