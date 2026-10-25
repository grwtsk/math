# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lattice.Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf653d70367b2124df95ef105a4e074ffb09196b",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf653d70367b2124df95ef105a4e074ffb09196b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.Semantics` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Slice](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/slice--0463715cf86fc5fcd24e3b3c.md) | 14 | `declaration-track:0463715cf86fc5fcd24e3b3c499a8b241b9006b4e6c19c85d14abdefd15e508e` |
| 2 | `def` | [endExclusive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/endexclusive--3785fc73d409d3f768611544.md) | 22 | `declaration-track:3785fc73d409d3f76861154428cddb4539403360997939a54ba072136b74d831` |
| 3 | `def` | [containsNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/containsnat--8e7150044cdd6bf812f3114f.md) | 25 | `declaration-track:8e7150044cdd6bf812f3114f9ac8b413b7fde3a6a15f1b6f034653b0a272cb15` |
| 4 | `def` | [containsFin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/containsfin--bfbfd8eb52ed25d20521853d.md) | 29 | `declaration-track:bfbfd8eb52ed25d20521853dd1689194504da042e2579b8f022cfcc92e0652cc` |
| 5 | `theorem` | [containsFin_iff_containsNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/containsfin-iff-containsnat--5d6e9f37c44f18e275b56ffe.md) | 33 | `result-track:5d6e9f37c44f18e275b56ffece93f6df8fbda8c8c7233ec94703143792f1de45` |
| 6 | `def` | [le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/le--3fab54812debd8f36443e9ad.md) | 45 | `declaration-track:3fab54812debd8f36443e9ad48f71ce91573c9421df07d209d5f50a84319869f` |
| 7 | `theorem` | [le_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/le-refl--de83eace92262624eb1f2102.md) | 48 | `result-track:de83eace92262624eb1f21022e2b0c1cf5d1f2306d82b077156b66f11a5f3143` |
| 8 | `theorem` | [le_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/le-trans--7aa1c660c9176702587c2dd0.md) | 53 | `result-track:7aa1c660c9176702587c2dd03f80e43022158337634704a28792e4e0badf47b7` |
| 9 | `def` | [boundsLe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/boundsle--49452ed2a7b83ab9cefe1d90.md) | 61 | `declaration-track:49452ed2a7b83ab9cefe1d90e00ec642091e83a658a26a3c646012fae145052f` |
| 10 | `theorem` | [boundsLe_implies_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/boundsle-implies-le--61f5610c28fd37533a44481b.md) | 64 | `result-track:61f5610c28fd37533a44481bccdeec852646b7092059450eaec41634db5ea5ac` |
| 11 | `theorem` | [start_le_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/start-le-length--8b10b0e5e089326ab0ee6a4d.md) | 72 | `result-track:8b10b0e5e089326ab0ee6a4ddcc8f521949ea064265e28fc50ed57745cd4f939` |
| 12 | `theorem` | [endExclusive_le_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/endexclusive-le-length--e8051efce379a0a8b887a8d7.md) | 78 | `result-track:e8051efce379a0a8b887a8d748e80b7598fb6332f5f9be39b6df3dd9ea929f95` |
| 13 | `def` | [intersectStart](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/intersectstart--8e2fa3324a1a996118d35e8e.md) | 83 | `declaration-track:8e2fa3324a1a996118d35e8eea275d304bdb11a9e21a92c61cd694e9826b947f` |
| 14 | `def` | [intersectEnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/intersectend--0a964d4961e6bdbbeb8fc278.md) | 87 | `declaration-track:0a964d4961e6bdbbeb8fc278cfd3cb7e443629cf540376aa248bbfb695170520` |
| 15 | `def` | [intersect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/intersect--9a29624355e57b6dc53260b7.md) | 91 | `declaration-track:9a29624355e57b6dc53260b77960830a65cfe1ba2e34ae9bef5de6b5ee928737` |
| 16 | `theorem` | [containsNat_intersect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/containsnat-intersect--f84174890d394ed82fe37a75.md) | 113 | `result-track:f84174890d394ed82fe37a752dbb778ac053f5d3156488c1231bb3d2ee52a3b4` |
| 17 | `theorem` | [intersect_le_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/intersect-le-left--e18a730ff7c82b81fc018ef0.md) | 135 | `result-track:e18a730ff7c82b81fc018ef0ab7549c361876c17c11df1f5bddbb54d059e4d81` |
| 18 | `theorem` | [intersect_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/intersect-le-right--f5eccc5fa85ce9c52b50ae27.md) | 141 | `result-track:f5eccc5fa85ce9c52b50ae276af1859af6bb40c0059729e204889a4f29d4232f` |
| 19 | `def` | [hullStart](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/hullstart--e552f143e603e43c6dfaea29.md) | 147 | `declaration-track:e552f143e603e43c6dfaea29bf1f8127b312886329bfad0c05d468f2fd3deb8c` |
| 20 | `def` | [hullEnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/hullend--0986353d3de031b2838f30ae.md) | 151 | `declaration-track:0986353d3de031b2838f30ae250dbc041b404f6e42528fbcb712c21b94fb0a0e` |
| 21 | `theorem` | [hullStart_le_hullEnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/hullstart-le-hullend--72140f84da50d921080b2d71.md) | 155 | `result-track:72140f84da50d921080b2d7141853406927854addf9a25644e7cd36449c367cf` |
| 22 | `def` | [hull](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/hull--bccc1428cbdf76b264b16dc8.md) | 161 | `declaration-track:bccc1428cbdf76b264b16dc80c177af789b1365014b2242db01d4702b5d6d0df` |
| 23 | `theorem` | [containsNat_hull_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/containsnat-hull-left--43fcdb7b75907051b7a4f9bc.md) | 174 | `result-track:43fcdb7b75907051b7a4f9bca43ed1b7b30c585fda67b6b433d52f75089bfc25` |
| 24 | `theorem` | [containsNat_hull_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/containsnat-hull-right--e14a76a0c9267a7565721cc9.md) | 181 | `result-track:e14a76a0c9267a7565721cc99025ce15b6d7213b039b277e0682740c96400e50` |
| 25 | `theorem` | [le_hull_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/le-hull-left--35627350c9133b3f45aca1ec.md) | 188 | `result-track:35627350c9133b3f45aca1ec4fdc44fd5f49533da0d45cc25bed8f0e2755b94b` |
| 26 | `theorem` | [le_hull_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/le-hull-right--94f45b28a83ac2f27d596a59.md) | 194 | `result-track:94f45b28a83ac2f27d596a59f98d2109f7dcf8bb6a7567eb497c953cbbec7682` |
| 27 | `def` | [hasGap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/hasgap--7c8f438e0282cb383867bf9b.md) | 200 | `declaration-track:7c8f438e0282cb383867bf9bca258eaf7e074f6501d783434dced586e42be5e5` |
| 28 | `instance` | [decidableHasGap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/decidablehasgap--d6fae72e467a4a6da52769df.md) | 204 | `declaration-track:d6fae72e467a4a6da52769dfc48a3cb9583c59c65bddbf9df99d07453b9ef892` |
| 29 | `structure` | [UnionGapResidue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/uniongapresidue--e709c7d44acbf67a39d936c6.md) | 209 | `declaration-track:e709c7d44acbf67a39d936c64270ab28ce229898eb285da24bc682d9a28fcbf4` |
| 30 | `theorem` | [containsNat_zero_len_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/containsnat-zero-len-false--8999ebcd4da171ebdd50e437.md) | 214 | `result-track:8999ebcd4da171ebdd50e437764b6d13c145257f28ca1d0b38f70f498852ad36` |
| 31 | `theorem` | [containsNat_hull_no_gap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/containsnat-hull-no-gap--e17270e40a4a3a43314e09f3.md) | 221 | `result-track:e17270e40a4a3a43314e09f3334f248c1217b4832d8cd77401fdcf1511ba4cbe` |
| 32 | `def` | [compatibleUnion?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/compatibleunion--3c58cdd514c5c0f7f2f81847.md) | 251 | `declaration-track:3c58cdd514c5c0f7f2f818474ab1d2011cc24ab66edd86ad0c9189e16d4d2707` |
| 33 | `theorem` | [compatibleUnion?_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/compatibleunion-sound--15719bff91c827988f3bae67.md) | 262 | `result-track:15719bff91c827988f3bae677dca94f8ff2500e600efbc1a57b43c51ecbab937` |
| 34 | `theorem` | [compatibleUnion?_none_gap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/declarations/compatibleunion-none-gap--3f957d6a689d38e23a3600fe.md) | 300 | `result-track:3f957d6a689d38e23a3600fe5ae7ba95610a91ecf6606fe50bd08b59deb4b3d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
