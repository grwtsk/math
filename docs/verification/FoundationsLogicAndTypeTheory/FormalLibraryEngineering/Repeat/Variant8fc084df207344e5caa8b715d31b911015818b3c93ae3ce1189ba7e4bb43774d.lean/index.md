# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Repeat.Variant8fc084df207344e5caa8b715d31b911015818b3c93ae3ce1189ba7e4bb43774d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "346347d39c508ff8bd3db3391bbf693ff429be6f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant8fc084df207344e5caa8b715d31b911015818b3c93ae3ce1189ba7e4bb43774d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant8fc084df207344e5caa8b715d31b911015818b3c93ae3ce1189ba7e4bb43774d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant8fc084df207344e5caa8b715d31b911015818b3c93ae3ce1189ba7e4bb43774d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `346347d39c508ff8bd3db3391bbf693ff429be6f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant8fc084df207344e5caa8b715d31b911015818b3c93ae3ce1189ba7e4bb43774d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant8fc084df207344e5caa8b715d31b911015818b3c93ae3ce1189ba7e4bb43774d.lean.json)

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
| 1 | `structure` | [RepeatIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant8fc084df207344e5caa8b715d31b911015818b3c93ae3ce1189ba7e4bb43774d.lean/declarations/repeatiterator--04202d3726ec1b83bb7300ab.md) | 32 | `declaration-track:04202d3726ec1b83bb7300abddd2069f57ba085b27e61e5ed048fbf637b5436f` |
| 2 | `instance` | [RepeatIterator.instIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant8fc084df207344e5caa8b715d31b911015818b3c93ae3ce1189ba7e4bb43774d.lean/declarations/repeatiterator-institerator--a452b07162d44ce87535ae21.md) | 37 | `declaration-track:a452b07162d44ce87535ae2192a089a11b7972ca7702b1597ba785b57feca852` |
| 3 | `def` | [RepeatIterator.instProductivenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant8fc084df207344e5caa8b715d31b911015818b3c93ae3ce1189ba7e4bb43774d.lean/declarations/repeatiterator-instproductivenessrelation--9a5a57c098227118c48dd6cf.md) | 44 | `declaration-track:9a5a57c098227118c48dd6cf4e30d1a6024dea2fcc8bf384dbd3aa02a2b1f885` |
| 4 | `instance` | [RepeatIterator.instProductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant8fc084df207344e5caa8b715d31b911015818b3c93ae3ce1189ba7e4bb43774d.lean/declarations/repeatiterator-instproductive--74c1eebd596d758a27254d04.md) | 50 | `declaration-track:74c1eebd596d758a27254d0437afc2bd451d3ffd2b87f5963518e3eb6da30ef7` |
| 5 | `instance` | [RepeatIterator.instIteratorLoop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant8fc084df207344e5caa8b715d31b911015818b3c93ae3ce1189ba7e4bb43774d.lean/declarations/repeatiterator-institeratorloop--4808f735bfa417fd62156fa7.md) | 54 | `declaration-track:4808f735bfa417fd62156fa7a27a39ca7858a4b416f538aeccd9b01e913d9a3c` |
| 6 | `def` | [Iter.repeat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant8fc084df207344e5caa8b715d31b911015818b3c93ae3ce1189ba7e4bb43774d.lean/declarations/iter-repeat--44640947d4a279cf027df470.md) | 75 | `declaration-track:44640947d4a279cf027df470f03ddb7c7f34b3d8a1a721c29a470b65b33d5ccf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
