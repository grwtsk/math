# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveEvalTerm.Variant4bb62268647fdc798a033cbafaf3c9652ea4c226aa446f51688f4ce362e53e68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11131bfe0ebc0f075c61ea696337c31521169738",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant4bb62268647fdc798a033cbafaf3c9652ea4c226aa446f51688f4ce362e53e68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant4bb62268647fdc798a033cbafaf3c9652ea4c226aa446f51688f4ce362e53e68.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant4bb62268647fdc798a033cbafaf3c9652ea4c226aa446f51688f4ce362e53e68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11131bfe0ebc0f075c61ea696337c31521169738`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant4bb62268647fdc798a033cbafaf3c9652ea4c226aa446f51688f4ce362e53e68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant4bb62268647fdc798a033cbafaf3c9652ea4c226aa446f51688f4ce362e53e68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.ConfigEval.Util` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Elab.DeclNameGen` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [resolveAtomicNameForConstNamespace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant4bb62268647fdc798a033cbafaf3c9652ea4c226aa446f51688f4ce362e53e68.lean/declarations/resolveatomicnameforconstnamespace--3e1b4f2cee15c72a1f070d27.md) | 27 | `declaration-track:3e1b4f2cee15c72a1f070d27e76667b54859fb6e89e70fa30cd46ce736378f79` |
| 2 | `def` | [resolveDottedAtomicNameForConstNamespace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant4bb62268647fdc798a033cbafaf3c9652ea4c226aa446f51688f4ce362e53e68.lean/declarations/resolvedottedatomicnameforconstnamespace--8c481a0d5a3a560fa6876cd4.md) | 46 | `declaration-track:8c481a0d5a3a560fa6876cd40933f0724f7444a3d0e87878a31703cf95c0d179` |
| 3 | `def` | [withSimpleEvalStx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant4bb62268647fdc798a033cbafaf3c9652ea4c226aa446f51688f4ce362e53e68.lean/declarations/withsimpleevalstx--72207ebb0bd4e141ce39d561.md) | 63 | `declaration-track:72207ebb0bd4e141ce39d5616af5672307cbf24d540c0d36f42d29eea258eb53` |
| 4 | `def` | [checkExpectedNumberOfArguments](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant4bb62268647fdc798a033cbafaf3c9652ea4c226aa446f51688f4ce362e53e68.lean/declarations/checkexpectednumberofarguments--4ff06d80cadb9b28fe0588d3.md) | 79 | `declaration-track:4ff06d80cadb9b28fe0588d3d640cc91d9598e211d3b9f18914cc1bfb224346f` |
| 5 | `def` | [ensureEvalTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant4bb62268647fdc798a033cbafaf3c9652ea4c226aa446f51688f4ce362e53e68.lean/declarations/ensureevalterm--9322862eff7127edb4adcdc0.md) | 93 | `declaration-track:9322862eff7127edb4adcdc09043916540bd217ef627262a55d27f00377e168e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
