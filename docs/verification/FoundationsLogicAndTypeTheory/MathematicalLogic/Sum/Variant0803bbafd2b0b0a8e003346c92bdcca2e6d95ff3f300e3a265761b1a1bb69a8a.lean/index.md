# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Sum.Variant0803bbafd2b0b0a8e003346c92bdcca2e6d95ff3f300e3a265761b1a1bb69a8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c3ecc2999ef547f96d488a353b209555a06956a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant0803bbafd2b0b0a8e003346c92bdcca2e6d95ff3f300e3a265761b1a1bb69a8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant0803bbafd2b0b0a8e003346c92bdcca2e6d95ff3f300e3a265761b1a1bb69a8a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant0803bbafd2b0b0a8e003346c92bdcca2e6d95ff3f300e3a265761b1a1bb69a8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c3ecc2999ef547f96d488a353b209555a06956a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant0803bbafd2b0b0a8e003346c92bdcca2e6d95ff3f300e3a265761b1a1bb69a8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant0803bbafd2b0b0a8e003346c92bdcca2e6d95ff3f300e3a265761b1a1bb69a8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Sum` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant0803bbafd2b0b0a8e003346c92bdcca2e6d95ff3f300e3a265761b1a1bb69a8a.lean/declarations/instance--c0a59ebf6494de58b408cfc6.md) | 16 | `declaration-track:c0a59ebf6494de58b408cfc6c0dba70d22d78fb38a5c28cfb4106cb15db2dc7c` |
| 2 | `theorem` | [sum_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant0803bbafd2b0b0a8e003346c92bdcca2e6d95ff3f300e3a265761b1a1bb69a8a.lean/declarations/sum-left--f247e800e0a806009e9ba9e0.md) | 21 | `result-track:f247e800e0a806009e9ba9e0acaf85d315aa770d8b0b521136ca72137d96ed21` |
| 3 | `theorem` | [sum_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant0803bbafd2b0b0a8e003346c92bdcca2e6d95ff3f300e3a265761b1a1bb69a8a.lean/declarations/sum-right--17b3aaf9a877dcfda9ebfd55.md) | 24 | `result-track:17b3aaf9a877dcfda9ebfd5512f00b627e43a0f7d679b2c433945c2da2dd0ed6` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant0803bbafd2b0b0a8e003346c92bdcca2e6d95ff3f300e3a265761b1a1bb69a8a.lean/declarations/instance--e46148aae36e4a333b088387.md) | 27 | `declaration-track:e46148aae36e4a333b0883879b2dfcffb75783b6dddd2f72bb9b6d8d09b01837` |
| 5 | `theorem` | [psum_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant0803bbafd2b0b0a8e003346c92bdcca2e6d95ff3f300e3a265761b1a1bb69a8a.lean/declarations/psum-left--e01b680ed254564c1488360f.md) | 30 | `result-track:e01b680ed254564c1488360fa8d7b24b65a5dd14bd581eb1aaad17c480334fb1` |
| 6 | `theorem` | [psum_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant0803bbafd2b0b0a8e003346c92bdcca2e6d95ff3f300e3a265761b1a1bb69a8a.lean/declarations/psum-right--7c43e0454de8ca4d81e7ac52.md) | 33 | `result-track:7c43e0454de8ca4d81e7ac52836e3e23d63e332737127df6cb91b7178f8ef1fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
