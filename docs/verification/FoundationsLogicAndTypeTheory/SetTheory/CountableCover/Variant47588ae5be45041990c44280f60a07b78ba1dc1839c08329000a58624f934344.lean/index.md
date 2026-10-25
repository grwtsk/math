# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CountableCover.Variant47588ae5be45041990c44280f60a07b78ba1dc1839c08329000a58624f934344

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bdb8a056a6daeee96afdbe1bf27f22d7bf6d681",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant47588ae5be45041990c44280f60a07b78ba1dc1839c08329000a58624f934344.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant47588ae5be45041990c44280f60a07b78ba1dc1839c08329000a58624f934344.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant47588ae5be45041990c44280f60a07b78ba1dc1839c08329000a58624f934344.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bdb8a056a6daeee96afdbe1bf27f22d7bf6d681`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant47588ae5be45041990c44280f60a07b78ba1dc1839c08329000a58624f934344.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant47588ae5be45041990c44280f60a07b78ba1dc1839c08329000a58624f934344.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Map` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mk_subtype_le_of_countable_eventually_mem_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant47588ae5be45041990c44280f60a07b78ba1dc1839c08329000a58624f934344.lean/declarations/mk-subtype-le-of-countable-eventually-mem-aux--f53cd3109d8d6c648625e24f.md) | 39 | `result-track:f53cd3109d8d6c648625e24f22daaac61f93f80a57d2c0434d6cc841eb7bc4cd` |
| 2 | `lemma` | [mk_subtype_le_of_countable_eventually_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant47588ae5be45041990c44280f60a07b78ba1dc1839c08329000a58624f934344.lean/declarations/mk-subtype-le-of-countable-eventually-mem--b8d9fc7709a885333a3efca1.md) | 74 | `result-track:b8d9fc7709a885333a3efca1b4ffe2a7778342dd1f2f2ac481bf9f5cdae50e3d` |
| 3 | `lemma` | [mk_le_of_countable_eventually_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant47588ae5be45041990c44280f60a07b78ba1dc1839c08329000a58624f934344.lean/declarations/mk-le-of-countable-eventually-mem--cccacabc8668e7a62101dfb1.md) | 90 | `result-track:cccacabc8668e7a62101dfb19889194f987680104ad42f5d8d716fb17d2b0e4c` |
| 4 | `lemma` | [mk_of_countable_eventually_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant47588ae5be45041990c44280f60a07b78ba1dc1839c08329000a58624f934344.lean/declarations/mk-of-countable-eventually-mem--c4279921082ee16f05c20369.md) | 98 | `result-track:c4279921082ee16f05c20369cc92bf2de71042e42f24494fe844cf7b5d776e1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
