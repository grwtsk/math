# selectedCandidateIdsChunk0006

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cee4e863692a6d853033b1aff9ccd5268ab30d85fedf1c0bd08eae37d1d77b8f",
  "kind": "def",
  "lexical_name": "selectedCandidateIdsChunk0006",
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
  "slug": "selectedcandidateidschunk0006--74ab06081bdea2df7cf2919c",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40280,
    "line": 40213,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74ab06081bdea2df7cf2919c1d9f0790772bbdb73c8e8ee05170b2c05dbe843b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cee4e863692a6d853033b1aff9ccd5268ab30d85fedf1c0bd08eae37d1d77b8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40213–40280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedCandidateIdsChunk0006 : List String :=
[
  "name-candidate:75851d093430a4fe7959d5c0da7e5060c900d23e4c5b0f85c428a404420151e8",
  "name-candidate:1c9aad2c30d19578c21244ff292b43c5d35ee64ec838b51b5c87bd10cda80791",
  "name-candidate:b6cbc81d32ee8b84345c339753d983e8ecad99661a74e084acbc1a133de6d547",
  "name-candidate:758b738f4d9a4635742de7b3c0db5d94bd6b84d22c14c132fd5d9a604b015078",
  "name-candidate:287a2c81e8aefa2ee5e3534ce0a6b2d07fc0be739d8baa5641abd48d7c4df3cd",
  "name-candidate:99708db9fdc5679d1e2b955aa4915aa101ffb758863aa5cb06dfc00c9f5073f0",
  "name-candidate:08537d367ff5b0edf26c134d42ee61490f4897da82d4b340ab0e3fb9026da0dc",
  "name-candidate:2b8fe319d394b6882ebe76bfe45c018eb5d4e5573391a525832876ecf49fcd0a",
  "name-candidate:a2aa7e1ed5676497f027e8e119b68e7724675e4cb3db9d14216af7c3d4a19d35",
  "name-candidate:903feb8b0adfe3338ec33eb84111e7811f460c0d3df38cfd1b73a346aafe1221",
  "name-candidate:b14519d927c1d5ffb33d6df814bf3ef67ada2c85ff9a704f29d004dbba3c9748",
  "name-candidate:0c669351cf4cd44e4cf2494fae9929a34d952912038639221c5f3e6b65ac8359",
  "name-candidate:41dfb956713cd27b0edb44a17ecb80eb95b3303a46d8a36162b3b988f75c9ac3",
  "name-candidate:3786d70ad40cf11c05da0036b6c9befef0a11876c7111dfb4944209a7f7a48e6",
  "name-candidate:17167ea7a4dc162ce3febff0f3f28f53683e0f6f7fdb2f36dd96278e9ce9246d",
  "name-candidate:a1c51108212495e938469421b4e14af9f34ad168adfc92cc840d632dbec85880",
  "name-candidate:1a1256ff75364125a85074a0573d5f738bb49e26317558ba664f0dfe6901488b",
  "name-candidate:fb249ada41e650f88512ae1fb36b94bbd59eeba665fa9130cb6e9c70ab43acbe",
  "name-candidate:f76c15874e30b1e8a8c3ec12933904c1086ee5d6bcf428d1307710106b55c9f9",
  "name-candidate:05ed355e4868bea864e9389a43a686e297f98e110b1f90a72db77b912c3d9117",
  "name-candidate:cd1dfec75e8e589d4f12ad7da25f66771c2076a1da03685b4975e115147c58f0",
  "name-candidate:d3c05bc880144b7910f9c1eb88707780c5a5f0f98ae6a68a991dba6b3b9aa400",
  "name-candidate:172b28fa1a2bb3340456c5d4de8e4b5e8e8b930afe126e93eeffd9629500676b",
  "name-candidate:080cfcf0c0fb1d1b1ecd7090c6fabb2d327d056ebee97a798828e5a3ae1bbb54",
  "name-candidate:2be06285c136fd8df77a2617734f94d428df3ec943e7eb3bfeee41290fb9667e",
  "name-candidate:ce3e00d60b19a8fbff0d6097f00f2820844b78b89960600d6eafd506b274242b",
  "name-candidate:c23398060251fa4cafaf3f39485fac7b366ffd2dc3d228a18cc02a191854a6c0",
  "name-candidate:4fa607e50c5083e701f12be5411c944705a62c1c391628342202d4b78c3cfef1",
  "name-candidate:cdb28f926bd28a1af14ef977ff2192cfee7aabe25a3597c342491a03fbc9c076",
  "name-candidate:4f73907a290bf948e490b690d37c9f75af2e65d706c757c716535d1da55b3ec6",
  "name-candidate:13899f4ef999b83d6113c5dc5f037a9623b9a7ecbd1a15883023eb27112b5184",
  "name-candidate:f0f931d113d9693298c56f6f40bcd546221de81cfe6d35ea90afba4cf88e6160",
  "name-candidate:1e72db9e51da5af2b34e8261365b469b8c03fa71459cee11f236975a1e34271f",
  "name-candidate:09aa5e5f7189427cf6e59723a73b942003ad78c1ad43b47f858c0daa9401530b",
  "name-candidate:89b231d246fcde2464ef6fa0c03188a169dd43a93378b867b46ad897f27b7c9e",
  "name-candidate:6cd63bc3ee3d83931a417fad0422ced757ef5a4fc495297fa46eb3a0ac481336",
  "name-candidate:0983d178a51ce04524ab94cc53f1d97a72e3094e05e27c5cb96a661f13035f79",
  "name-candidate:b4c880e5ffc7cc562ba105ed12e7cdf6152a0c930ce8f16934d9e2999bc3e412",
  "name-candidate:d6e3b3ee7c44ff1c07ef67c6f0d9781b19dd95916bc784bf83de5ee2d0f1feda",
  "name-candidate:1d6c21aaaa555b2959b35bb8b7cf9a0174312d310c5a9ac6e0c90409e78ebdb0",
  "name-candidate:b6fda83d34b98d51d141fec278437ef1c30a3bf90f7f014d9eed93de881fad0b",
  "name-candidate:fcbb171b53d83ce6992dda27e6af8a0b2d0db46cededa1ac569167c218f21f15",
  "name-candidate:e35e34e35066b26686c97d035d2ec2236d6fbcedcd6c518ee12cd757818a5538",
  "name-candidate:2b6e7edf7f486c2d8734313634173572a3d90a574253c98bf59ec53daabed878",
  "name-candidate:2d8244566e463970e85cf7c0384ac9dff06858cdda848299f2773c5b7b745015",
  "name-candidate:35f2c8193a7457e0a000d438aaff95a7ba3c7270c5be60a2c0107a6d2eed40fd",
  "name-candidate:bf633433c49c058e0b0f1d1abe29d2e50306484cd1d1643593e11a190fd734b9",
  "name-candidate:962b3cf6a032c3582748510d30539b8ed2402fffd801010f38dc4c3d8d1db985",
  "name-candidate:e6d0d5ee0524bf6435eced5d8b890f74e07dadbf4b20e9ee7d43bdd233d29aed",
  "name-candidate:f890c6e7c527de63613c2c0622dc4e972d48167eacea50707fac811284d41784",
  "name-candidate:5c5453fcc0748414314509b4e377b52adc50c8741d20e3805f668ebda06bd76c",
  "name-candidate:8d39cca22914ad29a04c4794ecdf16f1d3f777d867bb344851204b0e1961a102",
  "name-candidate:588869609a592d4d430bea919fc62f4549c35b774595d272b06253c5fc014606",
  "name-candidate:9634b388f0eedaa5feb99d1925913f22cafd87cbc4321643f440826a81a2cc20",
  "name-candidate:6636fb2f55147725950013e769d445d8ac7abe35590c4e5e3e82d54aa7bce5e0",
  "name-candidate:a2afba5c6687b9fae7dcc637163d95b80e8b2ddb66959611eb3058e79c678a59",
  "name-candidate:5c608be9c3882206e329d43a4f3b30bf98ddb883f6efb4613f196e820b23c7c1",
  "name-candidate:828d5931d3f991d5b71ac43f0e32703c4505e43142bc1b9b5c8fcebf99a2e6b5",
  "name-candidate:cf1bb548ce2549b2f226a38e6df4d0503c4e41f0c319ccb526cf0b8821d6812c",
  "name-candidate:f246352528650bdd30fcca414d3985b380bd42cd300765c10627ebc9047e1aef",
  "name-candidate:13f17fd6ae97f275c014a23a56b25000c1962e63d96db1bad26248bfbdae8769",
  "name-candidate:a72ba4309a975110c51591179477a69adabec5a5ff470abe4e676a517e3256c5",
  "name-candidate:e0afcaa55c1e08dfc3b24d8272689e6796375359ba5ef22c308b9a2203ef64e8",
  "name-candidate:cc55ad5ba9d4b41d43dd858089bea8748bca0291c2592e14ecc0d074751f7c56"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L40213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
