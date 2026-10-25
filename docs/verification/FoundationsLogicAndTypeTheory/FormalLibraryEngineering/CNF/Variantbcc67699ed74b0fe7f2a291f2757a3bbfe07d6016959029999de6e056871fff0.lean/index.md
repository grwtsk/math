# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CNF.Variantbcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6159c4f9e9ab87605385d279664c51371570be0b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantbcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantbcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantbcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6159c4f9e9ab87605385d279664c51371570be0b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantbcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantbcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0.lean.json)

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
| 1 | `theorem` | [sat_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantbcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0.lean/declarations/sat-iff--d8f57cffdea8d91e1670eb4d.md) | 21 | `result-track:d8f57cffdea8d91e1670eb4d8e4d1722e42b74d23024ca1a03f97955f4b60d72` |
| 2 | `theorem` | [sat_negate_iff_not_sat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantbcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0.lean/declarations/sat-negate-iff-not-sat--e40b995bc84ac2d0a0f35adb.md) | 23 | `result-track:e40b995bc84ac2d0a0f35adb066f0a18cd597ac0c3182a46267bf5a0c0ca69a5` |
| 3 | `theorem` | [unsat_of_limplies_complement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantbcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0.lean/declarations/unsat-of-limplies-complement--25539b04bead690eda2bea25.md) | 26 | `result-track:25539b04bead690eda2bea251bb6c4042af8db7dab06cad60661db2f281eb5b5` |
| 4 | `theorem` | [sat_iff_exists](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantbcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0.lean/declarations/sat-iff-exists--50d03b15ba74579d5f32e4c9.md) | 38 | `result-track:50d03b15ba74579d5f32e4c9f9cf32108cf910c5e171484ebcb7fc9b449558e5` |
| 5 | `theorem` | [limplies_iff_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantbcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0.lean/declarations/limplies-iff-mem--ddf721d923a360c06893f849.md) | 42 | `result-track:ddf721d923a360c06893f8497629de6f0f47cc3f4fe76191c9a2bcc0746a4e9e` |
| 6 | `theorem` | [entails_of_entails_delete](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantbcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0.lean/declarations/entails-of-entails-delete--b022bed1721bbc6eaa032c89.md) | 54 | `result-track:b022bed1721bbc6eaa032c8934b2ee23d136f643100c4e861a8501ddc23d7f95` |
| 7 | `theorem` | [sat_iff_forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantbcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0.lean/declarations/sat-iff-forall--e2893f724e2f6098bc1ff156.md) | 64 | `result-track:e2893f724e2f6098bc1ff1563e97e978fca5b486864c59386fbd5208b6508243` |
| 8 | `theorem` | [limplies_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantbcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0.lean/declarations/limplies-insert--3cdc7230533fa7140e8d883c.md) | 69 | `result-track:3cdc7230533fa7140e8d883c86531a082d6233671bb49b540d06745828a276be` |
| 9 | `theorem` | [limplies_delete](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantbcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0.lean/declarations/limplies-delete--f08bb1e2cbb8a8d1bc9305cf.md) | 74 | `result-track:f08bb1e2cbb8a8d1bc9305cf21eef6f3b087b90d13e62ca35eedeed758a5d9d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
