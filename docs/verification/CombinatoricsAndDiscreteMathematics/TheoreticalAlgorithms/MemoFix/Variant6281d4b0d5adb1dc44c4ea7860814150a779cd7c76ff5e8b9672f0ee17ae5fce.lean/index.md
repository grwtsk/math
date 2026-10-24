# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemoFix.Variant6281d4b0d5adb1dc44c4ea7860814150a779cd7c76ff5e8b9672f0ee17ae5fce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "712cb941a23bdcda6285dd0b132db8e26aeb6ae0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemoFix/Variant6281d4b0d5adb1dc44c4ea7860814150a779cd7c76ff5e8b9672f0ee17ae5fce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemoFix/Variant6281d4b0d5adb1dc44c4ea7860814150a779cd7c76ff5e8b9672f0ee17ae5fce.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemoFix/Variant6281d4b0d5adb1dc44c4ea7860814150a779cd7c76ff5e8b9672f0ee17ae5fce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `712cb941a23bdcda6285dd0b132db8e26aeb6ae0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemoFix/Variant6281d4b0d5adb1dc44c4ea7860814150a779cd7c76ff5e8b9672f0ee17ae5fce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemoFix/Variant6281d4b0d5adb1dc44c4ea7860814150a779cd7c76ff5e8b9672f0ee17ae5fce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.HashMap.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Init` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ObjectMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemoFix/Variant6281d4b0d5adb1dc44c4ea7860814150a779cd7c76ff5e8b9672f0ee17ae5fce.lean/declarations/objectmap--799183fda1c04e19aeadcbf2.md) | 25 | `declaration-track:799183fda1c04e19aeadcbf24952fb662d046637c2afde0a6596a976c9297d35` |
| 2 | `def` | [memoFixImplObj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemoFix/Variant6281d4b0d5adb1dc44c4ea7860814150a779cd7c76ff5e8b9672f0ee17ae5fce.lean/declarations/memofiximplobj--37e4fb1c38999d6ba8910362.md) | 27 | `declaration-track:37e4fb1c38999d6ba89103621af10c51ad0ac727b1115dfea6a89f0f70133651` |
| 3 | `def` | [memoFixImpl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemoFix/Variant6281d4b0d5adb1dc44c4ea7860814150a779cd7c76ff5e8b9672f0ee17ae5fce.lean/declarations/memofiximpl--08a04f2ebc0f8d27c6e17ad4.md) | 38 | `declaration-track:08a04f2ebc0f8d27c6e17ad4d1f1dd9fbf64e11edaf7ea123d0e3cceb1523272` |
| 4 | `opaque` | [memoFix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemoFix/Variant6281d4b0d5adb1dc44c4ea7860814150a779cd7c76ff5e8b9672f0ee17ae5fce.lean/declarations/memofix--5799e1326d97b2cec7d191ed.md) | 49 | `declaration-track:5799e1326d97b2cec7d191edc52d1f7577f1ffb48fc549dda41b8864df5eb0df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
