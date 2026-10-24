# Verification target: GRWTSK.Algebra.LinearAlgebra.PositiveQuantization.Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a15d1f6be688c3b0b304beaeac98d942537e03b6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a15d1f6be688c3b0b304beaeac98d942537e03b6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveCone](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean/declarations/positivecone--3a4b40f5964030af24767484.md) | 20 | `declaration-track:3a4b40f5964030af247674849fbd8b1142fbe22092cbde46527093c1ccfbc94e` |
| 2 | `def` | [PositivityPreserving](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean/declarations/positivitypreserving--08c86db316023c660b6bdb34.md) | 32 | `declaration-track:08c86db316023c660b6bdb34681519df3ab103668596db773778c941fc23f9ac` |
| 3 | `theorem` | [id_preserves](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean/declarations/id-preserves--dd164923806f97b41c52664a.md) | 45 | `result-track:dd164923806f97b41c52664a24546c20470a09c3f2bc6cf4c35d9872dc7fe2f8` |
| 4 | `theorem` | [comp_preserves](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean/declarations/comp-preserves--9f2a576363d1c8e82415cbe3.md) | 52 | `result-track:9f2a576363d1c8e82415cbe398108e4d9cb2f1ffecf2ed74fbe908c6fef31384` |
| 5 | `theorem` | [nonnegativeCombination_preserves](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean/declarations/nonnegativecombination-preserves--af818e79f2ed583c68a90192.md) | 65 | `result-track:af818e79f2ed583c68a901927df4acbf12fdb2c62f93b8fc78b842757519bd92` |
| 6 | `def` | [pointwiseNonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean/declarations/pointwisenonnegative--a9c8861e887b120e9af10f69.md) | 82 | `declaration-track:a9c8861e887b120e9af10f69d0066470d2e0e1973e69376caa1d42de9aebbbe7` |
| 7 | `theorem` | [mem_pointwiseNonnegative_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean/declarations/mem-pointwisenonnegative-iff--f2354fbe81aeccd6be288a00.md) | 94 | `result-track:f2354fbe81aeccd6be288a0026cb4927a9b277f4223054897705bd0c2d8a7b9f` |
| 8 | `def` | [pointwiseNonnegativeMatrix](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean/declarations/pointwisenonnegativematrix--e01d1cd10121a8e949421f48.md) | 102 | `declaration-track:e01d1cd10121a8e949421f48cb81d615a4d3dbcd4d290e5f51b3db6f4d17d155` |
| 9 | `theorem` | [mem_pointwiseNonnegativeMatrix_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean/declarations/mem-pointwisenonnegativematrix-iff--ec1701ee8113005d982a4d36.md) | 115 | `result-track:ec1701ee8113005d982a4d3614b31852991a848cd0e8395ece1c5d4de4e9060f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
