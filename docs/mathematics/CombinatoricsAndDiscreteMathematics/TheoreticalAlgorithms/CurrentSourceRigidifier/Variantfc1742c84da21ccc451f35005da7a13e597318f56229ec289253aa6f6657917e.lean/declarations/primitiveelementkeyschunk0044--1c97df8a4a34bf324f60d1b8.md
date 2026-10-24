# primitiveElementKeysChunk0044

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8590293c85c0d917509f3c584383729c9bfe653e1b505e21b5114bec5c7f5417",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0044",
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
  "slug": "primitiveelementkeyschunk0044--1c97df8a4a34bf324f60d1b8",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3084,
    "line": 3017,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c97df8a4a34bf324f60d1b8b518d17472cd914b258052d781f255aa98382428",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8590293c85c0d917509f3c584383729c9bfe653e1b505e21b5114bec5c7f5417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3017–3084.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0044 : List String :=
[
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
  "source-command:0655cedd18807b98f2fbf0683e62b1a321ac11c305b3a6a9d0e13eb8266584b5",
  "source-command:067970d33f3533681fd47c749b47a1f7d6df2260b7872c61fa1c9f0df5565d25",
  "source-command:06b0a6a50c789b582cb5b41b7d0a47b87f255d87a32aada7aa7886f0a91f2689",
  "source-command:06c58869cb41b4deeeefcc1c2f65175a9abac2e947bcff12f37d19cfe6d35d88",
  "source-command:06f72eae9eb4da1e19e93ddcd92c314831d412d04d36b4a2943e5d691e23ab71",
  "source-command:0715a21841237437d6aeb6b3fda87f6040279f3c2a66654d3740db79d2d478b6",
  "source-command:073b70f385a6e991581f27f41c4f0506c15a2653ca614f0dcfce25b50b21cc79",
  "source-command:07683647f93209cc511192cc0c213afa4d096fb2f897df524cd5439577f8ca0b",
  "source-command:07bbf5040ac4d9135bac29128d88a4b1d4dc847e80cf6f1fe289c68fd9a68101",
  "source-command:08134fd97053a011e56c210dcc16dd475846f9ae7fd5d22b868860896dd39d82",
  "source-command:08162ac06a76ad117053808afe9b877dca0bb89a26ae0b9b2581843da670e83d",
  "source-command:085c7702c7c8a3cf6198783128736ea60df7aa3750887ed6b2884251bd5a8d6b",
  "source-command:087947d9eb4b073f8a4f959a9dd550efcfe61c79cfc01cd6ae14874e2ca0911e",
  "source-command:089fd2fc8b6175507b38a142a42ab49f2808393ba0f11a48fa0ebe1b6b206be7",
  "source-command:08d8c00e42c20d19ad51e911c4334344e0c7304c1854c04968cd850c8e774b12",
  "source-command:08de3f858f327e991fa09fc01e80d6bdb78733593ce020b9815c7423b7e2f6fd",
  "source-command:08ebe2902ce4513f2f841f3bae241799f99b2a7a3dff8a7d724d7819004d53d6",
  "source-command:08f9def156a622872db47a9cbf25c2c03458f101f5ae00e463cb2f9b4fb3e42a",
  "source-command:0913c603ca3caa7b8a8c70620cdcbd9d83ca48407a62dfe57583b8683d57bdd1",
  "source-command:091c7eae132ac76a95bc8ad27bf68e8a576481b920c48e89363110dd9513ea03",
  "source-command:092a026fcdfe2e2c20ea079f66170c471bd177472d389070d0e62274216a626d",
  "source-command:098cadbd68419b56fc8a25495312589c672b7b46478bd24d927de79dcf5922e4",
  "source-command:0a02b98c6bac8d42c4454620b0745b31f562db81393942a33e2ea24bde409bd2",
  "source-command:0a3ac3e6ed2a5b69a84414d8809cfec5754625b21e3d1ee20ec31d5ff941709c",
  "source-command:0a484390482f4a8a6d15386ff8736d96a75318f0d3d478fba4aa621e20669055"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L3017).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
