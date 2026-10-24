# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1efcfe5d26a6024d159b97113bada20fc1d86fb",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1efcfe5d26a6024d159b97113bada20fc1d86fb`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Range` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Defs.Filter` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TopologicalSpace.ofClosed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/topologicalspace-ofclosed--9103cb0c7ebdc8e72aff4946.md) | 46 | `declaration-track:9103cb0c7ebdc8e72aff49468a13efcd502f9ad5b6c29c9b4b8f51b0c2aa15ea` |
| 2 | `lemma` | [isOpen_mk](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isopen-mk--6141f0b6000f4649f7563a87.md) | 60 | `result-track:6141f0b6000f4649f7563a87b140e641cbcbfb34317993bcec90a794c0454501` |
| 3 | `theorem` | [TopologicalSpace.ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/topologicalspace-ext--fa23da7f93e1e603d142f612.md) | 63 | `result-track:fa23da7f93e1e603d142f612770d123e3e436f1506f7e157e1315e65cb07c75b` |
| 4 | `theorem` | [TopologicalSpace.ext_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/topologicalspace-ext-iff--d1180a77b2a1a2dbdf962b06.md) | 67 | `result-track:d1180a77b2a1a2dbdf962b06f4d1f771fae48a506f5bf95075226695d063bed1` |
| 5 | `theorem` | [isOpen_fold](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isopen-fold--5fd5613bb126b0b4dacd274f.md) | 71 | `result-track:5fd5613bb126b0b4dacd274fdd8f4c26223f32eb8ccf3f4c817a4c3d62640772` |
| 6 | `theorem` | [isOpen_iUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isopen-iunion--f57999408e0b616b8c5ed792.md) | 76 | `result-track:f57999408e0b616b8c5ed7924c3691746503397a31ee374c6e55cb5a768f123f` |
| 7 | `theorem` | [isOpen_biUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isopen-biunion--1977eaa5abb9f9ae7071286b.md) | 79 | `result-track:1977eaa5abb9f9ae7071286b92929dd8f36c588e32b6f68b21ed81345d63421b` |
| 8 | `theorem` | [IsOpen.union](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isopen-union--414593420db87cf9276ff73d.md) | 83 | `result-track:414593420db87cf9276ff73d832ce5e01fe5ab3d7663673d014e19aa2901a313` |
| 9 | `lemma` | [isOpen_iff_of_cover](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isopen-iff-of-cover--693f997c05c0c5b9401ff9ee.md) | 86 | `result-track:693f997c05c0c5b9401ff9ee4c9bf8a321bb5111afad0cbc15ac421f499e6e69` |
| 10 | `theorem` | [isOpen_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isopen-empty--b03f7e5883575f9a63cc3650.md) | 92 | `result-track:b03f7e5883575f9a63cc3650c22fce93202bb9c35278ff040e2ef0c427f1f234` |
| 11 | `theorem` | [Set.Finite.isOpen_sInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/set-finite-isopen-sinter--908a02f8566a961e461992e2.md) | 95 | `result-track:908a02f8566a961e461992e2457268f7e86e5b2381391939d05699b123875890` |
| 12 | `theorem` | [Set.Finite.isOpen_biInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/set-finite-isopen-biinter--62d640868ddf87b3d11d3526.md) | 103 | `result-track:62d640868ddf87b3d11d352653a6cedb2e794ae5e58f8e1406770af69653c02a` |
| 13 | `theorem` | [isOpen_iInter_of_finite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isopen-iinter-of-finite--da3b29c3464ea590ba359089.md) | 108 | `result-track:da3b29c3464ea590ba359089a8add429530ccb3d4b13c5d341ce7367dd674829` |
| 14 | `theorem` | [isOpen_biInter_finset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isopen-biinter-finset--58ded60acf93943c121e039f.md) | 112 | `result-track:58ded60acf93943c121e039f1278d2df6645bebcb2888d3a56e914f54378ad17` |
| 15 | `theorem` | [isOpen_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isopen-const--0f1ca673e088ac37dbda616b.md) | 117 | `result-track:0f1ca673e088ac37dbda616b8484c1b0fb006a7fcea71d3e08e2966fc584a75b` |
| 16 | `theorem` | [IsOpen.and](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isopen-and--331463b4510202d5591ae071.md) | 119 | `result-track:331463b4510202d5591ae071c23dfe372e64ac7f87cde79aa2dd5a1533a00cbd` |
| 17 | `theorem` | [isOpen_compl_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isopen-compl-iff--0148da74357adc4aa2d3fd6c.md) | 122 | `result-track:0148da74357adc4aa2d3fd6c7e0f989dcbe753f364da08252dd4726728fbfc7b` |
| 18 | `theorem` | [TopologicalSpace.ext_iff_isClosed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/topologicalspace-ext-iff-isclosed--168c825b7ec76f4ace3c0a8c.md) | 125 | `result-track:168c825b7ec76f4ace3c0a8c4137c62d129dcfacfedad752c11232711cb10961` |
| 19 | `theorem` | [isClosed_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isclosed-const--29e75b13ed2289433a60cbcb.md) | 132 | `result-track:29e75b13ed2289433a60cbcb3c5c11b3ac3fb7936b8a16fa630218a82f05c5fa` |
| 20 | `theorem` | [isClosed_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isclosed-empty--b4a36399ae351f894d1c9e9c.md) | 134 | `result-track:b4a36399ae351f894d1c9e9cd22c17c04dc3f2b3adf57b17ac52c627074eb745` |
| 21 | `theorem` | [isClosed_univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isclosed-univ--0a7116610243e328470f6700.md) | 136 | `result-track:0a7116610243e328470f670014d689e29bc7943a1f13ad1365b62a71ba14c002` |
| 22 | `lemma` | [IsOpen.isLocallyClosed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isopen-islocallyclosed--162ff7eacf6843d77697d37e.md) | 138 | `result-track:162ff7eacf6843d77697d37ef6773186d9ff1a4f591a68d1af729ec855e197e5` |
| 23 | `lemma` | [IsClosed.isLocallyClosed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isclosed-islocallyclosed--b41d3d01babd97427aa27f5d.md) | 141 | `result-track:b41d3d01babd97427aa27f5d64a552f931844cc88a9ff9a24714bd39726399fe` |
| 24 | `theorem` | [IsClosed.union](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isclosed-union--dbfcae2bb9c379cb18b4edab.md) | 144 | `result-track:dbfcae2bb9c379cb18b4edab93d89700ee5cb7708818dbcacbc9ac5c388c91d1` |
| 25 | `theorem` | [isClosed_sInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isclosed-sinter--8f85f85775ffa51433c890bb.md) | 147 | `result-track:8f85f85775ffa51433c890bbbdabed0f4993fe727b305bb56dcfc8186f4f40c4` |
| 26 | `theorem` | [isClosed_iInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isclosed-iinter--0470734f6c1b1cdd27556da2.md) | 150 | `result-track:0470734f6c1b1cdd27556da220cf39c042a0bb37ed983a3e4fa944d024898e8c` |
| 27 | `theorem` | [isClosed_biInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isclosed-biinter--4b9bfb680d6296069e4ff28b.md) | 153 | `result-track:4b9bfb680d6296069e4ff28bf81d2e818bf1c6054c0f98ca26dc68c9f5e78de6` |
| 28 | `theorem` | [isClosed_compl_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isclosed-compl-iff--f982ba145ff8a53825858e3c.md) | 158 | `result-track:f982ba145ff8a53825858e3cc53cbc1f98379a58a346dca8174b1c93366eda13` |
| 29 | `theorem` | [IsOpen.sdiff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isopen-sdiff--624fe2deac65271785804c6b.md) | 163 | `result-track:624fe2deac65271785804c6ba143a6e688dfdb8dec7b11ab7392b86c6498da7e` |
| 30 | `theorem` | [IsClosed.inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isclosed-inter--e5abd3d3e24a53fcd1353b51.md) | 166 | `result-track:e5abd3d3e24a53fcd1353b5167bcc7618839b0e921c0d640e550c1fbb9930ed8` |
| 31 | `theorem` | [IsClosed.sdiff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isclosed-sdiff--c4094c70945e644f2b59a1bd.md) | 171 | `result-track:c4094c70945e644f2b59a1bdf94ac6a7e6305387e0644e775a1336a743d704ea` |
| 32 | `theorem` | [Set.Finite.isClosed_biUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/set-finite-isclosed-biunion--c96c7de5418647021f54c579.md) | 174 | `result-track:c96c7de5418647021f54c579f7bef77b6425c36ca6eac82474d7724bb2d354bc` |
| 33 | `lemma` | [isClosed_biUnion_finset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isclosed-biunion-finset--8ebecb1327a97a63493e750c.md) | 180 | `result-track:8ebecb1327a97a63493e750c34f7d051b8e4269404514f57dbf3d7baa3f1a74e` |
| 34 | `theorem` | [isClosed_iUnion_of_finite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isclosed-iunion-of-finite--63f937fac116b13567b62073.md) | 184 | `result-track:63f937fac116b13567b62073aa4409e42439ac37b92999f8d3066f764783c5ce` |
| 35 | `theorem` | [isClosed_imp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isclosed-imp--f68e2616bef8f930543a4695.md) | 189 | `result-track:f68e2616bef8f930543a469544f3e2837da9311516cd8b422c801fa12611869e` |
| 36 | `theorem` | [IsClosed.not](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/isclosed-not--0ebd5a0412b26b4732e63e99.md) | 193 | `result-track:0ebd5a0412b26b4732e63e99ad7243fd0dda592315862cbc5b1a62f3052452b4` |
| 37 | `theorem` | [le_nhds_lim](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/le-nhds-lim--d16ce6d2b8aea5b5f6cb1aeb.md) | 212 | `result-track:d16ce6d2b8aea5b5f6cb1aebc117eca62f59a9f4a357750aeae423741985350b` |
| 38 | `theorem` | [tendsto_nhds_limUnder](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/tendsto-nhds-limunder--7d7b189b6665122dcb946ef2.md) | 219 | `result-track:7d7b189b6665122dcb946ef2f95a772fd17e70ea6d77a6a671e2e4e695b9259d` |
| 39 | `theorem` | [limUnder_of_not_tendsto](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantaff1ac8a92fbb5e9b7a848fc4ebc2fdcb5394fcb3459ac8f17cf300871d1986b.lean/declarations/limunder-of-not-tendsto--b675f442757cd53fdbd26a97.md) | 223 | `result-track:b675f442757cd53fdbd26a979acc5f8a5ed9bb9bae97c2c345463caeeab3033b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
