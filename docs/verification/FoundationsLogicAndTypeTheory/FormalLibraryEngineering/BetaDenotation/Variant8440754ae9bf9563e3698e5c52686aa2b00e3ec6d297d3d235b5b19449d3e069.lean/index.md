# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BetaDenotation.Variant8440754ae9bf9563e3698e5c52686aa2b00e3ec6d297d3d235b5b19449d3e069

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cd7e42b7f9f02a927449da4a135d62545f34a98",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaDenotation/Variant8440754ae9bf9563e3698e5c52686aa2b00e3ec6d297d3d235b5b19449d3e069.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaDenotation/Variant8440754ae9bf9563e3698e5c52686aa2b00e3ec6d297d3d235b5b19449d3e069.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaDenotation/Variant8440754ae9bf9563e3698e5c52686aa2b00e3ec6d297d3d235b5b19449d3e069.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cd7e42b7f9f02a927449da4a135d62545f34a98`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaDenotation/Variant8440754ae9bf9563e3698e5c52686aa2b00e3ec6d297d3d235b5b19449d3e069.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaDenotation/Variant8440754ae9bf9563e3698e5c52686aa2b00e3ec6d297d3d235b5b19449d3e069.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.BetaNormalizer` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conversionSetoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaDenotation/Variant8440754ae9bf9563e3698e5c52686aa2b00e3ec6d297d3d235b5b19449d3e069.lean/declarations/conversionsetoid--fd6e8a1b844381270314c334.md) | 18 | `declaration-track:fd6e8a1b844381270314c334111aa6e01609fe38d3828a4769476d703ce3ce6a` |
| 2 | `def` | [denotation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaDenotation/Variant8440754ae9bf9563e3698e5c52686aa2b00e3ec6d297d3d235b5b19449d3e069.lean/declarations/denotation--1df8273853346190d2783547.md) | 25 | `declaration-track:1df8273853346190d2783547d7e24b7f1de19e8afba4763408c38bdb54d052ef` |
| 3 | `theorem` | [step_preserves_denotation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaDenotation/Variant8440754ae9bf9563e3698e5c52686aa2b00e3ec6d297d3d235b5b19449d3e069.lean/declarations/step-preserves-denotation--a51c748f1db9d6e0998bfd38.md) | 29 | `result-track:a51c748f1db9d6e0998bfd3869669590a42c1d070560e70757e8721b3763d927` |
| 4 | `theorem` | [normalizeFuel_preserves_denotation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaDenotation/Variant8440754ae9bf9563e3698e5c52686aa2b00e3ec6d297d3d235b5b19449d3e069.lean/declarations/normalizefuel-preserves-denotation--3babe0b3521e81a208008655.md) | 34 | `result-track:3babe0b3521e81a208008655569a128e6caa9ba95401ad6942d242d1f595c0ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
