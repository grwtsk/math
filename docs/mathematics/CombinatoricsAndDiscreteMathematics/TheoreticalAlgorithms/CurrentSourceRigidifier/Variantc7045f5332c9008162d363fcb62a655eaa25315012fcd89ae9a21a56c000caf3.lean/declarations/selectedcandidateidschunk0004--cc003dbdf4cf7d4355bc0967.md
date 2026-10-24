# selectedCandidateIdsChunk0004

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d69fcb3beaa053267741a0e2605b38d060fa9cf40b9332be5de158dc5b52626",
  "kind": "def",
  "lexical_name": "selectedCandidateIdsChunk0004",
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
  "slug": "selectedcandidateidschunk0004--cc003dbdf4cf7d4355bc0967",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40152,
    "line": 40085,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc003dbdf4cf7d4355bc096739e50e1c85c38928fb15c11f113bc607c522db90",
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

Occurrence: `declaration:4d69fcb3beaa053267741a0e2605b38d060fa9cf40b9332be5de158dc5b52626`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40085–40152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedCandidateIdsChunk0004 : List String :=
[
  "name-candidate:bff726293012610111e68480a07a6bc4d8a1ba28ebaecf1461e79865ae8d060b",
  "name-candidate:8259d052dda3a29586da311019be250a378f4dd3379b9aee9fc24c062bbb62fd",
  "name-candidate:c2094d380e01720870fd7fef89f82261052e04b4bfb59bef688a6ad9d9bd186b",
  "name-candidate:99f8c2b68fcbde5d5803825ff1bde7afe9f27802bc9d4cfdae7ea5fe1791f92f",
  "name-candidate:c95d6e7143d10591b5845dc50f34a8353daba4396f1ea0ce44ac90075d374894",
  "name-candidate:ca98384d05d65b15e40bacb4938169effc99bad0fd5ef046317982eee94c6a2a",
  "name-candidate:9206d63d10a506102514749a600785c0ce6d28fa256696e09fbe79a6dc4b01db",
  "name-candidate:da7def534f671946c88c9f83ca11b6dbfefda93fb23a1558b868f4626da203ba",
  "name-candidate:ca0b29b170b951365772a369d4b600b35bdc84b6300107752aee0aeb807f115e",
  "name-candidate:da08fd2e98f033e2acd2928837b708f5cad82f00dadb0a6022a39ea29f556bd0",
  "name-candidate:d7c7525ee65ec18a9dbe291def1246022e5d8e3841514bfd8df611595086b70f",
  "name-candidate:e04f8adcbfad575d8bbf72089ffda893a42cb9f761d97c9562df30de1cc97d12",
  "name-candidate:7d4de05ba1f68a83b1aed2ffe0764680ddff36517b03e39aa9ce8f57a36ab4ce",
  "name-candidate:49e99743c2bdbbec152f97ab1949605b98770336ba291bc05ce311adec9f1f18",
  "name-candidate:ec8112d472cf2237989e1e2862f8bbcd643b5f6fe38477b12bfc0443ac785698",
  "name-candidate:ff19dd049989f71d3072ee9e7da6c55ebea3c3df37ccc53b3e54072583840fbb",
  "name-candidate:cc9a05890b7e5028e0cb1241ceffe5a55f635e83ce6f30722e0ec5268856a8e7",
  "name-candidate:6c3e482d7abc366478261f1a67ce030b6d0d083008fd11c09f112230694ae060",
  "name-candidate:790824056c14f72a951971bf96261cf194ee131463283f2a5af8398da32ab4f9",
  "name-candidate:2951f2bf6a0bb6a363139cc02d406baec7c8090d4def98429985f17d5f0c3e47",
  "name-candidate:9137634df6290ae7d778a321cf8f82751d926b77d6438f2375de51ca4995554a",
  "name-candidate:88ced09a159e1c40adaca54faa114a7c0e0bc5caab17fb30c19214d983c16ce9",
  "name-candidate:6fbcbb10c9c0de76ed685cd75bf5d6efe8a611f6606281d48d0ebc240e120c8d",
  "name-candidate:0698a6b3a0142744a8eb1003f86558825e6d8838fe77a12934a2640a53419935",
  "name-candidate:173a22a4e9f3708e81536e196868c9d21f45a69e920bf1807e643c4e61933f93",
  "name-candidate:180b6ca5c291a0cd6e6bb2ddcfe1a91fa1e6768591532b9bfc7cd201da9c5ea3",
  "name-candidate:322a10394686c00fd10226717c453dad02318093c183c4eca654e0ced7d1f87b",
  "name-candidate:f0d12e18b4d7e3847f825686ac5f69ba70e0902fc185a767b5c7a524cbeeb865",
  "name-candidate:7d5765b2bd1cdf90149654b61ce66e03d67c4058392c671fbac57571daaffc37",
  "name-candidate:72cbfacb7db694f59f2fd695c673aa8be8a2228cc99f4dbd18a462f49acbcac9",
  "name-candidate:4f5495cba74e01113b2913e19de398f4826637f589f79418d902689e92e18a3d",
  "name-candidate:20dc39c0ccea7e25e96978eff6222750b5a63709cb71812ca451676d7d20ffcb",
  "name-candidate:8546c9f944943098f564961237a9233e8714c01cf969dff21921291e89363bb8",
  "name-candidate:f5de07b65814430f498e5c1c34d6f2dc21b4b9b9475635c5f6e8d6cfde842f4c",
  "name-candidate:182db37aa666167496c71eafc5b7c6aee15fb2697b926197c07949523937a032",
  "name-candidate:178789f9808ce2ef1f9c8fde2eaf2f1d6dfae2e05ad186cf92e613561bb1e040",
  "name-candidate:153a9522474e0ad2f97cbcdb06262055061f8836f6c873f532a462bb79d85c3f",
  "name-candidate:14390552b673ae9f5479a37cd2fba87b56a05f59edf744ce4703dcbaa8a79a9c",
  "name-candidate:a740d94bd9274ee102bf41303b26a6886912a5236ed422e6757e4d9c2b7e988b",
  "name-candidate:8e84cd12af58ab252e9736bd66768bdf3e8144e2c8e5632d5ca704052fac5a15",
  "name-candidate:52f4b5a5b64e743e46007239ddac1ae281c76b07a971ed2ebc4debf6e4ffffb2",
  "name-candidate:bea199d83b203d99b721390c76667ab8feca05654c0a59a3ce8906be8b5c46b9",
  "name-candidate:3431db0620a607c4466ee298064c625b01cb58196b268ffe7e10989a613b2e94",
  "name-candidate:1f27698c52d1d5be2005016d4d4ac4081eb758fcad85dc8643dc8320ef977664",
  "name-candidate:e6b296f23e4eb8b3628d675b6cd8b2ba71c04be51615fd16eb59ba8a65910ba0",
  "name-candidate:134c45b5c66527e5c88bc2b6677f5864f62a3cecae795c9f0e62c78d3e3f5c42",
  "name-candidate:73fd8b3dffb4507966cc460a037ebbf92dcba2f2c13f6d886a7a96964d2212b3",
  "name-candidate:51b3f64fbc61da0ce334fbb17e13b144bb1e34637e561ee3a3c53cb84ca6d728",
  "name-candidate:1422092099a3f4d0a29f846cb5b83ac1cbf9bf134c3e06621f48ed0e3b62ffcc",
  "name-candidate:a2a2b57031fdda7c2a0154de90c74139908160aa4d8e66e297e3cc76ff88887a",
  "name-candidate:ab8d3dd31ac7c3a4d40bb0f1f39e64d0446b7ddcee5b7dacfd9fc180958462a1",
  "name-candidate:8d433f154fb67c6128823fe2bbba0f674db33a7f80f8cba396fcdf64a87f3e97",
  "name-candidate:7d80797dc20beb87443fb7de885f92e4bb53ff952335b14808264b56218687ea",
  "name-candidate:363681016e3c6d80e1c1214e4ed58daea8dde1a5756d5d2b2f0b370eb214d9c9",
  "name-candidate:f29d72de68d3c70a7f42a5e94665e66fd2c845fc1b35eea1e780ef90f32cd1d3",
  "name-candidate:1d03b3502ce83feeb7891b816aae33b072267cd26b611ada5a9a36fc44bacc7a",
  "name-candidate:a65260047b8f2b65ba3b05e3dad1f23feddeda836457836232c9bd23af5242bd",
  "name-candidate:28955e295158f59c2ce3db095a430c9321315d4336f3cf347819e80b047029f5",
  "name-candidate:96bba3c9f18d562dfe52df0591f132d74057d6f1e8c3f61f6b483ede32ca5302",
  "name-candidate:82741d0f8e4b12bbad48f4ea36a9541431807eb686d756787ec2ef8a36238372",
  "name-candidate:decabb95d016809a51d289c9f54bfed97f12334022eccbcd3a1fafeae922de33",
  "name-candidate:97251a785341a6e94397c981fa348c0229666f92554e6da26a0e0f8b0cb24b5c",
  "name-candidate:224881fbc456540b59287713d84d1fdf1a7ffbd077f0a62a87a0ff7ac2dc4267",
  "name-candidate:ddf4b1f072d491de4de88529f00fb50822aae2e4ae62315d64e6f83a65b01e64"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L40085).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
