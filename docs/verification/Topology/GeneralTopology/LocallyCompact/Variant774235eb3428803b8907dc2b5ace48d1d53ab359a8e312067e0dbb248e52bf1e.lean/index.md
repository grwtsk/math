# Verification target: GRWTSK.Topology.GeneralTopology.LocallyCompact.Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1061572b70778d491c3e7fe9273945f44c588294",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1061572b70778d491c3e7fe9273945f44c588294`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Compactness.Compact` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/instance--ad833aa336fe26e37996f28f.md) | 18 | `declaration-track:ad833aa336fe26e37996f28fb957b0731d365e56d2476b3771d9b3e3c4df8ee0` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/instance--4884431c6a6892b81d1fbdad.md) | 25 | `declaration-track:4884431c6a6892b81d1fbdadbafe39ad06b5488d1321545fd6143ec757555809` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/instance--3acc9209d3f0aa4aef5ef788.md) | 32 | `declaration-track:3acc9209d3f0aa4aef5ef78839f73ab2a7afabcaeaaac6ce6427daf6e6af493a` |
| 4 | `theorem` | [Topology.IsClosedEmbedding.weaklyLocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/topology-isclosedembedding-weaklylocallycompactspace--f94df17cf329e98df8252bae.md) | 35 | `result-track:f94df17cf329e98df8252bae420d9a05aa815c92408701175f0f154fbbf9132a` |
| 5 | `theorem` | [IsClosed.weaklyLocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/isclosed-weaklylocallycompactspace--86339ad1f5d05da456378353.md) | 41 | `result-track:86339ad1f5d05da456378353f32a3f7a30624521efdfae4a0f4b126d81a0d550` |
| 6 | `theorem` | [IsOpenQuotientMap.weaklyLocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/isopenquotientmap-weaklylocallycompactspace--1324aa1cef8d9ec3a90cebe8.md) | 45 | `result-track:1324aa1cef8d9ec3a90cebe8a4643a21a0661d9a33ad3da7ce1eaf1deb616115` |
| 7 | `theorem` | [exists_compact_superset](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/exists-compact-superset--d8498c5ae097c8f33b4bb4e1.md) | 54 | `result-track:d8498c5ae097c8f33b4bb4e1e30f4153c1b89bae6d119ab6bf2f0fba443a16cb` |
| 8 | `theorem` | [disjoint_nhds_cocompact](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/disjoint-nhds-cocompact--3ac0e19501bc9d1c5a1dd709.md) | 63 | `result-track:3ac0e19501bc9d1c5a1dd709abaa75659b4c5a55172f74a7638f88c687cc1ed2` |
| 9 | `theorem` | [compact_basis_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/compact-basis-nhds--b4e4c7620c5a5d851d0c5bdc.md) | 68 | `result-track:b4e4c7620c5a5d851d0c5bdc6d87f13ed7748db198ce33963918510ae55cda1a` |
| 10 | `theorem` | [local_compact_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/local-compact-nhds--461aec723a1c9d9bd747c347.md) | 72 | `result-track:461aec723a1c9d9bd747c34713814a05485604fce29f3ca9e580b593b286b13c` |
| 11 | `theorem` | [LocallyCompactSpace.of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/locallycompactspace-of-hasbasis--69f584f11c7a56d149bce003.md) | 76 | `result-track:69f584f11c7a56d149bce003997385ee30f5135f2a5337df6dadf9c583680429` |
| 12 | `instance` | [Prod.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/prod-locallycompactspace--017d411d6b611d274a1489ae.md) | 83 | `declaration-track:017d411d6b611d274a1489aeb078de9964a6f700a8485e21ae0382c82e755201` |
| 13 | `instance` | [Pi.locallyCompactSpace_of_finite](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/pi-locallycompactspace-of-finite--e9f34c536de81fb9b6c4504f.md) | 95 | `declaration-track:e9f34c536de81fb9b6c4504f3a3fc81c4680363b4e3b3fbf08bd8a045d5d9d0b` |
| 14 | `instance` | [Pi.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/pi-locallycompactspace--8cd7def78651408eaf554deb.md) | 106 | `declaration-track:8cd7def78651408eaf554debc5486bfd4c05c855f29ac5fb88163d44f33b0178` |
| 15 | `instance` | [Function.locallyCompactSpace_of_finite](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/function-locallycompactspace-of-finite--5453f600f0c6e8e80690b235.md) | 124 | `declaration-track:5453f600f0c6e8e80690b235e44cf84a90214701323e85a01f6e8278ccd23b74` |
| 16 | `instance` | [Function.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/function-locallycompactspace--222a45ba49b38ae51fe8d773.md) | 128 | `declaration-track:222a45ba49b38ae51fe8d77362fd941bef459af1b2689bb1186c171589e48e55` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/instance--85ea3a441742d96601d63f5b.md) | 134 | `declaration-track:85ea3a441742d96601d63f5b2c869432d8ac165926662df2c25534d2614a0900` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/instance--fe3d89605afcfd9f35667b30.md) | 138 | `declaration-track:fe3d89605afcfd9f35667b30fee4c0e2af64e1198b8166f21237fc9fcbf129db` |
| 19 | `theorem` | [exists_compact_subset](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/exists-compact-subset--423086e6e186a891313eeafb.md) | 144 | `result-track:423086e6e186a891313eeafb14bed310ef96c83528c9d600c4be04c5ef252a7a` |
| 20 | `lemma` | [exists_mem_nhdsSet_isCompact_mapsTo](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/exists-mem-nhdsset-iscompact-mapsto--940385569f280386a6a48778.md) | 154 | `result-track:940385569f280386a6a4877805dfb158712f241933a0c16616e82d01a234bd2f` |
| 21 | `theorem` | [exists_compact_between](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/exists-compact-between--15352db1fa8ee87ea433f73b.md) | 168 | `result-track:15352db1fa8ee87ea433f73b3e7e31ca374e98902740f0466110334b7b74bf73` |
| 22 | `theorem` | [IsOpenQuotientMap.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/isopenquotientmap-locallycompactspace--ea2f809e2d24f471f7039ed6.md) | 173 | `result-track:ea2f809e2d24f471f7039ed6e672a1a212baef8f81860da39a08103ec3a14c57` |
| 23 | `theorem` | [Topology.IsInducing.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/topology-isinducing-locallycompactspace--b1c4f99bebf36997dc79927a.md) | 182 | `result-track:b1c4f99bebf36997dc79927af92b635c6960b4b7e449b493b20a4d9f993f2e9f` |
| 24 | `theorem` | [Topology.IsClosedEmbedding.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/topology-isclosedembedding-locallycompactspace--cc408df73533c22419b0b90e.md) | 198 | `result-track:cc408df73533c22419b0b90e6b020a448c1cc0632828760740838d443519cff4` |
| 25 | `theorem` | [Topology.IsOpenEmbedding.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/topology-isopenembedding-locallycompactspace--b65a98fbe1fe1d375c9a3628.md) | 202 | `result-track:b65a98fbe1fe1d375c9a3628c95bc17b4e9415fc0b0cc9efaab385a3556a866e` |
| 26 | `theorem` | [IsLocallyClosed.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/islocallyclosed-locallycompactspace--707051a1de2a332c707fc403.md) | 206 | `result-track:707051a1de2a332c707fc4031874b07490a167d44765f393cf7875482eb253be` |
| 27 | `theorem` | [IsClosed.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/isclosed-locallycompactspace--fa5c72375a3898f3016979c1.md) | 210 | `result-track:fa5c72375a3898f3016979c131004f3b21fd42f07265b184463afa22848cb7a2` |
| 28 | `theorem` | [IsOpen.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant774235eb3428803b8907dc2b5ace48d1d53ab359a8e312067e0dbb248e52bf1e.lean/declarations/isopen-locallycompactspace--eb023985ca28fed5a6f819eb.md) | 214 | `result-track:eb023985ca28fed5a6f819ebd7749a0336c61666fa5cf6a9769bfdd50412475c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
