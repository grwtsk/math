# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyControlFlow.Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2658bc11d5cc67d33a6de88c728ec14221f01f96",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2658bc11d5cc67d33a6de88c728ec14221f01f96`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [applyIteSimproc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a.lean/declarations/applyitesimproc--a2aa6fbaf1c0f5a50d39b9ae.md) | 21 | `declaration-track:a2aa6fbaf1c0f5a50d39b9ae0ecc14f26e321230e6849ccefc0c71b2b9f67906` |
| 2 | `def` | [applyCondSimproc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a.lean/declarations/applycondsimproc--33a839d8e453a767ed8e6fe4.md) | 34 | `declaration-track:33a839d8e453a767ed8e6fe489db5446e4a09009d0f48a2b3fdc4d4ce167dca9` |
| 3 | `def` | [mkApplyProjControlDiscrPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a.lean/declarations/mkapplyprojcontroldiscrpath--f1e3a3780a3be9e3bf7dbd87.md) | 51 | `declaration-track:f1e3a3780a3be9e3bf7dbd879ac8bb771e8fb04001c84e08442146499eb9290a` |
| 4 | `def` | [mkApplyUnaryControlDiscrPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a.lean/declarations/mkapplyunarycontroldiscrpath--c865851ff7e98f9e45e6ea3e.md) | 65 | `declaration-track:c865851ff7e98f9e45e6ea3eacb63ac049a0db7e285e4aeabe079a9b6201bc66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
