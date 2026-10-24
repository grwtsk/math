# selectedCandidateIdsChunk0010

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e969fe2c3415144b260ee01400d9df737fe4e9297713bbe701f8826216732e7",
  "kind": "def",
  "lexical_name": "selectedCandidateIdsChunk0010",
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
  "slug": "selectedcandidateidschunk0010--ad88dbf8ebd155024c530362",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40094,
    "line": 40027,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad88dbf8ebd155024c5303624d31e7a369e46e567fc0f22b8e33a5f58ed49f4f",
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

Occurrence: `declaration:4e969fe2c3415144b260ee01400d9df737fe4e9297713bbe701f8826216732e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40027–40094.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedCandidateIdsChunk0010 : List String :=
[
  "name-candidate:fb300b6e1db0e42b288cabde667990ac2c1e76ddb898837e1fd2d5338c6c863c",
  "name-candidate:37af231994438db5f7727bdc888dc02cf99355efbd1cef0c9313b0742ca2ed67",
  "name-candidate:dbc0469d246a3b0e464a2e968a03eeeacf84e63c19bd9fcd5a4bfc96ae0c14b6",
  "name-candidate:fcbe8741be19faaf6069c149012ba908818115245b867455cabe004ed9216bdc",
  "name-candidate:385d8eb540d3ee26f3358968b80328f9b9e51793f1ac71701e9bda7cdd83b266",
  "name-candidate:0abb07577d269b2a8c7ef4ae15303d23273fd984c454f9d45496f902fd816c6f",
  "name-candidate:1aa21675dd8526a1b21af1586a37cec567f291ae646ae63cd0c14a63891c9df1",
  "name-candidate:3f94263ec66608da9f0a96b7adcde5aae53e05c8bd2f27bb302edf62d450c4ac",
  "name-candidate:d791b476e0469141a43c720d69e717a0bce8b2249de3d72e257c02748a6701eb",
  "name-candidate:8ada4e42f34ce6f46ef45417a4bceea64e54c9a4da3726b1149ae29a6ec6ffbb",
  "name-candidate:a067d7a3ccbd216ae42787203a33fb41fd8780db17e8ea48b936d2e9fe2abbad",
  "name-candidate:136eb3905cff48f984335500c36fa10ded1ad04d54347e08580f021347c1d539",
  "name-candidate:bbf47dbda7b69a57a2c2a5848d14ed0ad008b707d13ff7daaef656c10232649a",
  "name-candidate:c276869df7ea8ab02a7329c0b81e7c1af75b32b7c9b674d77560f08d0c131afc",
  "name-candidate:3cb6fe642b3b7d647a4bdb4f02056cdac41cae6a0a1f164d5311333c385d13c9",
  "name-candidate:6663a4f67d17a05d93f0a99c67cb9569ca0b6c27d4d62ffcf4dcb049f867c4f4",
  "name-candidate:1f008f15b4b5c0f3368da055daeff8b8edd855444ed5f27bb1d96f1ca4f3c569",
  "name-candidate:f8094b3621d68bae3d99ee143f5354eebdc9cc13b1836a4471246c5653b041ce",
  "name-candidate:588a00f72327f2553ac608fe7b9051655f62e6cb99741ae5b9f09249b4a41338",
  "name-candidate:b5d67c625c5bf7ab0d0e5714a218b4fbd108a5f18a0b6f49a86de6d7c069e896",
  "name-candidate:2fa5a7e948a444229955b8f46291eaa8fc58f405f697cabf3c85cdd7e59987e5",
  "name-candidate:4452098f0a0f6ce31e72cba46f1defc300c505e8bc904b0e53ebe61b1487d5a9",
  "name-candidate:687e6f0fb7a8021d01e57dadf1306d44d31e122bd91bb8b8dc27de8555f444b6",
  "name-candidate:0d4fa90c2861b497c1b258aa9528b4c5cc6d4baa8b56706bfac038018dff31c9",
  "name-candidate:b76af0c647d776afc9fc2b9027166cac42c79cc7a9e512f3797a6713bd40b7d3",
  "name-candidate:6d1719ac141bcb36ca8d911d23615ae6e08a6c1c92e411fd0eb408b3c5bac04a",
  "name-candidate:d1a6ffdcd6177f59cd65d8d06d2e14c00fcc56916076fa6518354b66d362080a",
  "name-candidate:311006ccc20ad06f922a86193d2f5fa7679cef0a4426619ca8d1b76cff4f5f7e",
  "name-candidate:595c2ee952320834941e405a0eb37456baabc8af17f94ddbb940e80d57cdad9f",
  "name-candidate:6c985818d263d0d2b696305c9ed0c3301a6def792623d0e2e681b3f88d298d3a",
  "name-candidate:bc825d0a7c3dbe669dc31ccca829cbb1f614ee4fe6ba0b742001b36762075368",
  "name-candidate:c49c60e4f03cab90a681402a5613b3da0ce297f1e01e022213e3c2857a35ac17",
  "name-candidate:00e031375da1b170d2c12549972dda05f612dbb6b35089861a13ef4e80336bcf",
  "name-candidate:51780da1cbcb2200385e7880809781f8d99ac232f2b70116f49837733452d33c",
  "name-candidate:1c840b4492ad1cd0752ef8cb6f27a52636365a4d77223b279015acdb49941f17",
  "name-candidate:6a59680b1074be684ea9847a9aaf80dfd153a0d86731b4031d7975a662325ac7",
  "name-candidate:3e3fe02bc2ba11309147077ace0f964a31b4fb3491cb34e9d130513a7a13bfc9",
  "name-candidate:b352323b0ff06fcf94ba73631c61353462bbe4c8e074bd426dd71b1ba78de673",
  "name-candidate:9552c0a02c325d874c57cec7a3661828bc6e11dd63d0cc29692573aebccd549c",
  "name-candidate:952874a1680055295360962adae31a61016e863a3ab9baaa9e693edfb8c430d5",
  "name-candidate:47b576039f4043d3d58aa739e78844c869d2462927b8fb565e2a8b7e5b1b949e",
  "name-candidate:59fad7970a023d7cf50b3dd27860744cc79d0de571e4d231bfcd5172e1d817de",
  "name-candidate:536a66d52676cc89fb95188798e40570c6e0a91c260ad5172365b614d81f1408",
  "name-candidate:d120da175609030983d399d2967b0a7e40e12b1283e200444d96b528ef9c31d7",
  "name-candidate:372f1bfb3c759bde6cd0760738ed23b5e94d192d27c696cd4a4b8cda0566c5f3",
  "name-candidate:a784651e80fae5e9e3a50c51c428a02af6a57d92077de693646a067375286608",
  "name-candidate:4603b608838ff5e97d6b9fff39730cf106d7fabf2c39457452eaeb3f0bf70a32",
  "name-candidate:ddf843dffaf684d06a0627f0e0f3173ddd703b10e7161d4bac70aaa75adf8ca1",
  "name-candidate:bf66033f5180860780d91e715a80dfcd0d5ee38f6f6c65ae1fb12b8ccaf0481e",
  "name-candidate:0975957067c74b698528af0e49dac299709d36d38ff7dab9a34ffb3447fdda50",
  "name-candidate:745f5906e7e20bfc2aa980792516ff3d13e89fa5749c6a925edc383b263dacee",
  "name-candidate:164d6ce0c8a82e57dd2fa94a4d80fa52b9fd801f35357770679a377ee6b5ddb2",
  "name-candidate:37a599abed770f83cf883dc3df8ac56f50a2aa7537c511317ea95a21677175fb",
  "name-candidate:a19657218526a401c2a1a344e094a71f9b37902ac6d39eef983b320037a4b4b5",
  "name-candidate:13eae17d67ca3348b9d9a640d3e9d61f42f38ad8b9014eaaeeb8d64aaeb84965",
  "name-candidate:dd604e1791f071e0a0c28d5b6e478a1bf16af21669386a367c8fc980e6c8ffb5",
  "name-candidate:4cdd576d1e5aedae944f57042fc4c0c9418215d52bd013744a9d1d913e186632",
  "name-candidate:4f98f793fffdc8267e8238f5341c8d0e4a97d396f71df4f8e564a15562ffdb37",
  "name-candidate:003c0d0049a78bd571bc99c78d737f845bbc8d893c49a456b1e5e3d6e6685e35",
  "name-candidate:8f140d15a926c405fc46a4be0e225c5544012a8dc541b2498d0466f222e6acb3",
  "name-candidate:813aa94851a67da546b41c3b44e80c1805d8a1bf5b796833d6eb762a654028af",
  "name-candidate:945f2ad68b9170444b6466c264155257163d23e0c52b9dfc44a393093710fcb3",
  "name-candidate:a2f96894ce8915e79428dbba890d663f376e04a525ebec9ad0fc7a1070ba2a18",
  "name-candidate:f3724e9ea5c30f279dfa4ded5d51cc6e437987788fae91a79f229fe8c8edfd5b"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L40027).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
