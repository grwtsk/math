# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BetaDenotation.Variantefc49d38239712445fc18015af3aaf3e50c41d9c628381d8788a2f73399bf4c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbc04f1f73af61d648be348d86451ac13517a5f4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaDenotation/Variantefc49d38239712445fc18015af3aaf3e50c41d9c628381d8788a2f73399bf4c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaDenotation/Variantefc49d38239712445fc18015af3aaf3e50c41d9c628381d8788a2f73399bf4c4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaDenotation/Variantefc49d38239712445fc18015af3aaf3e50c41d9c628381d8788a2f73399bf4c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbc04f1f73af61d648be348d86451ac13517a5f4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaDenotation/Variantefc49d38239712445fc18015af3aaf3e50c41d9c628381d8788a2f73399bf4c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaDenotation/Variantefc49d38239712445fc18015af3aaf3e50c41d9c628381d8788a2f73399bf4c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.BetaNormalizer` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conversionSetoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaDenotation/Variantefc49d38239712445fc18015af3aaf3e50c41d9c628381d8788a2f73399bf4c4.lean/declarations/conversionsetoid--c2db2fcd6f87d73ec2e442be.md) | 26 | `declaration-track:c2db2fcd6f87d73ec2e442beb8235f74a158ab361ca4e3794fd4f0be8b5ba2b6` |
| 2 | `def` | [denotation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaDenotation/Variantefc49d38239712445fc18015af3aaf3e50c41d9c628381d8788a2f73399bf4c4.lean/declarations/denotation--b9f0a1699e8cb9b8dd8a308d.md) | 33 | `declaration-track:b9f0a1699e8cb9b8dd8a308dbd9da1678d0d1074ff81d05997f522beb74039d1` |
| 3 | `theorem` | [step_preserves_denotation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaDenotation/Variantefc49d38239712445fc18015af3aaf3e50c41d9c628381d8788a2f73399bf4c4.lean/declarations/step-preserves-denotation--6fe1148872300d3bc78a1578.md) | 37 | `result-track:6fe1148872300d3bc78a1578ed0b1c33209e649aeeccec1721d4d0e0331bdf31` |
| 4 | `theorem` | [normalizeFuel_preserves_denotation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaDenotation/Variantefc49d38239712445fc18015af3aaf3e50c41d9c628381d8788a2f73399bf4c4.lean/declarations/normalizefuel-preserves-denotation--6e9c7e57b47a904c44b1392f.md) | 42 | `result-track:6e9c7e57b47a904c44b1392fdef8a46cc400de970e98d6842769f6b6f77497f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
