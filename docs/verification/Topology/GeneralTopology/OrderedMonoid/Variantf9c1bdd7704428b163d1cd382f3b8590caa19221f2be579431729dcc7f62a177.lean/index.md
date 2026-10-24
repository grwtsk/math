# Verification target: GRWTSK.Topology.GeneralTopology.OrderedMonoid.Variantf9c1bdd7704428b163d1cd382f3b8590caa19221f2be579431729dcc7f62a177

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9837dcf56e3c4c42c994dd284634261121fba45",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OrderedMonoid/Variantf9c1bdd7704428b163d1cd382f3b8590caa19221f2be579431729dcc7f62a177.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OrderedMonoid/Variantf9c1bdd7704428b163d1cd382f3b8590caa19221f2be579431729dcc7f62a177.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OrderedMonoid/Variantf9c1bdd7704428b163d1cd382f3b8590caa19221f2be579431729dcc7f62a177.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9837dcf56e3c4c42c994dd284634261121fba45`.

Source path: `GRWTSK/Topology/GeneralTopology/OrderedMonoid/Variantf9c1bdd7704428b163d1cd382f3b8590caa19221f2be579431729dcc7f62a177.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OrderedMonoid/Variantf9c1bdd7704428b163d1cd382f3b8590caa19221f2be579431729dcc7f62a177.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Germ.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instIsOrderedMonoid](../../../../../mathematics/Topology/GeneralTopology/OrderedMonoid/Variantf9c1bdd7704428b163d1cd382f3b8590caa19221f2be579431729dcc7f62a177.lean/declarations/instisorderedmonoid--803160ee407eb2ae4d4709e1.md) | 36 | `declaration-track:803160ee407eb2ae4d4709e1bc0b658b4dff723f39ba08b8fac9bdac8d0ecddb` |
| 2 | `instance` | [instIsOrderedCancelMonoid](../../../../../mathematics/Topology/GeneralTopology/OrderedMonoid/Variantf9c1bdd7704428b163d1cd382f3b8590caa19221f2be579431729dcc7f62a177.lean/declarations/instisorderedcancelmonoid--bf025e8730901f912c25e125.md) | 42 | `declaration-track:bf025e8730901f912c25e125a8e45dbf946fa8e68db677be5207bc01906503d2` |
| 3 | `instance` | [instCanonicallyOrderedMul](../../../../../mathematics/Topology/GeneralTopology/OrderedMonoid/Variantf9c1bdd7704428b163d1cd382f3b8590caa19221f2be579431729dcc7f62a177.lean/declarations/instcanonicallyorderedmul--100a191e208068833d8481ab.md) | 48 | `declaration-track:100a191e208068833d8481ab44f0b32708d2e8103c745530f11e9b9a0d17d80d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
