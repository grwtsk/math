# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Range.Variant75fffe931721e62c071b7cc2076b85b7dd728e34122c760183b488e4f7de0700

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91905365d8e9ec83d3326e79c38b0804a017974c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Range/Variant75fffe931721e62c071b7cc2076b85b7dd728e34122c760183b488e4f7de0700.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Range/Variant75fffe931721e62c071b7cc2076b85b7dd728e34122c760183b488e4f7de0700.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Range/Variant75fffe931721e62c071b7cc2076b85b7dd728e34122c760183b488e4f7de0700.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91905365d8e9ec83d3326e79c38b0804a017974c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Range/Variant75fffe931721e62c071b7cc2076b85b7dd728e34122c760183b488e4f7de0700.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Range/Variant75fffe931721e62c071b7cc2076b85b7dd728e34122c760183b488e4f7de0700.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Range` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [range](../../../../mathematics/FoundationsLogicAndTypeTheory/Range/Variant75fffe931721e62c071b7cc2076b85b7dd728e34122c760183b488e4f7de0700.lean/declarations/range--7d700ce87d3088ba6e2201c2.md) | 26 | `declaration-track:7d700ce87d3088ba6e2201c28b6c82576147867fd7873e39c4a0768ab4de8e93` |
| 2 | `theorem` | [mem_range_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Range/Variant75fffe931721e62c071b7cc2076b85b7dd728e34122c760183b488e4f7de0700.lean/declarations/mem-range-iff--1957532f29a197d91d363e83.md) | 30 | `result-track:1957532f29a197d91d363e8395b5e9b3bb43c008ebb3105c78bb43974fddcd5d` |
| 3 | `instance` | [decidableLELT](../../../../mathematics/FoundationsLogicAndTypeTheory/Range/Variant75fffe931721e62c071b7cc2076b85b7dd728e34122c760183b488e4f7de0700.lean/declarations/decidablelelt--534e74a6056fc1fb559d8ce7.md) | 36 | `declaration-track:534e74a6056fc1fb559d8ce7296dc95f538f761442dafc552b03eb6a691c8eb8` |
| 4 | `instance` | [decidableLELE](../../../../mathematics/FoundationsLogicAndTypeTheory/Range/Variant75fffe931721e62c071b7cc2076b85b7dd728e34122c760183b488e4f7de0700.lean/declarations/decidablelele--bb2d01a63918d0b860994cda.md) | 41 | `declaration-track:bb2d01a63918d0b860994cdae6a2abdcffaf40fc3cfa02ed3c91af8cc39340c1` |
| 5 | `instance` | [decidableLTLT](../../../../mathematics/FoundationsLogicAndTypeTheory/Range/Variant75fffe931721e62c071b7cc2076b85b7dd728e34122c760183b488e4f7de0700.lean/declarations/decidableltlt--f671e427e5a8e62766c9dc08.md) | 56 | `declaration-track:f671e427e5a8e62766c9dc08a56a4790764aa37d57bdec70b7ebc42040565bd1` |
| 6 | `instance` | [decidableLTLE](../../../../mathematics/FoundationsLogicAndTypeTheory/Range/Variant75fffe931721e62c071b7cc2076b85b7dd728e34122c760183b488e4f7de0700.lean/declarations/decidableltle--638214265db5a432fc49dd67.md) | 61 | `declaration-track:638214265db5a432fc49dd676be72087b5a34dc67bd329883d5d285836fb3715` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
