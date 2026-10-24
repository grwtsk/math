# Verification target: GRWTSK.Algebra.RingTheory.Cardinality.Variant69b4afe4a3653a62ac8d5114caebf25ab93ff7f896d2d90f5db5a8f25d2a6b48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4221f6d5dd96e0ffeb5954d3a8283345019ef06b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Cardinality/Variant69b4afe4a3653a62ac8d5114caebf25ab93ff7f896d2d90f5db5a8f25d2a6b48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant69b4afe4a3653a62ac8d5114caebf25ab93ff7f896d2d90f5db5a8f25d2a6b48.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant69b4afe4a3653a62ac8d5114caebf25ab93ff7f896d2d90f5db5a8f25d2a6b48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4221f6d5dd96e0ffeb5954d3a8283345019ef06b`.

Source path: `GRWTSK/Algebra/RingTheory/Cardinality/Variant69b4afe4a3653a62ac8d5114caebf25ab93ff7f896d2d90f5db5a8f25d2a6b48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Cardinality/Variant69b4afe4a3653a62ac8d5114caebf25ab93ff7f896d2d90f5db5a8f25d2a6b48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.FractionRing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.Cardinality` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.OreLocalization.Cardinality` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lift_cardinalMk_le](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant69b4afe4a3653a62ac8d5114caebf25ab93ff7f896d2d90f5db5a8f25d2a6b48.lean/declarations/lift-cardinalmk-le--0ea1b7ec0f16fe5002812936.md) | 45 | `result-track:0ea1b7ec0f16fe500281293671a14b5a60a9ee26a6f5ec891e52d60797e9ec8d` |
| 2 | `theorem` | [cardinalMk_le](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant69b4afe4a3653a62ac8d5114caebf25ab93ff7f896d2d90f5db5a8f25d2a6b48.lean/declarations/cardinalmk-le--868fa005c09adfb66f97b598.md) | 51 | `result-track:868fa005c09adfb66f97b59864bbc25b0065c35c979b29ab9bb9388df197f0ea` |
| 3 | `theorem` | [cardinalMk](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant69b4afe4a3653a62ac8d5114caebf25ab93ff7f896d2d90f5db5a8f25d2a6b48.lean/declarations/cardinalmk--c422427a701acf0af194473f.md) | 67 | `result-track:c422427a701acf0af194473f6f54f0d891f42f6c2a4c280ed7bf2e15fea30066` |
| 4 | `theorem` | [lift_cardinalMk](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant69b4afe4a3653a62ac8d5114caebf25ab93ff7f896d2d90f5db5a8f25d2a6b48.lean/declarations/lift-cardinalmk--6fee4da9017d0dcaabd22381.md) | 81 | `result-track:6fee4da9017d0dcaabd2238188ad34291d092cd78eabe16c12bde461be770359` |
| 5 | `theorem` | [cardinalMk](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant69b4afe4a3653a62ac8d5114caebf25ab93ff7f896d2d90f5db5a8f25d2a6b48.lean/declarations/cardinalmk--98ddb1599229fc9f2f416fcb.md) | 87 | `result-track:98ddb1599229fc9f2f416fcb4b1db5e3d3fd6a38828e1c5360674f36e1b351b3` |
| 6 | `theorem` | [Cardinal.mk_fractionRing](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant69b4afe4a3653a62ac8d5114caebf25ab93ff7f896d2d90f5db5a8f25d2a6b48.lean/declarations/cardinal-mk-fractionring--fe3fe11cd5145ca11d05e05e.md) | 96 | `result-track:fe3fe11cd5145ca11d05e05eb286dce274c904f3c898bcea468c7a0fd18b0cdb` |
| 7 | `theorem` | [lift_cardinalMk](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant69b4afe4a3653a62ac8d5114caebf25ab93ff7f896d2d90f5db5a8f25d2a6b48.lean/declarations/lift-cardinalmk--e2fbf57be71b50486633bddc.md) | 105 | `result-track:e2fbf57be71b50486633bddc660ba5420edf5ecd0b155d2d160580a63c9235a1` |
| 8 | `theorem` | [cardinalMk](../../../../../mathematics/Algebra/RingTheory/Cardinality/Variant69b4afe4a3653a62ac8d5114caebf25ab93ff7f896d2d90f5db5a8f25d2a6b48.lean/declarations/cardinalmk--d6a5eaead76754fbd963ff01.md) | 108 | `result-track:d6a5eaead76754fbd963ff01ae911d89649e796c2bbed0dc313402e9cb1f8958` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
