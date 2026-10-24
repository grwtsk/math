# Verification target: GRWTSK.Algebra.GroupTheory.Faithful.Variant242e2e0dac88b8b3642169a38c8826442b96ec5b943f46beac62bbc9f6ca3d9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f21b780c71af0700c9d772ccfe845634177b6a04",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Faithful/Variant242e2e0dac88b8b3642169a38c8826442b96ec5b943f46beac62bbc9f6ca3d9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant242e2e0dac88b8b3642169a38c8826442b96ec5b943f46beac62bbc9f6ca3d9c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant242e2e0dac88b8b3642169a38c8826442b96ec5b943f46beac62bbc9f6ca3d9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f21b780c71af0700c9d772ccfe845634177b6a04`.

Source path: `GRWTSK/Algebra/GroupTheory/Faithful/Variant242e2e0dac88b8b3642169a38c8826442b96ec5b943f46beac62bbc9f6ca3d9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Faithful/Variant242e2e0dac88b8b3642169a38c8826442b96ec5b943f46beac62bbc9f6ca3d9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FaithfulVAdd](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant242e2e0dac88b8b3642169a38c8826442b96ec5b943f46beac62bbc9f6ca3d9c.lean/declarations/faithfulvadd--088108ad8a4ccc3ff7433057.md) | 45 | `declaration-track:088108ad8a4ccc3ff7433057eafb1e7af4433b3b0ec25a5ddf3229d70e80b5a5` |
| 2 | `class` | [FaithfulSMul](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant242e2e0dac88b8b3642169a38c8826442b96ec5b943f46beac62bbc9f6ca3d9c.lean/declarations/faithfulsmul--faff139cb7260a079d7fa771.md) | 51 | `declaration-track:faff139cb7260a079d7fa7712ded63176b4928ef8a63f5c2d65fe13a305338a7` |
| 3 | `lemma` | [smul_left_injective'](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant242e2e0dac88b8b3642169a38c8826442b96ec5b943f46beac62bbc9f6ca3d9c.lean/declarations/smul-left-injective--b25788e1b970889359098d4f.md) | 59 | `result-track:b25788e1b970889359098d4f5e3d4db1e209cbb50696434384a5d9d0367cbdf6` |
| 4 | `instance` | [RightCancelMonoid.faithfulSMul](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant242e2e0dac88b8b3642169a38c8826442b96ec5b943f46beac62bbc9f6ca3d9c.lean/declarations/rightcancelmonoid-faithfulsmul--cc3c7d806befd6d3498e72cc.md) | 64 | `declaration-track:cc3c7d806befd6d3498e72cccf8b2e296c5e0fc0e14fb96ff5f92478fc8a13ab` |
| 5 | `instance` | [LefttCancelMonoid.to_faithfulSMul_mulOpposite](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant242e2e0dac88b8b3642169a38c8826442b96ec5b943f46beac62bbc9f6ca3d9c.lean/declarations/lefttcancelmonoid-to-faithfulsmul-mulopposite--34c79f940b1a11c4c8de5aa2.md) | 69 | `declaration-track:34c79f940b1a11c4c8de5aa272b4277ac8c8a52b3fe9ad8b52049d7b255874ff` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant242e2e0dac88b8b3642169a38c8826442b96ec5b943f46beac62bbc9f6ca3d9c.lean/declarations/instance--03a9d2287563fe987957c870.md) | 72 | `declaration-track:03a9d2287563fe987957c870ab2d34e4b3f5bb7d114f0feeb807d64aea1155cd` |
| 7 | `lemma` | [faithfulSMul_iff_injective_smul_one](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant242e2e0dac88b8b3642169a38c8826442b96ec5b943f46beac62bbc9f6ca3d9c.lean/declarations/faithfulsmul-iff-injective-smul-one--cad0347f940126d740b351c4.md) | 74 | `result-track:cad0347f940126d740b351c4e0f1d098468363d022c5dea1245a46dd0af4fff2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
