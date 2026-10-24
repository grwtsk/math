# selectedCandidateIdsChunk0013

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9ba36f893b2bc7685d9cff5e6ca53ea44fbb084c7b31d2d2175f20886d933cb",
  "kind": "def",
  "lexical_name": "selectedCandidateIdsChunk0013",
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
  "slug": "selectedcandidateidschunk0013--79a2b03ac3b68253c4782ba8",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40764,
    "line": 40697,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79a2b03ac3b68253c4782ba8a2ab14f3270903eb9a7aed54eade9808672d2260",
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

Occurrence: `declaration:c9ba36f893b2bc7685d9cff5e6ca53ea44fbb084c7b31d2d2175f20886d933cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40697–40764.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedCandidateIdsChunk0013 : List String :=
[
  "name-candidate:f91f523f5416d5f5ec1486019497865d4f7e877001abd953affa4e257bd917d5",
  "name-candidate:d34d9e5bbd5005fc2b377e60e0bce3b6ce0d3e0b2456d847c7dfe93254e973e9",
  "name-candidate:f17c4c93d3bbcf59a536d3dde82637f2d87f58f16ff49adfabce34845457f6a6",
  "name-candidate:135e06449b85457d3b0220d4d28d36c218d9848f2944001fcde9ad39e8b10416",
  "name-candidate:196b161189d2ec65fe202ab8044c963d428b678cfcd2e95cc9e3117ca0331768",
  "name-candidate:4883cfb7d0302eb5b8cb95a6ed6b1fffa1a43a62a5c52592dd37179b6d58a43b",
  "name-candidate:2107cc65a41aa3be8587b69ff4bfd49b4611a6d9817283db4f8b1c9c4af188b9",
  "name-candidate:46caaee7facb1521d21abbe26c306b781c8fc69ec89207d191f8159959925681",
  "name-candidate:895786bd37dae026a7955746a0c79fe4d42f60394516aef2397539cfbd5546db",
  "name-candidate:52f9583088727bba98006d5258e21896281581e9e4f992885a3a9083f199f175",
  "name-candidate:d874ffbff06dbce79f6d709ea5f351417c7d548c453e9d8fa0511d54d204f1a6",
  "name-candidate:937d95fa1a163973ff6d12634b3a556fe81e2b6d5bb64d65826ff2d13ad5e8c7",
  "name-candidate:179def4ed7ce489db25265afe887c80a6f8054c3ef3d9572e2eeeb2ccf00d21f",
  "name-candidate:34012120d52bad7a12adaad882fdc6fdbdca572018f51031fe120c3dbb5e2b91",
  "name-candidate:d6de796283845a0e433b97fdaa032ed2e8ed1844a834d4f5edf958ec5ff06a0b",
  "name-candidate:8a2d87ec84b7f2fbc4ffd42ea4862a54d264930f5f074c5530912f0309ceea0e",
  "name-candidate:101ebc9e4dbca04de49f8535ad29e2e0a18cff4e611e7d66ca7f79b121582ce9",
  "name-candidate:147ef3b1fa35dab74689f34eef861ece200a9f1f556846270321dd7a4357f075",
  "name-candidate:f9101d36679855669d14dcfc242d9b1f8ae18edcd739626b07a25cd3b4bd9a3d",
  "name-candidate:c83247651eea2b62307f0813e40dc5ff2dc70cdc7e6d7cb38813025678205221",
  "name-candidate:1fa4c39cc78e64e041e678e2e17da22342a079d6994a9772cd74dcc13b6f5b1b",
  "name-candidate:a3d3560c64411246c7baefa650689c251b558d6ae2066cd7bd696991c586340e",
  "name-candidate:0f60e0954b96583b696399d3c422fff58bcbe7d308717e1de72e43e5291835d0",
  "name-candidate:5457bd8b2a4344f7064f2029e31f6eeb03f53fe02df7f5c5f303099229e95ba3",
  "name-candidate:3ed68301dc7f30a874b8783ace898f812ef826766ab514152b6c01948804d8ff",
  "name-candidate:98001bfd685e0e589b9a638a27dce908ea4ae6b3ed09997c5ec92ec148c8d760",
  "name-candidate:afeeb8b052c51c8dfb946456e85d849c31406b6e48db93fd2f907f50701c586c",
  "name-candidate:59a62118c5a3cd6a119c04da85a2fbd4ba9426de23a9a0f5d12bd75b99dc12f6",
  "name-candidate:c669595b35324a49c63bfce24c4fcc78640beb666aaf73263d910530106c3dfd",
  "name-candidate:fc7a5a72bdf26d6b351d7f714392b3831b9f2e906a9e88c87aea73da3bc2a1f1",
  "name-candidate:63ddc3a3e9878142d4b885952621e377a702cb77fd88118857be0722e05837c7",
  "name-candidate:0a480cc6ee75c538ec958e13cefb8599ef9308dc9bfa16ac25d622accf4140d7",
  "name-candidate:9ffa5b95051b93add0f40bb202b4ed77eb05a5b834c141e63a9965294f28d0c9",
  "name-candidate:ead4411735cf1ecb253a5a3f9012c73a24a5cb5c1f10b35f2a4690bdbc63b0a1",
  "name-candidate:d9f251bbc01e49df49e59c6528c3f167fe942082edb00ce93c2744df7cd8e237",
  "name-candidate:66e35dba3d145d44807eafffe9fb397d5c1aaa6e3d22e93161aca6d0a12d5009",
  "name-candidate:d2fee930cbb5f9e841d9b116fc01f7848f7fc0c106d3a22d1b155cf16cceec63",
  "name-candidate:5c454fc95c9ce03eb765eaa60d46e53883332cf5b0bc8f016a311247c1f3ec5b",
  "name-candidate:bad85a11b4e189d3f844b96ff62f01064d8c3ca50142d62d2ac7beee0bd7cb4f",
  "name-candidate:57312dd67d181ff2cd2ddb7b6758cdeb4d061204329021cc8c75a9f92720656e",
  "name-candidate:8029251f60874b0b03eaa5d174174cb535520656f0619cdb77aa8e051bc7b988",
  "name-candidate:62d64aee4b9066408be8e367870d7507362f0e8a201d205de29df49969bb0c06",
  "name-candidate:2f192c2ef6b34db140237bdb716b8d14ca3916dd207ec13c1d3d49a4772e2c4f",
  "name-candidate:c08ef9505c85e40ab3bb89f2417946f61b4d2e76c3b20f6bf06a3bc361eca420",
  "name-candidate:155dff721d9a159487f8df7b79903dd9cd3ca5942da8ad760323a091db81a7a0",
  "name-candidate:49eac0bb34c34a3bc4170597196fb60ff298c6533613f17ea1f40c2db69b0e2a",
  "name-candidate:a73cdc10283179bc1a076de2b0b89af27e321e8481c664d2cc61422668f659b3",
  "name-candidate:a07f53e800ec7fd5fe43f67c804ec5e539f60f2a488f5c50b4e9079f58071179",
  "name-candidate:95981fd9e0b512c5264eeb9482846cb163b7c409c69000761a42f857d2ba5017",
  "name-candidate:5c7b8c4baecd8a0d1a2c01513035ff1792ee242fba58ee214db3918c7dce7d99",
  "name-candidate:2acab39d02ba85b713d884d5c329e661df971b980222815b8e8faa6eb32cfa69",
  "name-candidate:c380545d451148120d2112cf1dce931182789f73edb3a78c7dc9b5ff66a2d683",
  "name-candidate:37d5e25ee6524f4dd5c35ac59b663d37e51634400dad1fa93e43a6af179221e1",
  "name-candidate:0884cab60b251b2ab5cd46cceae527cca1afd578b68faed6bbb51f2d62dd6d07",
  "name-candidate:2a5b4826788a525a068e14876754eac79ecab104cec15fa8fc8aab64dc8e023a",
  "name-candidate:7868690e4e3437e11612a4817dbd2bfc60a56ff34c1b97dffbc0a76ccc5326ea",
  "name-candidate:137cfaa21251f067ea4856c272946093e6f224187fb72259416261b90386b402",
  "name-candidate:d48689136d458314dd3b49a41de2291cdb09467275134245d1c2bca2018e8cb7",
  "name-candidate:b0667f10eda11c951fa37a6e5180d7362ad5f0e66e8ab8c613f4a6a21d4f5ecb",
  "name-candidate:77990a71c0688f3f85073a105d5eb4e93ae8f332cbe3fc6b300bf68da959b666",
  "name-candidate:6b7676667445b56f033f91fa20d23890ff836ca80bc8c07953be7ea3a53427b1",
  "name-candidate:5acd1f23a82d1c380124f7486af75d0362c9a4db42d8745169fc94abfd057587",
  "name-candidate:839209166c0171e7861fea55b869f66d00e6aefe0d7c692bf13686306986ae11",
  "name-candidate:240d1619be11ff023c565a3dae59db8b4771b7a0a05f435fbf2c82f0898a05d2"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L40697).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
