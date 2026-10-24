# modelSelectedCandidateIdsChunk0001

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9f1a7bb659b31977c254fb3e9d32166382cdc5facec5e3e0f194fc502c6a335",
  "kind": "def",
  "lexical_name": "modelSelectedCandidateIdsChunk0001",
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
  "slug": "modelselectedcandidateidschunk0001--7e4bf14d55ad227323c6ee49",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42078,
    "line": 42011,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e4bf14d55ad227323c6ee4916227aa44216f4e68163233bc016871692cc86ab",
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

Occurrence: `declaration:f9f1a7bb659b31977c254fb3e9d32166382cdc5facec5e3e0f194fc502c6a335`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42011–42078.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelSelectedCandidateIdsChunk0001 : List String :=
[
  "name-candidate:f5a10124f6de85b179fccc8f8d4c10ec5dc15041bfb2594d7211b51d5192ca4e",
  "name-candidate:1d02bc90c6f8b837ce9013d30412b9ab85aae7859f70a9a88c5c16d2cf52a6a4",
  "name-candidate:36324becfd007a76c6b913dddba33e3fd62221d7b965dd8b2adf327df2a0d384",
  "name-candidate:197c9344a0c86a2fbe77d0d4e2d00a6c20957e02533e961fe181b7ae72cf6551",
  "name-candidate:5aaaef4b90d53c3987577568aa8149be760a89eb74a8651ec1994a1a14a31d91",
  "name-candidate:def2627a17325c1a39a5b68e71521a6556977de08478b77eb4625c3fba12b4e3",
  "name-candidate:48fc470566a7442eaf1fb3611086130f0aefdf57b6fb65b400131d298b13926c",
  "name-candidate:b0ea48bc6d67d8f0af9fead3615e4a461ffe192b6035a2abc47292dcf1c604a7",
  "name-candidate:0e5dafc754aaf4fbcb56ca2ec1b4dbaef8013c9100a4dc37cb80309d2078cca6",
  "name-candidate:503c9c6f4c1108a495f3ec7a8d8d40132b37b92cfb91b3f54077cd0496560e75",
  "name-candidate:e664e148afd1a6a2e588a6d49c3a88c9e026c13febd442bbd79329d175809898",
  "name-candidate:07d74d9edb11712088a51f066a0bcfd7e5d5c256cb15b5061a467212a9730568",
  "name-candidate:5fc4f8ef9b81c5d71640c734756db438995362bf5b2fe25bb4f9d09d7046167e",
  "name-candidate:9f680350923d5dd4c04fa6998ae3f7d3784a22bd96c66bb60bb9fca8dfc22174",
  "name-candidate:159c8011df43e42c75a91107ab9aa49f203d8ba82d39a879956d82fe6e2da7ea",
  "name-candidate:47158087abfa0edd51bb410811a92778def0ba7cbb1fefabcf99e903f5c182cd",
  "name-candidate:94c7fe3b2603089552ae3a1c01b5928869bef0ce468fe6b132bead13afde4356",
  "name-candidate:bbd6d46ae4f44d1f9a7aba857ecb2aea9fb2c158bb60920ecb8ad4ed88199995",
  "name-candidate:8a36d27a3019b168e850d09ee108911aa308ab6f27b39db1fa4bd478479a0f6a",
  "name-candidate:f0ab045bf62183f6ab8e0728ce882c9507155f465d316436a324f55ae37135d9",
  "name-candidate:500e669c016fd2420818a35de6331071b1f01f558aa77185d3cd98a94b19f1d5",
  "name-candidate:07c6c751be2a72311e2ef661f56713529076447fb0d72b6d0b944c4533bff45a",
  "name-candidate:e7c66117b76f8c3237fb2d9135bfbe85932dc0b1b9f908cbfb9fe3b2b7e19c1b",
  "name-candidate:7fea81934265ad45b73fef404c179941a76275ca7effe9343cfae8544e27d422",
  "name-candidate:389b948c30ec8ef98c6ab4c8c7665880278384b9745c43575fdbba189a247868",
  "name-candidate:562fb72890fc1475c90de82a89301f8a92ea2b72a8c0f321317e4035fac6ae93",
  "name-candidate:6b0f7f524abdc18fe7f7a1c67ff4a139f78d950af2a0c727ff8a676c3362599d",
  "name-candidate:9e65a7638782148c57f932584a40108e01240b0df241084bd94291501d2e532d",
  "name-candidate:20ffac405c1196bc83dca7101f20db4d9feaaa92edb8e0d30bf30b4f1b6e3e56",
  "name-candidate:8195b2a1cf76019f6c39e82e7cf2429c38bab545d6fe77619f2c5f1109280981",
  "name-candidate:9f361b1c2e0644a7932ba3d8242a028ccd1a69667fac4f49edc5cf84e5b97c11",
  "name-candidate:f77e5907ce40d530de1cdc90c2572005038bd524f98c8cb17fe3db5dc1f8309b",
  "name-candidate:d62d32d8cdc010ceba1525cf786d20868da20017f8114aa3390a122d73381248",
  "name-candidate:86b791aea4558f1a9c30afcf48e61271368755e56e97dd7affec4cfb0f8c6da9",
  "name-candidate:dc6689fc1585eca9968154d0eba2467b0f903591d954b0f4a5e58a0ffe74365b",
  "name-candidate:bf04d6e81aa907ce17db2624ee1756f14abd82ae75171938cf55ad969b9509e3",
  "name-candidate:082fe9c2ee6a15a28c68ac2fa1acf24ecf3eb5b17ef71adfe00090f5533ef1b4",
  "name-candidate:fbf7caa22852fb7b14ebe043bd26dd6e5a99216123ceb0fc2a77fa21ea58a781",
  "name-candidate:85429783f3d146e224899a342b9020a30358dcbfcce70b4c4e2a0ce3d0b518dd",
  "name-candidate:ff606b84bf9a7229bf43f2f3692ebc4e26e00c34bb0f2db824c2bc132ed84e56",
  "name-candidate:9a8200a9b417319e8575cc06a068c7b1d1271943f5bc12382e667621737d9993",
  "name-candidate:89dc59da09dac4d7b06ed2f7a4f9c6f0146214cdc9ab3c5d7e2854d1664adf7e",
  "name-candidate:9a0c57aab66455d4d36daee4a3c269a1af618a2b3b02c3a56bf9fe584fb742e6",
  "name-candidate:80e748a705b3f07d62b59fd1e1a9264ee9c00fa3cd7ac2956194c755c24ccc01",
  "name-candidate:18998d06225cce59296a0ec6c0ff0d335ee85264fca3f7e5532258b1f204aaed",
  "name-candidate:2f63a94b189b85db138c808addf6a6c40175cb624b1bde9afb34594223368174",
  "name-candidate:8cd2b8cdb10ef5567b9c62df984476b423e9c8e90cf1e66e56aebbe7cdd13fae",
  "name-candidate:6717b4efd1bb060c205bd71498ffc12d452be8e3c8a7b16ee40b607a247ad9c1",
  "name-candidate:77f08e123a4a0ff6f27fdc9ce554a8795bc4b4d918d6426bf923de821f1526ee",
  "name-candidate:f8b8b52168e2678982bbfc16ec57d4928ea3afad4e44604f2e26a980c694080f",
  "name-candidate:3f7785ce5c9dbc7c4d68ae7f3114f1ef4193200add2f0e0044b9b72957097d0a",
  "name-candidate:c5cf36321d55e6597b60811e97d8ab46374f1ac6f34fa1ccd282166f314dee5b",
  "name-candidate:834f8e612dc7c682808f0483ac81a78ffaf5db0aba29e6274ca106b7163f4764",
  "name-candidate:77c626a3c127ddba0a826fa9636eb4016dbd8e321220b8a101c3165a0fadc450",
  "name-candidate:0895130f7c65d0168f19b38b97372c0d33ff6141b89838c714ea5155c0325a2b",
  "name-candidate:0b01699bf673f8b13b04053b91e4fafe3a2ff3a513c43c8c900c024f8a73d8dd",
  "name-candidate:c2f6a8be99bb8accb276245d5bca8a028c72245e555d9a4c15d8cf374e96837f",
  "name-candidate:1bd699339337e432548b558fa60c9968c91daf8dd8de68b6704625ada67c122d",
  "name-candidate:d58d27fa3ab905d9f1b4304eadac07cdabf25b1d7f91c9859f060fe04d3df32a",
  "name-candidate:9adfb71c782c55ea2dba3c77d5a741f3c1ac5ea69b758a82a286cda18beac417",
  "name-candidate:96b09b3079368c39fcd17cf501e304c883a5bc29563a5c93609c749975268adb",
  "name-candidate:c65729e3a619df7f2321240051ac049d464150c0412b4ab2b7d50a96edeeca3c",
  "name-candidate:481cb78f2e29ff7c907fccebe4e30b560bad6b0d419649ed55948c7cc5542ad8",
  "name-candidate:dda49179b8d697e3f59c5b1e20d439a183c3c4149bb1424b2e5bc5ddfe472d29"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L42011).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
