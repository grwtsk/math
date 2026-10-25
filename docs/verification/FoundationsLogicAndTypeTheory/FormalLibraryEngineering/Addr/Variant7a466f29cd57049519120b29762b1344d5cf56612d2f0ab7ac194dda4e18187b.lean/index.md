# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Addr.Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8e1c57fb19ae5e1bd69fb3ee9be49f5b28ed59e",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8e1c57fb19ae5e1bd69fb3ee9be49f5b28ed59e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean.json)

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
| 1 | `structure` | [MACAddr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/macaddr--c33140a7c037d043abdb4e76.md) | 30 | `declaration-track:c33140a7c037d043abdb4e7620c0707962741d750fd72c6134c8972c42982883` |
| 2 | `structure` | [IPv4Addr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/ipv4addr--d426095a0aaed44583a4daef.md) | 40 | `declaration-track:d426095a0aaed44583a4daef87932f025b9091cf36cf5f76c7e5af30d045d3b4` |
| 3 | `structure` | [SocketAddressV4](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/socketaddressv4--7aa0ae9c64da57e12476c0fd.md) | 50 | `declaration-track:7aa0ae9c64da57e12476c0fd4621e5dbf70f1fce41cbe4840db98e1cabf85827` |
| 4 | `structure` | [IPv6Addr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/ipv6addr--b9ed29a5e9dfeef9810da2df.md) | 58 | `declaration-track:b9ed29a5e9dfeef9810da2dfcde425c925e45b492c118be146beed42a668153f` |
| 5 | `structure` | [SocketAddressV6](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/socketaddressv6--80682ad43d004bf560327ad4.md) | 68 | `declaration-track:80682ad43d004bf560327ad4af0006dd15ce2b587d826715fc21bcfc7e055673` |
| 6 | `inductive` | [IPAddr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/ipaddr--fb4303791e8950148d9b5386.md) | 76 | `declaration-track:fb4303791e8950148d9b5386dd108999f8421dbcb7d8fb7db666dab6118606a4` |
| 7 | `inductive` | [SocketAddress](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/socketaddress--fdd45c24ee2136060f65f3ef.md) | 84 | `declaration-track:fdd45c24ee2136060f65f3ef76470021155dac4d338d2b1e6120d01a3f17a575` |
| 8 | `inductive` | [AddressFamily](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/addressfamily--0ebb3e669dde315f04a7b170.md) | 92 | `declaration-track:0ebb3e669dde315f04a7b170d7ff5ec3aa455fe8138779bd58351eb65d88194b` |
| 9 | `def` | [ofParts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/ofparts--675278fdcb15445d1ae79faa.md) | 102 | `declaration-track:675278fdcb15445d1ae79faa22e3bb4ccdb8fb3b7d4f0fc09e2bd50d61ec823a` |
| 10 | `opaque` | [ofString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/ofstring--279b36f893762a5ff110b172.md) | 109 | `declaration-track:279b36f893762a5ff110b17249b76da367e9799ba88c33f9ffba73dae6ab7a18` |
| 11 | `opaque` | [toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/tostring--d94e91aac2728328985424aa.md) | 115 | `declaration-track:d94e91aac2728328985424aa3457ecfda527c37d5c6d7c056d0542fab8391c8e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/instance--0e8944f98511f6900b5d7646.md) | 117 | `declaration-track:0e8944f98511f6900b5d764697235fc9f1905885e9e2bbaed6b1efe8aa702f67` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/instance--9f5ae5365324caec777f56c8.md) | 120 | `declaration-track:9f5ae5365324caec777f56c8d2b47e924124b5d16f161f8b13ffb20a825868d7` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/instance--ebdc4a8999c2538d3940f2c1.md) | 127 | `declaration-track:ebdc4a8999c2538d3940f2c133a7b4f4e812f85262927a0cd3348210981c9b8b` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/instance--cbeded2bc8ad86cb281b1a96.md) | 130 | `declaration-track:cbeded2bc8ad86cb281b1a96068deff77ad0aef37f192d7628c4b7802b742658` |
| 16 | `def` | [ofParts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/ofparts--147553900e2451f9d0f7ddda.md) | 140 | `declaration-track:147553900e2451f9d0f7dddada99fe68034f413a1b45b098ee3a6eeab8edfccb` |
| 17 | `opaque` | [ofString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/ofstring--cb723410c4c6d6849767591e.md) | 148 | `declaration-track:cb723410c4c6d6849767591e7351ae10e401a4d9d53121d82cf7add1e5fd1506` |
| 18 | `opaque` | [toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/tostring--ac90e7e70f28951621c212af.md) | 155 | `declaration-track:ac90e7e70f28951621c212af79d30e604bf61bd729fea2a742f0075842469eee` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/instance--bc49f854cf02b3a70f5d54a7.md) | 157 | `declaration-track:bc49f854cf02b3a70f5d54a7b50f54d2f794db12bb90add6f6ff131f903b47a4` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/instance--6619ae121c77fa37cd8b0c23.md) | 160 | `declaration-track:6619ae121c77fa37cd8b0c23d6412b9c023149aa193aa9fae2a48e3347b19503` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/instance--04cd4eb3c42c19f01194fcbe.md) | 167 | `declaration-track:04cd4eb3c42c19f01194fcbee6cb50b1c9c66575ed1f43954b783069447700f2` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/instance--a8c73fb75cd8cde4490359a0.md) | 170 | `declaration-track:a8c73fb75cd8cde4490359a0a378f24af669e45b89a7bec51c55cd98989e3843` |
| 23 | `def` | [family](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/family--1d4c1cdea1fec23dc26a2be7.md) | 180 | `declaration-track:1d4c1cdea1fec23dc26a2be73d6fefc7f9e4189fbe779eb357c69f6517de1594` |
| 24 | `def` | [toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/tostring--f5b31bfa3149954dcc48ff5a.md) | 184 | `declaration-track:f5b31bfa3149954dcc48ff5a201c71de044b7b794ade03894ccb7f56f2c78e59` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/instance--1c91d2df33b709537d6e8d8a.md) | 188 | `declaration-track:1c91d2df33b709537d6e8d8a91744d9b9589d3eed2fd7b2be6fd28253402e4b7` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/instance--54834e7f604022312a07ba39.md) | 195 | `declaration-track:54834e7f604022312a07ba394055a043a6d4b60683d0a658a36fcaa948eeacb3` |
| 27 | `def` | [family](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/family--3812408358ea3f37a8c6d5b8.md) | 203 | `declaration-track:3812408358ea3f37a8c6d5b82163f54d137f0d38be18113f3137ce83dfc25af4` |
| 28 | `def` | [ipAddr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/ipaddr--34b7c35163fa221aa2d05c95.md) | 210 | `declaration-track:34b7c35163fa221aa2d05c956b1b47e406f5c80eaa76009a959f9d4f4e96a563` |
| 29 | `def` | [port](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/port--4687fc372423fe4d50f07a7f.md) | 217 | `declaration-track:4687fc372423fe4d50f07a7f99929856fa02411fdd99c823eb6ebbf634b7de1a` |
| 30 | `structure` | [InterfaceAddress](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/interfaceaddress--de85e22643d009fe1c55e863.md) | 226 | `declaration-track:de85e22643d009fe1c55e8631b7ea386f645a33da592b750e852191c85f7ae4a` |
| 31 | `opaque` | [interfaceAddresses](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/declarations/interfaceaddresses--75b2edcabfe338f847cac08a.md) | 258 | `declaration-track:75b2edcabfe338f847cac08a87ca6e21486ffda2a1977aa8c6355f56eee24407` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
