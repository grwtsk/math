# Verification target: GRWTSK.Topology.GeneralTopology.Pairwise.Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48c212f926356cfa40937f5b57dedc1e03747b3a",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48c212f926356cfa40937f5b57dedc1e03747b3a`.

Source path: `GRWTSK/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Count` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Lex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Pairwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rel_of_pairwise_cons](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/rel-of-pairwise-cons--9b441d3fd8745bedd059eb83.md) | 53 | `result-track:9b441d3fd8745bedd059eb83612518c302a0c71ac3622ffff6980095d54ae916` |
| 2 | `theorem` | [Pairwise.of_cons](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-of-cons--cbd2d81c0e05d5e997a03540.md) | 57 | `result-track:cbd2d81c0e05d5e997a0354087648014ce7e4abc725c7e9c9edd5e08c14c05bb` |
| 3 | `theorem` | [Pairwise.tail](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-tail--d9fe6afe4ff54da883212fb4.md) | 61 | `result-track:d9fe6afe4ff54da883212fb44f5f2dca44ef53845150ce1e13dead6d176a9539` |
| 4 | `theorem` | [Pairwise.drop](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-drop--749097bb7df8d8f97c6f3db3.md) | 66 | `result-track:749097bb7df8d8f97c6f3db3b7dd3d14940eb88e7723a55632b02e885bc62457` |
| 5 | `theorem` | [Pairwise.imp_of_mem](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-imp-of-mem--acb22cddc5f35bdca9e24529.md) | 72 | `result-track:acb22cddc5f35bdca9e245290acfbd68a9de15f71763196074e80f25156feb6b` |
| 6 | `theorem` | [pairwise_and_iff](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-and-iff--a52c71c810c916addbfb621c.md) | 84 | `result-track:a52c71c810c916addbfb621cd045a12b35bf0c2fe4e4fad21e1e25ff5a749c07` |
| 7 | `theorem` | [Pairwise.and](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-and--f9f38f53bf1c14016970fcb7.md) | 90 | `result-track:f9f38f53bf1c14016970fcb713992c17c0ec1401b7329eff178e002e1adf1ce7` |
| 8 | `theorem` | [Pairwise.imp₂](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-imp--90c03d28c657a0d78a5762fe.md) | 95 | `result-track:90c03d28c657a0d78a5762fe8a378076699c561d9c381d1287e376a6ed47eb07` |
| 9 | `theorem` | [Pairwise.iff_of_mem](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-iff-of-mem--13d0883111e3dfff48eb77c3.md) | 100 | `result-track:13d0883111e3dfff48eb77c325596a1a289d08263c03c1e4fb3c91ff979a7175` |
| 10 | `theorem` | [Pairwise.iff](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-iff--a054f6b7a26e3e8299a1d110.md) | 106 | `result-track:a054f6b7a26e3e8299a1d110e51a76ba1e95032f8f17ae9d1a1aa6b7a247f37f` |
| 11 | `theorem` | [pairwise_of_forall](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-of-forall--2de512025e183076bc99d393.md) | 111 | `result-track:2de512025e183076bc99d393727d81a082b03b228b1be94c5173898973e7298a` |
| 12 | `theorem` | [Pairwise.and_mem](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-and-mem--a61a62aefa94284e0f490371.md) | 115 | `result-track:a61a62aefa94284e0f4903717adc1b37c58be39b6df95715e92dd7f97e37418f` |
| 13 | `theorem` | [Pairwise.imp_mem](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-imp-mem--926a74fd9d8caed3471c0d68.md) | 121 | `result-track:926a74fd9d8caed3471c0d68f74bd702a4173878a217d9cdeae7d041400c9ea6` |
| 14 | `theorem` | [Pairwise.forall_of_forall_of_flip](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-forall-of-forall-of-flip--ab4071a8907a09666654f74c.md) | 130 | `result-track:ab4071a8907a09666654f74cb8bd3de39ed8302b1a95f6ce0681b567251b605e` |
| 15 | `theorem` | [Pairwise.forall_of_forall](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-forall-of-forall--bc94ebc374e4d57056d86bb6.md) | 143 | `result-track:bc94ebc374e4d57056d86bb693b990bf3b9bc755ed883a44bbc0e60c87604616` |
| 16 | `theorem` | [Pairwise.forall](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-forall--a8877fdc928b77bd2f3fee37.md) | 148 | `result-track:a8877fdc928b77bd2f3fee3747ecf5ea0eb9259e0620d10fafefc0be307837fd` |
| 17 | `theorem` | [Pairwise.set_pairwise](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-set-pairwise--f8cc59470909d29eb5e4be27.md) | 156 | `result-track:f8cc59470909d29eb5e4be276c5e30e17c4524375394f291e3be47d4bb78b81d` |
| 18 | `theorem` | [pairwise_singleton](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-singleton--45f844cd97f535bc8a5456c6.md) | 160 | `result-track:45f844cd97f535bc8a5456c60c245cd6065b69da3e32f91507caec26851b4754` |
| 19 | `theorem` | [pairwise_pair](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-pair--6e141b35c00b9ce12be6ddb0.md) | 164 | `result-track:6e141b35c00b9ce12be6ddb08da00cb805c414abdb11828d8caf132316fbb36f` |
| 20 | `theorem` | [pairwise_append_comm](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-append-comm--29cb9d63d05282a938b0b852.md) | 171 | `result-track:29cb9d63d05282a938b0b85248f894ae412f8751a9e37d1e377dcf3e14ca305f` |
| 21 | `theorem` | [pairwise_middle](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-middle--a757cdaf9295b4ae9b13aa9d.md) | 178 | `result-track:a757cdaf9295b4ae9b13aa9d115dcacfcae03f85c2384cdd25516d6fd731b3a0` |
| 22 | `theorem` | [pairwise_map'](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-map--945864afe7fa83a57fdeba2a.md) | 186 | `result-track:945864afe7fa83a57fdeba2abfb1fc403df2e8e5ad91e7f90050d4a1b6510514` |
| 23 | `theorem` | [Pairwise.of_map](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-of-map--f97e307a2ab69e19b7e59234.md) | 194 | `result-track:f97e307a2ab69e19b7e5923464ab6219886647a5fb8b5ae6313eae655e544a70` |
| 24 | `theorem` | [Pairwise.map](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-map--49813a0f18d22cf11141ba63.md) | 199 | `result-track:49813a0f18d22cf11141ba63d087e84df2d2a9180a7f90a6a2dab8f619d055bd` |
| 25 | `theorem` | [pairwise_filterMap](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-filtermap--ac298ce1467d90c66e79e1a3.md) | 204 | `result-track:ac298ce1467d90c66e79e1a3015d5e73b2de4084b6f7155c014b4adf628b5a1d` |
| 26 | `theorem` | [Pairwise.filter_map](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-filter-map--d1f499de4450fb4036d71fce.md) | 220 | `result-track:d1f499de4450fb4036d71fce7e76732038accf7c4f7fa70421dc944fb81dbfa6` |
| 27 | `theorem` | [pairwise_filter](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-filter--ca1d0b88b84d796b553125c4.md) | 226 | `result-track:ca1d0b88b84d796b553125c45810d5472a3506c5e7d6733c0f93dbee50eb56fc` |
| 28 | `theorem` | [Pairwise.filter](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-filter--5815b1fe451291d31735865f.md) | 234 | `result-track:5815b1fe451291d31735865fbacf843a5a69b5be6d8e9125e59a0987fc53d005` |
| 29 | `theorem` | [pairwise_pmap](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-pmap--97eecc59a1b416f5447d92bb.md) | 238 | `result-track:97eecc59a1b416f5447d92bbeae9e5c445d1cc6a9c488d8234b05b04a60142f1` |
| 30 | `theorem` | [Pairwise.pmap](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-pmap--a92d75dd40b6e007cd754125.md) | 250 | `result-track:a92d75dd40b6e007cd7541251ae5609b57397be0f998ead206539802a186bbcd` |
| 31 | `theorem` | [pairwise_join](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-join--91b4d1ba37b50f08eef1822d.md) | 258 | `result-track:91b4d1ba37b50f08eef1822de2da19b6b793a678387906c817e8f0961d202372` |
| 32 | `theorem` | [pairwise_bind](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-bind--aa3c805012bffce8821e237c.md) | 272 | `result-track:aa3c805012bffce8821e237c8e747dd386ff70dc14e3a3e365b2bde1d7182d18` |
| 33 | `theorem` | [pairwise_of_reflexive_on_dupl_of_forall_ne](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-of-reflexive-on-dupl-of-forall-ne--dcb87ff28cbcd84d3303f076.md) | 280 | `result-track:dcb87ff28cbcd84d3303f076cc7ddeb593e73cd3382737a80f6504a2944b587c` |
| 34 | `theorem` | [pairwise_of_forall_mem_list](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-of-forall-mem-list--cf1a2a27dd71272303e622d1.md) | 303 | `result-track:cf1a2a27dd71272303e622d1c74794a2aab5ff2425524bac4d8d9c77a47017a5` |
| 35 | `theorem` | [pairwise_of_reflexive_of_forall_ne](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-of-reflexive-of-forall-ne--673971135499797be4535f31.md) | 312 | `result-track:673971135499797be4535f3180b2d15329d36713bec97a3dc8151ac5e06f1196` |
| 36 | `theorem` | [pairwise_iff_get](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-iff-get--0c0291d5c503487430e09dfa.md) | 317 | `result-track:0c0291d5c503487430e09dfa1217bc6d246366eca09357435ad1f0a0401b2631` |
| 37 | `theorem` | [pairwise_iff_nthLe](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-iff-nthle--11e7bafbb134dfaf3ccd6245.md) | 341 | `result-track:11e7bafbb134dfaf3ccd6245a247446db7f491b5580f4f1f86ad127a571bb8c0` |
| 38 | `theorem` | [pairwise_replicate](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-replicate--7a37089773c3a2b70483286b.md) | 348 | `result-track:7a37089773c3a2b70483286b9d254c15d737df40c9159acfec606dc4a6bd864c` |
| 39 | `theorem` | [pwFilter_nil](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pwfilter-nil--4ccfffa437e66fc8031d0ba7.md) | 361 | `result-track:4ccfffa437e66fc8031d0ba76afc48da5fa75efde1efc9260c07c8eb131f636c` |
| 40 | `theorem` | [pwFilter_cons_of_pos](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pwfilter-cons-of-pos--ea19ad3d224e375cf56dc917.md) | 366 | `result-track:ea19ad3d224e375cf56dc91709af2a0e371bd1577e0661d9f13dfe880adeb4e5` |
| 41 | `theorem` | [pwFilter_cons_of_neg](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pwfilter-cons-of-neg--ebf69d59cdcaaf1406387723.md) | 372 | `result-track:ebf69d59cdcaaf1406387723d74c4002360a00ebee8b9723e4d47e8e95e04e3c` |
| 42 | `theorem` | [pwFilter_map](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pwfilter-map--c8ab68727f6ced2d00adf635.md) | 377 | `result-track:c8ab68727f6ced2d00adf635bcd891c3b0cad5c00a51cd39ac1ef82600c47834` |
| 43 | `theorem` | [pwFilter_sublist](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pwfilter-sublist--8b3deae015d9d4c4876ecec2.md) | 396 | `result-track:8b3deae015d9d4c4876ecec222f571b6feaec745ce4d9967799a48727625b273` |
| 44 | `theorem` | [pwFilter_subset](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pwfilter-subset--26403c2c2ea2679118509318.md) | 406 | `result-track:26403c2c2ea2679118509318e74b0cb172aface817dfe9d9d837e077eba11ec3` |
| 45 | `theorem` | [pairwise_pwFilter](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pairwise-pwfilter--ef05431fb89e26821e1b9021.md) | 410 | `result-track:ef05431fb89e26821e1b902126d67ab65e8519fb2b3eb7f52b116acb9c3690db` |
| 46 | `theorem` | [pwFilter_eq_self](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pwfilter-eq-self--abf8f6d688a5aa9f0dade98a.md) | 420 | `result-track:abf8f6d688a5aa9f0dade98a59639538e6cc13767ed72178eda7ff364eedee53` |
| 47 | `theorem` | [pwFilter_idempotent](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/pwfilter-idempotent--e066e5d12c08ef803e1d068f.md) | 434 | `result-track:e066e5d12c08ef803e1d068f31a3593340a5ab43300d62e4bbb47e7554e762f8` |
| 48 | `theorem` | [forall_mem_pwFilter](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantadea62b28c965954778705b13f01acb9bcc78100cf3363a8e7ac2691143ec85a.lean/declarations/forall-mem-pwfilter--d23e00f2e1418d7091dc33ec.md) | 438 | `result-track:d23e00f2e1418d7091dc33ecd92c063cd85500d7087123c196d6e84b62fa5b8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
