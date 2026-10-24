# Verification target: GRWTSK.Topology.GeneralTopology.LawsonTopology.Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70aab810566fe0cfaef281297bf79ab2b8cc7574",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70aab810566fe0cfaef281297bf79ab2b8cc7574`.

Source path: `GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.LowerUpperTopology` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.ScottTopology` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/lawson--29a7531ce82c5f199ddfa774.md) | 64 | `declaration-track:29a7531ce82c5f199ddfa77441bff5377cf762e7953827d55e621cfa31f6c450` |
| 2 | `class` | [IsLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/islawson--c2e34da98d1326231b32f19f.md) | 72 | `declaration-track:c2e34da98d1326231b32f19fce272d4df3c752575ff9c206c19d5a42a8b25745` |
| 3 | `def` | [lawsonBasis](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/lawsonbasis--9bcdf5a6d00c335575006436.md) | 83 | `declaration-track:9bcdf5a6d00c335575006436d77974cb5ff345a4f267c42dcfd6c5e4092ef28b` |
| 4 | `theorem` | [isTopologicalBasis](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/istopologicalbasis--33fd757fb7ea874e4c8ab856.md) | 86 | `result-track:33fd757fb7ea874e4c8ab856ea6c8d4e36bc193786a5834238fb3392945aee62` |
| 5 | `def` | [WithLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/withlawson--08af3ac6738d9041d4b7765e.md) | 110 | `declaration-track:08af3ac6738d9041d4b7765e78442b073f3ec0f7901986264c3e38b143497af0` |
| 6 | `def` | [toLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/tolawson--22f07618aa387cac0ae832f1.md) | 115 | `declaration-track:22f07618aa387cac0ae832f12facc5ac55a95c05ef36299f14bb71ea9afb0dc1` |
| 7 | `def` | [ofLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/oflawson--87823e00a8ff51f32964c75f.md) | 118 | `declaration-track:87823e00a8ff51f32964c75f18979f992cd88f133159684cb1fb19a1bfa9a372` |
| 8 | `lemma` | [to_Lawson_symm_eq](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/to-lawson-symm-eq--894559c435272bc79b3ef33e.md) | 120 | `result-track:894559c435272bc79b3ef33ee1eb0b6f9d97ac57f3b9bc8f0387c4cf0d1a43a9` |
| 9 | `lemma` | [of_Lawson_symm_eq](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/of-lawson-symm-eq--0878bbed58a150ec9b3f48be.md) | 121 | `result-track:0878bbed58a150ec9b3f48be04cfab67d03bbb73f6e6a0757b58991f7d825591` |
| 10 | `lemma` | [toLawson_ofLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/tolawson-oflawson--c2c37573e18160af1e27f394.md) | 122 | `result-track:c2c37573e18160af1e27f394a6c31727bcf13cd17da408c879edd839fd47bae9` |
| 11 | `lemma` | [ofLawson_toLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/oflawson-tolawson--aaa81ab195a6ed91b1d4752e.md) | 123 | `result-track:aaa81ab195a6ed91b1d4752ef870c27c1cdbb2abc65e2ad1797c5324b1245ac6` |
| 12 | `lemma` | [toLawson_inj](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/tolawson-inj--e15a73437d858a4776af6bfc.md) | 125 | `result-track:e15a73437d858a4776af6bfc89d9e37ee7e84b692660c2f5c4c3fd2cf9edb9b6` |
| 13 | `lemma` | [ofLawson_inj](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/oflawson-inj--bbf5515d6b5599b2488f8181.md) | 127 | `result-track:bbf5515d6b5599b2488f8181e54a3690bf5521987f460162b10a83f1c8882896` |
| 14 | `def` | [rec](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/rec--f1ed3f38f0f319eafae2e365.md) | 131 | `declaration-track:f1ed3f38f0f319eafae2e3652e68520f138a8aad89a4dfd5e916e0c593829e7f` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/instance--e63766d83c255df3b2fc72ae.md) | 134 | `declaration-track:e63766d83c255df3b2fc72ae04032cd35fa9b6a882d1359ff36df47dec6e93c5` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/instance--d94f2332604c1c4d10f7f721.md) | 135 | `declaration-track:d94f2332604c1c4d10f7f721275d8a5657ce05a8810aed4b05dde2dd25f0ab61` |
| 17 | `instance` | [instPreorder](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/instpreorder--99979b2984bed292670ddffa.md) | 139 | `declaration-track:99979b2984bed292670ddffa51c183ac01c929f37b8f235dc57f871266e49c7b` |
| 18 | `instance` | [instTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/insttopologicalspace--7abb37d4daa6bafa3166e94c.md) | 140 | `declaration-track:7abb37d4daa6bafa3166e94c11dd4e01df4b0700498062a1a6b56daa003ae902` |
| 19 | `instance` | [instIsLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/instislawson--eae19fb44895650d0efac2d7.md) | 141 | `declaration-track:eae19fb44895650d0efac2d70ce126abea60a5b3e6376d88120223c6300d3775` |
| 20 | `def` | [homeomorph](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/homeomorph--cfd7b59ed8940a2d878f4712.md) | 145 | `declaration-track:cfd7b59ed8940a2d878f4712564485ef8fe6e00c8fec432e1d0c776352c1b312` |
| 21 | `theorem` | [isOpen_preimage_ofLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/isopen-preimage-oflawson--804b0cd1a1cc52f7d6da2d78.md) | 148 | `result-track:804b0cd1a1cc52f7d6da2d7848df6700953976b8cb2a6f73b08ff4b6d367e827` |
| 22 | `theorem` | [isClosed_preimage_ofLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/isclosed-preimage-oflawson--766ae2bdee6c7690487c5ac4.md) | 151 | `result-track:766ae2bdee6c7690487c5ac4cfcccbd2d8eb818d5204cdff072a1d19fa638436` |
| 23 | `theorem` | [isOpen_def](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/isopen-def--70e1362989a6a675ba2fec07.md) | 154 | `result-track:70e1362989a6a675ba2fec07ca12fa28821b022a19c4ee1195cdac4409ef2b39` |
| 24 | `lemma` | [lawson_le_scott](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/lawson-le-scott--ac2452b8f037dff921ef9415.md) | 164 | `result-track:ac2452b8f037dff921ef941597fa658a06bc3970447cd1f223ebe6e04d30b1de` |
| 25 | `lemma` | [lawson_le_lower](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/lawson-le-lower--93c9975115e504c02403e47d.md) | 166 | `result-track:93c9975115e504c02403e47d060a282a29d44ded31ba539477db52f49df7841b` |
| 26 | `lemma` | [scottHausdorff_le_lawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/scotthausdorff-le-lawson--f0dc96a4945c4326355f520d.md) | 168 | `result-track:f0dc96a4945c4326355f520d62532569ab482f233aaf563b62efb8abca82bb2f` |
| 27 | `lemma` | [lawsonClosed_of_scottClosed](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/lawsonclosed-of-scottclosed--62f8e866790ddcfba664e0a4.md) | 171 | `result-track:62f8e866790ddcfba664e0a4fcecdcf31546c5cab8613d26432f739eff11abde` |
| 28 | `lemma` | [lawsonClosed_of_lowerClosed](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/lawsonclosed-of-lowerclosed--6d5bd65cafd6ee4b8a7a460c.md) | 174 | `result-track:6d5bd65cafd6ee4b8a7a460c28a11e2078187ae11a9e27b4130b0135edc4ca52` |
| 29 | `lemma` | [lawsonOpen_iff_scottOpen_of_isUpperSet](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/lawsonopen-iff-scottopen-of-isupperset--ed2c5635c158d8896d05d202.md) | 178 | `result-track:ed2c5635c158d8896d05d202284f31234f73189f49455da6732fdac6cca1d37e` |
| 30 | `lemma` | [isLawson_le_isScott](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/islawson-le-isscott--f86d285897f4b2911c58e2a7.md) | 186 | `result-track:f86d285897f4b2911c58e2a7149f6753e9499345f257c154296ace21164c7fe4` |
| 31 | `lemma` | [scottHausdorff_le_isLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/scotthausdorff-le-islawson--a6d5958efda1206c1f6de3bd.md) | 190 | `result-track:a6d5958efda1206c1f6de3bdcb000875cfef3b2a4410297e874581c549bedf05` |
| 32 | `lemma` | [lawsonOpen_iff_scottOpen_of_isUpperSet'](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/lawsonopen-iff-scottopen-of-isupperset--01c246f1774fce493d49b3ef.md) | 195 | `result-track:01c246f1774fce493d49b3ef68f01a6df81768edc136042c44c0890f26abf11e` |
| 33 | `lemma` | [lawsonClosed_iff_scottClosed_of_isLowerSet](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/lawsonclosed-iff-scottclosed-of-islowerset--51095b67961d0f6e3187af9d.md) | 200 | `result-track:51095b67961d0f6e3187af9d7af3e0a8a227dcfe599f505f270ef18e7eec630f` |
| 34 | `lemma` | [lawsonClosed_iff_dirSupClosed_of_isLowerSet](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/lawsonclosed-iff-dirsupclosed-of-islowerset--34b1ab617ef87fb5b7e6e741.md) | 207 | `result-track:34b1ab617ef87fb5b7e6e741c1c844d909fb2c450fb3870b50aac92d91f6af94` |
| 35 | `lemma` | [singleton_isClosed](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/singleton-isclosed--a76df6794c880cad7b6ac759.md) | 221 | `result-track:a76df6794c880cad7b6ac75975f5dc5667af36d9a6bd2abc0cc5a1cd8ede687f` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean/declarations/instance--3234112a254633566fbfdfd3.md) | 233 | `declaration-track:3234112a254633566fbfdfd330bcd7bb318f4a51a7fac94710c1df72f826bb2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
