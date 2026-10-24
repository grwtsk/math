# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedBasis

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70e3db66dbad4ba002e76ba8532dfa4746c3250e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70e3db66dbad4ba002e76ba8532dfa4746c3250e`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyPolynomialCoordinates`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.LinearAlgebra.Basis.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finrank` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Index](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/declarations/index--232cfc49310488932cda6038.md) | 28 | `declaration-track:232cfc49310488932cda603810df118ab936970650e0883aeed4258f0f1d89bc` |
| 2 | `def` | [atom](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/declarations/atom--6e725939bf13d2a7575b44cc.md) | 31 | `declaration-track:6e725939bf13d2a7575b44cc096c21604c0e5eb2a820708b0c617cbff7bdc7c0` |
| 3 | `def` | [coefficientPolynomial](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/declarations/coefficientpolynomial--1342e7b89f112dff738c48d2.md) | 36 | `declaration-track:1342e7b89f112dff738c48d28c5d7efdcd449eb9748b287355e9fbe08b9641f8` |
| 4 | `theorem` | [coefficientPolynomial_coeff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/declarations/coefficientpolynomial-coeff--b54ea45072566356b3bcdc6d.md) | 39 | `result-track:b54ea45072566356b3bcdc6d0e6f4846c97fa25674538aa590ae60d1d1b69964` |
| 5 | `theorem` | [sum_atoms](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/declarations/sum-atoms--e0018db825f9e1ceba83f71d.md) | 52 | `result-track:e0018db825f9e1ceba83f71dc9f0e62c477645b42ab2caa3375f998d37f5bf56` |
| 6 | `theorem` | [atoms_linearIndependent](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/declarations/atoms-linearindependent--80cf504c8459b3b663a575b3.md) | 66 | `result-track:80cf504c8459b3b663a575b380ff802888bda6deac13630ae83cf0844bcc1533` |
| 7 | `theorem` | [range_atoms](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/declarations/range-atoms--88ab52b94a79911fb90d089c.md) | 81 | `result-track:88ab52b94a79911fb90d089c4908ddc378f33b1459d24e6ee8b14c73d8b51382` |
| 8 | `theorem` | [span_atoms](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/declarations/span-atoms--b8336186d4173f54b49c10c6.md) | 96 | `result-track:b8336186d4173f54b49c10c6e428d4ffa21c606c7fc9e95775d6528845b96e2c` |
| 9 | `def` | [basis](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/declarations/basis--27f463b350964bbe24e37365.md) | 102 | `declaration-track:27f463b350964bbe24e3736597a2a56b58f8e34f791f24f7aec871d34b728362` |
| 10 | `theorem` | [basis_coe](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/declarations/basis-coe--02ad06757fb284ffe8ad15db.md) | 106 | `result-track:02ad06757fb284ffe8ad15db0f2f9b2d8377f6dc4eed226457b6d15c4e11237e` |
| 11 | `theorem` | [stage_finrank](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/declarations/stage-finrank--7eb751d2939777fb60121437.md) | 111 | `result-track:7eb751d2939777fb601214375397d217966c220afd37b3dee83fd8e9b40ed100` |
| 12 | `theorem` | [stage_zero_finrank](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/declarations/stage-zero-finrank--89d12aeb68cf5bd337ceb6d9.md) | 116 | `result-track:89d12aeb68cf5bd337ceb6d9870efa9df54f8a1413bf51a1ad3daf6f8a6b444f` |
| 13 | `theorem` | [stage_finrank_positive](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/declarations/stage-finrank-positive--fd7d5171c5f5638e3271c805.md) | 121 | `result-track:fd7d5171c5f5638e3271c80515c0dd010ac9bfeb141f1baf75efd4ef39b5e565` |
| 14 | `theorem` | [first_rank_increment](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/declarations/first-rank-increment--7e7d7f44618fb42fe375f436.md) | 127 | `result-track:7e7d7f44618fb42fe375f43683c5e52eae4d974f2707eeb434ac26014f2b4141` |
| 15 | `theorem` | [successive_rank_increment](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/declarations/successive-rank-increment--1033d52188820b202b37c9a4.md) | 132 | `result-track:1033d52188820b202b37c9a40a50f45a102f0363eaef0dc3230d368c9ec5d1a2` |
| 16 | `theorem` | [stage_lt_succ](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/declarations/stage-lt-succ--5251a7603d7de971fabebeb5.md) | 139 | `result-track:5251a7603d7de971fabebeb59beb7eb10c08565f3b55ccab6721e25dce710613` |
| 17 | `theorem` | [lift_basis_X](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/declarations/lift-basis-x--bff80d00cd65062db7fa1185.md) | 147 | `result-track:bff80d00cd65062db7fa1185a92c46fa8be550f6fd6d0464d8d388e23b75c03e` |
| 18 | `theorem` | [lift_basis_Y](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/declarations/lift-basis-y--591c37497bce21d6d6fcc361.md) | 155 | `result-track:591c37497bce21d6d6fcc36131084b07f5c34f7fd567008c43f5a605042029f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
