# primitiveElementKeysChunk0020

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35aa5d08b77f121878039be31afd9a9eee3b5f8efa3b262575c0c03ac9a7b079",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0020",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "primitiveelementkeyschunk0020--c83bb3b6088e15ab4e8db982",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1462,
    "line": 1395,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c83bb3b6088e15ab4e8db982b33f1580fdaf4c5cc8d586168d61c66fbde9f90a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35aa5d08b77f121878039be31afd9a9eee3b5f8efa3b262575c0c03ac9a7b079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1395–1462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0020 : List String :=
[
  "python-point:75b4b84e4cccadf1fd9ad249e00ffd9923e063617f5aebe6884cc54776f6e8d9",
  "python-point:75e8427d6eb8ac8997d14dedf9608b48c7d0067e61f7a46f89ef14855ebdc818",
  "python-point:75f10540c44c69f88e3cec464da864bfb02cb0600b528f79defd9f298adab7b8",
  "python-point:75f41cbcd07cd5db67dcbfd0b60ce0d1ad3bf43ce47aae0146725e7222078b54",
  "python-point:7648c3910370e5c67ca09926a064a56b752d56d82d8455978aed25b472c642d9",
  "python-point:7674933f4c2f7995a565f01822c6b4159f6b4a2ee62c87f6f70c59b3c319a75e",
  "python-point:769c24c4df0008a35493d04fff19fce3da6fc498b6d77c39f7b75896296ed2f3",
  "python-point:76b9fcd6fde25b22ac05ea15dd84d31c5728195aed23a2ae92490bdfb5c39a80",
  "python-point:76d8255157815f326cc0a3b6a05f2484947f728c89616aebdab2901b84a69bdd",
  "python-point:76de3dc66e365c2077f13524bf2bb941bbea390529c2d094b1320d5e8e87581c",
  "python-point:76fa4968ae386da76318c4f790704a32a04672a55596dbd6b22d1786713c2276",
  "python-point:7708a84967e23ad1b0261eb76dbd73a3b56e2ea40a9bf8e42d5563bad9f97c66",
  "python-point:771aa2301c80c0a9b3f3245a0c682ff178d68ca001a3fe1eabae9fab341b0e49",
  "python-point:771c344d4fb7a7e311677b300587d2a03382832842f8088aed80b4a404ee89c8",
  "python-point:7728d2a3a516d5f2ffb5e3e911d24519cfdb631a7b8de8e6c51bb27dc59bd087",
  "python-point:775ea59a20819255d0ba1ee1aed8c75706555acccd81b719b01a9d4d4c0d86a3",
  "python-point:7773ee32f8a59acc6782fc467f2532fe11f5c4976bc5b2ae53eb23cdce788910",
  "python-point:77adb3046822d87933d4b151993050648a9010fa29334f2ab885343011d29a7a",
  "python-point:77df58b894d06dff38ba0632c124b57082a67e9207f8a7f841e954cc76951475",
  "python-point:783948e8d5d26f45b8be43b4e7ae9c3e0ef5e492dddd2a6d34245121b248e224",
  "python-point:787e0c1e8d76c20f2a0f1b3f3475a47dc969587379b4062f0b4ccdec58a183bd",
  "python-point:78850946cae30f409caed76de16a3026d27d58d5c42813f678a11292c6044cf8",
  "python-point:78a9e230a74b24411a9bf256e2625cfe088ef542aab9a4d01ba81d48a564ff2a",
  "python-point:78c985b8a30b8fdd3c6f05099595f2e9e08bf8074f1b546a72376c7207a70bb9",
  "python-point:78d7163bfe96dea03cfdc4775f25029745b4b2cbad45755d61bd897ca4f7ba19",
  "python-point:78df5344c0a7057e8be8b550c08feba9b9a28f1eda0dc688dff8175aa0da4868",
  "python-point:78f655e5ca625646c4240bcc2a371f1f89d6f2757bfa01c604a3d8dd7a1eab10",
  "python-point:790d9487c121b627c5813186fccf8aaa65259cca245c7727bc5e163ea6373d9a",
  "python-point:791b464bc808771a4431d68b0fec3c67f1b227a4986a9d26e2ecf8b8f77a1d8e",
  "python-point:792e4bbb6f8debfb8ecc39d510afad8ea1fb0944f31150cfb23a486a5d9eb1e9",
  "python-point:79622cdcea73c166443190f88fae30aaa64eb29b254d1a0e9ce5bf6c59870477",
  "python-point:796a59e39487ec6166f92d0fefa63ce48e55e8deec15bb7ccd37464791bbe5c6",
  "python-point:7989add899d781d4290dd3ee812485da90431ac214a5044ba7e084493fe4123b",
  "python-point:79973a3217ea43f6cfc3d0954d9d6e48d52489a59a7bd30de487a3cb637d12ab",
  "python-point:79ab6b2aa86889fdac722abb74670ed1ca9bee613bd4e09d853039863d841633",
  "python-point:79d1853be550d2b5ad21446ae3525fba2642addcc06f221551520188a69027d5",
  "python-point:79fdca77e4df39a83748ff8ca5e5006e40de99ba6a05e00279ae0b78913d50a2",
  "python-point:7a029d03c51fda76832112765fedf51fe911d4f75ced391df51b5e10a5c9351a",
  "python-point:7a1009b2d0e70969944ed7ef18265e108ecc6c98ce5e953ce74c9f971ee77ab5",
  "python-point:7a1c310de94c26895a9afad6a2639d4dd01347add64e6a7fc328185c6d03b722",
  "python-point:7a2ea542e7542a258696d9536c75c49b1565614e17d521917de7c9be539ea815",
  "python-point:7a2eb9797a6fe7c7c2698145c7348e2cd51fcc809dbda8d1d394522d14bd5f2b",
  "python-point:7a363ba7ddfa83911d1fed4d8fcafa68d725d73cd4333f0aa031c332f6e0749c",
  "python-point:7a4c25b77434d8423e446b3bcf67f75fc1912e8f272a2fe54d87ac8b81744566",
  "python-point:7a5db090a949c82a00325b48ed3bfa2e0420845364acbd1012143bcddc54a791",
  "python-point:7a6df889a45ed167a53c492eb5d91e9df79486f380affa9552d0c271ebb7e60d",
  "python-point:7a76ff66f0921cef96f5988d1d8900284299292f15b36940fdae2a46d296e9d0",
  "python-point:7aa48fa42e7c3e46b8f6ef23856a9db835fb0588921872fb258a8f193e9f2197",
  "python-point:7aa4c1e612390107157abc0f2ec67280e34f6eca61371ef06c3b1016993f92d4",
  "python-point:7ab9a66c128cb1b4d425ee10b3a6028a25324500a2c1308aa0fa4fe23aa84f4b",
  "python-point:7ad9288163e9cb927710521bdb3ecae8cf4ded3b19d9b4455d42a4e304048bc3",
  "python-point:7ae6b46eee1284e4036c22ede593ed04890929eb86c6f55ac6a59efbe6f4250a",
  "python-point:7afa5cb3a52731836a748a79e6416f4c59e7b7a8465478e84e64c6c76c84cde3",
  "python-point:7b012dc2159e75134e77a43b670dfbe330485b087d6f635e735067638499d840",
  "python-point:7b1449244fb060d5cb93cb6ce7a40e58ea0b753aac51ed78499633732b00d5ef",
  "python-point:7b16c4f36032dd14ac43dd200bc29e83d634c366930065d79cef71c291980d3d",
  "python-point:7b27679d6dbad4a26096ed9f4dcd8c4351d8eeba7c127edb838cf10d39adca33",
  "python-point:7b3b43f701f24fc558ecf4d110760dca13cea2fb2c300528e459b84832345e98",
  "python-point:7b404754990c4d7ba997d1c41aa9b895c94601a2e26cc47f71aaaa3ecc789516",
  "python-point:7b42025de15fc982faecdf2ec96df50962003dda0063ab47311a9bfbc0a627b4",
  "python-point:7b465760c6fc67995de0723e2a7ed596571a9c7384ff52fd78e638baac465e69",
  "python-point:7b697a08d2459bd11daf1e75d04f4126b4f0213e29da9aabd6de7c04da3fbef3",
  "python-point:7b70193d4c84269fbe4531d4640fada141048ee082fa5e83fc8a27333350f9e0",
  "python-point:7b86b8f1fa30b7188c453146446e40647fba18813e65cae6578df48f4c377575"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L1395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
