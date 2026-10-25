# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.IsAlgClosed.Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a59e5c90137fb44a2395ce76c7a110c5ffa22d7",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a59e5c90137fb44a2395ce76c7a110c5ffa22d7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean.json)

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
| 1 | `def` | [genericMonicPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/declarations/genericmonicpoly--7d15d4c4817646e2bbe3c455.md) | 69 | `declaration-track:7d15d4c4817646e2bbe3c455f2b415ece8ee9dd9b68137b3ab3f336ee1ce915f` |
| 2 | `theorem` | [lift_genericMonicPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/declarations/lift-genericmonicpoly--d2e23db01db216234a731d3e.md) | 72 | `result-track:d2e23db01db216234a731d3e516ae776d9a282b029b5e8b5fe9ad49db6a2ef57` |
| 3 | `def` | [genericMonicPolyHasRoot](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/declarations/genericmonicpolyhasroot--40c642d9a6e3a5b026e823fe.md) | 79 | `declaration-track:40c642d9a6e3a5b026e823feaaaf6c775cab7bf7fa596e220b4f26cc052b1d61` |
| 4 | `theorem` | [realize_genericMonicPolyHasRoot](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/declarations/realize-genericmonicpolyhasroot--f468341e511e8eb83377e166.md) | 82 | `result-track:f468341e511e8eb83377e166d529214d37f2d53761c0211348c307a743cb6359` |
| 5 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.GenericMonicPoly.Variant7ea096abdcad471d730f7d003380261568f340304eef381d8538f1bc82649ab6.FirstOrder.Language.Theory.ACF](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/declarations/root-grwtsk-foundationslogicandtypetheory-modeltheory-genericmonicpoly-v--b38344112910002994613119.md) | 92 | `declaration-track:b38344112910002994613119bb51b5079c03f993528c4bb5cb5397d34b604913` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/declarations/instance--3bab22b4c42ae2f216b10c40.md) | 95 | `declaration-track:3bab22b4c42ae2f216b10c40e60b77c7c67106d1dc12602aba63147e0a6f2e2e` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/declarations/instance--824476908abf3c239be1ae35.md) | 99 | `declaration-track:824476908abf3c239be1ae359a6428686f5bc9be71d2b547280e144b467d73c4` |
| 8 | `theorem` | [modelField_of_modelACF](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/declarations/modelfield-of-modelacf--4f20e074a4432a907cb76b03.md) | 110 | `result-track:4f20e074a4432a907cb76b03c64d028dff8d79af87e67b7517bc5dd6190cd42b` |
| 9 | `def` | [fieldOfModelACF](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/declarations/fieldofmodelacf--1df6319fdf8b348abe02e589.md) | 118 | `declaration-track:1df6319fdf8b348abe02e589af775331bd2a548c695d17d9d5362564fee55335` |
| 10 | `theorem` | [isAlgClosed_of_model_ACF](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/declarations/isalgclosed-of-model-acf--3f8cec1bff0deaffbc94feb7.md) | 124 | `result-track:3f8cec1bff0deaffbc94feb7b713ee5c6101f740db9e7800e7e9ca553e01a67a` |
| 11 | `theorem` | [ACF_isSatisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/declarations/acf-issatisfiable--790bc16a418bcd919f6aa5e7.md) | 138 | `result-track:790bc16a418bcd919f6aa5e7f9d025d1d73fa53cfc27dca5ba0cfa718f2ec8bd` |
| 12 | `theorem` | [ACF_categorical](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/declarations/acf-categorical--2a7b6c551dc8a7121fefa634.md) | 153 | `result-track:2a7b6c551dc8a7121fefa6349a891fdfcd78aca53d1ef0488c0c3f159d3ba5b9` |
| 13 | `theorem` | [ACF_isComplete](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/declarations/acf-iscomplete--eeeb71b6e3990b225307f6dc.md) | 173 | `result-track:eeeb71b6e3990b225307f6dc615d5c664dd4f6594e24224c18a914142a131b17` |
| 14 | `theorem` | [finite_ACF_prime_not_realize_of_ACF_zero_realize](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/declarations/finite-acf-prime-not-realize-of-acf-zero-realize--4a7893c4bacc05135700f132.md) | 189 | `result-track:4a7893c4bacc05135700f132285389e325e0e875074aec332f7ee82f427cf3d4` |
| 15 | `theorem` | [ACF_zero_realize_iff_infinite_ACF_prime_realize](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/declarations/acf-zero-realize-iff-infinite-acf-prime-realize--a23c8d48cc5062fda795c02a.md) | 231 | `result-track:a23c8d48cc5062fda795c02aae3f8e13d2ae293b4de7ee2469b5a5d4da13208e` |
| 16 | `theorem` | [ACF_zero_realize_iff_finite_ACF_prime_not_realize](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/declarations/acf-zero-realize-iff-finite-acf-prime-not-realize--b204459040d82ab4d36a91bf.md) | 244 | `result-track:b204459040d82ab4d36a91bfd5f5cbf114e685d8a5bfae7fd1d66b8f20ad69e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
