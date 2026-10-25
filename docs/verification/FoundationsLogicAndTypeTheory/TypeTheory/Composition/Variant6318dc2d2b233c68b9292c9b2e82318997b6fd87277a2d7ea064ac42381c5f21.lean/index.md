# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.Composition.Variant6318dc2d2b233c68b9292c9b2e82318997b6fd87277a2d7ea064ac42381c5f21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d0e7d4fc5147d49ddd64397d795c3eb393ebcf6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Composition/Variant6318dc2d2b233c68b9292c9b2e82318997b6fd87277a2d7ea064ac42381c5f21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/Composition/Variant6318dc2d2b233c68b9292c9b2e82318997b6fd87277a2d7ea064ac42381c5f21.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/Composition/Variant6318dc2d2b233c68b9292c9b2e82318997b6fd87277a2d7ea064ac42381c5f21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d0e7d4fc5147d49ddd64397d795c3eb393ebcf6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Composition/Variant6318dc2d2b233c68b9292c9b2e82318997b6fd87277a2d7ea064ac42381c5f21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/Composition/Variant6318dc2d2b233c68b9292c9b2e82318997b6fd87277a2d7ea064ac42381c5f21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TaxonomyProjection.Basic` — import line 1; internal source missing from the pinned tree.
- `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.BoundedShards.Basic` — import line 2; internal source missing from the pinned tree.
- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IndexedDictionary`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence0b76c73035a9807242a57307.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [encode](../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/Composition/Variant6318dc2d2b233c68b9292c9b2e82318997b6fd87277a2d7ea064ac42381c5f21.lean/declarations/encode--230087832449438f904ad938.md) | 21 | `declaration-track:230087832449438f904ad938d679e065970066d347d0e3f8cf110be1881e411d` |
| 2 | `theorem` | [decode_encode](../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/Composition/Variant6318dc2d2b233c68b9292c9b2e82318997b6fd87277a2d7ea064ac42381c5f21.lean/declarations/decode-encode--e80a375f1e7c5a20ed4fca34.md) | 25 | `result-track:e80a375f1e7c5a20ed4fca3477dd6b9b211c8b3b64887ef220ae547df32b5b3a` |
| 3 | `theorem` | [encode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/Composition/Variant6318dc2d2b233c68b9292c9b2e82318997b6fd87277a2d7ea064ac42381c5f21.lean/declarations/encode-injective--c5aec7bd83189e2713c98cf0.md) | 29 | `result-track:c5aec7bd83189e2713c98cf02eed822aa4d06ef06490f02df6fa8add3a28ba85` |
| 4 | `theorem` | [encoded_reference_count](../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/Composition/Variant6318dc2d2b233c68b9292c9b2e82318997b6fd87277a2d7ea064ac42381c5f21.lean/declarations/encoded-reference-count--fe12dac05893ea07ba5d79cb.md) | 35 | `result-track:fe12dac05893ea07ba5d79cb54f25496ab1b4ed275f49804e668f2824204994d` |
| 5 | `theorem` | [evidence_applicability](../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/Composition/Variant6318dc2d2b233c68b9292c9b2e82318997b6fd87277a2d7ea064ac42381c5f21.lean/declarations/evidence-applicability--67838801c0c159c7b8fbe468.md) | 40 | `result-track:67838801c0c159c7b8fbe46837f582b157673f484195df77187d464afc3f241f` |
| 6 | `theorem` | [roundtrip_does_not_manufacture_evidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/Composition/Variant6318dc2d2b233c68b9292c9b2e82318997b6fd87277a2d7ea064ac42381c5f21.lean/declarations/roundtrip-does-not-manufacture-evidence--f53c6edb26b9b0c29000e90f.md) | 49 | `result-track:f53c6edb26b9b0c29000e90fb2277bbdedcbaed573e63e36567a3083c3198ccb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
