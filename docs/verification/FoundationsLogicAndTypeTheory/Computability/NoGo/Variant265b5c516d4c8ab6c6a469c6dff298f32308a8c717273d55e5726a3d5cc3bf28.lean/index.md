# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.NoGo.Variant265b5c516d4c8ab6c6a469c6dff298f32308a8c717273d55e5726a3d5cc3bf28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c555a2f316e1eb4f5bcddbd22ffd8f9d22848aba",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant265b5c516d4c8ab6c6a469c6dff298f32308a8c717273d55e5726a3d5cc3bf28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant265b5c516d4c8ab6c6a469c6dff298f32308a8c717273d55e5726a3d5cc3bf28.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant265b5c516d4c8ab6c6a469c6dff298f32308a8c717273d55e5726a3d5cc3bf28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c555a2f316e1eb4f5bcddbd22ffd8f9d22848aba`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant265b5c516d4c8ab6c6a469c6dff298f32308a8c717273d55e5726a3d5cc3bf28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant265b5c516d4c8ab6c6a469c6dff298f32308a8c717273d55e5726a3d5cc3bf28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Halting` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SumFourSquares` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProgramHalts](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant265b5c516d4c8ab6c6a469c6dff298f32308a8c717273d55e5726a3d5cc3bf28.lean/declarations/programhalts--183a86dfc56663f26d7d545e.md) | 25 | `declaration-track:183a86dfc56663f26d7d545e18bb160462f9139d9e3a6d0381e1813126427476` |
| 2 | `theorem` | [finite_observation_halting_no_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant265b5c516d4c8ab6c6a469c6dff298f32308a8c717273d55e5726a3d5cc3bf28.lean/declarations/finite-observation-halting-no-go--c8ef2ea73a28ccfad2715efb.md) | 31 | `result-track:c8ef2ea73a28ccfad2715efbcd60d4fc307d058f486a809e24bf1f984b10d49a` |
| 3 | `theorem` | [accepted_certificates_re](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant265b5c516d4c8ab6c6a469c6dff298f32308a8c717273d55e5726a3d5cc3bf28.lean/declarations/accepted-certificates-re--59fc4b25486845d600ba8f96.md) | 44 | `result-track:59fc4b25486845d600ba8f96e99efad23de473d268dc613fc242a7059e526bba` |
| 4 | `structure` | [EffectiveBinaryCertificates](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant265b5c516d4c8ab6c6a469c6dff298f32308a8c717273d55e5726a3d5cc3bf28.lean/declarations/effectivebinarycertificates--e093de07c271fc0c2d0f102d.md) | 61 | `declaration-track:e093de07c271fc0c2d0f102d695bc116587cc7646b5c6af2d599b861822906cf` |
| 5 | `theorem` | [bidirectional_certificate_no_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant265b5c516d4c8ab6c6a469c6dff298f32308a8c717273d55e5726a3d5cc3bf28.lean/declarations/bidirectional-certificate-no-go--911b36d2a9ed9e60023d4c9c.md) | 78 | `result-track:911b36d2a9ed9e60023d4c9cfbd875f796ceccac8c27df5a11b733fff881fa2e` |
| 6 | `structure` | [EffectiveHaltingProofCost](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant265b5c516d4c8ab6c6a469c6dff298f32308a8c717273d55e5726a3d5cc3bf28.lean/declarations/effectivehaltingproofcost--2228bc36b62edfc89779eef2.md) | 86 | `declaration-track:2228bc36b62edfc89779eef2e66387c4b9ab622e267fd7bc5dfa335f447aa001` |
| 7 | `def` | [UniversalHaltingProofBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant265b5c516d4c8ab6c6a469c6dff298f32308a8c717273d55e5726a3d5cc3bf28.lean/declarations/universalhaltingproofbound--76f03276ef7c2ad96d9816b5.md) | 119 | `declaration-track:76f03276ef7c2ad96d9816b5aa531534a2d5c46bbc25cca34fa5f8bcb92513a5` |
| 8 | `theorem` | [halting_proof_cost_bound_no_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant265b5c516d4c8ab6c6a469c6dff298f32308a8c717273d55e5726a3d5cc3bf28.lean/declarations/halting-proof-cost-bound-no-go--a0c9f8b9ff2810ced6dad51d.md) | 128 | `result-track:a0c9f8b9ff2810ced6dad51dacf17e7ee6a6a65dbdbe5c1edb27cfd8237b226f` |
| 9 | `def` | [SameProgramBehavior](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant265b5c516d4c8ab6c6a469c6dff298f32308a8c717273d55e5726a3d5cc3bf28.lean/declarations/sameprogrambehavior--244cd67793ee0705e7603d70.md) | 150 | `declaration-track:244cd67793ee0705e7603d707f0128385d9acf76161058163358fc738e94dc3a` |
| 10 | `theorem` | [computable_behavior_class_trivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant265b5c516d4c8ab6c6a469c6dff298f32308a8c717273d55e5726a3d5cc3bf28.lean/declarations/computable-behavior-class-trivial--b08e596ae04e8975c5c8cc16.md) | 154 | `result-track:b08e596ae04e8975c5c8cc16de77240e177a27fbc79fd81575909021bda3f3dc` |
| 11 | `theorem` | [behavioral_canonicalization_no_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant265b5c516d4c8ab6c6a469c6dff298f32308a8c717273d55e5726a3d5cc3bf28.lean/declarations/behavioral-canonicalization-no-go--b941c18f3c862a2d308fcf62.md) | 162 | `result-track:b941c18f3c862a2d308fcf62f2d50bfe5bec30aa2227e4ab9cac4028e2dc959b` |
| 12 | `theorem` | [four_squares_plus_one_no_integer_solution](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant265b5c516d4c8ab6c6a469c6dff298f32308a8c717273d55e5726a3d5cc3bf28.lean/declarations/four-squares-plus-one-no-integer-solution--200702e1d691795d4223e1ed.md) | 191 | `result-track:200702e1d691795d4223e1edb74a21a95e35df5f6254a430757c58044964b218` |
| 13 | `theorem` | [four_squares_plus_one_modular_solution](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant265b5c516d4c8ab6c6a469c6dff298f32308a8c717273d55e5726a3d5cc3bf28.lean/declarations/four-squares-plus-one-modular-solution--93c3e28e26f31166b1459b19.md) | 197 | `result-track:93c3e28e26f31166b1459b19df26e7d5907aa483cace6ee54dad8778540429ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
