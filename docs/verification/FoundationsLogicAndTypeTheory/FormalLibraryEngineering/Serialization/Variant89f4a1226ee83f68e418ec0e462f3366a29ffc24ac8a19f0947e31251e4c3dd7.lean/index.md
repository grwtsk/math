# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Serialization.Variant89f4a1226ee83f68e418ec0e462f3366a29ffc24ac8a19f0947e31251e4c3dd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b91a5b77ee60604f0e78db21e32a2f1fd17ec8d0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serialization/Variant89f4a1226ee83f68e418ec0e462f3366a29ffc24ac8a19f0947e31251e4c3dd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serialization/Variant89f4a1226ee83f68e418ec0e462f3366a29ffc24ac8a19f0947e31251e4c3dd7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serialization/Variant89f4a1226ee83f68e418ec0e462f3366a29ffc24ac8a19f0947e31251e4c3dd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b91a5b77ee60604f0e78db21e32a2f1fd17ec8d0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serialization/Variant89f4a1226ee83f68e418ec0e462f3366a29ffc24ac8a19f0947e31251e4c3dd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serialization/Variant89f4a1226ee83f68e418ec0e462f3366a29ffc24ac8a19f0947e31251e4c3dd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.Index.Query` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CanonicalIndexSerializer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serialization/Variant89f4a1226ee83f68e418ec0e462f3366a29ffc24ac8a19f0947e31251e4c3dd7.lean/declarations/canonicalindexserializer--bb655854108c98ce61e8229f.md) | 26 | `declaration-track:bb655854108c98ce61e8229f8a23898124b2da093950e60cfd3a14fb2a824aee` |
| 2 | `theorem` | [CanonicalIndexSerializer.encode_deterministic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serialization/Variant89f4a1226ee83f68e418ec0e462f3366a29ffc24ac8a19f0947e31251e4c3dd7.lean/declarations/canonicalindexserializer-encode-deterministic--380f5c47a5183fb2689247c9.md) | 35 | `result-track:380f5c47a5183fb2689247c90dc0f5635433c38b662846470d7e8d784834ce2d` |
| 3 | `structure` | [SerializedCanonicalIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serialization/Variant89f4a1226ee83f68e418ec0e462f3366a29ffc24ac8a19f0947e31251e4c3dd7.lean/declarations/serializedcanonicalindex--ff9d396a56a33137a71b4dd6.md) | 47 | `declaration-track:ff9d396a56a33137a71b4dd693a6eb79627aea7b22fb01516c52178d0a5dd595` |
| 4 | `theorem` | [SerializedCanonicalIndex.representation_chain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serialization/Variant89f4a1226ee83f68e418ec0e462f3366a29ffc24ac8a19f0947e31251e4c3dd7.lean/declarations/serializedcanonicalindex-representation-chain--d8ea131a15ad902fc60126cb.md) | 60 | `result-track:d8ea131a15ad902fc60126cb05b7a6dd9f63fd7fef6606a300a24da9eeaf9a97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
