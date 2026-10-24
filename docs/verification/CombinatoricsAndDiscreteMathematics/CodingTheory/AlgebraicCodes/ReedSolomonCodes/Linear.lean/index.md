# Verification target: GRWTSK.InformationTheory.ReedSolomon.Linear

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5d7c98902dcce01503658e26cfcd3401c669145",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/ReedSolomon/Linear.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5d7c98902dcce01503658e26cfcd3401c669145`.

Source path: `GRWTSK/InformationTheory/ReedSolomon/Linear.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/ReedSolomon/Linear.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.FiniteField.GF128.Arithmetic`](../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Four](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/four--3a77fc50801e00f22615c916.md) | 10 | `declaration-track:3a77fc50801e00f22615c9165ddabcb3cf96fc43ee481c5c99eba7f7ef0409e3` |
| 2 | `def` | [zero](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/zero--e5233a147bf76e4e0d15a406.md) | 17 | `declaration-track:e5233a147bf76e4e0d15a406e28aef38db282f1cd021d761afe66b244b660ab5` |
| 3 | `def` | [xor](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/xor--8017d483f6b4c806958343ee.md) | 18 | `declaration-track:8017d483f6b4c806958343ee2ffbe336dca8016c3984b9592bf97f1e56efea87` |
| 4 | `def` | [slot](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/slot--cb424cfd1f0c9ae3e840b6ca.md) | 19 | `declaration-track:cb424cfd1f0c9ae3e840b6ca20177ea6298b586813f7e332d94cdcc02d048d10` |
| 5 | `def` | [get](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/get--ccaa07955461e5b8c0ec5a9b.md) | 22 | `declaration-track:ccaa07955461e5b8c0ec5a9bc15b52206f34e9c86e9bfbe1c352cdbe046763fc` |
| 6 | `theorem` | [Four.ext](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/four-ext--9ab5fe9fd16c3027c4d6d7ce.md) | 25 | `result-track:9ab5fe9fd16c3027c4d6d7ce996ad78a7ab796fd0087f16beae50d0d924d4ab0` |
| 7 | `abbrev` | [Row](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/row--d4744d220cf037b99f4f5a41.md) | 29 | `declaration-track:d4744d220cf037b99f4f5a41352e1f29577226a5011bb2d33bcb75714a7371a0` |
| 8 | `abbrev` | [Matrix](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/matrix--a93f33b9c1dca20b29d7e005.md) | 30 | `declaration-track:a93f33b9c1dca20b29d7e005cbabdc7a4649aaeb005a50ea660472865988f4a0` |
| 9 | `def` | [rowEval](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/roweval--f55699824ab2533f6f7d7bc2.md) | 31 | `declaration-track:f55699824ab2533f6f7d7bc27cce04880a8d3d667dbd5ec12da3a868fcfc6e0a` |
| 10 | `def` | [transform](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/transform--8aad7463bc3a290c9372303c.md) | 33 | `declaration-track:8aad7463bc3a290c9372303cde952d5ed2270c93683a29b88a8de1855d0c3ad1` |
| 11 | `def` | [column](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/column--6507fc43aab77ba86654e316.md) | 36 | `declaration-track:6507fc43aab77ba86654e3161b47f3516b91375b9251a55c1fe7f7ab42a4fe59` |
| 12 | `def` | [composeRow](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/composerow--9b45e768c84b5ac9eb927f76.md) | 39 | `declaration-track:9b45e768c84b5ac9eb927f7638908a225617653caeea33fbb11d80f98f59ea04` |
| 13 | `def` | [compose](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/compose--64ade9a2b73e5243c5afa967.md) | 43 | `declaration-track:64ade9a2b73e5243c5afa9670be7c63fbd93fc36def00b786b0dc2c166cb1539` |
| 14 | `def` | [identityMatrix](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/identitymatrix--a207182fff373bf36ed4f382.md) | 45 | `declaration-track:a207182fff373bf36ed4f382997829f278ef3478033af5b9509b4708a611e96e` |
| 15 | `theorem` | [rowEval_transform](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/roweval-transform--b6d64ced392f6bbc9dd95ba5.md) | 47 | `result-track:b6d64ced392f6bbc9dd95ba5cf701d460a311dedfbf47707fffce513a1ce1f71` |
| 16 | `theorem` | [transform_compose](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/transform-compose--b68326f42e720e99b3dac97c.md) | 53 | `result-track:b68326f42e720e99b3dac97cf3bd2a118bdf35d539ff4cd068ca4f5a583dc0cd` |
| 17 | `theorem` | [transform_identity](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/transform-identity--23b28c170bd2187645282c38.md) | 57 | `result-track:23b28c170bd2187645282c38f10cba96ba5e34fbcdc900d88e442397fa36c919` |
| 18 | `def` | [XorLinear4](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/xorlinear4--6933715826270746ce013c90.md) | 63 | `declaration-track:6933715826270746ce013c9070d96852c63e5940c14725707ea9900a870def95` |
| 19 | `theorem` | [rowEval_linear](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/roweval-linear--4fd18aad033d88517d4acdeb.md) | 66 | `result-track:4fd18aad033d88517d4acdeb037a5186c4a1a2ae276350f5a4b73f8e296377cf` |
| 20 | `theorem` | [transform_zero](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/transform-zero--3fbccc28a076c759879e773f.md) | 74 | `result-track:3fbccc28a076c759879e773fbbff3453d1b2ba0ed431e45b2535850d3c6bdd9f` |
| 21 | `theorem` | [transform_xor](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/transform-xor--d62fea9ab93822b879f3177b.md) | 77 | `result-track:d62fea9ab93822b879f3177b144110b31b61e3ab915534034d3b31d8624a6d57` |
| 22 | `theorem` | [linear4_eq_of_basis](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Linear.lean/declarations/linear4-eq-of-basis--6d3b35362eaa6beebdeea75f.md) | 81 | `result-track:6d3b35362eaa6beebdeea75ff243fd124ea6235c32735ab1152ff5f50feae064` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
