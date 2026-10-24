# Verification target: GRWTSK.Topology.GeneralTopology.OrderedMonoid.Variantb705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b17b7b186bcc21f9816012c276feb1d8b382666e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OrderedMonoid/Variantb705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OrderedMonoid/Variantb705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OrderedMonoid/Variantb705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b17b7b186bcc21f9816012c276feb1d8b382666e`.

Source path: `GRWTSK/Topology/GeneralTopology/OrderedMonoid/Variantb705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OrderedMonoid/Variantb705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Germ.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instIsOrderedMonoid](../../../../../mathematics/Topology/GeneralTopology/OrderedMonoid/Variantb705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50.lean/declarations/instisorderedmonoid--c7c692ab466c9092445ea459.md) | 28 | `declaration-track:c7c692ab466c9092445ea459d5b02bed7668df86ea9fd45c061940c16a29e4d7` |
| 2 | `instance` | [instIsOrderedCancelMonoid](../../../../../mathematics/Topology/GeneralTopology/OrderedMonoid/Variantb705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50.lean/declarations/instisorderedcancelmonoid--074d5536afff99e24c06d867.md) | 34 | `declaration-track:074d5536afff99e24c06d8673c848379993b71575f9c3d13dc0844b0504c41c9` |
| 3 | `instance` | [instCanonicallyOrderedMul](../../../../../mathematics/Topology/GeneralTopology/OrderedMonoid/Variantb705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50.lean/declarations/instcanonicallyorderedmul--41615b47068e3f0195edc3a0.md) | 40 | `declaration-track:41615b47068e3f0195edc3a025863523eb61c442980f8ac3968875eddf42cdb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
