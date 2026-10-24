# selectedCandidateIdsChunk0004

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3f8a6b6102e551e683507040b760ed95378885f9f84ea7473e9afd25e673709",
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
  "slug": "selectedcandidateidschunk0004--df1b3e236749502d23f3333d",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39686,
    "line": 39619,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df1b3e236749502d23f3333d7ac69f11cd6cb1de5ba369acbc9692a0784f5e44",
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

Occurrence: `declaration:d3f8a6b6102e551e683507040b760ed95378885f9f84ea7473e9afd25e673709`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39619–39686.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedCandidateIdsChunk0004 : List String :=
[
  "name-candidate:d7c7525ee65ec18a9dbe291def1246022e5d8e3841514bfd8df611595086b70f",
  "name-candidate:e04f8adcbfad575d8bbf72089ffda893a42cb9f761d97c9562df30de1cc97d12",
  "name-candidate:5e3bfd8147e94ebf5c9b1b80337838792b206374498f0fb9a13e38edaf8a1c73",
  "name-candidate:7d4de05ba1f68a83b1aed2ffe0764680ddff36517b03e39aa9ce8f57a36ab4ce",
  "name-candidate:49e99743c2bdbbec152f97ab1949605b98770336ba291bc05ce311adec9f1f18",
  "name-candidate:ec8112d472cf2237989e1e2862f8bbcd643b5f6fe38477b12bfc0443ac785698",
  "name-candidate:0380e8f0ad423a80504ed1d4510380eb65bc69be98f3dd29021fe6f5ec526c2d",
  "name-candidate:0beb27c5e71267f22cdaea6f327bf6fb87c317c6de4701020f469147c449d6dd",
  "name-candidate:6c3e482d7abc366478261f1a67ce030b6d0d083008fd11c09f112230694ae060",
  "name-candidate:790824056c14f72a951971bf96261cf194ee131463283f2a5af8398da32ab4f9",
  "name-candidate:2951f2bf6a0bb6a363139cc02d406baec7c8090d4def98429985f17d5f0c3e47",
  "name-candidate:1e64b17d13d3f2253627926ce6f1d82985055681909fe60aeeb164faf7cef8bc",
  "name-candidate:88ced09a159e1c40adaca54faa114a7c0e0bc5caab17fb30c19214d983c16ce9",
  "name-candidate:3218bfafa9c64ec9434b452a0fb3f4270c80ad22f0a2e5bf6612a9f98f82ddfa",
  "name-candidate:0d228326ec01ea82289f157975c1e5a2623d644d49ce2dfe24619cdc8fb4b3b2",
  "name-candidate:0698a6b3a0142744a8eb1003f86558825e6d8838fe77a12934a2640a53419935",
  "name-candidate:173a22a4e9f3708e81536e196868c9d21f45a69e920bf1807e643c4e61933f93",
  "name-candidate:046d5cf8bfcfb35f89a63b627006c21649a2970862a972cef73ea82f85adb314",
  "name-candidate:5adc83235e4a452ce97f28819c1619197c4c2e4494a104cdcb220cf5468b7a8e",
  "name-candidate:1f8790b302c80efb2d9561c386d76b2662e4693624480b94e6b35253b6b03939",
  "name-candidate:50fd2de6b7c4843e4970865e93d7cac74f9135ae13b2dc40aa062f3860b19a10",
  "name-candidate:72cbfacb7db694f59f2fd695c673aa8be8a2228cc99f4dbd18a462f49acbcac9",
  "name-candidate:cd181d16a296387049d4ec487cf84f14ab1637ce5c170417b3dc601fc6c24bf3",
  "name-candidate:4f9e15030ec36d842869b22c8684d47f8d097acd85d184cdd3ea5ecbdd3a8156",
  "name-candidate:8546c9f944943098f564961237a9233e8714c01cf969dff21921291e89363bb8",
  "name-candidate:f5de07b65814430f498e5c1c34d6f2dc21b4b9b9475635c5f6e8d6cfde842f4c",
  "name-candidate:030b7d928597428c05af0a67a04582a5e6f7c7a118ce8a41190f82874e30a9cb",
  "name-candidate:509c23199f48d99386571337070db6047e3a709c9d0f736ae718b0922a9aa771",
  "name-candidate:153a9522474e0ad2f97cbcdb06262055061f8836f6c873f532a462bb79d85c3f",
  "name-candidate:84d2e60772d7664722d0d990d69c5bead3c92293f2101b3545db0fadd3908ced",
  "name-candidate:520055b640ecc1157cdb79c87a411c04cbc0502e500e1d2b6c45eab18c25adc1",
  "name-candidate:22516e7fdeea6619bdd13ee0ea4e203d6f746ba8529e24903747897bd7210db7",
  "name-candidate:2c14bc7458629a24580f55b54e357b7eb6993c483d3639054fe8adb7c7f682b8",
  "name-candidate:bea199d83b203d99b721390c76667ab8feca05654c0a59a3ce8906be8b5c46b9",
  "name-candidate:3431db0620a607c4466ee298064c625b01cb58196b268ffe7e10989a613b2e94",
  "name-candidate:f95c70b9f8ca026ff8be45b360e8995942130bae63e11c9c497a6067b630963a",
  "name-candidate:73fd8b3dffb4507966cc460a037ebbf92dcba2f2c13f6d886a7a96964d2212b3",
  "name-candidate:51b3f64fbc61da0ce334fbb17e13b144bb1e34637e561ee3a3c53cb84ca6d728",
  "name-candidate:1422092099a3f4d0a29f846cb5b83ac1cbf9bf134c3e06621f48ed0e3b62ffcc",
  "name-candidate:a2a2b57031fdda7c2a0154de90c74139908160aa4d8e66e297e3cc76ff88887a",
  "name-candidate:ab8d3dd31ac7c3a4d40bb0f1f39e64d0446b7ddcee5b7dacfd9fc180958462a1",
  "name-candidate:ce217bb14249a2935dafcbd27593a92b395741adfba0e88516e60ec48277e2d0",
  "name-candidate:7d80797dc20beb87443fb7de885f92e4bb53ff952335b14808264b56218687ea",
  "name-candidate:363681016e3c6d80e1c1214e4ed58daea8dde1a5756d5d2b2f0b370eb214d9c9",
  "name-candidate:f29d72de68d3c70a7f42a5e94665e66fd2c845fc1b35eea1e780ef90f32cd1d3",
  "name-candidate:1d03b3502ce83feeb7891b816aae33b072267cd26b611ada5a9a36fc44bacc7a",
  "name-candidate:1e1777ab7e67dd29d7dd337e424091908d34de49b65e33ae259b7ca77deee7bf",
  "name-candidate:ba7f0fa1aff3a624373dca9d28443cb1a266c6ac001688698e43e69f1c413d5a",
  "name-candidate:1c8b48ebd302c469a2fa5f33be391db5f59e3a75984c71f2058dfb87de92508d",
  "name-candidate:0d364bf3bf6e3bdf618aca3b348123cce3b1daed7b24471501e5f3aeb0df282d",
  "name-candidate:d28aa758ff1fa33bd947a5fde8f34193c7befb8917dab5f566c3826effdeb216",
  "name-candidate:ddf4b1f072d491de4de88529f00fb50822aae2e4ae62315d64e6f83a65b01e64",
  "name-candidate:b98b5d8fff591e136b3985df979632842969233c36bea81dc635c8e50420d72e",
  "name-candidate:bb5cec6cd5eacd45f7c6aabca19136c8310664eb21309bf5c33f15399819d68f",
  "name-candidate:9058f61df105df9dee3efaf776b0e6382083211c13cbe591426fee11d09900f9",
  "name-candidate:03648bbf2eb3d4e0435bb7a24a00ac7434cfcf7dede5dd62c5a99646d8ef982a",
  "name-candidate:e47e9e79fa9873c8d4d01576aa66e710df7bcb782772db032811e616e8838904",
  "name-candidate:d7f4f3132cefb1ef8ef98b49b125310a7cc3d694cae9b863ff6c659149317d64",
  "name-candidate:b484058633246fc1acb76e3c339cd96f30ec903ae63b05074894c6fba048bc23",
  "name-candidate:42d06bbc2aadecc81a85253cbfca88a7996327e8c75f66823dfd644ba692bc87",
  "name-candidate:53ab9c8ae604536b8bdc45b625fb848ed2780598cc6bb78ca5ddcb0c6dd49837",
  "name-candidate:05e8263f58236386c8e1fb4f3db3820556e5a111d12221bb9fd3ed6974c14beb",
  "name-candidate:2d96850ca80607252846502350f12eb2be7a6707c9a56d356b5ee0b7437c6821",
  "name-candidate:5ff37ea35f65fd9ac59935914c9f33ef1ec1e666c0758697f987b02410c6ac56"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L39619).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
