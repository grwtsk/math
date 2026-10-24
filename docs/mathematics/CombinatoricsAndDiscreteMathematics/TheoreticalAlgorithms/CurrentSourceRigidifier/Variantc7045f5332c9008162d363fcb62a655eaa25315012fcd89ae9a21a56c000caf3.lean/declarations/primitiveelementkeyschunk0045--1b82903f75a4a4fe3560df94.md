# primitiveElementKeysChunk0045

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55a48e36680115e3a06e17b5b9476cc36bb5e463fb4cc13773127eaaf5943e21",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0045",
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
  "slug": "primitiveelementkeyschunk0045--1b82903f75a4a4fe3560df94",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3162,
    "line": 3095,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b82903f75a4a4fe3560df9404646f558d95dc913cea36de49538b99d417a08a",
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

Occurrence: `declaration:55a48e36680115e3a06e17b5b9476cc36bb5e463fb4cc13773127eaaf5943e21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3095–3162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0045 : List String :=
[
  "shell-point:e11391d548b87801b664b80e73a680237e118ae18e2ce305a8fdf9decf979d63",
  "shell-point:e243499cfe754652e3805ba316341f05d7b09745adc23dec712e09a211755af5",
  "shell-point:e389d9f03b85ca7541806bd14416cc0ea3c26059e6b1893f3dea4b672915696f",
  "shell-point:e4c2b1383b80b9b3855ffb6a539ead8f325a3e13ec5654b88e9c3fa67ced1c39",
  "shell-point:f0d61b52522ac1a2152baf7e58d762a3b783e3f3b5abcbab20169db140941011",
  "shell-point:f2b9ebdbfb17014788d76bc45e39a6a866a51b0c84a11198609b4933d94487fb",
  "shell-point:f5b3a0a8c0f4497fddbc6d5ce50549387196a07ce4f326ca3ddc1cdc38009599",
  "shell-point:f60d8f6d82c4c0f86b91a29ca8f53d056f10c36f13fc8fc72ae8907303ff75d0",
  "shell-point:ff726610c4172f6487294b438d72d8c53f26961050b1b6179f88a16c2cbb5af4",
  "shell-point:fffa9b4fba3a61194583c71d1c8881b58532e79a7c3a7e367741756bd35e8e59",
  "source-command:002ac006fbabd03aa2402203b10e20bdde506aa6cef9418513a53c741c5b60f7",
  "source-command:006bc4ae59ab0f6c90bc72cddfa933480316cac0648dd39c5c93cf34b5bfa05f",
  "source-command:007cfc7ce4571f2cec4efd3499a224fd43681b39a0dfe6c19111e268ee6409ff",
  "source-command:00966f3ca479b15d2caac1082a914147cd8fed0a64715e0e463eb72c60d9f3c7",
  "source-command:00cc40ed3e89165f94db38218cdd4a34eabb7dcbe317c38824fe84de1df8d00e",
  "source-command:01128c25a3ba8a7e3ae3b203f8e02a4cd74a73e9ee18af62b2503dfd4be15c66",
  "source-command:012b1b9e0d548e4ac94497066ff0d8f6085cebb06cb79d616961229f480bf967",
  "source-command:0165cbdbfb1da9f7fbebb476be2e27b1478495a1cfcc3fad8cd6dde6e7e7f2b8",
  "source-command:01957401d4dead953706eafa43fc15ca7013b2e8cee85ab67c017a802953abd7",
  "source-command:01a8f93384bb3104fa2168271077f7789cbefa73fb89724554b2b8cd2ae38eda",
  "source-command:01bcee5c6f3eb4fe880d8bf817ccebed086bd340183f824c183e1ab1c408e4ba",
  "source-command:01c84b7d1d884880881df0f5f0ff1cfe03b24102928ba05e31172cafec1089ce",
  "source-command:01d5c6d1c4f2a8c0c47ce2f2561e2c7973dcae688093e5627307ab32a01d62cb",
  "source-command:01f5fa005d3e996ee05b034e0ec123ac85107c3b606946ea81a9059ddad699bd",
  "source-command:0217c2818c67fd848e6d3f15790f693e673c96f90bfdbc0f6f76a8c37a283092",
  "source-command:0220edf75914e2e7338d1547b1512089f59a4576bdeb74ee9d5390e1a499ab04",
  "source-command:0233d315c6612e578f693c22da4b16c0281491b4b2c5e8174f9e10c2dad7cf0b",
  "source-command:02453e9192903185928b9417587caaa4aa78d8b4ea3368ae9463371a1df27988",
  "source-command:02552eac3b4622531d07e62ec84257c0b4d01ff9a9d5d3ab1ac38271f4aee351",
  "source-command:027b37cffba8fa3c923464df5d4b630713606c919a3649f858566d99d27d148a",
  "source-command:028591c91934aba9f05ea4879dfee1128e587d358f03208e2f82a7ec31380fbf",
  "source-command:028b05fa0ac1fe89e0befc8f25f46e0334bed54b7cb986f3f701774af4a50f98",
  "source-command:02c6a02c6a4a15c3a3d4d7bd75a78ad8a9bd8ceb053ad9ff795f14dbf37f49a7",
  "source-command:02dc1085e202ed00263abca26f2c4c16210aade27fc78ecd347c528796da8cdd",
  "source-command:02fbb49bf50ea42eac3b04b83efd47c26fa57eb2ad52c795086dbb78fc31f5e2",
  "source-command:031695c6507fc35f0c276ffcb4158541a3aaed6d67f4a0ce53b96cb59b0d3a43",
  "source-command:032c62f0ca7a2e9ef3dff953e9121b5c3864813a2465ff39a06d44affe005246",
  "source-command:0343d027702ccf7ca4d4e5358998080a5fe99b9696b43246259955ecb3843316",
  "source-command:037dd90b70a77a038760ed2995bd832393e7a82ecd934e5b3f8d4163e8484841",
  "source-command:03c891fc941e9e54c770d1b8d2d42b46d975a27fd65a6ad77909ffab566b8056",
  "source-command:03ff65ff7db8a4e8b0761c7d0ef59e02753f9290732203758452c5a0dc23cb2f",
  "source-command:040925370cc2365724c71b7074e7d7127a505501aa37cd8e49a9c692f4bd75fd",
  "source-command:041348a3574adc2a2d176ba5740018004fb97f99547e765d16569a34ff24565d",
  "source-command:044052b2521321143e040dabfdc34630f75c334bcd444e17b17d6c052aca7260",
  "source-command:044b4a587b004b2884574f7f67f580955d670216c09433bd43537326b3e31579",
  "source-command:045ae3f620a92bd69c43386e6b0b07b6b30661944b79601e18a5ff1efb546b3b",
  "source-command:04631559cbba81fcce39cf8237b1645a8f7050114fcdea188e3905609527bf18",
  "source-command:04649e968d05b310a59039c7e716abf7369d609493073760639324dda171460a",
  "source-command:046e89e3c5905d219324a5a63d9158564485f176e0398f431005fca1f781b986",
  "source-command:048acbb4ea54940deb81a918e8735a9bad782e514fb5f554a1e2c2060360b2b7",
  "source-command:04ff0037e3a78de60213a335299f5f9d086c0d03eb82ad076589bf37e502ce1c",
  "source-command:051576e1a49a61e7dcb948fbd85bfd090ed61d9bb24352a1a7bb000e7453c499",
  "source-command:05299e5a0e6dc8efaa4a1b21f3a89d56b38f7e43dac0058b797c8211b0070332",
  "source-command:056dea8f6a6e73ead30a3c0e6fad8ce300c4ba3e97184568dc975f102149e42d",
  "source-command:05932dce30ada88917c3563fd72d5f460eabe0c1470c95e06fc1c8ee0c5e1f40",
  "source-command:0596c924a9ed1a288f4c6ffa5a23cfc3996c8ce57c8d6d5ecb9b4b83ede63ef5",
  "source-command:059be7b5a583b992ce12fbab6bdbd2d1c325b0b2a5114adab596fbdcc8810fba",
  "source-command:05ad3617e5e0ec1979caf308763f783bcb62f96916a0b73dd18215fc44b7c067",
  "source-command:05ec4d112933c4bc7c466469051bf1c75cc55f120f98d014e5685541d0f6f03b",
  "source-command:06126b39f599b08d120af71869471060225bf4fa7e885596cae248c39d516505",
  "source-command:062e9cd44fe7b43908470493175b2e9332c331677935e5cb78a86c27b7dcf135",
  "source-command:063d9eeae3856bdf212f4c39480a3fa24f66efe8f330be1818ab8a0ad589a608",
  "source-command:0650a18c680cca34a2b98cda2750bf8f2b72673cce94395c58f39248f67a7da7",
  "source-command:0655cedd18807b98f2fbf0683e62b1a321ac11c305b3a6a9d0e13eb8266584b5"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L3095).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
