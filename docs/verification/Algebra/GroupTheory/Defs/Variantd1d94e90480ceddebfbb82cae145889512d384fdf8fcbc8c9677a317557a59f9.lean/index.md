# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variantd1d94e90480ceddebfbb82cae145889512d384fdf8fcbc8c9677a317557a59f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "decba60056e607c4903cba3905ebd711d754300d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variantd1d94e90480ceddebfbb82cae145889512d384fdf8fcbc8c9677a317557a59f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantd1d94e90480ceddebfbb82cae145889512d384fdf8fcbc8c9677a317557a59f9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantd1d94e90480ceddebfbb82cae145889512d384fdf8fcbc8c9677a317557a59f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `decba60056e607c4903cba3905ebd711d754300d`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variantd1d94e90480ceddebfbb82cae145889512d384fdf8fcbc8c9677a317557a59f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variantd1d94e90480ceddebfbb82cae145889512d384fdf8fcbc8c9677a317557a59f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrderedCancelAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantd1d94e90480ceddebfbb82cae145889512d384fdf8fcbc8c9677a317557a59f9.lean/declarations/orderedcanceladdcommmonoid--a9a4b5d1677627570a4be582.md) | 24 | `declaration-track:a9a4b5d1677627570a4be5822d0b4a99efcbebaa96e8358b7493f78f106438ef` |
| 2 | `class` | [OrderedCancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantd1d94e90480ceddebfbb82cae145889512d384fdf8fcbc8c9677a317557a59f9.lean/declarations/orderedcancelcommmonoid--b827b766d1bdb5c57305d61c.md) | 35 | `declaration-track:b827b766d1bdb5c57305d61c409cbbb971eae72a94adddc854d326b911c33d08` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantd1d94e90480ceddebfbb82cae145889512d384fdf8fcbc8c9677a317557a59f9.lean/declarations/instance--cead041a16c8e133ede7c871.md) | 50 | `declaration-track:cead041a16c8e133ede7c871ca8fd99a2f74d368fa02d924360d6ca8a9e40ac6` |
| 4 | `theorem` | [OrderedCancelCommMonoid.lt_of_mul_lt_mul_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantd1d94e90480ceddebfbb82cae145889512d384fdf8fcbc8c9677a317557a59f9.lean/declarations/orderedcancelcommmonoid-lt-of-mul-lt-mul-left--aa6863ed55246191907bb616.md) | 57 | `result-track:aa6863ed55246191907bb6169357b056a2c5b6cc97ea6a56c71acc05ccac3907` |
| 5 | `instance` | [OrderedCancelCommMonoid.to_contravariantClass_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantd1d94e90480ceddebfbb82cae145889512d384fdf8fcbc8c9677a317557a59f9.lean/declarations/orderedcancelcommmonoid-to-contravariantclass-left--780df87424b78a715ad84541.md) | 65 | `declaration-track:780df87424b78a715ad84541b504d7e4fdad35182c3530e4bfeb3d9475fa2209` |
| 6 | `instance` | [OrderedCancelCommMonoid.to_contravariantClass_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantd1d94e90480ceddebfbb82cae145889512d384fdf8fcbc8c9677a317557a59f9.lean/declarations/orderedcancelcommmonoid-to-contravariantclass-right--e8ee3c12815f16dd94fce835.md) | 77 | `declaration-track:e8ee3c12815f16dd94fce835d9d9e732869abdfae69dd6d98be8ae85f67d31c2` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantd1d94e90480ceddebfbb82cae145889512d384fdf8fcbc8c9677a317557a59f9.lean/declarations/instance--fcb77740ab199914d0f0f3bb.md) | 86 | `declaration-track:fcb77740ab199914d0f0f3bbe1c57d96265780bc268a10fd9d7d1853a4d45725` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantd1d94e90480ceddebfbb82cae145889512d384fdf8fcbc8c9677a317557a59f9.lean/declarations/instance--f8d99b62eb4a3f6f250cc548.md) | 93 | `declaration-track:f8d99b62eb4a3f6f250cc548d554e3a1039ee5364d7a9ee792a98e467b9e2cdb` |
| 9 | `class` | [LinearOrderedCancelAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantd1d94e90480ceddebfbb82cae145889512d384fdf8fcbc8c9677a317557a59f9.lean/declarations/linearorderedcanceladdcommmonoid--8ed9078e5b0f7c404437703b.md) | 105 | `declaration-track:8ed9078e5b0f7c404437703b63823292f4d44f1b3b1d64f4d50cb6589e294216` |
| 10 | `class` | [LinearOrderedCancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantd1d94e90480ceddebfbb82cae145889512d384fdf8fcbc8c9677a317557a59f9.lean/declarations/linearorderedcancelcommmonoid--e62c2d145047a65db9c8753e.md) | 112 | `declaration-track:e62c2d145047a65db9c8753ed50cfd0cb9b10c9d2ec2e75fa3f353ee70191836` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
