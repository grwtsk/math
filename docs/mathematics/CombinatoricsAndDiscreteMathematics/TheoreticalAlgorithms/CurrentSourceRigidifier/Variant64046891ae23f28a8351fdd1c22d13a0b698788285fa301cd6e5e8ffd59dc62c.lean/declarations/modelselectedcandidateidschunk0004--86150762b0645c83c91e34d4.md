# modelSelectedCandidateIdsChunk0004

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad43b5150c2a937b495b3ae1074aac1c88db7493e0f4b2092c9456ed5c97ab9c",
  "kind": "def",
  "lexical_name": "modelSelectedCandidateIdsChunk0004",
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
  "slug": "modelselectedcandidateidschunk0004--86150762b0645c83c91e34d4",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42274,
    "line": 42207,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86150762b0645c83c91e34d44649b14c6dbcc9b00b404d77349d3fa466a4ca1a",
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

Occurrence: `declaration:ad43b5150c2a937b495b3ae1074aac1c88db7493e0f4b2092c9456ed5c97ab9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42207–42274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelSelectedCandidateIdsChunk0004 : List String :=
[
  "name-candidate:bff726293012610111e68480a07a6bc4d8a1ba28ebaecf1461e79865ae8d060b",
  "name-candidate:8259d052dda3a29586da311019be250a378f4dd3379b9aee9fc24c062bbb62fd",
  "name-candidate:c2094d380e01720870fd7fef89f82261052e04b4bfb59bef688a6ad9d9bd186b",
  "name-candidate:99f8c2b68fcbde5d5803825ff1bde7afe9f27802bc9d4cfdae7ea5fe1791f92f",
  "name-candidate:44d052dc6c4755a07b139fb2efb8129e788c92dcd9b02f4be79479edaa8a6a0a",
  "name-candidate:ca98384d05d65b15e40bacb4938169effc99bad0fd5ef046317982eee94c6a2a",
  "name-candidate:a9d2df24b44ab7f38a58a4987b0cb725a1c136f2870fb1f615ea2baa75080e0f",
  "name-candidate:da7def534f671946c88c9f83ca11b6dbfefda93fb23a1558b868f4626da203ba",
  "name-candidate:4126257ce1c2287b75da093e087d8acb175e253b51c73163723f903ea4cd8442",
  "name-candidate:89e2ba7b1fbdb6631b5fb0e82c3636d625c2fce53c023c8133e4375aa886f053",
  "name-candidate:a6a38093b876289ed6db11564a8e7502a1712c40bcde9a3bb8732ea1276e9aa9",
  "name-candidate:e04f8adcbfad575d8bbf72089ffda893a42cb9f761d97c9562df30de1cc97d12",
  "name-candidate:900ce8c869231cf03939d86856cde04ff643c1758b0fc8d3860241cdb230aef4",
  "name-candidate:49e99743c2bdbbec152f97ab1949605b98770336ba291bc05ce311adec9f1f18",
  "name-candidate:ec8112d472cf2237989e1e2862f8bbcd643b5f6fe38477b12bfc0443ac785698",
  "name-candidate:ff19dd049989f71d3072ee9e7da6c55ebea3c3df37ccc53b3e54072583840fbb",
  "name-candidate:cc9a05890b7e5028e0cb1241ceffe5a55f635e83ce6f30722e0ec5268856a8e7",
  "name-candidate:6c3e482d7abc366478261f1a67ce030b6d0d083008fd11c09f112230694ae060",
  "name-candidate:ef121c6e2c21ffda06c73ccd824ec756509e3c92c5f7d6e3e301523ebff590c7",
  "name-candidate:2951f2bf6a0bb6a363139cc02d406baec7c8090d4def98429985f17d5f0c3e47",
  "name-candidate:9137634df6290ae7d778a321cf8f82751d926b77d6438f2375de51ca4995554a",
  "name-candidate:88ced09a159e1c40adaca54faa114a7c0e0bc5caab17fb30c19214d983c16ce9",
  "name-candidate:6fbcbb10c9c0de76ed685cd75bf5d6efe8a611f6606281d48d0ebc240e120c8d",
  "name-candidate:0698a6b3a0142744a8eb1003f86558825e6d8838fe77a12934a2640a53419935",
  "name-candidate:173a22a4e9f3708e81536e196868c9d21f45a69e920bf1807e643c4e61933f93",
  "name-candidate:180b6ca5c291a0cd6e6bb2ddcfe1a91fa1e6768591532b9bfc7cd201da9c5ea3",
  "name-candidate:5adc83235e4a452ce97f28819c1619197c4c2e4494a104cdcb220cf5468b7a8e",
  "name-candidate:f0d12e18b4d7e3847f825686ac5f69ba70e0902fc185a767b5c7a524cbeeb865",
  "name-candidate:e1a209448d8e5a65e9892a14ebdf61a9c38c413c68ca0bdcca34c7f29aca1952",
  "name-candidate:72cbfacb7db694f59f2fd695c673aa8be8a2228cc99f4dbd18a462f49acbcac9",
  "name-candidate:4f5495cba74e01113b2913e19de398f4826637f589f79418d902689e92e18a3d",
  "name-candidate:20dc39c0ccea7e25e96978eff6222750b5a63709cb71812ca451676d7d20ffcb",
  "name-candidate:cc9e69091f8832cc06853f9be63f3b49f94418a4d6b626854315e056b2e4ba43",
  "name-candidate:8896a5077ce5f77e274c30c54f563b57e4ff2fdc2acb8d84f178c1987f6c15e5",
  "name-candidate:030b7d928597428c05af0a67a04582a5e6f7c7a118ce8a41190f82874e30a9cb",
  "name-candidate:509c23199f48d99386571337070db6047e3a709c9d0f736ae718b0922a9aa771",
  "name-candidate:82b256a7343ff08ee7b6f01847fff85f56970b759bbb80a1e01aaff62e0cc3d6",
  "name-candidate:14390552b673ae9f5479a37cd2fba87b56a05f59edf744ce4703dcbaa8a79a9c",
  "name-candidate:520055b640ecc1157cdb79c87a411c04cbc0502e500e1d2b6c45eab18c25adc1",
  "name-candidate:22516e7fdeea6619bdd13ee0ea4e203d6f746ba8529e24903747897bd7210db7",
  "name-candidate:52f4b5a5b64e743e46007239ddac1ae281c76b07a971ed2ebc4debf6e4ffffb2",
  "name-candidate:bea199d83b203d99b721390c76667ab8feca05654c0a59a3ce8906be8b5c46b9",
  "name-candidate:2f6aead09ffb26e2e0505bfc26b40eed9f6e8948c2bbe29d246f8367e54f2457",
  "name-candidate:1f27698c52d1d5be2005016d4d4ac4081eb758fcad85dc8643dc8320ef977664",
  "name-candidate:cd4955eb54f35178401a98b624de189003990edef71a8774e84e758e2301cbbb",
  "name-candidate:134c45b5c66527e5c88bc2b6677f5864f62a3cecae795c9f0e62c78d3e3f5c42",
  "name-candidate:73fd8b3dffb4507966cc460a037ebbf92dcba2f2c13f6d886a7a96964d2212b3",
  "name-candidate:42151ac02baf4ccbaf7291f63d0cbb1525995421883b291f3da4ec750f6d42f9",
  "name-candidate:1422092099a3f4d0a29f846cb5b83ac1cbf9bf134c3e06621f48ed0e3b62ffcc",
  "name-candidate:8bab8b2cdc9506c191894069f185e79f7c3c483aa205e6076047aafc5d6b6f51",
  "name-candidate:7c10cb7e1b2c4bd21661bf19c83f3ed747677e41018e4ffe344834ec264cf227",
  "name-candidate:ce217bb14249a2935dafcbd27593a92b395741adfba0e88516e60ec48277e2d0",
  "name-candidate:43d7defef76e261960caa898a6328133e06d691677d24caf3eb5a4822a46cef0",
  "name-candidate:363681016e3c6d80e1c1214e4ed58daea8dde1a5756d5d2b2f0b370eb214d9c9",
  "name-candidate:f29d72de68d3c70a7f42a5e94665e66fd2c845fc1b35eea1e780ef90f32cd1d3",
  "name-candidate:1d03b3502ce83feeb7891b816aae33b072267cd26b611ada5a9a36fc44bacc7a",
  "name-candidate:a65260047b8f2b65ba3b05e3dad1f23feddeda836457836232c9bd23af5242bd",
  "name-candidate:1e1777ab7e67dd29d7dd337e424091908d34de49b65e33ae259b7ca77deee7bf",
  "name-candidate:ba7f0fa1aff3a624373dca9d28443cb1a266c6ac001688698e43e69f1c413d5a",
  "name-candidate:1c8b48ebd302c469a2fa5f33be391db5f59e3a75984c71f2058dfb87de92508d",
  "name-candidate:decabb95d016809a51d289c9f54bfed97f12334022eccbcd3a1fafeae922de33",
  "name-candidate:0d364bf3bf6e3bdf618aca3b348123cce3b1daed7b24471501e5f3aeb0df282d",
  "name-candidate:b34081e0d6652c747b6c67febf88875fb163f9e4f8832be4ebdf1bc8c4c79fa1",
  "name-candidate:1aa57e05ecdf74066276cbb25add31c9782441ef81d0364b9ff4402753cfc9a7"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L42207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
