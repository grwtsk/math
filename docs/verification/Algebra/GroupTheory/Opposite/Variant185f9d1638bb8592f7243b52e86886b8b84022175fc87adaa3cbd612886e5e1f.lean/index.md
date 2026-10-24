# Verification target: GRWTSK.Algebra.GroupTheory.Opposite.Variant185f9d1638bb8592f7243b52e86886b8b84022175fc87adaa3cbd612886e5e1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb2cc1bb878b8af350e9b96a6727adf67469c936",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variant185f9d1638bb8592f7243b52e86886b8b84022175fc87adaa3cbd612886e5e1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant185f9d1638bb8592f7243b52e86886b8b84022175fc87adaa3cbd612886e5e1f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant185f9d1638bb8592f7243b52e86886b8b84022175fc87adaa3cbd612886e5e1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb2cc1bb878b8af350e9b96a6727adf67469c936`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variant185f9d1638bb8592f7243b52e86886b8b84022175fc87adaa3cbd612886e5e1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variant185f9d1638bb8592f7243b52e86886b8b84022175fc87adaa3cbd612886e5e1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Faithful` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.NeZero` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSMulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant185f9d1638bb8592f7243b52e86886b8b84022175fc87adaa3cbd612886e5e1f.lean/declarations/instsmulzeroclass--40a78395e3b13fec31a57308.md) | 49 | `declaration-track:40a78395e3b13fec31a57308c822654f1fc533cad246c4770407f65fe41046e5` |
| 2 | `instance` | [instSMulWithZero](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant185f9d1638bb8592f7243b52e86886b8b84022175fc87adaa3cbd612886e5e1f.lean/declarations/instsmulwithzero--e7e218d04c071e753f1c5ffc.md) | 52 | `declaration-track:e7e218d04c071e753f1c5ffc099649a148a983181b890a532aecd3971ddce636` |
| 3 | `instance` | [instMulActionWithZero](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant185f9d1638bb8592f7243b52e86886b8b84022175fc87adaa3cbd612886e5e1f.lean/declarations/instmulactionwithzero--998f299b7ccf275d7a5105da.md) | 56 | `declaration-track:998f299b7ccf275d7a5105daf0083b6d025ec358bb2fb5ccd46a6ade60146f72` |
| 4 | `instance` | [instDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant185f9d1638bb8592f7243b52e86886b8b84022175fc87adaa3cbd612886e5e1f.lean/declarations/instdistribmulaction--3631585ad719c611f06f62b8.md) | 61 | `declaration-track:3631585ad719c611f06f62b82f2519eb160452941df537ddc2d8c1ec07963ca3` |
| 5 | `instance` | [instMulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant185f9d1638bb8592f7243b52e86886b8b84022175fc87adaa3cbd612886e5e1f.lean/declarations/instmuldistribmulaction--f2879e93a9a6b8376a9b0a26.md) | 66 | `declaration-track:f2879e93a9a6b8376a9b0a2638b80f4d7b821c5674212f5d5a06742a14645298` |
| 6 | `instance` | [CancelMonoidWithZero.toFaithfulSMul_opposite](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant185f9d1638bb8592f7243b52e86886b8b84022175fc87adaa3cbd612886e5e1f.lean/declarations/cancelmonoidwithzero-tofaithfulsmul-opposite--f39a452fa86862d618a90f26.md) | 84 | `declaration-track:f39a452fa86862d618a90f264d087919d2ad5f2c1989a2f88ad2abb8f32ab7e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
