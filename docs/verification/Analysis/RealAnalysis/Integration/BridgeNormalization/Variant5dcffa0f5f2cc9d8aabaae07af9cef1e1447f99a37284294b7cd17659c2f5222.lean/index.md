# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.BridgeNormalization.Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9e770000f539bb4cba06ee1bbfa7013177e7a8a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9e770000f539bb4cba06ee1bbfa7013177e7a8a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SUCAS.Realization` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitBump](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean/declarations/unitbump--85495c803c46f8ae5b50b2f5.md) | 21 | `declaration-track:85495c803c46f8ae5b50b2f574904a8bfbda7792fb75bd7372cc30464940a005` |
| 2 | `def` | [unitSecond](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean/declarations/unitsecond--05ec83d46312bba42b5ecbd5.md) | 24 | `declaration-track:05ec83d46312bba42b5ecbd54872a24ca949e8e1e6c4290b5ab9cd8a5620aebf` |
| 3 | `theorem` | [unitBump_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean/declarations/unitbump-square-integral--c189b1f926512c16875078d8.md) | 27 | `result-track:c189b1f926512c16875078d89213d884b30f85d12bd0416ddea28cb7e36a70ed` |
| 4 | `theorem` | [unitSecond_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean/declarations/unitsecond-square-integral--861d16fba451365d3e7fa9bf.md) | 42 | `result-track:861d16fba451365d3e7fa9bfdca2176e7d3f93cf0f280ca31c751092186cc89f` |
| 5 | `theorem` | [unitSecond_mul_bump_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean/declarations/unitsecond-mul-bump-integral--fad801bc99ccecdb42b15b5a.md) | 57 | `result-track:fad801bc99ccecdb42b15b5a79c652fab142c993f2065599bffb34f4f0603386` |
| 6 | `theorem` | [interior_square_scaling](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean/declarations/interior-square-scaling--4f0d9acf22c2e1caf4f5770c.md) | 72 | `result-track:4f0d9acf22c2e1caf4f5770c24d91106abd433a16f42ec9b1b735672dfb78c80` |
| 7 | `theorem` | [unit_dilation_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean/declarations/unit-dilation-square-integral--17cadd45830416b74a605943.md) | 83 | `result-track:17cadd45830416b74a605943f4f3de48fb51b699d6e48b4099003e8f3bdb14e5` |
| 8 | `theorem` | [explicit_normalization](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean/declarations/explicit-normalization--42459129dde67423b62de2b2.md) | 103 | `result-track:42459129dde67423b62de2b21f680954d0b71e2b78923b71ee758577546d4330` |
| 9 | `theorem` | [normalized_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean/declarations/normalized-square-integrable--9d36ce10aabc6e40a6fc73f4.md) | 123 | `result-track:9d36ce10aabc6e40a6fc73f43cf50f808f9b93f124d2e86a92733b7fa72c357a` |
| 10 | `theorem` | [normalized_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean/declarations/normalized-square-integral--fc929cbf9fe3a08d89c39f2e.md) | 129 | `result-track:fc929cbf9fe3a08d89c39f2e0a76ded25bcfebd919fae19c5c8bd749d5c9c6d5` |
| 11 | `theorem` | [normalized_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant5dcffa0f5f2cc9d8aabaae07af9cef1e1447f99a37284294b7cd17659c2f5222.lean/declarations/normalized-ne-zero--f93dc65a387d299b0cab1071.md) | 136 | `result-track:f93dc65a387d299b0cab1071cd692a5e6993a89e8bd865b8c051aa64fa92096c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
