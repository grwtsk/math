# primitiveElementKeysChunk0066

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a49f3de8a78a9ef6ca0e5b2abea447aefa99c49c8a2012e0cd9f04441387cfe5",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0066",
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
  "slug": "primitiveelementkeyschunk0066--05336f3784502092f445d9de",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4582,
    "line": 4515,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05336f3784502092f445d9de6b1e72e813628f3ffd74683329be60284d704bf9",
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

Occurrence: `declaration:a49f3de8a78a9ef6ca0e5b2abea447aefa99c49c8a2012e0cd9f04441387cfe5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4515–4582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0066 : List String :=
[
  "source-command:cf3a4c1bd612b8aa6887178f0c886ed9bc89d902307d57e018235c65a55d90d1",
  "source-command:cfc6ff5b75841236fada617cde20ac715bdafad73a1e9f892ed730ecdd4edc00",
  "source-command:d013ec7d680aa3e45843ddd69c522a52a23a061f923332570a4b9a1f891eefda",
  "source-command:d07c5e02658e0b3a8ed3f0cb8c5e0154a8b055c720aa93b3ba238acce1b065a3",
  "source-command:d0d4c36d38d6a4b2c30743c302384f0d5219958ef09ad76a44a990eefcd6cfc6",
  "source-command:d0d93b2cdad8a4f1dcc8c125498dc1765d27b799efb8fe39b71a5c25a03b5e20",
  "source-command:d114664970d13d0a74ad011a8feff41df27a6932ca953abc7e846afe0e315195",
  "source-command:d17152b8a84ac0b9795f97967346673a7cdc955c0da54027424148f90bd47795",
  "source-command:d1809087f6dd6d101ffd5ce6130e7c99adba84fede3aa22701e61bca8b1bd81b",
  "source-command:d18b517c6bd8a0cd3bd744c1f2401d490b1eac1015ccdfd59cdbfcd867956106",
  "source-command:d18e711d47904150cdb4a2f0c3d583dae1771eca6f77a4604be2a53e65eb7d8b",
  "source-command:d1a7e3f11f8b13da7f288961e782ab9112c8ec91c22dc4f3c0a2ff9ceaea953e",
  "source-command:d1bf799ba296158496c6180a6f5e051634df46480191f0cf140c5288d3dff937",
  "source-command:d1c952e3cf44a18b541d58bb0c3d8c9a4b0fdd55793d9a86874bf6767827dac5",
  "source-command:d1fb9eb28a0fc484817c403d9f75d819ecfdfa17318f64b2a00e3193ee8d3688",
  "source-command:d204099421b3963a2ecb253a15f213e0348f5d705baf924fda023a5cfd3dc88d",
  "source-command:d217e544c57f845186719b30512802840e76ffd99f9855706456e1a688a338e8",
  "source-command:d21867e5344531726bae129e079b028ac8ad60f676cfffb4c59a30ebfcea1195",
  "source-command:d26290ed888dfbcb38b64f45418b78bf52843f2e3bd8e9404267dad3f05c42a7",
  "source-command:d2631c5e12a8e403e676863be92eb9aebbdd0e61497db65aef2c1af7fe1a2c12",
  "source-command:d270665f59043cf8c9a71b9970ae2b2a3815c99a838d666fe44c0d85e9a45c9c",
  "source-command:d2a9f46626f7acd0930d7338f0535a2fd4682d07c98c756d3f95a8623e80218f",
  "source-command:d2b881b3272e4fa0a0494a97d7e35a88b0c028368cd316efe86ea0a11ae8cf1c",
  "source-command:d2d80541bfda88481c1a5c6df73cb1edf0f679a2a9617160875e57e58a580b4a",
  "source-command:d2e219d82c425fc7776584f4303143392e2216fe32c782f765db2a1ec98777df",
  "source-command:d2f9f9c48a89607e13882435b26b2d76ffd1043a3370b22daebf91a1b41b8b0c",
  "source-command:d3313283b5adfcc866d13b8d088a2c1134608ce1dcca6bc9315a776eec9412d8",
  "source-command:d337fe749ca70b1a3ae5ae51739630043ca8315615d4ecec9b60499b49d4d5e9",
  "source-command:d3511243b2f8ef34be3bfd69a3fcd5ef51d6490755360fa3118fec8488dd620a",
  "source-command:d3a073ea35022b2110d2cf8157f6786cb329a89567ceb8ed1164cb13c5f9e93a",
  "source-command:d3e485a6dff47fb5ce842281c2fa1f40e5b3c1ee87aa7d3fc3951e394cf5991d",
  "source-command:d43b3b0b703a23041278105cfd34476e40cd92df84481ccf7ca4542902dcf6ac",
  "source-command:d45e855cf04c53ccd4bfe47dfa972b8e478602bb71403aed249a7978e00b40dd",
  "source-command:d474c36526c096209f7ced4f1b68369ae938d630e6b2a4b9b96e2f5120e39c45",
  "source-command:d478a517e9d4bb1f1ca2ec2b154e3dcfee676ee4c5bb7b3590d8382b58b684b0",
  "source-command:d47ded259f0da93a8c30acf335fa67015b163eb7b2273742b0d7a92e7972d030",
  "source-command:d47ea2e45870cc7e7fbc2ad5933f3d4ffb4175aa2ea6d5e84e1048f65b6cb533",
  "source-command:d4af027df4a35b3511957e605063695be31465dbfdde72a6a8275551d73bf4b7",
  "source-command:d4b414a6de5aa1705b63a59a7b531af308830aa1064076f296c54e1bd6051b78",
  "source-command:d4d46a2d2a01b49c103d48679e5513a6fe61fbb6b8a82305e2cd33700d597c26",
  "source-command:d504449c928d84386332895a04c0dc6e5a1eb2a2d2b35e1380c809d776fb05cb",
  "source-command:d574f77516eedd1a8eb0f343c634c11896b68fa60f530e932193f4fcc43953bf",
  "source-command:d587fb3e4f7849574aef91fbe4802ee15c4d66e660c75f093da50d113600512c",
  "source-command:d5aff551b09c7daaeb79b08202450890e2b60789634deefeeca456cbc64c6350",
  "source-command:d5bdd0de83772c69ce67f3100b47ae9c933a788168cecfb20f6634aaa00f82d6",
  "source-command:d6095845b3c7d09d272402c617cc4adda07467235ecd576d345b907cb1b90157",
  "source-command:d62562dcc90ff3245fd778a6b28fa9b687fd803a7bd6ca34dcef58574bc4a36c",
  "source-command:d629c58f5e6951f6d30ec9f24f5ba5a9c6ca1b9ec575f9baaa80e2f3972c36ab",
  "source-command:d6cac56a109180e4e3902097c4f818466eceb377bf19929f706a07b0034b49a9",
  "source-command:d71e509e3c53a06797accffa3190aaddc7720c241fddcf89a798800b539e2459",
  "source-command:d728cac537c4c7421ddcfd309e32f06e28e730f0d55ed4a7dd6bfc881ec0eb28",
  "source-command:d7421e2d070841d77c955cc24ef073c49859410f42bfa6098e4b37650866078e",
  "source-command:d7c8e665d877e75f68275743d961ddb77993bbc5bf231fc7feb8252493da2973",
  "source-command:d7d581b617007618cfaa05107b7a7079c762df6087dc457b97c2e6f992527e22",
  "source-command:d7e0e6212e7adce35492397aa6b8ab3d3e92ad2ef4bacaaaae91ada788eca533",
  "source-command:d80d9bcfc985ae7a5d69c3c748fed7dc5c6ac7c1f6b4d92e13f4014aa178b2fb",
  "source-command:d83427ee25d656134a62c04a190679c3f96c702cd3bf88440d548543fba85d25",
  "source-command:d88bd7597caebe8b9568316e317e458cb349a2e6507dd82d4d95c0e270746593",
  "source-command:d8d1abb8a332416e70875129a5b8289dbf9d0b47b00c52fc870f16261a8336fa",
  "source-command:d9a514b5a0792dd1a858ee603bea2bd7f4dba9df1431616e55773415204b93f1",
  "source-command:d9d384f9b1081ef8d591083b7369a63f119eb4f2ebf4a8901ce24b73df811204",
  "source-command:da34afa4ef712b861f7f562005714de8bde13dbfb8476d26b97dfa9e821b48bc",
  "source-command:da54138b06f4cd4fa803ab26cb9d9da25feeea6011c6b2148c0bd8fb06c15892",
  "source-command:da6a9a52968edb85cc48bff0872a6122cea8bdc799c202a66d2239b6f6ea84e8"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L4515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
