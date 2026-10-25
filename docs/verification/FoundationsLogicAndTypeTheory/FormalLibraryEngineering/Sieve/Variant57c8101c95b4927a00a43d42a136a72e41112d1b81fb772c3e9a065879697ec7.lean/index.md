# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sieve.Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ca26291db3f473af52243c57230f07eb35ae74c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ca26291db3f473af52243c57230f07eb35ae74c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.Transport.Coordinate` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SieveDecision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean/declarations/sievedecision--7eaaf581b407837cc759f4ad.md) | 16 | `declaration-track:7eaaf581b407837cc759f4ada37fa0fda5f5ecceebab85a30b504c3a8b6e6ccd` |
| 2 | `structure` | [SieveSpecification](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean/declarations/sievespecification--12ab0e3ee72a1bda8ed8f9db.md) | 23 | `declaration-track:12ab0e3ee72a1bda8ed8f9dbc3ba2aa150543590b7b02fe27aac16ffde0a44c5` |
| 3 | `structure` | [SieveProcedure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean/declarations/sieveprocedure--392bdf0c61ec960e939980c8.md) | 28 | `declaration-track:392bdf0c61ec960e939980c87eaa20a3a5b012592186cb0921b3d3f3fec868d5` |
| 4 | `structure` | [SieveSoundness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean/declarations/sievesoundness--f617e137ce3b3bae27fcf983.md) | 35 | `declaration-track:f617e137ce3b3bae27fcf9835156f86464bef62ad29f652c921b9e8c9bbad152` |
| 5 | `structure` | [SieveCompleteness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean/declarations/sievecompleteness--0ed6a8578aa03ad1a678d041.md) | 46 | `declaration-track:0ed6a8578aa03ad1a678d041f7536ae10ab8b5a1c92e47e262bf1310dfab9264` |
| 6 | `structure` | [SieveTermination](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean/declarations/sievetermination--8664f25eba55c98be3a853d5.md) | 57 | `declaration-track:8664f25eba55c98be3a853d5106da5ae3d32d581f14e17f4b9ad0077b10b1c31` |
| 7 | `structure` | [SieveEvidenceTheoryVersion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean/declarations/sieveevidencetheoryversion--3b943799ef004b4762a3f6ab.md) | 72 | `declaration-track:3b943799ef004b4762a3f6abf74713dd3368fca8f32c86e6f54e330215729561` |
| 8 | `def` | [SieveEvidenceTheoryVersion.soundOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean/declarations/sieveevidencetheoryversion-soundonly--42022b66137491fe5ebad937.md) | 84 | `declaration-track:42022b66137491fe5ebad93762cc561f67d8857ea7623237e9be20aad3f4ec47` |
| 9 | `structure` | [SieveClosureClaim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean/declarations/sieveclosureclaim--66ffba2e43ac95bf1b98f4e3.md) | 99 | `declaration-track:66ffba2e43ac95bf1b98f4e314886abb80f2836693ea76305e71340ffb13e227` |
| 10 | `structure` | [SieveEvaluationResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean/declarations/sieveevaluationresult--c650a1aa936d9e8c4186aabd.md) | 112 | `declaration-track:c650a1aa936d9e8c4186aabd9aa3de0070e495a5d552b20f7160dfdf9c18e2c1` |
| 11 | `structure` | [SieveEvaluation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean/declarations/sieveevaluation--8be550cc2a1a009adc21fc9e.md) | 122 | `declaration-track:8be550cc2a1a009adc21fc9e7e29659a075e7f3456ec25591e19c1c774a6582d` |
| 12 | `structure` | [SieveWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean/declarations/sievewitness--b8acdaf3a613ee3d8c1c632f.md) | 131 | `declaration-track:b8acdaf3a613ee3d8c1c632f57a278ce0f05df9aaf4159d45e47ab9138394db0` |
| 13 | `structure` | [ConstraintSieveBridge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean/declarations/constraintsievebridge--14e5086ac9e79b72982902aa.md) | 142 | `declaration-track:14e5086ac9e79b72982902aad45b8d966f0e10c761ca4dc26d6068c05b33bcdd` |
| 14 | `structure` | [SieveReflection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant57c8101c95b4927a00a43d42a136a72e41112d1b81fb772c3e9a065879697ec7.lean/declarations/sievereflection--98ecbaff75e9a5d3c35f20c8.md) | 153 | `declaration-track:98ecbaff75e9a5d3c35f20c873dfacd29f155078da867dc9483ca55e3709b759` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
