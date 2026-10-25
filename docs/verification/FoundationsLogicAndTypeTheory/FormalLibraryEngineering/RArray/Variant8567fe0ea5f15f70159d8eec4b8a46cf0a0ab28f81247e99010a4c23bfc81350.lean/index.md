# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RArray.Variant8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dbb0a7397fd182a7fb4c346163671b2c4bf67bd",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dbb0a7397fd182a7fb4c346163671b2c4bf67bd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.PropLemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350.lean/declarations/rarray--9fb671382dcb61aa038c044e.md) | 33 | `declaration-track:9fb671382dcb61aa038c044e430844c94600bf099e51bbebc956605353983bd8` |
| 2 | `abbrev` | [RArray.get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350.lean/declarations/rarray-get--dd24410ea3a7abcc422aa87c.md) | 40 | `declaration-track:dd24410ea3a7abcc422aa87ca20bbcad997d285196610ad5c5499978f6152159` |
| 3 | `theorem` | [RArray.get_eq_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350.lean/declarations/rarray-get-eq-def--ff858ba2c4002b6af37d969d.md) | 43 | `result-track:ff858ba2c4002b6af37d969dd2dc62ff53d823727bae94d647dd49a5a3bfff06` |
| 4 | `def` | [RArray.getImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350.lean/declarations/rarray-getimpl--88b2be1ba7641ad9fc202d49.md) | 51 | `declaration-track:88b2be1ba7641ad9fc202d499edc2f4d6f2f19c28618a867a7336fc2a788b801` |
| 5 | `theorem` | [RArray.get_eq_getImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350.lean/declarations/rarray-get-eq-getimpl--87912ecaf0e07f7c36a0b801.md) | 57 | `result-track:87912ecaf0e07f7c36a0b801df520981ce57cb8921962c818b170766a5c9e8ba` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350.lean/declarations/instance--f892878a76b279ee0340f40f.md) | 66 | `declaration-track:f892878a76b279ee0340f40fb1a8661afdd9a4dfa5ea7b59607b31188505ceca` |
| 7 | `def` | [RArray.size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350.lean/declarations/rarray-size--62f51a38878313308f5f89ef.md) | 69 | `declaration-track:62f51a38878313308f5f89effa2adbe1a9539db5190c4713ec5b4d9d0a1c4be0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
