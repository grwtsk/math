# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemoFix.Variant751e97223ff3debe93374a035eb7e6a5b9d7d0f5aeedc4160695eaba8a89ada8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0dead3fbcac55a75d84037047113ec061f8af87e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemoFix/Variant751e97223ff3debe93374a035eb7e6a5b9d7d0f5aeedc4160695eaba8a89ada8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemoFix/Variant751e97223ff3debe93374a035eb7e6a5b9d7d0f5aeedc4160695eaba8a89ada8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemoFix/Variant751e97223ff3debe93374a035eb7e6a5b9d7d0f5aeedc4160695eaba8a89ada8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0dead3fbcac55a75d84037047113ec061f8af87e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemoFix/Variant751e97223ff3debe93374a035eb7e6a5b9d7d0f5aeedc4160695eaba8a89ada8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemoFix/Variant751e97223ff3debe93374a035eb7e6a5b9d7d0f5aeedc4160695eaba8a89ada8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.HashMap.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Init` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ObjectMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemoFix/Variant751e97223ff3debe93374a035eb7e6a5b9d7d0f5aeedc4160695eaba8a89ada8.lean/declarations/objectmap--676ea6b9a1e2972e5b8a4d97.md) | 17 | `declaration-track:676ea6b9a1e2972e5b8a4d9711bcd197f2e2b339d6773cee300b442c9435b30b` |
| 2 | `def` | [memoFixImplObj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemoFix/Variant751e97223ff3debe93374a035eb7e6a5b9d7d0f5aeedc4160695eaba8a89ada8.lean/declarations/memofiximplobj--7b1ca7d9ca8d78d7ffe37e29.md) | 19 | `declaration-track:7b1ca7d9ca8d78d7ffe37e29df80095172f6ad68934e945ec83c0ce79aab3a16` |
| 3 | `def` | [memoFixImpl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemoFix/Variant751e97223ff3debe93374a035eb7e6a5b9d7d0f5aeedc4160695eaba8a89ada8.lean/declarations/memofiximpl--c2c1f251f1b1db87e95b20ce.md) | 30 | `declaration-track:c2c1f251f1b1db87e95b20cebbd420243607037f2407203e58376f2eac408498` |
| 4 | `opaque` | [memoFix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemoFix/Variant751e97223ff3debe93374a035eb7e6a5b9d7d0f5aeedc4160695eaba8a89ada8.lean/declarations/memofix--091b238237400c82685778ae.md) | 41 | `declaration-track:091b238237400c82685778ae5f1dbb245130de393ca6ca0838da75c124616365` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
