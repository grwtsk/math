# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SignedBitVec.Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c65ae0999b87a94b57ef5171954fc4f7d5197f2",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c65ae0999b87a94b57ef5171954fc4f7d5197f2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean.json)

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
| 1 | `def` | [intMinSealed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/intminsealed--8e7a68630a4d4e4eed3ed54a.md) | 44 | `declaration-track:8e7a68630a4d4e4eed3ed54ab627ea8009c4383b753af0f4617dc8bce4ca2f8a` |
| 2 | `def` | [intMaxSealed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/intmaxsealed--86a65aa4cb674858984c06c2.md) | 45 | `declaration-track:86a65aa4cb674858984c06c22491b56a684fe5a630cd37fefa66334dc04021a6` |
| 3 | `theorem` | [intMinSealed_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/intminsealed-def--cb49db6e1bc4c8ed127f93c1.md) | 46 | `result-track:cb49db6e1bc4c8ed127f93c18af09475f8f6ad3e8270e40058d72554df69c82f` |
| 4 | `theorem` | [intMaxSealed_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/intmaxsealed-def--f927558cf2f7cf28ea2dee68.md) | 47 | `result-track:f927558cf2f7cf28ea2dee68651146f2746734024d912cc205cd26ac7abdd466` |
| 5 | `def` | [rotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/rotate--fc3eff396679418bea9cdc93.md) | 50 | `declaration-track:fc3eff396679418bea9cdc9379cdc4f0f6f97ea81a2876f513ce781d065ffc12` |
| 6 | `theorem` | [intMaxSealed_eq_intMinSealed_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/intmaxsealed-eq-intminsealed-add--5c4c478c241b92912cd98c23.md) | 52 | `result-track:5c4c478c241b92912cd98c2337ca1c95a81db4089e5ce041ce08f6154909d058` |
| 7 | `theorem` | [intMinSealed_add_intMinSealed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/intminsealed-add-intminsealed--d73ae99c9862d44048fdd38c.md) | 61 | `result-track:d73ae99c9862d44048fdd38c83bc7d8ceb19bf5a1d20a881c5a109f3e0b57f59` |
| 8 | `theorem` | [rotate_neg_eq_intMinSealed_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/rotate-neg-eq-intminsealed-sub--195dda8ba07df68e3117dc11.md) | 69 | `result-track:195dda8ba07df68e3117dc1106f8754b4b59ec93c6e06631d6a6adc87afa9d4a` |
| 9 | `theorem` | [rotate_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/rotate-add--683ff11ba73bb7ac9174d304.md) | 75 | `result-track:683ff11ba73bb7ac9174d304040a038311595e631992d554f69416138eaf4dac` |
| 10 | `theorem` | [rotate_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/rotate-sub--a06a52dcc935c174bed7c407.md) | 78 | `result-track:a06a52dcc935c174bed7c4074e217a16a532893da326e9a3e071ff2b4c132ad7` |
| 11 | `theorem` | [rotate_intMinSealed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/rotate-intminsealed--3f4a36fab20bbf092c03e7c8.md) | 81 | `result-track:3f4a36fab20bbf092c03e7c887da1121011646d682e78346a4669d39f083dd01` |
| 12 | `theorem` | [rotate_intMaxSealed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/rotate-intmaxsealed--e3ae75b35e3798ac8f06e5af.md) | 84 | `result-track:e3ae75b35e3798ac8f06e5afbe5ecf479066effe311b1657eef073710004d139` |
| 13 | `theorem` | [rotate_rotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/rotate-rotate--36bfeb47e3df67b0fb41d916.md) | 87 | `result-track:36bfeb47e3df67b0fb41d916c0fb293870284f2a5a5bd1a4ffe4eb1a11d4c00e` |
| 14 | `theorem` | [rotate_map_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/rotate-map-eq-iff--6b6c2186757e7bb11ffd7f15.md) | 94 | `result-track:6b6c2186757e7bb11ffd7f15bbc003bb9505eeee218118f84df7538279c1929a` |
| 15 | `instance` | [instUpwardEnumerable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/instupwardenumerable--bb8701b3bf30e827d2ad4e12.md) | 102 | `declaration-track:bb8701b3bf30e827d2ad4e122b2ed98ed0daa247e2daada68b54edbe702623ed` |
| 16 | `theorem` | [succ?_rotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/succ-rotate--078eb8cb3eb44b1cac1bbb8f.md) | 106 | `result-track:078eb8cb3eb44b1cac1bbb8f5d61135ae8ae3a748cf98978ae180d30827b36ed` |
| 17 | `theorem` | [succMany?_rotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/succmany-rotate--fb8138a5447e7119178a4d20.md) | 110 | `result-track:fb8138a5447e7119178a4d20b76c779f7451ddcf2ed2e116961bc1ef010b52a7` |
| 18 | `theorem` | [sle_iff_rotate_le_rotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/sle-iff-rotate-le-rotate--2f556040b1eb32ad08e0fa5f.md) | 115 | `result-track:2f556040b1eb32ad08e0fa5f37ff68ad7b8926c0043b5b3495e0597426951e7c` |
| 19 | `theorem` | [rotate_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/rotate-inj--df64194d80c56f63fbba4bda.md) | 159 | `result-track:df64194d80c56f63fbba4bdafa5bf3f9b30414b063f4bcfa3f8f2f0788dcc66b` |
| 20 | `theorem` | [rotate_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/rotate-eq-iff--7ebd744563d78b9774b27cb8.md) | 166 | `result-track:7ebd744563d78b9774b27cb8a5ad5788992d3d75ecb3fd87157c5c47ac84ef1b` |
| 21 | `theorem` | [toInt_eq_ofNat_toNat_rotate_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/toint-eq-ofnat-tonat-rotate-sub--0a7098c493ca4d4e954ddb45.md) | 169 | `result-track:0a7098c493ca4d4e954ddb452cddab5cf5d69bc62f1ae669da37c00da9bf735c` |
| 22 | `theorem` | [ofNat_eq_rotate_ofInt_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/ofnat-eq-rotate-ofint-sub--1f98420323d3059ac7b33c50.md) | 201 | `result-track:1f98420323d3059ac7b33c508f8680aef6c45686c568f0ce3fe02a21145986a6` |
| 23 | `instance` | [instLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/instle--a9d4f7ade42d8df724030329.md) | 212 | `declaration-track:a9d4f7ade42d8df7240303295185acb4f60e3b79e60e7485d63dd70f09defe3e` |
| 24 | `instance` | [instLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/instlt--851de8015d3178fca14a8c55.md) | 213 | `declaration-track:851de8015d3178fca14a8c55ada5bc8b5b5983303a84f410072226572fc7faf3` |
| 25 | `instance` | [instDecidableLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/instdecidablele--187069a6b02aa0763e02d519.md) | 214 | `declaration-track:187069a6b02aa0763e02d51952a0619a4ca830ed0cf071fb36a027b2361d11fe` |
| 26 | `instance` | [instDecidableLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/instdecidablelt--779fd04ab0531bc173e99b42.md) | 216 | `declaration-track:779fd04ab0531bc173e99b4224417b6c5ec0683c5067a33a7343208710b4057f` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/instance--fbfce41cc2cf5e2136325100.md) | 219 | `declaration-track:fbfce41cc2cf5e21363251002f8cf97a04fbf5b6d9767ec29736e4752f3284d5` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/instance--d23300b69a41da14260cd644.md) | 224 | `declaration-track:d23300b69a41da14260cd644fb86a7406e846df802d2dfeb927dcfe5432247b3` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/instance--f36fb1fbdef3f5435b1af844.md) | 233 | `declaration-track:f36fb1fbdef3f5435b1af844c134d98f838c0b1d98e50cd4985c8abf0333ec11` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/instance--743bd7334500319f26ed7cbe.md) | 243 | `declaration-track:743bd7334500319f26ed7cbe6a3dbe35afeb5d51f8903fde9cfacd6f18c3ebcb` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/instance--96f03360c30db81d8ff6b31b.md) | 268 | `declaration-track:96f03360c30db81d8ff6b31bcda54efe86da28993c7f48206b83c227f2f8eee1` |
| 32 | `instance` | [instRxcHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/instrxchassize--dda1e27eda16a2bd079a1a52.md) | 270 | `declaration-track:dda1e27eda16a2bd079a1a521d14d73f68a07e9ed6620fd1041c3df1b465ee41` |
| 33 | `instance` | [instRxcLawfulHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/instrxclawfulhassize--c8cc37046a9e908d71016252.md) | 275 | `declaration-track:c8cc37046a9e908d710162520cffbb770eefe71864af8e8cb642dae90d30fcfc` |
| 34 | `instance` | [instRxcIsAlwaysFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/instrxcisalwaysfinite--2d7f7fbfea7557b3a7d3ca80.md) | 309 | `declaration-track:2d7f7fbfea7557b3a7d3ca8089c305286cef7c69c55f92bf421cd97a34bfed60` |
| 35 | `instance` | [instRxoHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/instrxohassize--74610820277a8f4953eb2685.md) | 311 | `declaration-track:74610820277a8f4953eb2685376703ac6762f258228440d66afc8d21b018e6b8` |
| 36 | `instance` | [instRxoLawfulHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/instrxolawfulhassize--4b410d2f42f6d08b9f074e54.md) | 312 | `declaration-track:4b410d2f42f6d08b9f074e549d11e35b2c00abc6c0dfe7dca5d267546e5ebd8a` |
| 37 | `instance` | [instRxoIsAlwaysFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/instrxoisalwaysfinite--4c683d211405c0547689220b.md) | 313 | `declaration-track:4c683d211405c0547689220b3a67326a151cde7da703c4c4adb60653307dac44` |
| 38 | `instance` | [instRxiHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/instrxihassize--5e2ef7fe44dac9d29e645f55.md) | 315 | `declaration-track:5e2ef7fe44dac9d29e645f55b312f711b1b8fb75dbf7f903b2ec4c17344cbc39` |
| 39 | `instance` | [instRxiLawfulHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/instrxilawfulhassize--43bf5e48ead449127dede568.md) | 318 | `declaration-track:43bf5e48ead449127dede5688f2b53c90eb9a765206297fbee70cca86d82abde` |
| 40 | `instance` | [instRxiIsAlwaysFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/declarations/instrxiisalwaysfinite--eb627d30d4bf1679b1d60d50.md) | 335 | `declaration-track:eb627d30d4bf1679b1d60d5076550b11805027742ac4671b3e39ce86c548751e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
