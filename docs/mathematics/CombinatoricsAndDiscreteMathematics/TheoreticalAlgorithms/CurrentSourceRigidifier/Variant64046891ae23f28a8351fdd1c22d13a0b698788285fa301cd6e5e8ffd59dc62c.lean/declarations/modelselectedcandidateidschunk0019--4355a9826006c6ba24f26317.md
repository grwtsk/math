# modelSelectedCandidateIdsChunk0019

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d80bb1bb32c73cd24f3fc3758a05c7601c2120e022697315cadc55a103c8aa9a",
  "kind": "def",
  "lexical_name": "modelSelectedCandidateIdsChunk0019",
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
  "slug": "modelselectedcandidateidschunk0019--4355a9826006c6ba24f26317",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43294,
    "line": 43227,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4355a9826006c6ba24f26317e80d55fc47f79f5aa80b5cc9f28ed6ec7ec1266b",
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

Occurrence: `declaration:d80bb1bb32c73cd24f3fc3758a05c7601c2120e022697315cadc55a103c8aa9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43227–43294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelSelectedCandidateIdsChunk0019 : List String :=
[
  "name-candidate:b6bd4238562dd69ad83219893d488c9b06db5528fd41af408df2e51b7fdc7f34",
  "name-candidate:1ec619b1afd55368745f13e8716ce1adeeee2c5211d7d523e16644f1994cd3ef",
  "name-candidate:27a5fe6607266c5bfe414ee10358cce461de43a31981100318083e6e6e66c6bd",
  "name-candidate:88e889f5600cd22745ea3df103f4549496c591e64135ffd348b4fe87b1ca5f3a",
  "name-candidate:d10b50ec1cafb811f0ba00cb0ea8ed9da4bb1949d6e0704471ae5d0376b11143",
  "name-candidate:610290c968bf092da810a10fb29295d27a37cea20a34554714c7792d806e2e14",
  "name-candidate:bf61e69954ade364cb98b5cfcd2b9a3c00e8793f38c0398c0d09d40d0cadb31d",
  "name-candidate:51cacfeb11c6ebef767fdb3985771ec5f49513cba9d489d11ba645edf5c4738b",
  "name-candidate:d6cfca34f13ad6104c0ceb1d79bcd8bc8c37fe8dd1a1a18e7facd4d2ed63b2e6",
  "name-candidate:811c6bf29741da2e6c35344f023de81a907c791d3cb97fa53780806e0d8e4fbd",
  "name-candidate:19d5c833cf1fbc6a9f1fcbfa27f0714e3d60aa85c1b7c179ce468f1089e2f013",
  "name-candidate:9e03bb06d98c17e2eb509f3e756b0597b96e18e719c77cc971429538f80b5dfb",
  "name-candidate:036538f893603e116e1da09da8101281ad0ea7aa2a5964944b5dabd62955d7fb",
  "name-candidate:299f28123d471e2a0c6dcbeb0ce673e52f8dbc5657f75826c2ac2e0f2e143b57",
  "name-candidate:110bc429e3533bcd49bedf02aed93fd6ea21126589f931e5e287b79b204cb0cd",
  "name-candidate:9fb1884f66acf8415038305f4b9d6d1bb552d0bbfd2d5a035f54debb04390607",
  "name-candidate:c012fb7bf838f2f46b3f020992d2a65b4c922199ead7f0825b28540ce83747f5",
  "name-candidate:e43f6fdfeede603074bbb6aec175814f75ceae9e2061504f4862a183ae99007d",
  "name-candidate:9a93fc735cefc736db9e5892898e3d217f1095b6dd73bc15a3fea3632c826872",
  "name-candidate:d41c1b6454cf1ab4b417b5fd666507bab952d2be6c6dd3b4640b1283ad2b4a68",
  "name-candidate:4a66f977c4c5d55414d8cc4ce459f03f8c1aa4cd609d378265cdc303b0e7503b",
  "name-candidate:75c30c3f2ffe81d943df8ebd4e0fca0d27a781d84355323f918a75904764ac90",
  "name-candidate:d93fd7829c19d5797719ede5efa9c2fb592c1b2d3f13bbd8e039ca6cb5ae20c1",
  "name-candidate:f23616b72f27c751a3c97aa6a511c3c4e4ab228171ff2151f23316f8c252f70a",
  "name-candidate:c645e1544452668fc36ac5d0b7d0665b29414962bf75d70f5a4a7678192afe13",
  "name-candidate:1ea17b9db26117767806dd54bd36f99d8cf3fab806357d63ecc6a8fecb5abbc0",
  "name-candidate:f6ec99dcb32499661f0ab3bab4cc7c1811c3b9e9f1081686224151d65ab368aa",
  "name-candidate:20afe7ee658d452421a24ff5e2b750e6665667641227237622e791080900c3e9",
  "name-candidate:2b8f9f04b907be1592a4c2c0756d6184f7368a45caef7c21ea48d931790ba11f",
  "name-candidate:a8d93a28397c5c32a6559d21b8ec83b4c7cb14969cfa574d27f4e5ef814ea15e",
  "name-candidate:eb41fe6e6a92cf15ecbf6472d925f4db572f9a1f659c0ad54680af90e792b7d5",
  "name-candidate:88b1f5306ab5d53ce87acdcb2ad5c50b20a1afd3dd5ed9880ea7d193cf716502",
  "name-candidate:a311b92d8e15efac1e3760cc3b3322feefdaef25a2f7cd7bdd41e833683e77fb",
  "name-candidate:f38244a008c481a994095382d1f531124f7675e9cea4136bdd89e20046639d64",
  "name-candidate:0036c3b00609b48c6a4174f96a9195dca4154295afe4ba62e849e68601502cbd",
  "name-candidate:b3c731afc76b6996bdcb61d3e31f4ebd5861c582379377b560116a32431f8758",
  "name-candidate:5626cc52d9a54b73e13cf56fef9116c7bf7f67ab1dbf374fb82ebb5f47fe39d2",
  "name-candidate:24dbfcc4eae24426be5b70f293984f783b68d80ca39d3b5086df89ad1729d59d",
  "name-candidate:3e572146f4e519e4c5c398134839b93cddc1d48a5b1415bdb9a19a3cd2b71b0d",
  "name-candidate:7ead69132dc29949c1e9feaaa877063f935d453d76918932ecc5f9ac363c7078",
  "name-candidate:a22b302a9135c3e479356723669a605f7a461181622580c9c6073c4cba879276",
  "name-candidate:bf1cc99187b98e7141558bfa246adb73353409b8438dcf67a46bb574196e91ba",
  "name-candidate:2a168e9d941e78db8707cad3e634ddabcbc33b16a59b03ecf9255f885eb7b145",
  "name-candidate:475ce8bfb61baf463c44cf5587673d37248fd654d1dc9ea6d5da520c757fd992",
  "name-candidate:b45563f3957287ab0b3c796d97e8951f939b9b92bc0dac00aefa7a381d0a4a57",
  "name-candidate:83e894125b575635d5e9751382aac535806b21538037a98ccae0cbf68e47d726",
  "name-candidate:4e6825736fc246f337f8acbbca4845f5ec2ba2dbf857e1b310d34d6217a1c048",
  "name-candidate:c1878c185ac3b5e870abb48a65c5845c7c1c8192858a855e8857fd4400311ce2",
  "name-candidate:7483745cdfd70da87f549ccc323e5300a14b1e6619d72bc32bb39f616f500bc4",
  "name-candidate:91457a9380c3506764fdb8fcf3c71d5012649c37888234c7f8cb3bbadd5c248d",
  "name-candidate:071f508c4c673b34dc81cbf6b8af7bc1560a2249444400fb80d4e3e63c604e01",
  "name-candidate:f2eaff6668d46cb600baa46c865fd9913d4e7858c470d562ecc1bf4d50c47e34",
  "name-candidate:7ee1e6f3d157904756d9c0016054d1e8e213766fb2fa1ac81b5bd790a532867d",
  "name-candidate:b0059293e5508afe464431e514a4e2369ccb1cb27bb55422549a8273f2d8f9a4",
  "name-candidate:c7211b4470b664df3c81bacb2e5e0f1a2ffc7c72579714eb212aaa375cf2f22e",
  "name-candidate:a0d581bb359fce0df82742875ce40ee93a05c031ae770acb211a9ef57302590f",
  "name-candidate:9ad3338a6d002c2f52a76985ebb5af2e1ae80bc5f4c7c28cdd1ea3d90cbfacb8",
  "name-candidate:7a996a79f3a954e35ac3a7a6f34ef8a043c2feab68b8efcd7e2742d18d79a6b2",
  "name-candidate:1fda5e021f03575b014b19cf39e9fbac238d5a5ca57aaba430a0672faf21dfbe",
  "name-candidate:c3f0e8385b3329a90cece7777212e0a290978986362077a424beff720d196790",
  "name-candidate:e0efb0699a8641ce9a0beb25457633351da2a07d6a4d5a80073feacd4b5bfe26",
  "name-candidate:c421e3798082a146549504362f104972a9edbb34eb6a1212d8cac995f0fe71cc",
  "name-candidate:f64d1e8dd932cbcc960b7d71950c550d0443591e0810d18328a7b8619e4337d1",
  "name-candidate:a02e1f5e95efdbb1f9c44798d239aa92d91da0e1b3338587bd258d6e2fc68c7c"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L43227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
