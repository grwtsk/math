# primitiveElementKeysChunk0044

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e40c9cabc7f371baf6031e025aa67dea34c8daf94d3ba82bed66c679ce1b4e08",
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
  "slug": "primitiveelementkeyschunk0044--0558779b3b77e949caea1147",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3086,
    "line": 3019,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0558779b3b77e949caea1147513e83e1def6a9de037fd9442b9eb2bdeac15360",
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

Occurrence: `declaration:e40c9cabc7f371baf6031e025aa67dea34c8daf94d3ba82bed66c679ce1b4e08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3019–3086.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0044 : List String :=
[
  "shell-point:1c730a94f67c583fc7067d87b57595c2f9d6da2f9fdc4fc9500fd39bc5edc791",
  "shell-point:2052002409de3303dbf5e7fa4f52bdb3aaa98a05df5727d59404fe374c951a0a",
  "shell-point:20d5beb190e88ad664852e3229b9ac8715217e2265704bb143ca5f1e2d89e7b5",
  "shell-point:2c363052eda46316b830e075909e412bde57e8f2bb70ec06cc201fa6d3f5d16a",
  "shell-point:2d6713ff474fe05d6ce2f992ca5a8de61794b750a8976730df5113e86a7f611a",
  "shell-point:2f09386825fd0d6e13946d690ac1b20fd012846f7387e5e44325c3081ddd2edf",
  "shell-point:3169cd066cec8f411b20404a24da2f164ce201fd5998776603fa93d0521ebc2f",
  "shell-point:380a454bb3fb6a2e3eb5a0718f40c7c94d6665317222c51f47c7ffac9c447428",
  "shell-point:388eaaa48723f8e657898d9a15053f47663e41d7df6a46995d46c14c6278ec5a",
  "shell-point:3b24dda31eaa3c82f0c350f82896c8013c068a87ee24c43e0c218a994f0fa18d",
  "shell-point:3b334e59349fee8971f6bd92f9f59d73a9648e22f5cd9a8d4d48a35922e311fb",
  "shell-point:3ceadb845711c10a1cc91a4a4a785bd597e7a857874d8e2a2461e8e9ef9ebf7a",
  "shell-point:3d031099d658bee1a36df828783298ed74e225f6e3967f7162d18c957dc1dbcb",
  "shell-point:3e9a34a841c7a1b4f44f8c208bdb22137e4122939c755d5d6e24d343285377a8",
  "shell-point:3fb07dfad64ca454d12eaccdeaffa13836b891c1d7405a306cc50b95c114d821",
  "shell-point:4040e282daef7fca47724b6125173f64a3650e2ea959eb3e3aa6883fcbfc8430",
  "shell-point:41c58ba7f100e032b398d36adceb6c5076eb74a1d4ab6fb1fac1d5b5aa6c3325",
  "shell-point:43b02c5c9e53572c4891828bb27b99fdd7ed213d8258ef1aaedee0750d5b18e2",
  "shell-point:460abaf082d8c0e9e296dbb1712ab15258dadd2383adeeae6b4279f8a92c33cc",
  "shell-point:48a531a4e6ffb0a730bb424fe90784fff444e075574b2f1b7c5f7c4d111ae45e",
  "shell-point:4a678a4a6f5f075084f2fcb62088be3b7dfe0a77cc24ca9582d35079817c15fe",
  "shell-point:52b9846b4f8b162256dccebff43be7189328e78e5dc32fd8ee7248a76f7d7191",
  "shell-point:5644fd3d83d533f359585c15b339ca6d4cfcf4c7492b633aa2b854cff2a864b5",
  "shell-point:570775e8f908e86d6d868de6f26278502bae876b1431c311c62be9f9917fb5ad",
  "shell-point:5da2f169dd880e6231bdf249d8cadd485ca2a883651a16c2a7cd85b92ea0a698",
  "shell-point:60b7e42f6fea5ba742d3670dcb23f94a0541ac0285a6e272afd1fd47ed2d64fb",
  "shell-point:614e13519b9032123b3ca3977f3b362a80e6ae5789344a5dd95776439d962da3",
  "shell-point:615ac416e12746fbdf74f25b45c1c89f70d399b93235722a76fd587b9ffb5d98",
  "shell-point:62e74419d0c2645c758c25174649718901368fbf48df30a9a5b27d28b47266b5",
  "shell-point:656c4010fa991743381bc9cfc5e0ba35b8f71dd54d9e00e6030b5481430c3228",
  "shell-point:6bcbe0446b42857a54889175098030cc10afbdfed75d8a983b5ed7aa39001328",
  "shell-point:6f9f6f948a47a0d2776acfc87d4f84670c33f4885e22ac67a5c61326486c3133",
  "shell-point:70ad2a994ccd9f2e6a21b591d3888a96db1bb0724bb04a6519f2f004efb99922",
  "shell-point:74591609e468d03f2b18260f4b33531a60ec264a1c92d3282dd5d2857aa36ad9",
  "shell-point:7bf83e01333e6c2e14800d68ae02654d6d892619455d70b936b83611f47f773c",
  "shell-point:88f26ceaae5235856654e4078893925be5db594054a96b8211e2a9cf13bb8671",
  "shell-point:9337fdfaa2b9e4c1068211f68729a8b858ea09b4e121c653cab3a0a01a548741",
  "shell-point:9d13ce4a5a3ac78510eb0eaa50e6ac026de43a917f4e985aad5a738249a524c4",
  "shell-point:a3953942d3418cecc920bbcaf0bab2b50424d84cef2d7cd12b1f291c5ddcd1dd",
  "shell-point:a55e0a2491760e249d19e939a43a7e057ea9b3cab878536b3c3b26a452b9cf5e",
  "shell-point:aa1c302178125cf71bfb2c599b4de069f8763544cc8cbc398d25b573b092b87b",
  "shell-point:aa552279368c1f6c1bda3c0f65a96b63bf4a80331aaf874beb9b82b9559e59ce",
  "shell-point:aad0c94c4893e9b31743f0678616c64c54dc43da7125090efc25ea03dcccb776",
  "shell-point:abb40bbb09889bbfe83af888fb828ba952db15fe1c9057358e6db189904d5e89",
  "shell-point:ae2a0b6d6585ecb3212220321a920e44da50aeaf92fe8e5db02e50fb0f0547f8",
  "shell-point:b17d9b514dfdc22c88bf13cd3f3d517761e76c1795979c9c687aedccdca6a207",
  "shell-point:b222a46720fc55672082974e7fdfdb35b0cb871ef1e1c546b109fb59ceb3255f",
  "shell-point:b319d38fb29c99dc84000d0b02fb9edd9266d02e87b6ccad3a4e251546459a9e",
  "shell-point:b9ad69af44b495d145de6ceda978120823418f16235909f7fe84055174588305",
  "shell-point:bdaddb68f82fe118e47cc96afb8728927d29c66ca84bab68d1d6d3b57d481ce8",
  "shell-point:be72a26d884fc7321b029c672d47f639862b2485baa7efc66cd015741db9da62",
  "shell-point:c71d58ccfdf1f37f5c15d13f075f4bf147ea78caeac9f63ecf8b5fd896f639f5",
  "shell-point:c88dfd336a670c692faf60c5fe3e0fc1ba4ed50ee1a6fe8739414b864fb253a9",
  "shell-point:c8c7e4f12705d030479574be3862e8a996cd46d99f9ef16e838a70683d21ddd9",
  "shell-point:cc6fea24102e3bd6e84edcf9cbb00a5b28a8c408fa824f96c02af2703a9ed6c3",
  "shell-point:d1383e97b6505a660e875f30828f0915a8a1b9d2c1cabff4498b0777de44dd7a",
  "shell-point:d3298f849f4fee7a36561e5c714eb65e05d26e265ee40725d7ea2de040d77b7d",
  "shell-point:d352545f7dbf056bdaed2c0b7a880621c8b949072910e39986116a56ad25e7d5",
  "shell-point:d781917761858848f759144a24ae9582d0c280801880f6492cea2c71286fda1a",
  "shell-point:d7cac7ba35abdf3aa3087dba1735ce4711d9d0a668283f51bd3e18c9f2792f47",
  "shell-point:db1615770e2f220103448ee557d408fee8dc61c90b1a614f0bf98b9f6f8a6779",
  "shell-point:db630113eb5c363a30ad03844d1d454cd1f9f607b684c986d7af63c3d98e282f",
  "shell-point:ddab48375b061b9b7a37688556f8b156e9b8da20c4854ed48b7b7bd994f0356b",
  "shell-point:de19cac42def1a3a946f503dc00b41634320a1016a0d292d2caef5f2ee7542ce"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L3019).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
