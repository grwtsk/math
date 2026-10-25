# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PersistentHashMap.Variant323f272c8cd8c9cd8e9bf7e24096117635f5be2fa373e9f599dffe3a3d268dac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bf2aba3e0ecc055cf090850283f6dbb9e477744",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant323f272c8cd8c9cd8e9bf7e24096117635f5be2fa373e9f599dffe3a3d268dac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant323f272c8cd8c9cd8e9bf7e24096117635f5be2fa373e9f599dffe3a3d268dac.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant323f272c8cd8c9cd8e9bf7e24096117635f5be2fa373e9f599dffe3a3d268dac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bf2aba3e0ecc055cf090850283f6dbb9e477744`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant323f272c8cd8c9cd8e9bf7e24096117635f5be2fa373e9f599dffe3a3d268dac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant323f272c8cd8c9cd8e9bf7e24096117635f5be2fa373e9f599dffe3a3d268dac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Data.PersistentHashMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [insert'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant323f272c8cd8c9cd8e9bf7e24096117635f5be2fa373e9f599dffe3a3d268dac.lean/declarations/insert--279dd7be8ed263ec052be0a3.md) | 25 | `declaration-track:279dd7be8ed263ec052be0a3c50bc9e0a28dd9125cb85087402528faed4b0f14` |
| 2 | `def` | [toArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant323f272c8cd8c9cd8e9bf7e24096117635f5be2fa373e9f599dffe3a3d268dac.lean/declarations/toarray--262ebeabec9c7bda1ff8a99f.md) | 33 | `declaration-track:262ebeabec9c7bda1ff8a99f01674d1b6ed4cc23bcdec612c675bac0f87796e1` |
| 3 | `def` | [ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant323f272c8cd8c9cd8e9bf7e24096117635f5be2fa373e9f599dffe3a3d268dac.lean/declarations/oflist--420e3dd3816c1c2bd8d96581.md) | 40 | `declaration-track:420e3dd3816c1c2bd8d9658120836903174f599ab923fecf2ae0b55e9937727c` |
| 4 | `def` | [ofListWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant323f272c8cd8c9cd8e9bf7e24096117635f5be2fa373e9f599dffe3a3d268dac.lean/declarations/oflistwith--211547c1ac759e212ede4c42.md) | 47 | `declaration-track:211547c1ac759e212ede4c42a268d1c299a6a808209426d804e0407b4714d6c6` |
| 5 | `def` | [ofArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant323f272c8cd8c9cd8e9bf7e24096117635f5be2fa373e9f599dffe3a3d268dac.lean/declarations/ofarray--39ed238329f3c81213ea2c23.md) | 58 | `declaration-track:39ed238329f3c81213ea2c23e9414cde34b2cb983d3a71d6c507fb2fb37ffefb` |
| 6 | `def` | [ofArrayWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant323f272c8cd8c9cd8e9bf7e24096117635f5be2fa373e9f599dffe3a3d268dac.lean/declarations/ofarraywith--7e74cf9d7819c099ebdda8e7.md) | 65 | `declaration-track:7e74cf9d7819c099ebdda8e7d3a0f15f6a631ce1fc6c129488641df062cf34f4` |
| 7 | `def` | [mergeWithM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant323f272c8cd8c9cd8e9bf7e24096117635f5be2fa373e9f599dffe3a3d268dac.lean/declarations/mergewithm--4d3e086e35335f3bda04edbb.md) | 77 | `declaration-track:4d3e086e35335f3bda04edbbcdd5e2c10fd61698813109d7131bc360deda1bb3` |
| 8 | `def` | [mergeWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant323f272c8cd8c9cd8e9bf7e24096117635f5be2fa373e9f599dffe3a3d268dac.lean/declarations/mergewith--9375a1e0f85ff9a03144a1b3.md) | 89 | `declaration-track:9375a1e0f85ff9a03144a1b331926da5a20b0586fce93a40a24808664ebe01d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
