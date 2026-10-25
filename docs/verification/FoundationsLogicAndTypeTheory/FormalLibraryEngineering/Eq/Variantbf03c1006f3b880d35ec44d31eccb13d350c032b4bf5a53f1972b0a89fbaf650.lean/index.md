# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eq.Variantbf03c1006f3b880d35ec44d31eccb13d350c032b4bf5a53f1972b0a89fbaf650

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "277f0479a4a029957aa26b21c046bce4f60f695b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variantbf03c1006f3b880d35ec44d31eccb13d350c032b4bf5a53f1972b0a89fbaf650.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variantbf03c1006f3b880d35ec44d31eccb13d350c032b4bf5a53f1972b0a89fbaf650.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variantbf03c1006f3b880d35ec44d31eccb13d350c032b4bf5a53f1972b0a89fbaf650.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `277f0479a4a029957aa26b21c046bce4f60f695b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variantbf03c1006f3b880d35ec44d31eccb13d350c032b4bf5a53f1972b0a89fbaf650.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variantbf03c1006f3b880d35ec44d31eccb13d350c032b4bf5a53f1972b0a89fbaf650.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.Inv` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isNat_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variantbf03c1006f3b880d35ec44d31eccb13d350c032b4bf5a53f1972b0a89fbaf650.lean/declarations/isnat-eq-false--f55bfab22716c484fe08ffff.md) | 18 | `result-track:f55bfab22716c484fe08ffff6f0415a0f7803f58e26f3ef7453c7c2277714347` |
| 2 | `theorem` | [isInt_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variantbf03c1006f3b880d35ec44d31eccb13d350c032b4bf5a53f1972b0a89fbaf650.lean/declarations/isint-eq-false--e59e58793308a8ed93a3907f.md) | 22 | `result-track:e59e58793308a8ed93a3907f28a5499011db346bd54504fb330835e112650770` |
| 3 | `theorem` | [Rat.invOf_denom_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variantbf03c1006f3b880d35ec44d31eccb13d350c032b4bf5a53f1972b0a89fbaf650.lean/declarations/rat-invof-denom-swap--b0cc22ef0b23b8d43b93a5fb.md) | 26 | `result-track:b0cc22ef0b23b8d43b93a5fb2855e399fff16ae6073a7d1a83ab5cbc81916df5` |
| 4 | `theorem` | [isRat_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variantbf03c1006f3b880d35ec44d31eccb13d350c032b4bf5a53f1972b0a89fbaf650.lean/declarations/israt-eq-false--36e53cffe8880146094bb0b0.md) | 31 | `result-track:36e53cffe8880146094bb0b0e2f47c0762145700014c1ed14ff2ba232105e9fc` |
| 5 | `def` | [evalEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variantbf03c1006f3b880d35ec44d31eccb13d350c032b4bf5a53f1972b0a89fbaf650.lean/declarations/evaleq--81210eeb4d6221f6b2f2986d.md) | 40 | `declaration-track:81210eeb4d6221f6b2f2986d18fabee122051b13b74b672de70995e17e25cb53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
