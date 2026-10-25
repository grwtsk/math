# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CaseArraySizes.Variant09dbc46825c07457a02217d97f8bc4c781e0cf53b862a637c7ad8280f21f8fc7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d1a8b5961b9ab57e9cb07d4abb69bcf739ebd88",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant09dbc46825c07457a02217d97f8bc4c781e0cf53b862a637c7ad8280f21f8fc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant09dbc46825c07457a02217d97f8bc4c781e0cf53b862a637c7ad8280f21f8fc7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant09dbc46825c07457a02217d97f8bc4c781e0cf53b862a637c7ad8280f21f8fc7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d1a8b5961b9ab57e9cb07d4abb69bcf739ebd88`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant09dbc46825c07457a02217d97f8bc4c781e0cf53b862a637c7ad8280f21f8fc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant09dbc46825c07457a02217d97f8bc4c781e0cf53b862a637c7ad8280f21f8fc7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Match.CaseValues` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Subst` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CaseArraySizesSubgoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant09dbc46825c07457a02217d97f8bc4c781e0cf53b862a637c7ad8280f21f8fc7.lean/declarations/casearraysizessubgoal--698acc647f223edfb7acf06d.md) | 24 | `declaration-track:698acc647f223edfb7acf06da166c3efcf6a175a9ee496326ff84de12ebe4faa` |
| 2 | `def` | [getArrayArgType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant09dbc46825c07457a02217d97f8bc4c781e0cf53b862a637c7ad8280f21f8fc7.lean/declarations/getarrayargtype--d46f9996092e6379e12c95b9.md) | 31 | `declaration-track:d46f9996092e6379e12c95b9a77ad8d4bdebdfba6c3eba7f61bb496f7869a5e7` |
| 3 | `def` | [mkArrayGetLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant09dbc46825c07457a02217d97f8bc4c781e0cf53b862a637c7ad8280f21f8fc7.lean/declarations/mkarraygetlit--2c3956f7791f76f70dc09245.md) | 38 | `declaration-track:2c3956f7791f76f70dc09245582ae173689f50726160a2ab1447bf74049f1283` |
| 4 | `def` | [introArrayLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant09dbc46825c07457a02217d97f8bc4c781e0cf53b862a637c7ad8280f21f8fc7.lean/declarations/introarraylit--58cd716751d2cfa62320076c.md) | 43 | `declaration-track:58cd716751d2cfa62320076cf8a587c0a2a4fc248f4e51a458e4cff5b2fb575e` |
| 5 | `def` | [caseArraySizes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant09dbc46825c07457a02217d97f8bc4c781e0cf53b862a637c7ad8280f21f8fc7.lean/declarations/casearraysizes--8f5e5863101b3096a588bd04.md) | 73 | `declaration-track:8f5e5863101b3096a588bd0492736e37db90bb2ce98d7f98ac2b48c8c740b843` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
