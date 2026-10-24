# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RiemannWitnessRegistryCore

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a91b53b39555bb9f166dc6580144f27c0d51495",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a91b53b39555bb9f166dc6580144f27c0d51495`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleConjectureConnections`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjectureConnections.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WitnessId](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/witnessid--039cb034155bb4de5cffaaba.md) | 32 | `declaration-track:039cb034155bb4de5cffaabaff9176866549b26fc083381450e3d86373a990de` |
| 2 | `inductive` | [NodeKind](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/nodekind--22208108a76a0268033486b9.md) | 47 | `declaration-track:22208108a76a0268033486b95c17cc2cfaa04396c11f4fb9a21d829e3fea533f` |
| 3 | `inductive` | [WitnessScope](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/witnessscope--2d479386804720c65323dd23.md) | 56 | `declaration-track:2d479386804720c65323dd238ca90edddac9e2e2a003e895a7b6da63bc994c30` |
| 4 | `inductive` | [SourceAvailability](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/sourceavailability--59c2fb7d53b7b0d2a6f7f0a6.md) | 66 | `declaration-track:59c2fb7d53b7b0d2a6f7f0a6d721dcc7d459cb3caa52b4bb1f902d4e8ba836f9` |
| 5 | `inductive` | [EvidenceState](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/evidencestate--64cecf31a5f9beb23b7766c8.md) | 73 | `declaration-track:64cecf31a5f9beb23b7766c876d7a87e4222bce1dc1d244bf853b68236a9a76b` |
| 6 | `inductive` | [RelationKind](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/relationkind--6f3cc38ac89dd447beacd0ec.md) | 83 | `declaration-track:6f3cc38ac89dd447beacd0ecbe62b0ddd2a8f2550e79da6a5440a39afee86a66` |
| 7 | `def` | [RelationKind.permitsImplication](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/relationkind-permitsimplication--5f2312a5860e34584b68356b.md) | 98 | `declaration-track:5f2312a5860e34584b68356b267b7dcd1345e5f3b55a2cbae114d0f507e0afcb` |
| 8 | `inductive` | [EdgeAuthority](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/edgeauthority--faf9075784a27e1313b45def.md) | 103 | `declaration-track:faf9075784a27e1313b45def5fc4cc13680ef2a5753b9ab82fa88d1507b8b8e5` |
| 9 | `def` | [EdgeAuthority.proofBearing](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/edgeauthority-proofbearing--cbabc3ed7f5df0685a9a34dd.md) | 112 | `declaration-track:cbabc3ed7f5df0685a9a34dd7e42f0c4d5c69b28e60cf1961708a1e16a2070d3` |
| 10 | `structure` | [SourceRef](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/sourceref--376a89649c660d5c55c24c62.md) | 116 | `declaration-track:376a89649c660d5c55c24c62c26ce751b2fcae3a4d3064d56e2a49e6e7de519b` |
| 11 | `structure` | [ConsumerRef](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/consumerref--e21ef7f73a11f904bd1aae2b.md) | 125 | `declaration-track:e21ef7f73a11f904bd1aae2b1f117ea4e0819fc55c38f17864cb68abef2605d2` |
| 12 | `structure` | [WitnessNode](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/witnessnode--2aab231202d98e1a03ad7cb3.md) | 130 | `declaration-track:2aab231202d98e1a03ad7cb3f7f74b35b6922efcabe0adda10f8c9bbddb0b917` |
| 13 | `structure` | [WitnessEdge](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/witnessedge--5bb4ba59c134a150fc41607a.md) | 141 | `declaration-track:5bb4ba59c134a150fc41607ac4afa557ac891b709117e9ff905d34ef43556b14` |
| 14 | `def` | [traversable](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/traversable--c90943174d60cbb66088ef9a.md) | 153 | `declaration-track:c90943174d60cbb66088ef9a0fa7edd8a07eb7a78884d6acb9f1877a32657478` |
| 15 | `theorem` | [traversable_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/traversable-iff--b7f89c4366c4948c329122a3.md) | 156 | `result-track:b7f89c4366c4948c329122a3c7764377f28975343ab0c362810f4b6103380653` |
| 16 | `theorem` | [noProvedConnection_not_traversable](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/noprovedconnection-not-traversable--2ae47928222049c8913405cd.md) | 162 | `result-track:2ae47928222049c8913405cd151eb2a372b8b3875cd2a5150ea89427b67e8088` |
| 17 | `theorem` | [relevantOnly_not_traversable](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/relevantonly-not-traversable--42f2c81e5159cf67352a691f.md) | 167 | `result-track:42f2c81e5159cf67352a691f93ed95a6e9482c276b2892c8e589ce34eeddc3d0` |
| 18 | `theorem` | [refutesAtScope_not_traversable](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/refutesatscope-not-traversable--06ac6aa2a27148a0a53e6a2a.md) | 172 | `result-track:06ac6aa2a27148a0a53e6a2aebd7d4ace63d2f42708c1aafa7d2446435099561` |
| 19 | `theorem` | [externalSource_not_traversable](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/externalsource-not-traversable--0aad74318b87079b62908ee7.md) | 177 | `result-track:0aad74318b87079b62908ee7064b8b00baac34793a3bc747c9279246e46d472d` |
| 20 | `structure` | [WitnessRegistry](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/witnessregistry--7cf4578feef365731205cd14.md) | 184 | `declaration-track:7cf4578feef365731205cd14b2d1130e35c0526ad3073a2816b6c288bad8a639` |
| 21 | `def` | [nodeIds](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/nodeids--a86b471e61d79c1b42ec6477.md) | 192 | `declaration-track:a86b471e61d79c1b42ec64771820d624aca29c8f81ff59919b66bd6d4c4dad99` |
| 22 | `def` | [findNode?](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/findnode--3980e10507b89113b6ff2549.md) | 196 | `declaration-track:3980e10507b89113b6ff254984f06e4314898becbadf3fd02875260d2691fba9` |
| 23 | `structure` | [LocalClaimBinding](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/localclaimbinding--4b0f04f1485d7832504e35a7.md) | 202 | `declaration-track:4b0f04f1485d7832504e35a767d9e48f31d078a052cffee905d8cf7639741d82` |
| 24 | `def` | [canonicalRectangleEdgeBinding](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/canonicalrectangleedgebinding--7fc31aa24d660c2d0262c8c0.md) | 206 | `declaration-track:7fc31aa24d660c2d0262c8c0166107a5242cbd52ae40b39aee56df04a2df22c6` |
| 25 | `def` | [rectangleConjectureJunctionBinding](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/rectangleconjecturejunctionbinding--6a82efaa6e9f9a6d497c7a23.md) | 212 | `declaration-track:6a82efaa6e9f9a6d497c7a2325b3a24a71ff0de6b9a5f01fab1b61cff709b6df` |
| 26 | `theorem` | [external_authority_is_not_proof](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/external-authority-is-not-proof--1a8bb1432063eb9e87bf7cc5.md) | 216 | `result-track:1a8bb1432063eb9e87bf7cc54841d3ca70888ea760d0274cb8a5862ff9d195ce` |
| 27 | `theorem` | [prose_authority_is_not_proof](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/prose-authority-is-not-proof--09955d4760d4bde739c56d10.md) | 219 | `result-track:09955d4760d4bde739c56d102bf8075869daffa1abbee493dddf2bec81550e46` |
| 28 | `theorem` | [unresolved_authority_is_not_proof](../../../../../mathematics/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean/declarations/unresolved-authority-is-not-proof--4f1549ffd977a4ae131e8038.md) | 222 | `result-track:4f1549ffd977a4ae131e80386a2ce334bbde6c7a32ca27c0c4f82a6e4262e65b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
