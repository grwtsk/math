# Verification target: GRWTSK.Algebra.LinearAlgebra.InvariantBasisNumber.Variantd737725c5ac89a197406b7e2be3409e6f8f292fbc2024af36535864f661232e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fc5956245a24c90487a5fe793a46388cd9af794",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variantd737725c5ac89a197406b7e2be3409e6f8f292fbc2024af36535864f661232e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantd737725c5ac89a197406b7e2be3409e6f8f292fbc2024af36535864f661232e7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantd737725c5ac89a197406b7e2be3409e6f8f292fbc2024af36535864f661232e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fc5956245a24c90487a5fe793a46388cd9af794`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variantd737725c5ac89a197406b7e2be3409e6f8f292fbc2024af36535864f661232e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvariantBasisNumber/Variantd737725c5ac89a197406b7e2be3409e6f8f292fbc2024af36535864f661232e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantd737725c5ac89a197406b7e2be3409e6f8f292fbc2024af36535864f661232e7.lean/declarations/instance--5e499b5063611aedaba19174.md) | 25 | `declaration-track:5e499b5063611aedaba19174fc2e71ed90c9d4628ec4ea626b65acdd0e9e6b58` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantd737725c5ac89a197406b7e2be3409e6f8f292fbc2024af36535864f661232e7.lean/declarations/instance--22cd15e7dbd804396c93513a.md) | 29 | `declaration-track:22cd15e7dbd804396c93513a91a58a120e3e95342d2862ec2a8cfa876e5a1d29` |
| 3 | `theorem` | [rankCondition_iff_le_of_comp_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantd737725c5ac89a197406b7e2be3409e6f8f292fbc2024af36535864f661232e7.lean/declarations/rankcondition-iff-le-of-comp-eq-one--263008c1eea92f24726bcf13.md) | 39 | `result-track:263008c1eea92f24726bcf137696b37c65542429637ed8e451846c76d2214f49` |
| 4 | `theorem` | [rankCondition_iff_matrix](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantd737725c5ac89a197406b7e2be3409e6f8f292fbc2024af36535864f661232e7.lean/declarations/rankcondition-iff-matrix--a34a80090dce6fb0bbd5b47a.md) | 44 | `result-track:a34a80090dce6fb0bbd5b47a89ce5a8ee6fbf6e809331d3e027fbc4485fc5db7` |
| 5 | `theorem` | [invariantBasisNumber_iff_matrix](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantd737725c5ac89a197406b7e2be3409e6f8f292fbc2024af36535864f661232e7.lean/declarations/invariantbasisnumber-iff-matrix--b406670976b96dfde9946e66.md) | 50 | `result-track:b406670976b96dfde9946e663b24bc1b063282bdf8dab99fe3b47ff8ad6298ef` |
| 6 | `theorem` | [MulOpposite.rankCondition_iff](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantd737725c5ac89a197406b7e2be3409e6f8f292fbc2024af36535864f661232e7.lean/declarations/mulopposite-rankcondition-iff--290ab11731bf90e3bd2f9fb5.md) | 58 | `result-track:290ab11731bf90e3bd2f9fb503d32b7a5f09aaca9cda4250971a16d3344ce962` |
| 7 | `theorem` | [MulOpposite.invariantBasisNumber_iff](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantd737725c5ac89a197406b7e2be3409e6f8f292fbc2024af36535864f661232e7.lean/declarations/mulopposite-invariantbasisnumber-iff--081c907566f905d07cee7f4e.md) | 70 | `result-track:081c907566f905d07cee7f4e75bdff3ed67f43f9fa39f346f97d2bcdff98907d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantd737725c5ac89a197406b7e2be3409e6f8f292fbc2024af36535864f661232e7.lean/declarations/instance--460ddc408793eb3bc5153ceb.md) | 81 | `declaration-track:460ddc408793eb3bc5153ceb89d21ad0e57d040748f678fff86af804ebad16a8` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantd737725c5ac89a197406b7e2be3409e6f8f292fbc2024af36535864f661232e7.lean/declarations/instance--e97aab0fb96ccb4af7ce8f60.md) | 83 | `declaration-track:e97aab0fb96ccb4af7ce8f60fed9bf4c0f4d5043f48e68cb2ed73e4722b4eb13` |
| 10 | `theorem` | [Matrix.square_of_invertible](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantd737725c5ac89a197406b7e2be3409e6f8f292fbc2024af36535864f661232e7.lean/declarations/matrix-square-of-invertible--591176921a26117c20785395.md) | 91 | `result-track:591176921a26117c20785395db59869761dde893a779911b4640092777287924` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantd737725c5ac89a197406b7e2be3409e6f8f292fbc2024af36535864f661232e7.lean/declarations/instance--b43548495d70a905452d3725.md) | 100 | `declaration-track:b43548495d70a905452d3725a349263a28738ef234bb62909a6a89723940b699` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
