# primitiveElementKeysChunk0075

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7376132d532e2ca83ab46e8ececd69db6f5a58c776527e37b24bc9724718242",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0075",
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
  "slug": "primitiveelementkeyschunk0075--c18da82a65de960be9343eae",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5200,
    "line": 5133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c18da82a65de960be9343eaea40632ec78040af5e46a38c446d1cdd795b1a2d1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7376132d532e2ca83ab46e8ececd69db6f5a58c776527e37b24bc9724718242`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5133–5200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0075 : List String :=
[
  "source-element:46fe2d2af9bbed8876a7165f09693aa91c7705628708b7d033f5bc68ffc396e4",
  "source-element:4749b129b0990688e1b72df1d66c01720698713116bc4ff3cabc9cfb401afa4e",
  "source-element:47ab6d1ecc51b3afe04baf33e28749e53d31dbc337f2218d041165f090ce7862",
  "source-element:4825b6e85cde4dcebf00a5defcd8ef97ac89e78920798df30bfa4a4ffbcf04f0",
  "source-element:488eb09b0f05bb1ba01404397746e5f1d47b75467426cf2491a499a195da9485",
  "source-element:48d32ab2923eb9ddd56cae708dca3bd9f193458032720bc8c127748e2a288e9e",
  "source-element:4947b2001c8ae887dc319a162e62ae6e8a8389ac0f35681b5aa1696871783f79",
  "source-element:495ad4a70a68af16a757ce41d803fe9d39e599eb1a7d1d4a18c8688bdd575086",
  "source-element:497a18640ee3bfb9e4f47f30ce175f867f28afe6e884b9c6239e44884e38df8a",
  "source-element:4997e3432508e9b2eb9e6c1d95431f8c5428777f5441a55a5b84905be76c150a",
  "source-element:4a0e1c9fe0e1eb374fb9fd5096a1a85c4b353dda8c79a8fe03c6254b95d6f312",
  "source-element:4a0f39e31757cf18973e2ccf259159487907ed1106055abb744db1473aa6d515",
  "source-element:4a21f5b2a28e11f44cf4549fc6de8f91682ccaef3f2ca6c555764043cbc36d86",
  "source-element:4a8e508626900eba19db4d4e6d8f05f2d040edcf6eabae2bc9fe7f5e2b3006db",
  "source-element:4a9d45e14bf9a880c14fd0e068a93065318a10804b214e8bd341a4986fb06e2b",
  "source-element:4ad542bff898638f71e563ee971917fc843ae31d7ce900ebe8f8e80905277490",
  "source-element:4aed14ab62ac6a2338063474de6b3585d41a71cad6363d427bb7f00f9aa09fdc",
  "source-element:4b6ae5366b6356ac12527bc62cc6ee49db8bb418e2b9e8b443f6dfe19e26534f",
  "source-element:4b6f39c940983eb408ddd90aee8fd3cb154884b087e28d779c9b182415ad4834",
  "source-element:4b839ca7f3c11b8271707bbccbfb2373bcc49be3ea73e579630b2a17b77446a0",
  "source-element:4b9ea8fd3e601724b475370931998ec67e1b6a18f2952d0f21dbf05cbc1b4906",
  "source-element:4becea8406c1f69d5c0422d9d3f1d0c7830d7042c262d48f645e93236421cede",
  "source-element:4c1aee4786f58154c5c2c099b4897270bd0cd3d1a777426d3ba1aaaa0456db13",
  "source-element:4c2460f2c036dd9066004e2602211aa7242d4b828fa499a26d1206bd7f09a6dd",
  "source-element:4c2ad3e13b80234f387d8a56e8bcae42e0ca54e534285bca412e7533f3d11d4e",
  "source-element:4c741350aac56b1e8d866fb62130beeb79b64bd17683fb20739b90e0b8b50b66",
  "source-element:4c8d8de3e801de7193e20a374ac89b42203398612cd6ef51964e8c0cd5c05c14",
  "source-element:4ca63108187ef25cc8b6bdc5b5a6bd819c36435431d9a3308e8c51190b8314bd",
  "source-element:4d14a41ec168ba668f0ebf2e180ceeece0555ee2a89954a5f3e103678c13a53e",
  "source-element:4d25a1f8047d2c18604e6c6272eb2eb0e8c319ab3eea07fe95bac9bb11f7391c",
  "source-element:4d7864d13807337aa88d9f864ffa3b11645cf70f78113e5e6ca1cc7018a3eff5",
  "source-element:4df1fa8780c453cd8a8f212776f5e4ef6a0315698e83004c81b26d8d073756ca",
  "source-element:4dfc1122beb8ecaebd030723c16be0cafa31e773e7ed866d1524b85c37601156",
  "source-element:4e0c1842305464d30dafa955f27acc896a57397423d41af74f6db00718079c0c",
  "source-element:4e40619623395efec0567c0204cb6d818454cfcc3e27dcda0817b0d7a253bb97",
  "source-element:4e5743a14510ca4f0b9f7f48e1c97f54f7c93f652daaad03c0c123a7b2bb4c60",
  "source-element:4ebcd280cf362b6b881d973dfd9455f31690df6adc9261609f82af33b34742cc",
  "source-element:4ebf447ea57d04fdc90fb71c3691b0d0dad2b928ce5eb7e5e20ffffab08e3220",
  "source-element:4f05d4c0350f44f4d322ad000b4bbc30f7b1627ffeed8f8111a3fbb0522aebdb",
  "source-element:4f4f456917389117e3e11fcd9ef5fed1f75e9e9476efc3574b1a77ff6a1b78a1",
  "source-element:4f5edd7381b24a8a4c1b67f71992acaa314d2553feee53fe9aed34ae57f9ad41",
  "source-element:4fbfcb31285c218f401af139b934e9e1686ab8d43befec2be7b51da68c3595ba",
  "source-element:5008c7508623c1aab2f5c82369a7b80f1bc96ae3a3aae8df02a320ab7fe1ab31",
  "source-element:502f95c3837f432d8e09aca1872527c496a57bea294202af83cd21561ec1bab5",
  "source-element:504fd965a532ab340d09c4b00100d43952f1157f33df6b77c1c475e45a954628",
  "source-element:5077bee8d80c33a6aa08b2de97573303a0edfedba55905d03801596959af9ca2",
  "source-element:507c943937ded4248cd62378e7d6ac8e0a5d3897d9777029cab02fba5620b3b0",
  "source-element:509da75d80f35cf7f264ba381d1f44705f1c7ff2f968aa778b4ca0e4fd43c168",
  "source-element:50bc80e6a4f45c6fdccdb7bdf8c957bf026c305293b9e674ed017a8169eaf112",
  "source-element:50bca0bd1130c41d0d25ce88dfd8f2ed9e6be890c5730dcba66d40cb79341910",
  "source-element:50c118b804f4e42cb74d25ad759c30de6b68a6e9009cc77ad38bbfb2869154e1",
  "source-element:50e5b668b6d2acb47ded1d33631316d339ed36b423751e0e48e3c9e79c542b28",
  "source-element:50f30f53f2f58f1b5fb93498e29993c0d453d11e2366b2b446f8cf864b6fa38f",
  "source-element:512b17627d7b6c343b82abf848e23e10a4a099db86dfdb16634f475317b772d4",
  "source-element:5170b68c7b660f288a49374b010858b1894d8aace66699cd8516432c75584d25",
  "source-element:5181a8757ceaba37ac190a6374f00ba1c42fc717c2e2975739a06ea56d6c9a2b",
  "source-element:51e2083e201e505cf5612b7db66f6f85ca39cf46ee13bc8da8ee973b1ccb7f79",
  "source-element:525a21d8731a814119bc0c304b9107ad14c7f483128652094fa7558d38149e6f",
  "source-element:52993466e837ed431a9e64a26d9b2832eb27e748b3baed767e7ae34107e295cc",
  "source-element:529df97125f44041fc193a88e9848f5cc2aee706cfa573677666eb172348ee1a",
  "source-element:52c1d0d5013b689a2ed4604b4dc9114d4e6d865ef636e2b4080bd0b3f4831b9a",
  "source-element:52d0fe98b8b3395b93d7a0b18d7742a370f6d6fabf86b6ff901e141c78a45f78",
  "source-element:52e18926c695aea7463494f92d1b4d1988d519c15f59e245e833fcba926b8984",
  "source-element:52e231d445689c0756ef359bfa37242ad4c91d5c708c4b64cdff521611554b76"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L5133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
