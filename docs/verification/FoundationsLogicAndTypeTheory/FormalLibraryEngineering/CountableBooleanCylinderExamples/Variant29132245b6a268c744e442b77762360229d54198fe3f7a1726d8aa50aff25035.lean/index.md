# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CountableBooleanCylinderExamples.Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "688f3427de34d6ecb1e8fbd206d4f15b359187f5",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `688f3427de34d6ecb1e8fbd206d4f15b359187f5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.CountableBooleanCylinder` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [natVocabulary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean/declarations/natvocabulary--61294bbabac6afc0f47d7605.md) | 15 | `declaration-track:61294bbabac6afc0f47d76058575a197c575b7ef25b053c5aad02743ec25f772` |
| 2 | `def` | [exampleWindow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean/declarations/examplewindow--2bac7260da94cd6c938f3376.md) | 22 | `declaration-track:2bac7260da94cd6c938f337628e886627c8e2f890779984476629a65d3a44d2f` |
| 3 | `def` | [exampleCylinder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean/declarations/examplecylinder--43821329f38878b7a7ab76af.md) | 27 | `declaration-track:43821329f38878b7a7ab76aff757d3b86872e00769b672cac5368e1a66a0a4eb` |
| 4 | `def` | [natListBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean/declarations/natlistbound--63c104baa264be35d81fa7ec.md) | 34 | `declaration-track:63c104baa264be35d81fa7ecccc39b2e5f1c6c175a418d0c4ed7b71f089a2594` |
| 5 | `theorem` | [le_natListBound_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean/declarations/le-natlistbound-of-mem--ffc14898222e134418d6dae3.md) | 38 | `result-track:ffc14898222e134418d6dae3881f93372cdb6946e7a40ddd0370a55cd4f64918` |
| 6 | `def` | [exampleWindowAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean/declarations/examplewindowat--65697909d4bcd49720f3ae51.md) | 52 | `declaration-track:65697909d4bcd49720f3ae51763436cfd90017ceb37795443b86cf2041683558` |
| 7 | `def` | [exampleCylinderAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean/declarations/examplecylinderat--7f1bfd5fed3b1def60c9b14e.md) | 57 | `declaration-track:7f1bfd5fed3b1def60c9b14e3784440b6ea3ffea2a6cd894e52579319dfcfe1e` |
| 8 | `def` | [exampleWindowRefinement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean/declarations/examplewindowrefinement--224b00759fd834f5150ae715.md) | 64 | `declaration-track:224b00759fd834f5150ae715568cfff1ae36b20600624ea4d3ff0514faf1ef1a` |
| 9 | `def` | [exampleCylinderRefinement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean/declarations/examplecylinderrefinement--8e741c54d1758ec05c81d849.md) | 74 | `declaration-track:8e741c54d1758ec05c81d84985b0acf313c101335b386f0421be2d13470d452f` |
| 10 | `def` | [exampleTower](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean/declarations/exampletower--fcb4580e7780390ae133d241.md) | 82 | `declaration-track:fcb4580e7780390ae133d241582d38f537dfcb3a9fa4979ddd79ab7568bc7420` |
| 11 | `def` | [exampleCompletion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean/declarations/examplecompletion--fee56613ea6186c88f634f3c.md) | 98 | `declaration-track:fee56613ea6186c88f634f3cf0daf1bcb8c57b2af349ed8d9ff8000ee918d282` |
| 12 | `def` | [exampleHilbertAuthority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean/declarations/examplehilbertauthority--b2113c55846df4523a85c735.md) | 113 | `declaration-track:b2113c55846df4523a85c735a56324473c5cdd4253c2142c8b1bbfa6f67fa089` |
| 13 | `theorem` | [example_prefix_verified](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean/declarations/example-prefix-verified--1aacf2d55cfd2a007ab662ee.md) | 123 | `result-track:1aacf2d55cfd2a007ab662ee64bed115f927ddb54129fa6c8ba0f9784ef3e4d5` |
| 14 | `theorem` | [example_tower_firewall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean/declarations/example-tower-firewall--a19fe82b8b9a20328304f3a2.md) | 127 | `result-track:a19fe82b8b9a20328304f3a22322fe42901f91e7ebe3e27d11a50854ebf2dca6` |
| 15 | `theorem` | [example_completion_requires_certificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean/declarations/example-completion-requires-certificate--bba18a9ad0be6219d7451296.md) | 133 | `result-track:bba18a9ad0be6219d74512960f5704873c9f4f565f53e7daf3c996d53ca419df` |
| 16 | `theorem` | [example_hilbert_completion_is_authority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountableBooleanCylinderExamples/Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035.lean/declarations/example-hilbert-completion-is-authority--ee178e1c6ef58ab186651c39.md) | 139 | `result-track:ee178e1c6ef58ab186651c39a72c448c61454da91e61a7d68377152c0916ac6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
