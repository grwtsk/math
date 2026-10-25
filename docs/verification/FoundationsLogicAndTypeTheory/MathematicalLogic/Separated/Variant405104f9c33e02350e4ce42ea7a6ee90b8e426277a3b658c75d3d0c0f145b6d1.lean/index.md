# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Separated.Variant405104f9c33e02350e4ce42ea7a6ee90b8e426277a3b658c75d3d0c0f145b6d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edf10f1f3a84b7e1b956021adc1f2eac86ce9768",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant405104f9c33e02350e4ce42ea7a6ee90b8e426277a3b658c75d3d0c0f145b6d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant405104f9c33e02350e4ce42ea7a6ee90b8e426277a3b658c75d3d0c0f145b6d1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant405104f9c33e02350e4ce42ea7a6ee90b8e426277a3b658c75d3d0c0f145b6d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edf10f1f3a84b7e1b956021adc1f2eac86ce9768`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant405104f9c33e02350e4ce42ea7a6ee90b8e426277a3b658c75d3d0c0f145b6d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant405104f9c33e02350e4ce42ea7a6ee90b8e426277a3b658c75d3d0c0f145b6d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSeparated](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant405104f9c33e02350e4ce42ea7a6ee90b8e426277a3b658c75d3d0c0f145b6d1.lean/declarations/isseparated--703f6c6191f6bcc50e8b3d8d.md) | 46 | `declaration-track:703f6c6191f6bcc50e8b3d8dd2782d5ce739cd45687e93e93aa95cb5b0ccad7f` |
| 2 | `lemma` | [IsSeparated.empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant405104f9c33e02350e4ce42ea7a6ee90b8e426277a3b658c75d3d0c0f145b6d1.lean/declarations/isseparated-empty--e6e8a26180a262f235736372.md) | 48 | `result-track:e6e8a26180a262f235736372739a26d4581a9c4353ec375afad8afc578c59233` |
| 3 | `lemma` | [IsSeparated.singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant405104f9c33e02350e4ce42ea7a6ee90b8e426277a3b658c75d3d0c0f145b6d1.lean/declarations/isseparated-singleton--4a666a822632f054dabf3f0c.md) | 49 | `result-track:4a666a822632f054dabf3f0ccbd60cbbe9d0e53a13be1be4bbc1e71b5bd065ea` |
| 4 | `lemma` | [IsSeparated.of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant405104f9c33e02350e4ce42ea7a6ee90b8e426277a3b658c75d3d0c0f145b6d1.lean/declarations/isseparated-of-subsingleton--c0cf068bb676ce6b79428479.md) | 51 | `result-track:c0cf068bb676ce6b79428479de2db7009357f57a2884c7fa151c075e7ba7548f` |
| 5 | `lemma` | [IsSeparated.mono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant405104f9c33e02350e4ce42ea7a6ee90b8e426277a3b658c75d3d0c0f145b6d1.lean/declarations/isseparated-mono-left--8692f2c408e28fc05509dc4d.md) | 55 | `result-track:8692f2c408e28fc05509dc4df219c16cbabff5345e5a4ddc9b6e26b80c96b011` |
| 6 | `lemma` | [IsSeparated.mono_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant405104f9c33e02350e4ce42ea7a6ee90b8e426277a3b658c75d3d0c0f145b6d1.lean/declarations/isseparated-mono-right--70bd1af7ac9a6f9024e0be3b.md) | 58 | `result-track:70bd1af7ac9a6f9024e0be3b758181ce72445cac505cc66336154fef2bbd086b` |
| 7 | `lemma` | [isSeparated_insert'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant405104f9c33e02350e4ce42ea7a6ee90b8e426277a3b658c75d3d0c0f145b6d1.lean/declarations/isseparated-insert--9863bcad5510ed0fb5e845ba.md) | 60 | `result-track:9863bcad5510ed0fb5e845babf899bc93effd6108cde179ca965d590427dcff5` |
| 8 | `lemma` | [isSeparated_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant405104f9c33e02350e4ce42ea7a6ee90b8e426277a3b658c75d3d0c0f145b6d1.lean/declarations/isseparated-insert--ff2e749d536214b9e2c61865.md) | 65 | `result-track:ff2e749d536214b9e2c6186520ff81d83f98aac53b96a498fe8bff3da82ed695` |
| 9 | `lemma` | [isSeparated_insert_of_notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant405104f9c33e02350e4ce42ea7a6ee90b8e426277a3b658c75d3d0c0f145b6d1.lean/declarations/isseparated-insert-of-notmem--20740bac102b3d6532bbeb4e.md) | 70 | `result-track:20740bac102b3d6532bbeb4e2338681d9d4acedd578a9e2fafeda5f5e1cd3bfe` |
| 10 | `lemma` | [IsSeparated.insert'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant405104f9c33e02350e4ce42ea7a6ee90b8e426277a3b658c75d3d0c0f145b6d1.lean/declarations/isseparated-insert--1c8c5ee76e8b57e813feec1a.md) | 75 | `result-track:1c8c5ee76e8b57e813feec1a0467177fa88c3bdda7fc0e4e442c39e82320e54a` |
| 11 | `lemma` | [IsSeparated.insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Separated/Variant405104f9c33e02350e4ce42ea7a6ee90b8e426277a3b658c75d3d0c0f145b6d1.lean/declarations/isseparated-insert--a449df68e63ad3e3405119a1.md) | 79 | `result-track:a449df68e63ad3e3405119a1035e01dbefaea08ddeaf589b86ece0d173d7cf08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
