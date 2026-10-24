# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant790521f5dcc60566021777e6ce017b7f07503f474ca9096fa7b683eb7dc1c2db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fdcde028103bf18d89176dcbf3abef10fd925a8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant790521f5dcc60566021777e6ce017b7f07503f474ca9096fa7b683eb7dc1c2db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant790521f5dcc60566021777e6ce017b7f07503f474ca9096fa7b683eb7dc1c2db.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant790521f5dcc60566021777e6ce017b7f07503f474ca9096fa7b683eb7dc1c2db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fdcde028103bf18d89176dcbf3abef10fd925a8`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant790521f5dcc60566021777e6ce017b7f07503f474ca9096fa7b683eb7dc1c2db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant790521f5dcc60566021777e6ce017b7f07503f474ca9096fa7b683eb7dc1c2db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.InjSurj` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Function.Injective.orderedCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant790521f5dcc60566021777e6ce017b7f07503f474ca9096fa7b683eb7dc1c2db.lean/declarations/function-injective-orderedcommmonoid--342ce1ad86657f9f0212ba20.md) | 36 | `declaration-track:342ce1ad86657f9f0212ba20d585d6ef30219a52410500ce98e5eb4b74a4a145` |
| 2 | `def` | [Function.Injective.linearOrderedCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant790521f5dcc60566021777e6ce017b7f07503f474ca9096fa7b683eb7dc1c2db.lean/declarations/function-injective-linearorderedcommmonoid--81a33ce8aa40399a30939261.md) | 53 | `declaration-track:81a33ce8aa40399a3093926142ac1a1614728cd1ca876f31c54e685c2745cb9b` |
| 3 | `def` | [OrderEmbedding.mulLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant790521f5dcc60566021777e6ce017b7f07503f474ca9096fa7b683eb7dc1c2db.lean/declarations/orderembedding-mulleft--2da19af7247a92ab0b384989.md) | 68 | `declaration-track:2da19af7247a92ab0b384989122b8a4c2f052ef4ea37095aa63464498a2df2aa` |
| 4 | `def` | [OrderEmbedding.mulRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant790521f5dcc60566021777e6ce017b7f07503f474ca9096fa7b683eb7dc1c2db.lean/declarations/orderembedding-mulright--2f9b4fe97fcb94d8232e5b17.md) | 81 | `declaration-track:2f9b4fe97fcb94d8232e5b1782954480f1d0202b7bf74eec29c9fec5a9defb05` |
| 5 | `theorem` | [eq_and_eq_of_le_of_le_of_mul_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant790521f5dcc60566021777e6ce017b7f07503f474ca9096fa7b683eb7dc1c2db.lean/declarations/eq-and-eq-of-le-of-le-of-mul-le--3dc787b38e695c84ffbab2a5.md) | 90 | `result-track:3dc787b38e695c84ffbab2a5c7885865c20d6e5fa08b628f93ead38bdf57035d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
