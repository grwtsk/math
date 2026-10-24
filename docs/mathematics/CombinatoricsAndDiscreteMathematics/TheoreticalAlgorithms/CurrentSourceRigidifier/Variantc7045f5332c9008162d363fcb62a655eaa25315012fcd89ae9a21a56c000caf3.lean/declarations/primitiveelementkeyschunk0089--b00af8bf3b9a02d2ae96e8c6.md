# primitiveElementKeysChunk0089

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe6bb4d9bbf61f84edd46d14b3a9636bda2bb4fca29eaeb3a49cf0ced17512d4",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0089",
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
  "slug": "primitiveelementkeyschunk0089--b00af8bf3b9a02d2ae96e8c6",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6154,
    "line": 6087,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b00af8bf3b9a02d2ae96e8c674199aa0c090d325420c6f1dd8960d3de3dc28e0",
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

Occurrence: `declaration:fe6bb4d9bbf61f84edd46d14b3a9636bda2bb4fca29eaeb3a49cf0ced17512d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6087–6154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0089 : List String :=
[
  "source-element:d20da1c2123e76524a148e3b2cf4ab7b400cbe159875576079a46eb29b4b2927",
  "source-element:d211baa9eb4e899c60045d086cab5816a6ed5fc60f5380a3ece80561e860e527",
  "source-element:d2202601e30780fc46a5af09da2f54bd798fbd558aebe99bdb35ee5a64f9b1ff",
  "source-element:d225486b70d89a96550f6fdb47a543f7f0bf64b7c45ecfa3fd9bf9cff44505b7",
  "source-element:d2530d8ab20519fee1bafe3cfb55684f39329ffa49ee9a5b88dd24cefff546e7",
  "source-element:d2609dbb967347ee3d3e7759e77b14dec5eb89fe0dd30d89bc665c5b896048ef",
  "source-element:d262793a634b3ec1cb861286705537e6490ab8e779c669a083d32931755a2e21",
  "source-element:d2e4097b6325b9ba6542ad9b233c95fa43e0e2d2f65782853569528096c46e53",
  "source-element:d312d00c17585db87b03f51cd0fa1636ea8161cbf1e0ae08902daf77902b0827",
  "source-element:d43f208a234e5aacb5ad2310cb908c3484535e573076f80b82e4fce6ff60edae",
  "source-element:d449506b80dc4719c459943edddb658f326557b00e457964b14d584fc6a5eb8a",
  "source-element:d4542462409029373a1ab5e733095faadde0efd8a90b17add232facf7bbcc298",
  "source-element:d46848fa47c0428b52778dc564b6a0f039179daf0e2ddc4702cc3bcfd699c8cc",
  "source-element:d4a2af260fdf228a34a925116111fc6cf789ed8bb8d6e99edb8344f4e250c3b0",
  "source-element:d4bc97634e0160e7f32c5a0c9d01129baba0c909f4c68d559816cb65cd13f241",
  "source-element:d5682837c5b532ae430d279608107913ae5348331ec34e373a9f04e050ab0f2a",
  "source-element:d5a7dc10f3c5e7cfc5e6278dbf5dcff5ad5bc626903b604070d672749e52bf58",
  "source-element:d5d50389839bdde1654f3a58bf9af6a283165b4a5f89e8c25ad6fb8d6d2cd6d5",
  "source-element:d5e556d6cc21b3c965f5912e971d15bd3bc85d0f498ac67d3a2ea5d5b2bfbbfe",
  "source-element:d5e7e9c251a89aced0501b1a314548f68b7601421bdf98a65e4b9c082112f158",
  "source-element:d5eb84538c101b67738b6013dfe7011c06b7041ffb191206dd2710675194df73",
  "source-element:d5f40171238ad61d493e24412a7acf33d1f404688ddd910913ceb0c59798d058",
  "source-element:d65e92d2c755b99990f48464e1d6c6eacd47e81fa9b7bef8005d041d4d3ffad3",
  "source-element:d672dfa9be4bc16acfc9bcb6f40cdd96e80a6f25a1952a93b80542271362ae07",
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
  "source-element:de6e840642e87c0271eba94d3e2886e9a32e7f219abbed14a9fb9284a1c8982d"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L6087).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
