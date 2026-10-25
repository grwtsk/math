# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bound.Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c81b30f93297aba819e50013f44475bb626cc385",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c81b30f93297aba819e50013f44475bb626cc385`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ext` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/boundcertificate--992ef046d92f608219697256.md) | 26 | `declaration-track:992ef046d92f6082196972562eb22b97ed9c0332a0654551a37e49e3d7f0a8a9` |
| 2 | `constant` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/constant--253dc512b6ee560e70243e15.md) | 30 | `declaration-track:253dc512b6ee560e70243e1517b8f469bf50835ea46f3e99c40f586ebd3f8e87` |
| 3 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/ext--3a2101292d3dea0fbc2a2234.md) | 40 | `result-track:3a2101292d3dea0fbc2a22346d1bd8f546e6f610076f11ec3c863d690360f356` |
| 4 | `def` | [unit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/unit--a8fe75e68f3f5738bd95cbd4.md) | 47 | `declaration-track:a8fe75e68f3f5738bd95cbd4787b42f951425cf14fb315284efd566cf832461e` |
| 5 | `def` | [compose](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/compose--546cfd76c893e597f8a07b85.md) | 50 | `declaration-track:546cfd76c893e597f8a07b859061980ee366d197d3a6ca7e0413bf296e63baca` |
| 6 | `constant` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/constant--b4336d531f9bfa0a6d276158.md) | 52 | `declaration-track:b4336d531f9bfa0a6d2761588b5afdd30e3f250df283aed45e1a91e5264e3608` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/instance--8850569478161347e38558fd.md) | 60 | `declaration-track:8850569478161347e38558fd535b6d1d60971d35d51c317d5b726b15c2136600` |
| 8 | `theorem` | [compose_function](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/compose-function--1495147eb5334e7942abcc4e.md) | 88 | `result-track:1495147eb5334e7942abcc4e4cfa4a6137df2f26fc1d8fd4ebc25e6aedc89eb2` |
| 9 | `theorem` | [compose_constant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/compose-constant--048618e5ee4ae4b845175ea8.md) | 90 | `result-track:048618e5ee4ae4b845175ea85515648a20e69c2b194eadacf5a0b3dd2bc40dc8` |
| 10 | `theorem` | [compose_radius](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/compose-radius--d7cb541fd24562d3cea81fd1.md) | 92 | `result-track:d7cb541fd24562d3cea81fd1d4ee8e694d72d25a7e7f3618f94fe0122c953d37` |
| 11 | `theorem` | [unit_function](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/unit-function--4dda9c8e31390a63e3ac14c4.md) | 94 | `result-track:4dda9c8e31390a63e3ac14c45d26c4d00fd940cb01c83c15e3a22699bd3c3c09` |
| 12 | `theorem` | [unit_constant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/unit-constant--dd89a5ec186fd1bf2c1519cd.md) | 95 | `result-track:dd89a5ec186fd1bf2c1519cd4f274ebeb4eddf13723d468cd3c0192449898b9b` |
| 13 | `theorem` | [unit_radius](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/unit-radius--552d01ee9adbef0ccf88f49b.md) | 96 | `result-track:552d01ee9adbef0ccf88f49b661aed08badb59755135bb81baea0934ad9701c4` |
| 14 | `def` | [constantAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/constantadd--842548c2e121fb879a851487.md) | 99 | `declaration-track:842548c2e121fb879a851487004bd49cd662655abc76df0f72955e255b7dc3b2` |
| 15 | `theorem` | [prod_function](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/prod-function--bc47a0594623ff136f19cc9f.md) | 102 | `result-track:bc47a0594623ff136f19cc9fa2ba575ec47d191f5bc0a134c89afa3d8b9be0b2` |
| 16 | `theorem` | [prod_constant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/prod-constant--e825e0705cc4951ca455d67d.md) | 108 | `result-track:e825e0705cc4951ca455d67d34ed69c18c83c56e49aaddacbbf56a644571af41` |
| 17 | `theorem` | [prod_radius](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/prod-radius--bd91f6e24547c656bc2e45e5.md) | 115 | `result-track:bd91f6e24547c656bc2e45e5c69cc4ceeea83867b742378d6ef25c5468fe5028` |
| 18 | `theorem` | [prod_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/prod-bound--66b4cad06cb355e4b1c97c5a.md) | 123 | `result-track:66b4cad06cb355e4b1c97c5a97a0f23058d410122cc06ddb008ce3cf3d75b67b` |
| 19 | `theorem` | [flatten_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/flatten-prod--77b34bb2c15418224b5bbb59.md) | 128 | `result-track:77b34bb2c15418224b5bbb599dff225c430e7a9cb13cdacbfb04eb6d6081518e` |
| 20 | `def` | [radiusOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/radiusonly--d5f00d96b6327f086770a457.md) | 135 | `declaration-track:d5f00d96b6327f086770a457867e38447bbb00c46910d5271829d5228539ff78` |
| 21 | `theorem` | [radiusOnly_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/radiusonly-idempotent--d927fd11a34ee7b437201470.md) | 138 | `result-track:d927fd11a34ee7b43720147079ea627b469bf9b72a30802397b28b9f9ecfada6` |
| 22 | `def` | [canceled](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/canceled--da5fbc6b75dabb30557dd8a9.md) | 147 | `declaration-track:da5fbc6b75dabb30557dd8a90bbd0a2a271c8ce53a9faecf4373d3b9138f9aba` |
| 23 | `constant` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/constant--1a3f204bf7dccf14f9c4e0c0.md) | 149 | `declaration-track:1a3f204bf7dccf14f9c4e0c05bec2912cd99f0099343ab92adc5a8c82d2339a5` |
| 24 | `theorem` | [canceled_eq_unit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/canceled-eq-unit--810907c673738832ebe74037.md) | 155 | `result-track:810907c673738832ebe74037564806f02cc94f666ac5919bbdf2631ebf65a75b` |
| 25 | `theorem` | [unbounded_positive_member](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant0f8f2d5fa8dbb97f91326cdf255d53a7f5df143de6457057f68e5b4e092a47dd.lean/declarations/unbounded-positive-member--1e7b7f9de73876f3e47d4477.md) | 164 | `result-track:1e7b7f9de73876f3e47d44777a78b72649bc3ede808c0fd429535ab3f7cd9ae4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
