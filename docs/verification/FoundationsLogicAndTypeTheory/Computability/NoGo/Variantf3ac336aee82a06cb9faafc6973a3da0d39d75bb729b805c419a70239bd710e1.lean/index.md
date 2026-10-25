# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.NoGo.Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "834f4aaa9b4afb610a236245918c3fdb87fe7082",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `834f4aaa9b4afb610a236245918c3fdb87fe7082`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Halting` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SumFourSquares` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProgramHalts](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/declarations/programhalts--317393f20da4987f26735af2.md) | 17 | `declaration-track:317393f20da4987f26735af218c0cf56debae02ae68c601f0082ce42c13bd7b4` |
| 2 | `theorem` | [finite_observation_halting_no_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/declarations/finite-observation-halting-no-go--e27346f1e8fab8d04f812455.md) | 23 | `result-track:e27346f1e8fab8d04f81245577f739b0fad83023c2bda23f7549493cce426b54` |
| 3 | `theorem` | [accepted_certificates_re](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/declarations/accepted-certificates-re--aa896be52c8b73832535dc6e.md) | 36 | `result-track:aa896be52c8b73832535dc6e07e34d6a40ccfd173cc8adc2830f3269a26a275b` |
| 4 | `structure` | [EffectiveBinaryCertificates](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/declarations/effectivebinarycertificates--82d3bd52b9f746293c294211.md) | 53 | `declaration-track:82d3bd52b9f746293c294211856318800ec120e4331d0e73add493ccd2234fef` |
| 5 | `theorem` | [bidirectional_certificate_no_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/declarations/bidirectional-certificate-no-go--9d4e671b0a1238d4c1aee64c.md) | 70 | `result-track:9d4e671b0a1238d4c1aee64ca275b42146ea75a210a3e85b60dce7bc0d41a816` |
| 6 | `structure` | [EffectiveHaltingProofCost](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/declarations/effectivehaltingproofcost--1947af32d3ef60f9578822f3.md) | 78 | `declaration-track:1947af32d3ef60f9578822f395ba8003021db28e44f0863b160b919d746241d9` |
| 7 | `def` | [UniversalHaltingProofBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/declarations/universalhaltingproofbound--bd0738d0080cb6f1ae290c7e.md) | 111 | `declaration-track:bd0738d0080cb6f1ae290c7e9dc62a3da778a424fbc1554d7c3306d372bec7e8` |
| 8 | `theorem` | [halting_proof_cost_bound_no_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/declarations/halting-proof-cost-bound-no-go--e686d295035b44b51f62f5eb.md) | 120 | `result-track:e686d295035b44b51f62f5eb0a669c689ed7b4f7c8bbef8164c479662aff0350` |
| 9 | `def` | [SameProgramBehavior](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/declarations/sameprogrambehavior--530ab81a5d1dc232b277f50e.md) | 142 | `declaration-track:530ab81a5d1dc232b277f50ee374e1ba7b18c6efb147c17e2153f739ec8fe14c` |
| 10 | `theorem` | [computable_behavior_class_trivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/declarations/computable-behavior-class-trivial--7f53a5dc16fdb1a3fda57d52.md) | 146 | `result-track:7f53a5dc16fdb1a3fda57d5237ca8d9c5e76682169c6f7e19d8e8c4f006267e5` |
| 11 | `theorem` | [behavioral_canonicalization_no_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/declarations/behavioral-canonicalization-no-go--cdaf105b15234ad68291362d.md) | 154 | `result-track:cdaf105b15234ad68291362d01f2d7f3bd38dc964e7996ef26c48108a2677e7b` |
| 12 | `theorem` | [four_squares_plus_one_no_integer_solution](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/declarations/four-squares-plus-one-no-integer-solution--44d65a5c761983c8081881a5.md) | 183 | `result-track:44d65a5c761983c8081881a5f1890aae91d98158f788bdcad85fcb7658ee45d7` |
| 13 | `theorem` | [four_squares_plus_one_modular_solution](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/declarations/four-squares-plus-one-modular-solution--d3ae5f6a0547ce475ebe72cb.md) | 189 | `result-track:d3ae5f6a0547ce475ebe72cb8e06d6e06410d348dd3c8ae0a0e71f08b8e19beb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
