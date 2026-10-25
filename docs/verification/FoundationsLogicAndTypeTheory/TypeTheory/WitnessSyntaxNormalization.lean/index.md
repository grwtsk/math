# Verification target: GRWTSK.Logic.TypeTheory.WitnessSyntaxNormalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee2e421a8b7a3806390804ea7a3004524a82959c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/TypeTheory/WitnessSyntaxNormalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/WitnessSyntaxNormalization.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/WitnessSyntaxNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee2e421a8b7a3806390804ea7a3004524a82959c`.

Source path: `GRWTSK/Logic/TypeTheory/WitnessSyntaxNormalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/TypeTheory/WitnessSyntaxNormalization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [StronglyNormalizing](../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/WitnessSyntaxNormalization.lean/declarations/stronglynormalizing--b233952a14f03121fa248a4f.md) | 27 | `declaration-track:b233952a14f03121fa248a4ff0f58b51e4aed0c1b750945aba3b2ac5da6f5b66` |
| 2 | `structure` | [ReductionSimulation](../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/WitnessSyntaxNormalization.lean/declarations/reductionsimulation--a27c7f2002ef1867a2da6fba.md) | 32 | `declaration-track:a27c7f2002ef1867a2da6fba2e180583e5b908a3395606c426dfd1a5193bbba9` |
| 3 | `theorem` | [ReductionSimulation.stronglyNormalizing_of_encode](../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/WitnessSyntaxNormalization.lean/declarations/reductionsimulation-stronglynormalizing-of-encode--c8cdd2b3bdb788660d030e24.md) | 44 | `result-track:c8cdd2b3bdb788660d030e246b9d94c731529b75aa7331ab24de965aa9df3266` |
| 4 | `structure` | [SemanticReductionBridge](../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/WitnessSyntaxNormalization.lean/declarations/semanticreductionbridge--a5dcdb218c168df302e0c9cc.md) | 64 | `declaration-track:a5dcdb218c168df302e0c9cc7fa912a62f3e0cc47680f7fd163a572f28db54b1` |
| 5 | `theorem` | [SemanticReductionBridge.reflTransGen_semantic](../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/WitnessSyntaxNormalization.lean/declarations/semanticreductionbridge-refltransgen-semantic--c8c73c86e62ca4a9d0338167.md) | 77 | `result-track:c8c73c86e62ca4a9d03381675785e6ee449d0ff49e4cf249a529f3894d1547b6` |
| 6 | `structure` | [TypedWitnessNormalizationBridge](../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/WitnessSyntaxNormalization.lean/declarations/typedwitnessnormalizationbridge--4dbca1d4db3c4d26b9d18037.md) | 91 | `declaration-track:4dbca1d4db3c4d26b9d180377df4f996c5caed2cad96280cbb54f2a97d955571` |
| 7 | `theorem` | [TypedWitnessNormalizationBridge.stronglyNormalizing](../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/WitnessSyntaxNormalization.lean/declarations/typedwitnessnormalizationbridge-stronglynormalizing--785c13adbd1a6d4371091bea.md) | 101 | `result-track:785c13adbd1a6d4371091beab059d28f7b4598eff5e8d6e32a19756094733016` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
