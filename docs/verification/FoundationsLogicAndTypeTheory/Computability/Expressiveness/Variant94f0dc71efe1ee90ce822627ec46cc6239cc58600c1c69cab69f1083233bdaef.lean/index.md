# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.Expressiveness.Variant94f0dc71efe1ee90ce822627ec46cc6239cc58600c1c69cab69f1083233bdaef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26ac1d2652490b63a4ec485afa9b4337f8a567d6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant94f0dc71efe1ee90ce822627ec46cc6239cc58600c1c69cab69f1083233bdaef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant94f0dc71efe1ee90ce822627ec46cc6239cc58600c1c69cab69f1083233bdaef.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant94f0dc71efe1ee90ce822627ec46cc6239cc58600c1c69cab69f1083233bdaef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26ac1d2652490b63a4ec485afa9b4337f8a567d6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant94f0dc71efe1ee90ce822627ec46cc6239cc58600c1c69cab69f1083233bdaef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant94f0dc71efe1ee90ce822627ec46cc6239cc58600c1c69cab69f1083233bdaef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Presentation.Syntax` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PresentationProgram](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant94f0dc71efe1ee90ce822627ec46cc6239cc58600c1c69cab69f1083233bdaef.lean/declarations/presentationprogram--6ae15bc80f71f0d4217d4acf.md) | 31 | `declaration-track:6ae15bc80f71f0d4217d4acf9fc494d17e100abc8ba430a2a1247e9272cc475e` |
| 2 | `structure` | [PresentationMachineSemantics](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant94f0dc71efe1ee90ce822627ec46cc6239cc58600c1c69cab69f1083233bdaef.lean/declarations/presentationmachinesemantics--a3fc30078b022db2993e5e19.md) | 42 | `declaration-track:a3fc30078b022db2993e5e199fd83014847923f541524d9964e5126285a0a060` |
| 3 | `structure` | [TuringCompletenessWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant94f0dc71efe1ee90ce822627ec46cc6239cc58600c1c69cab69f1083233bdaef.lean/declarations/turingcompletenesswitness--d73463789e387d81a42500b4.md) | 51 | `declaration-track:d73463789e387d81a42500b4bc8d3d2519e82213c0303b95d7150ab1c9da032e` |
| 4 | `theorem` | [presentation_with_realization_is_computationally_expressive](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant94f0dc71efe1ee90ce822627ec46cc6239cc58600c1c69cab69f1083233bdaef.lean/declarations/presentation-with-realization-is-computationally-expressive--9d9a9b766d3def20daa10364.md) | 61 | `result-track:9d9a9b766d3def20daa10364046e850b1305535be282d0507357faf4145dd1c5` |
| 5 | `def` | [RawPresentationSyntaxOwnsTuringCompleteness](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant94f0dc71efe1ee90ce822627ec46cc6239cc58600c1c69cab69f1083233bdaef.lean/declarations/rawpresentationsyntaxownsturingcompleteness--163924226ed552ed4bc15ba9.md) | 68 | `declaration-track:163924226ed552ed4bc15ba92d41427545fb22827a03c42844bf510d2aa3896d` |
| 6 | `theorem` | [raw_presentation_syntax_not_turing_completeness_authority](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant94f0dc71efe1ee90ce822627ec46cc6239cc58600c1c69cab69f1083233bdaef.lean/declarations/raw-presentation-syntax-not-turing-completeness-authority--e213244c8b77e4ad4f46bff9.md) | 72 | `result-track:e213244c8b77e4ad4f46bff9e6c5fccf3555eeb1ed2fe31c3f9d255770a472a5` |
| 7 | `def` | [RawPresentationSyntaxOwnsMachineSemantics](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant94f0dc71efe1ee90ce822627ec46cc6239cc58600c1c69cab69f1083233bdaef.lean/declarations/rawpresentationsyntaxownsmachinesemantics--25b3e50d543af614761af082.md) | 79 | `declaration-track:25b3e50d543af614761af082621270b8a5a41610a6bcebd798d44c972e9523e5` |
| 8 | `theorem` | [raw_presentation_syntax_not_machine_semantics_authority](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant94f0dc71efe1ee90ce822627ec46cc6239cc58600c1c69cab69f1083233bdaef.lean/declarations/raw-presentation-syntax-not-machine-semantics-authority--f383fcc4c0814c0cdd00fb22.md) | 85 | `result-track:f383fcc4c0814c0cdd00fb22f4c2d474a42fb38023724dca0227b09056e825f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
