# primitiveElementKeysChunk0088

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3bf023c0e18a96204746ca3641481182718b60bb562e55d1d239af7e75f07927",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0088",
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
  "slug": "primitiveelementkeyschunk0088--b42e8477fe8ff98a70230eba",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6084,
    "line": 6017,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b42e8477fe8ff98a70230eba2961d54b6a7e58f3445f4d3a9c7c296bdea04609",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3bf023c0e18a96204746ca3641481182718b60bb562e55d1d239af7e75f07927`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6017–6084.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0088 : List String :=
[
  "source-element:d68de9a4b3adfff165945f4f5e0e94085d563fa168cf57d2db7d893f7dffa6bb",
  "source-element:d6a2fd734ea7aee392af39beddc839ed7ed86083a76d97ccc1904b48ab527be6",
  "source-element:d6e906b9313376f09426d87b3c324692f23db0d329e0f26915b4e4464fdd0739",
  "source-element:d7132bd768aa44f03be4f5daa017d5d02beb43aaf40f2f852a5d6e8a7f612431",
  "source-element:d728554f533bd309e03797986943e527a0afb1ab590dd1b06fce8237d18ba8ce",
  "source-element:d77c143aef76bd3ebbdcb8abb9c3b15ee82fe2fbb50090de7f5e96475dd0f584",
  "source-element:d7eaec7ba61bf6d59665f962cc604f8fd97ca9b5192854c6e4a8c462596747ae",
  "source-element:d7ebf3fb3e6b2270bf5496ffb92644a51fe5c002487253c120fadb848b0dfd61",
  "source-element:d80cb82f3bca665ac167a7cdbbafd8f4f83ac86b38402c6be79c4b9b56ab9d6a",
  "source-element:d895ad562e5eb8ec43542b97a781728a0f61393a900f485ccda5d8fd135ab4f2",
  "source-element:d8abcc847a8f4b5e1ff8bf537904e774502f8477cb264af097890d417d728388",
  "source-element:d8b25e27925a9f0eef77c34cfa59b1ce608ae5225b0de9cf9382154e4d403f8d",
  "source-element:d931d9d8880854a466c787fa92961677168cf604c78e5357006f4dd5b8130e38",
  "source-element:d94e31dccb8ed79b574fdc868a807eb870f22d2528be10e8a26d070c01fd9362",
  "source-element:d97605a657b2d7b81d39283c51e3ab626f0f96dd974073d896c8cf73727ac397",
  "source-element:d9bb34419e61bb662e347f7f45cc2594636db9e4d2769b9386d6eb9a2e63dc18",
  "source-element:d9e113ead17881e64a122e6a1646fc1e4e0f5e8a4934827d516659a11756f01d",
  "source-element:da1b62a32aa483ca518ff0e6ae74b05895d57417a3d525d6420f9c7a84e17b2e",
  "source-element:da41bbe35c58b79b062dc16f41d8930fa47848ffa6feaad7b99d7b3532b188e5",
  "source-element:da6ca180c978c89227a585c6601c2a6585b5128d10f4bb27cc659547fd4698cf",
  "source-element:daa71149a61f125435d6da01f9ec8e3a6ab8e85fa84786a798f941b9583dda80",
  "source-element:dab6cfb9294458d5eaf70e5dba78853b28660b809e017c8ec6de2df38450fde6",
  "source-element:dae025f8a063fdf89b6efb95ae5dc88629ccb82cfab033aee2eede6ac053d8d7",
  "source-element:dafd968f64db29a520e9633e6e9d77946eb69364ba865cb5dc6507224ff452c4",
  "source-element:db450d9bdfee9be436789b421af09aacdf3b0065501cddabbf7df58cf45de592",
  "source-element:dbb10561169bd48dd7a2b7ac6aa465234e9c327848c42824e14363a7f11d07b1",
  "source-element:dbe6b6acadebbaaee49111f2b0544f5ded84f8923767804f9f50b7dbba9ac6cd",
  "source-element:dbf711419c9ae7026649d321697371b0334cbf8d47f5a48a96f3fabb59655cb9",
  "source-element:dbf8a9d17344bf799cd0fc4b8756418b9994fc8897aad71038db6c902303175e",
  "source-element:dc1091dbf38292fc5612e449c3f84cfc52aa49c9befbb0de545b85c716d39c06",
  "source-element:dcac29c40cdeb59dc8dbe6e345dcb989f10a3832db7f4708ee62605757b2ef57",
  "source-element:dcc698aa231eac64d110821bdb16544612440255ab161422b89187a7381ddaf6",
  "source-element:dd3e034197d0ff18c815898bae30fb7ffb50f7250704d3c013ae842b4cbf9a63",
  "source-element:dd5727d8a3305a420e44ac38c066b846faa6f2e5027f2acae2bac3105a2c9977",
  "source-element:dd72dd0e2030755e467b51f621de1138d8e0d9a4cf3ceae7bbdb03a5218269ad",
  "source-element:ddda83bd1a214a123160bc7d662a58eed8a8a09f75eb7c2cdd8fbfcf37e36a88",
  "source-element:ddefddc1122364f5bc16fb45924aa0c8ac41a1ec09f13fc95ff6d9f6bde459e1",
  "source-element:de258889d0e641ada5dcb4a9ec85eca65259257c6f3ce632d927de2528c5d16f",
  "source-element:de2f5197b2b1ebd7fceb1cac2da9d59d20532c8b389edbad580ed4475d90f02a",
  "source-element:de6e840642e87c0271eba94d3e2886e9a32e7f219abbed14a9fb9284a1c8982d",
  "source-element:de897f1c4f1e9f5b757ca38b7d703deddc1af2bcc6c3f90ee03f87a5744020e8",
  "source-element:de8b2ad2c0947845ddda28b6fd5ce26e28d60be043e804a49dd9dd4353fb5028",
  "source-element:dead1ad7c998501944125cdf8ff17563f752e1cf69e1e8d0babf41c595f20c58",
  "source-element:debde03cb4a8d28fc40d8840ba2566c08e8c5382925d888b30ac9008f5040a85",
  "source-element:deeabb9e7a5211c26e034c33028e08a8a73df42d91461deb3f37dd16487136b9",
  "source-element:df0471d380560698b96848336733de29d62fd5ee765b4ad711fe762c9761937d",
  "source-element:df08e03bce1b2fe9cb2b0e05caaedc27b3392d880c8258dcb795699ba7102f97",
  "source-element:df8c36bf8277c371aa367fb73d82d61076f81d372f1d916ff815b5a457ee0f18",
  "source-element:dfb509eed3218e7c7880e1354ed47f2027166dc21d2b822c972b65048d0adcdb",
  "source-element:dfc767f54cf20fb581cd9642ec5d4b792091e0a722810fcd0e2ccd3919c0cf21",
  "source-element:e00012a145a5af65f88ef1f4d15e9e2044179c90edfd75d72886f7f9617b5d78",
  "source-element:e00e76eca96af8c7d0aff77d418dc494a068c063d40507937b97df312c97ae20",
  "source-element:e01653da2cd33b4aa730e1a3a2f792354cc146edfe2e4ea716f6627ea9d087c9",
  "source-element:e03e4ca38132337237784edbcb84a62394e0054d05a629a82448b1adf7066bc4",
  "source-element:e0700632f2c3f5972eb70efd436ed5f63f9a820024fe14c7d5809e459482f142",
  "source-element:e118c4703bce82ac1da9103676597f489871b2c352e6e67428a462412aa2899e",
  "source-element:e154c2bcc247edec3ef843489cae0b776aa0e5cbc7f2daf841e70e3b4b108975",
  "source-element:e19433d6dd197538d0873ac3b21626c40bfae96ec6425a1a624c23d5914c400a",
  "source-element:e1eec5ad5bce4019af78aa8fe3407ff58c46ea1c06656bcec6abed76f18a68e2",
  "source-element:e278156552be5f0958799ad4d4f7da3cc9e67e8c018061f278f76941ff34fcb0",
  "source-element:e292fb2c84bf66c90ad14a9f9cb8af0ede770e8bd79981696c6b44a21d0ea933",
  "source-element:e2a255c218080531c64e669b60f19bde2dc9a520ca634f96bb717f4c1e59eb1c",
  "source-element:e2c2cd60be33a3be2d35828c63033392dbe29c3671f8d4572ee81816f3bdac8f",
  "source-element:e317330491b7e420ca4e0760a364e6e9958feb70a7f8e6ba662d91ab36282141"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L6017).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
