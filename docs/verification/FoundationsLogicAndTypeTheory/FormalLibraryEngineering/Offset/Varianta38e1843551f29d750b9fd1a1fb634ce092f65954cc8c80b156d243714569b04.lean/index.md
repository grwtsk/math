# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Offset.Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aff0cf21f0219e2965a5bc227c88228a137ecd96",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aff0cf21f0219e2965a5bc227c88228a137ecd96`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.NatInstTesters` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Util.SafeExponentiation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [withInstantiatedMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04.lean/declarations/withinstantiatedmvars--57a357d23827bca620d0c8c5.md) | 17 | `declaration-track:57a357d23827bca620d0c8c5135e08b9ab900b9e3ebbca8dadd0bb42b28b68f4` |
| 2 | `def` | [evalNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04.lean/declarations/evalnat--431441ac246d75f6e3244913.md) | 28 | `declaration-track:431441ac246d75f6e32449134f7d6695116640290cc6ecea69552df93a37191a` |
| 3 | `def` | [matchesInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04.lean/declarations/matchesinstance--b91c2ed2a913c711293a99b3.md) | 72 | `declaration-track:b91c2ed2a913c711293a99b3c87f2f87b91663fb4d913bf40ff646116a2b36ef` |
| 4 | `def` | [getOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04.lean/declarations/getoffset--08be89f5047985494860ea27.md) | 83 | `declaration-track:08be89f5047985494860ea276ac66688e8afd85dc1d7c08a7a4de8d8c2204692` |
| 5 | `def` | [isOffset?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04.lean/declarations/isoffset--5ea098195b4753663fd10549.md) | 89 | `declaration-track:5ea098195b4753663fd10549eb7740b6e7ee0020cd754c91f5810fd4cf9a0d5e` |
| 6 | `def` | [isNatZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04.lean/declarations/isnatzero--3058088cbd060ad737fded1a.md) | 105 | `declaration-track:3058088cbd060ad737fded1a41724710486f08b8652fb0c35127d47cfa766931` |
| 7 | `def` | [mkOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04.lean/declarations/mkoffset--b1174f1f1421a40abc9a0eea.md) | 110 | `declaration-track:b1174f1f1421a40abc9a0eeaa9257102a097bed251735a73b58247974a50a31d` |
| 8 | `def` | [isDefEqOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Offset/Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04.lean/declarations/isdefeqoffset--f25dff407349a3f47b9a57ce.md) | 118 | `declaration-track:f25dff407349a3f47b9a57ceb6968619dae2b87aba1c2aa92655d03b6076dc1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
