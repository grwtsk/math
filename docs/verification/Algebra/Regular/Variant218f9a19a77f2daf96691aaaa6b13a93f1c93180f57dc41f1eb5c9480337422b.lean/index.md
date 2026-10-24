# Verification target: GRWTSK.Algebra.Regular.Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06a8844b88ad966f78ee6a8384ef312155fd7cc1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06a8844b88ad966f78ee6a8384ef312155fd7cc1`.

Source path: `GRWTSK/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Regular.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLeftRegular_of_non_zero_divisor](../../../../mathematics/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean/declarations/isleftregular-of-non-zero-divisor--4ecd69fd4076b9ec787eb4e0.md) | 18 | `result-track:4ecd69fd4076b9ec787eb4e02dd90006582102f25afb5e16d9595d9c60aa12a4` |
| 2 | `theorem` | [isRightRegular_of_non_zero_divisor](../../../../mathematics/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean/declarations/isrightregular-of-non-zero-divisor--f879092894d5851189c4182c.md) | 25 | `result-track:f879092894d5851189c4182cd02790c4ecf472d7a2e0298023d56dd0c2556fb0` |
| 3 | `theorem` | [isRegular_of_ne_zero'](../../../../mathematics/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean/declarations/isregular-of-ne-zero--a8fbdabb52043379cd61c0aa.md) | 30 | `result-track:a8fbdabb52043379cd61c0aa6d1d8d3de22f5ea569f45022c6d11c0991ad205f` |
| 4 | `theorem` | [isRegular_iff_ne_zero'](../../../../mathematics/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean/declarations/isregular-iff-ne-zero--db20f36aca7f519ff1f9ff70.md) | 37 | `result-track:db20f36aca7f519ff1f9ff70e92201bcffdbeddddae9ac5f4efc97073b3976ba` |
| 5 | `abbrev` | [NoZeroDivisors.toCancelMonoidWithZero](../../../../mathematics/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean/declarations/nozerodivisors-tocancelmonoidwithzero--56f9e479740f4868e8e34f73.md) | 46 | `declaration-track:56f9e479740f4868e8e34f7346591cead662047c6f4bf55b2021cbe8649f91a4` |
| 6 | `abbrev` | [NoZeroDivisors.toCancelCommMonoidWithZero](../../../../mathematics/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean/declarations/nozerodivisors-tocancelcommmonoidwithzero--cef4e1b1d5adf8b6adc457e9.md) | 56 | `declaration-track:cef4e1b1d5adf8b6adc457e9be13a7cc3f829260de6d81be9925cf22bf4fe862` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean/declarations/instance--1d7664f92743f88c0f3584ee.md) | 63 | `declaration-track:1d7664f92743f88c0f3584ee01c7abb9f7c445d5d34cf74f98965cd7715443ca` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean/declarations/instance--8968f7dd2c1eb599079db19b.md) | 70 | `declaration-track:8968f7dd2c1eb599079db19b7eaf538486dbb9c56ba9d18a98cf53e62d78f224` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
