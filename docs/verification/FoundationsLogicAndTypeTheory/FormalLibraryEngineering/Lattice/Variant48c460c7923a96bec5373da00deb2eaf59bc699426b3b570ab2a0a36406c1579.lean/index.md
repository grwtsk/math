# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lattice.Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a02de2374f8e63656a3bdb9403e999c9fcc2f204",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a02de2374f8e63656a3bdb9403e999c9fcc2f204`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.Semantics` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Slice](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/slice--510690a7544f4c26166684e4.md) | 22 | `declaration-track:510690a7544f4c26166684e41093cfe2e8038d1b0841eb94e20747dfa1574bc8` |
| 2 | `def` | [endExclusive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/endexclusive--be9b73a4d3f40095e9ad6217.md) | 30 | `declaration-track:be9b73a4d3f40095e9ad62171aafae9258f4a3762ecab90d2f61920c40d7affc` |
| 3 | `def` | [containsNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/containsnat--a670d09011e3703d5c5caf79.md) | 33 | `declaration-track:a670d09011e3703d5c5caf79c18e5092fe1179d83e914910cbb694d6fc87c5e5` |
| 4 | `def` | [containsFin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/containsfin--2af08d477862aa3625efb22e.md) | 37 | `declaration-track:2af08d477862aa3625efb22e44a044294c61459849ba99eddbe6aa9a95972487` |
| 5 | `theorem` | [containsFin_iff_containsNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/containsfin-iff-containsnat--ebfa8fe1f1c9bd139db8d73c.md) | 41 | `result-track:ebfa8fe1f1c9bd139db8d73c69198a89046563f7838c5180e95f1dd471b1bd6b` |
| 6 | `def` | [le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/le--5375afffcfea71197f94ae69.md) | 53 | `declaration-track:5375afffcfea71197f94ae691de9c1c2e4f3a6713e7e8451ef7a2201e6ebed0b` |
| 7 | `theorem` | [le_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/le-refl--b7be4fc33b13ed24c2d5648b.md) | 56 | `result-track:b7be4fc33b13ed24c2d5648b613a4959a896343ff4b76c0f0debabdf82344eef` |
| 8 | `theorem` | [le_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/le-trans--07b69f70b4bb0262cbbec3cd.md) | 61 | `result-track:07b69f70b4bb0262cbbec3cdbbbc9b5b490629782b5992841c32b59efd9bb720` |
| 9 | `def` | [boundsLe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/boundsle--60db4fcf645fb40d27416b39.md) | 69 | `declaration-track:60db4fcf645fb40d27416b397bca43b0edc5e030d60dd0592a66d68dcbc3173c` |
| 10 | `theorem` | [boundsLe_implies_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/boundsle-implies-le--d5a99785f9d7d053ec456ac5.md) | 72 | `result-track:d5a99785f9d7d053ec456ac52202f2b01b1b8239dcb8e75cbf84ae15ba31ba6b` |
| 11 | `theorem` | [start_le_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/start-le-length--fb503f705fda4f0c9687b11e.md) | 80 | `result-track:fb503f705fda4f0c9687b11eb566867b30cbd3b3a382447a405cdf8523803bf9` |
| 12 | `theorem` | [endExclusive_le_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/endexclusive-le-length--2bb131109032dca58be84601.md) | 86 | `result-track:2bb131109032dca58be84601d93d347806fb6c56aaba448bce4a63184ae6aee8` |
| 13 | `def` | [intersectStart](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/intersectstart--5b5637f8bb66864fd554151f.md) | 91 | `declaration-track:5b5637f8bb66864fd554151fe839247b30a88ab70625f617f86ebd044d59c960` |
| 14 | `def` | [intersectEnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/intersectend--b49b7087e5e97d580bbbc8c4.md) | 95 | `declaration-track:b49b7087e5e97d580bbbc8c4aef8e0b1d4ec7f9a65e2a433eb4cdf2a703864b2` |
| 15 | `def` | [intersect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/intersect--f0f54641beeb9135292b77d0.md) | 99 | `declaration-track:f0f54641beeb9135292b77d08f54d05a85a2c936db6e06da024da35bc722b513` |
| 16 | `theorem` | [containsNat_intersect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/containsnat-intersect--627c68e6f82fe8f23dc93f00.md) | 121 | `result-track:627c68e6f82fe8f23dc93f004f0f160d47323501da1c92195c13957cd8c37bc9` |
| 17 | `theorem` | [intersect_le_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/intersect-le-left--4ce090c28c2b457b1f1bec87.md) | 143 | `result-track:4ce090c28c2b457b1f1bec8799cb5eafe74ce6809e9765edb3e5b120e54e365b` |
| 18 | `theorem` | [intersect_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/intersect-le-right--aa9224b5593060c436c92a63.md) | 149 | `result-track:aa9224b5593060c436c92a63b40b7f45bc659415c4bfcb51490e5463d76d4722` |
| 19 | `def` | [hullStart](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/hullstart--b077ea853df626b2d548fee3.md) | 155 | `declaration-track:b077ea853df626b2d548fee3d35aefdacb240e0cc51e824759e03d1d5e44bb1d` |
| 20 | `def` | [hullEnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/hullend--e9e002ca081bf9ad9139b03b.md) | 159 | `declaration-track:e9e002ca081bf9ad9139b03ba1f627e97421011654911e7b32e3370a8208e6be` |
| 21 | `theorem` | [hullStart_le_hullEnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/hullstart-le-hullend--6a8d9b13ec8afd7e544c9682.md) | 163 | `result-track:6a8d9b13ec8afd7e544c9682258a4df2b133182f2bf7ea4a186151cbc794597c` |
| 22 | `def` | [hull](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/hull--4cef92c64355f21ee4c931c2.md) | 169 | `declaration-track:4cef92c64355f21ee4c931c23f4a4a3d9aa1a9153140fe43de6ee2c9185fd7e0` |
| 23 | `theorem` | [containsNat_hull_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/containsnat-hull-left--67b213d26de52e898538fa13.md) | 182 | `result-track:67b213d26de52e898538fa1385963f3c4c37cab1378da61ff56a2852094cb797` |
| 24 | `theorem` | [containsNat_hull_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/containsnat-hull-right--b48fd52b8c92f98446427015.md) | 189 | `result-track:b48fd52b8c92f984464270153cd940ae536c42a9cc5a10f6ee1486a037adac3b` |
| 25 | `theorem` | [le_hull_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/le-hull-left--ac129bc5012892febdfbc726.md) | 196 | `result-track:ac129bc5012892febdfbc726bd49a2aaabcecfe09095208d514779853c48a6bc` |
| 26 | `theorem` | [le_hull_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/le-hull-right--279c059b8c11bc033a3c7c92.md) | 202 | `result-track:279c059b8c11bc033a3c7c928f8f5641b4ad00e50a943ed697a9e4b079abdf80` |
| 27 | `def` | [hasGap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/hasgap--a3df618c6987b1e50928fb5a.md) | 208 | `declaration-track:a3df618c6987b1e50928fb5adab24bb9eecf6048568d3ca2faf638bdf4af375f` |
| 28 | `instance` | [decidableHasGap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/decidablehasgap--892c42b06a0126ad7dfdc97f.md) | 212 | `declaration-track:892c42b06a0126ad7dfdc97fb6ebec857f5a396d15668acb1aeae4ad862d6efe` |
| 29 | `structure` | [UnionGapResidue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/uniongapresidue--860bec6191c5f2f45c659290.md) | 217 | `declaration-track:860bec6191c5f2f45c65929082c5415800e81d6c5ef867cda08d03424bd7dda1` |
| 30 | `theorem` | [containsNat_zero_len_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/containsnat-zero-len-false--82c5e909774118ed57143d45.md) | 222 | `result-track:82c5e909774118ed57143d453e367485cd2d7cbed5166a769865b111b71aa7e8` |
| 31 | `theorem` | [containsNat_hull_no_gap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/containsnat-hull-no-gap--6596bbd18b76802115628da4.md) | 229 | `result-track:6596bbd18b76802115628da44fa6d9311ec1f0e147d9ba1e2729dba2e50f703c` |
| 32 | `def` | [compatibleUnion?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/compatibleunion--e6a64c3e902e229cb3712f85.md) | 259 | `declaration-track:e6a64c3e902e229cb3712f8580de24fb141eadeb0adba793c8b9b6677f97b2b5` |
| 33 | `theorem` | [compatibleUnion?_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/compatibleunion-sound--d6784d1b2fe27e1bf5dddc36.md) | 270 | `result-track:d6784d1b2fe27e1bf5dddc36734413874c4161bcd357541f565c965c77c9d279` |
| 34 | `theorem` | [compatibleUnion?_none_gap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/declarations/compatibleunion-none-gap--cec74b73a750679526f08cd4.md) | 308 | `result-track:cec74b73a750679526f08cd47afbc3972542fe04f1f6f500b402cfc614a89e28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
