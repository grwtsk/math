# Verification target: GRWTSK.Algebra.GroupTheory.CovBySMul.Variantf9a82747c451fbb921b33f857e532fa8549ab741af78639133103a56f8c8bc3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82541b65f9b23fe3534c8f38e606badd5a1aeea5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CovBySMul/Variantf9a82747c451fbb921b33f857e532fa8549ab741af78639133103a56f8c8bc3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variantf9a82747c451fbb921b33f857e532fa8549ab741af78639133103a56f8c8bc3a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variantf9a82747c451fbb921b33f857e532fa8549ab741af78639133103a56f8c8bc3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82541b65f9b23fe3534c8f38e606badd5a1aeea5`.

Source path: `GRWTSK/Algebra/GroupTheory/CovBySMul/Variantf9a82747c451fbb921b33f857e532fa8549ab741af78639133103a56f8c8bc3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CovBySMul/Variantf9a82747c451fbb921b33f857e532fa8549ab741af78639133103a56f8c8bc3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Scalar` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CovBySMul](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variantf9a82747c451fbb921b33f857e532fa8549ab741af78639133103a56f8c8bc3a.lean/declarations/covbysmul--86ff0e949e697f0cdb2cceb7.md) | 29 | `declaration-track:86ff0e949e697f0cdb2cceb78dad7e9892f12433dff73b00deee1b933206f727` |
| 2 | `lemma` | [CovBySMul.rfl](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variantf9a82747c451fbb921b33f857e532fa8549ab741af78639133103a56f8c8bc3a.lean/declarations/covbysmul-rfl--906b7d5ec55bd2ccaf2d98ec.md) | 32 | `result-track:906b7d5ec55bd2ccaf2d98ecbf17bcb3f072f60233b8a5e4a7b5a50e47526422` |
| 3 | `lemma` | [CovBySMul.of_subset](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variantf9a82747c451fbb921b33f857e532fa8549ab741af78639133103a56f8c8bc3a.lean/declarations/covbysmul-of-subset--db7d895086f09aea0dc79890.md) | 35 | `result-track:db7d895086f09aea0dc79890c0a504bf0d9e9887b77f17ea8bdd7a3476b9d803` |
| 4 | `lemma` | [CovBySMul.nonneg](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variantf9a82747c451fbb921b33f857e532fa8549ab741af78639133103a56f8c8bc3a.lean/declarations/covbysmul-nonneg--91a165f8e3d5065caeb4786c.md) | 37 | `result-track:91a165f8e3d5065caeb4786ca3d2b20e83bcbf95a21af0f4a7cb07b1e08c2584` |
| 5 | `lemma` | [covBySMul_zero](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variantf9a82747c451fbb921b33f857e532fa8549ab741af78639133103a56f8c8bc3a.lean/declarations/covbysmul-zero--acf73d1e454a3dd22a4e3bd5.md) | 41 | `result-track:acf73d1e454a3dd22a4e3bd52a626a636f8e3321de37f776177f632fb1de0137` |
| 6 | `lemma` | [CovBySMul.mono](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variantf9a82747c451fbb921b33f857e532fa8549ab741af78639133103a56f8c8bc3a.lean/declarations/covbysmul-mono--620acad783573fe999c969b6.md) | 44 | `result-track:620acad783573fe999c969b68a12126ccc4381f1d384fb0b0bd4ac5747076e69` |
| 7 | `lemma` | [CovBySMul.trans](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variantf9a82747c451fbb921b33f857e532fa8549ab741af78639133103a56f8c8bc3a.lean/declarations/covbysmul-trans--e717552aabaade3801bdb0de.md) | 47 | `result-track:e717552aabaade3801bdb0dee25c346c50700bb6dfc7236a5ad15b31c9197c22` |
| 8 | `lemma` | [CovBySMul.subset_left](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variantf9a82747c451fbb921b33f857e532fa8549ab741af78639133103a56f8c8bc3a.lean/declarations/covbysmul-subset-left--ceacfa0a23a393d263f40f5c.md) | 63 | `result-track:ceacfa0a23a393d263f40f5c5dcc77dd04a1e07269bf96ecd012e1760a7cbe72` |
| 9 | `lemma` | [CovBySMul.subset_right](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variantf9a82747c451fbb921b33f857e532fa8549ab741af78639133103a56f8c8bc3a.lean/declarations/covbysmul-subset-right--40d566f8b6f9424dbf46b1cf.md) | 67 | `result-track:40d566f8b6f9424dbf46b1cf70eaba9fa0e654d362ddf1a9eabd9083a5dcc72a` |
| 10 | `lemma` | [CovBySMul.subset](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variantf9a82747c451fbb921b33f857e532fa8549ab741af78639133103a56f8c8bc3a.lean/declarations/covbysmul-subset--908e6d2a5a59bdc78c47c73c.md) | 71 | `result-track:908e6d2a5a59bdc78c47c73ca166c690e3db455defd3c8722e464cc1585dec7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
