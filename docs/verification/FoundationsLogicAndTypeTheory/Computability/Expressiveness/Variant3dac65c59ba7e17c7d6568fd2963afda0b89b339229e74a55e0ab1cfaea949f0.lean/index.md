# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.Expressiveness.Variant3dac65c59ba7e17c7d6568fd2963afda0b89b339229e74a55e0ab1cfaea949f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c224388100fd3a25613902bce86e28e35ac0ba6f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant3dac65c59ba7e17c7d6568fd2963afda0b89b339229e74a55e0ab1cfaea949f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant3dac65c59ba7e17c7d6568fd2963afda0b89b339229e74a55e0ab1cfaea949f0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant3dac65c59ba7e17c7d6568fd2963afda0b89b339229e74a55e0ab1cfaea949f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c224388100fd3a25613902bce86e28e35ac0ba6f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant3dac65c59ba7e17c7d6568fd2963afda0b89b339229e74a55e0ab1cfaea949f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant3dac65c59ba7e17c7d6568fd2963afda0b89b339229e74a55e0ab1cfaea949f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Presentation.Syntax` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PresentationProgram](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant3dac65c59ba7e17c7d6568fd2963afda0b89b339229e74a55e0ab1cfaea949f0.lean/declarations/presentationprogram--09c90786355b4f8cc0c80890.md) | 23 | `declaration-track:09c90786355b4f8cc0c80890ee9615e4080a9d09a95ca640b8d9b39d2d98b799` |
| 2 | `structure` | [PresentationMachineSemantics](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant3dac65c59ba7e17c7d6568fd2963afda0b89b339229e74a55e0ab1cfaea949f0.lean/declarations/presentationmachinesemantics--9fee300daa2acb5030a573e7.md) | 34 | `declaration-track:9fee300daa2acb5030a573e751f183045e450db28c1e6e528cd499266bf2da6d` |
| 3 | `structure` | [TuringCompletenessWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant3dac65c59ba7e17c7d6568fd2963afda0b89b339229e74a55e0ab1cfaea949f0.lean/declarations/turingcompletenesswitness--bb260e6efa6174a1c3dc4d51.md) | 43 | `declaration-track:bb260e6efa6174a1c3dc4d51f9a8c5af7528153e0f817dc40c85a9af22a72d50` |
| 4 | `theorem` | [presentation_with_realization_is_computationally_expressive](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant3dac65c59ba7e17c7d6568fd2963afda0b89b339229e74a55e0ab1cfaea949f0.lean/declarations/presentation-with-realization-is-computationally-expressive--80a135e92f2f4be07d0c0aaf.md) | 53 | `result-track:80a135e92f2f4be07d0c0aaff89d23d8f1bac120fada3de1c1ccac429612d15e` |
| 5 | `def` | [RawPresentationSyntaxOwnsTuringCompleteness](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant3dac65c59ba7e17c7d6568fd2963afda0b89b339229e74a55e0ab1cfaea949f0.lean/declarations/rawpresentationsyntaxownsturingcompleteness--b7c874105aaafe02ca240185.md) | 60 | `declaration-track:b7c874105aaafe02ca2401858a36814f8685b15592d2d808ab94d01937e132ca` |
| 6 | `theorem` | [raw_presentation_syntax_not_turing_completeness_authority](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant3dac65c59ba7e17c7d6568fd2963afda0b89b339229e74a55e0ab1cfaea949f0.lean/declarations/raw-presentation-syntax-not-turing-completeness-authority--0a5b1a03c403f256771fe81d.md) | 64 | `result-track:0a5b1a03c403f256771fe81dd6128227e95226a8737db745d2abd04a4276dc21` |
| 7 | `def` | [RawPresentationSyntaxOwnsMachineSemantics](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant3dac65c59ba7e17c7d6568fd2963afda0b89b339229e74a55e0ab1cfaea949f0.lean/declarations/rawpresentationsyntaxownsmachinesemantics--da3bdc64541524b17b79724e.md) | 71 | `declaration-track:da3bdc64541524b17b79724ee34748d82fddf0929ebb4a17f434284a7d081c0c` |
| 8 | `theorem` | [raw_presentation_syntax_not_machine_semantics_authority](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Expressiveness/Variant3dac65c59ba7e17c7d6568fd2963afda0b89b339229e74a55e0ab1cfaea949f0.lean/declarations/raw-presentation-syntax-not-machine-semantics-authority--bc63cfda9abfa5367d8b0dbb.md) | 77 | `result-track:bc63cfda9abfa5367d8b0dbb03de49323689d1958270a435707eb4b225a5ce40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
