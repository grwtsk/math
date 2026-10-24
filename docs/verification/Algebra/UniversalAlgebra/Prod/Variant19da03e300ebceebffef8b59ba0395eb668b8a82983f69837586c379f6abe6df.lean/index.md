# Verification target: GRWTSK.Algebra.UniversalAlgebra.Prod.Variant19da03e300ebceebffef8b59ba0395eb668b8a82983f69837586c379f6abe6df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4903e6815fe87a4de8411594e401031a5d101f5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variant19da03e300ebceebffef8b59ba0395eb668b8a82983f69837586c379f6abe6df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant19da03e300ebceebffef8b59ba0395eb668b8a82983f69837586c379f6abe6df.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant19da03e300ebceebffef8b59ba0395eb668b8a82983f69837586c379f6abe6df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4903e6815fe87a4de8411594e401031a5d101f5`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Prod/Variant19da03e300ebceebffef8b59ba0395eb668b8a82983f69837586c379f6abe6df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Prod/Variant19da03e300ebceebffef8b59ba0395eb668b8a82983f69837586c379f6abe6df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Synonym` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Lex` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant19da03e300ebceebffef8b59ba0395eb668b8a82983f69837586c379f6abe6df.lean/declarations/instance--3a7c038342662e74a09204b4.md) | 28 | `declaration-track:3a7c038342662e74a09204b4b1c61f7569df08fcf809bc7240f59acadd62d12c` |
| 2 | `instance` | [instIsOrderedCancelMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant19da03e300ebceebffef8b59ba0395eb668b8a82983f69837586c379f6abe6df.lean/declarations/instisorderedcancelmonoid--2821b01942ed8ddf59e02d3c.md) | 33 | `declaration-track:2821b01942ed8ddf59e02d3c891c57b7edd0c8d6f33455768381888752bd3103` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant19da03e300ebceebffef8b59ba0395eb668b8a82983f69837586c379f6abe6df.lean/declarations/instance--e6a631916adc74bf3261d6e1.md) | 41 | `declaration-track:e6a631916adc74bf3261d6e167e71737be270f8c9192d1941ecd241555d67380` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant19da03e300ebceebffef8b59ba0395eb668b8a82983f69837586c379f6abe6df.lean/declarations/instance--81628f5519f402849fcc48d4.md) | 49 | `declaration-track:81628f5519f402849fcc48d4d05290265107ed00957f3abe1283e10aacf89119` |
| 5 | `instance` | [isOrderedMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant19da03e300ebceebffef8b59ba0395eb668b8a82983f69837586c379f6abe6df.lean/declarations/isorderedmonoid--1a983d8be910c90fdff5b36b.md) | 58 | `declaration-track:1a983d8be910c90fdff5b36ba208d7a0c14bcd36520caa3af31ecf78c536119e` |
| 6 | `instance` | [isOrderedCancelMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant19da03e300ebceebffef8b59ba0395eb668b8a82983f69837586c379f6abe6df.lean/declarations/isorderedcancelmonoid--d4bb19705011b7be5aa76c14.md) | 67 | `declaration-track:d4bb19705011b7be5aa76c14f8b9bcd6840aae61620286c71e2dbe0b7119282c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
