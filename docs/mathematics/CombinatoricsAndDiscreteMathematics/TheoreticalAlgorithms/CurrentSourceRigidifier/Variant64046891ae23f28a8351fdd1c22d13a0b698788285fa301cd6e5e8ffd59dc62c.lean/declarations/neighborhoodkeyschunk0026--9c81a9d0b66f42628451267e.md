# neighborhoodKeysChunk0026

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb3bf37fe5688704527345d26859e2bffc1bea199108cc98a8c43c46b21bd2b9",
  "kind": "def",
  "lexical_name": "neighborhoodKeysChunk0026",
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
  "slug": "neighborhoodkeyschunk0026--9c81a9d0b66f42628451267e",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124546,
    "line": 124479,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c81a9d0b66f42628451267ef16573cb907b80d80e14f65b2f1f5dcfc290f283",
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

Occurrence: `declaration:cb3bf37fe5688704527345d26859e2bffc1bea199108cc98a8c43c46b21bd2b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124479–124546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def neighborhoodKeysChunk0026 : List String :=
[
  "formal-neighborhood:c9e736d2d7da2e7e1068153f07491d267cf688206b96b3beaad16aacafbae510",
  "formal-neighborhood:ca0f401391955b9863ff2c5abd5b6e7b733a3402123044c5cb0a7eecbc9f4f58",
  "formal-neighborhood:ca37b927fbb4e90be84ad93d3bce582d6b5f787d2bce0e82766d8ea3a2dad6ab",
  "formal-neighborhood:ca4c32796387cba33d71d9c7e7952ea835ffc665ddf127d620134b767bcf0d78",
  "formal-neighborhood:ca5af27313e4caf537f7766b434f45be9ed401431eff98d77afff1ad36fc868d",
  "formal-neighborhood:ca5e3ef14c308af8816b5da50d20903186fb840051902297180f65ae9fd29015",
  "formal-neighborhood:ca85785ad178ee9532837d58c9b30735e918b968b519f814d7b7525221e72663",
  "formal-neighborhood:cab28f89f2a612a3e8f8df0099b3182a75f4f33a5d3f357020fad93a8f72e301",
  "formal-neighborhood:caca62a9ee2baa6a3e8ae3820710c33c5b6b3dea3ce4c7f80354b2bc2ce89b7e",
  "formal-neighborhood:caf06e9b4c856e5e9faa9b3e8e8fc7173951e604dd3027dbe1036cf323409cbf",
  "formal-neighborhood:cb18d32bf4b5a632f811b1ef42aa555c2d27a7668d7f0b49607c6ac2408e5606",
  "formal-neighborhood:cb3c6b2990dbc3293d5021f959550575a1ee809e46e36579e37407ff900f646a",
  "formal-neighborhood:cb725f7a403a2d689cb6984cc32d0b6e02c57f2915c694accbb936357009c4c9",
  "formal-neighborhood:cb744f31bf42f89245f03084e7bd9f53649295a493d24a83adb700a6e54e5690",
  "formal-neighborhood:cb81116c2c387785b9b2014d2cfb14afcb7070d9e1b827a0fa7f9279c5a3d344",
  "formal-neighborhood:cb83bcaa1c63843f40fe66c9b5ff32b2bac4ec50eabdf94f169b73cad23d0d12",
  "formal-neighborhood:cb9d3567bc07d91d943f672c55655851c09f6e8df0501107a3c4611cd9496fdb",
  "formal-neighborhood:cbc90c7a7d7eae75a808c448fb4379bde60c63d3549cfae7e48aa2e979d4a9ee",
  "formal-neighborhood:cbcaf65681782529b9799ab2ff354855e9f627e78d139f821c71354165e2580c",
  "formal-neighborhood:cbed699cad7e57f074254fb8c4e53663e31df945c51883d12bad7f9d6be17c68",
  "formal-neighborhood:cbfb00a3a8fdfd57e4a82294c2fefb1f88b8d92913578062e53022dd10355834",
  "formal-neighborhood:cbfb2967bce7ab44f428670484420da73bb7c7c210b41efa6d4033294d42fbc0",
  "formal-neighborhood:cc19d999588cdde661912005d7ee7c52c492f609e22ed9a7aca9d295684cf74d",
  "formal-neighborhood:cc288a372a40887dbdc25906128c53927a2748d93bb264cb158d27922c765b72",
  "formal-neighborhood:cc2b79bf37fd73ff04100ab9014c9ffe2362edf038f06682352b5a483bd4285a",
  "formal-neighborhood:cc6bccbe0481c2a6b79cccfa7208e127e465eabbba8a6124634604f52a32554d",
  "formal-neighborhood:cc773d22a6c99a935c656ea8168237acf7f8eba6b4a2e187edd3c8d6745db7d0",
  "formal-neighborhood:cc832539cc1671ebf558acadc56a2b11693b2525efc79f66615e2f364d866255",
  "formal-neighborhood:ccd4219f77fb40b5caa0fde5293ed579b5f230926f75087432876e81c9b91e71",
  "formal-neighborhood:cd1d74e63716edc51bf6fc4301f8d8e3ca95ae1ecdcfce9572d1067dd285e354",
  "formal-neighborhood:cd7dcfa8e4d66c40b64d4fd6c08e7f85fb827528d5a8e6a3a1c6d6c589d9ffbd",
  "formal-neighborhood:cd819d8f52f70cb8b091a65714b4c73d071f48ca3549d194ee0cc4cff33ed7cd",
  "formal-neighborhood:cdab10ab68d5bb682fceeebb61bff0d43774fd7657a89081cd63dafb37c77d41",
  "formal-neighborhood:cdeb1d4d506f935c66710f1346f946a0e926e16cb1c5bf6fc38cb59f002d5e41",
  "formal-neighborhood:cdeb3c077ffbbb2053397708397158604c5432fdab8e37a0b167027e7ae6aab1",
  "formal-neighborhood:ce0e3eda72d86f39e4e7e073b8d61830e2823fb8d066c3516303e3e6bf4b287e",
  "formal-neighborhood:ce1f1b56c0dd484ff256c92f4f880e86de28b4e18efed6ff4eed9665113f84b5",
  "formal-neighborhood:ce31bf887b19130abdd3bbd5cb11588b523863da240317fc45989bd950544ce4",
  "formal-neighborhood:ce39f2077a28016a5c15576da4ab0eda7217f8f954889cd3b3d5bae144139b46",
  "formal-neighborhood:ce467f7433864fee8742cf60967adced518af476709ae585fac774b3ad9d5a5c",
  "formal-neighborhood:ce4d8b860f199ea7541263803f3c16a8dc3d4291ef5d7ee9b65f653abb87ae19",
  "formal-neighborhood:ce5020d5934ebf13714491bef56dd85d05d1143381ce48241153fe868bee4d46",
  "formal-neighborhood:ce5a53006ec21e5299be57d854f9ba3eeebfe823335a93e04aca52ad7d3bc6da",
  "formal-neighborhood:cebe2ad7bd081ac29216cae0a8abe1c224ac84726569883a2ed376933d91e1e4",
  "formal-neighborhood:ceca417ae481e2dff5520fcb6b94c4da22fd72c4813974c58fff69b42f7bfc53",
  "formal-neighborhood:cefb6f49eb61c6df1ff623cc02500d8ee55da5e929033bae1a4ea0ba791cf817",
  "formal-neighborhood:cf185657088bdd99e55804005e62e011a1e1b5a61617a8e5205f0d7f3624d811",
  "formal-neighborhood:cf24a4716ed81bdc45804d9a3f17247e32a9ef33ae99ded6a44c032341c25b5e",
  "formal-neighborhood:cf31b3751b145a5531d50eea8d8cc92bda6c7c414cc1a82fdaebf0d6aa427587",
  "formal-neighborhood:cf34d9410db62527640671821e8e4e2e2c1f2676525731d9341b25b5ce904566",
  "formal-neighborhood:cf46762da7356ecf271b8757456ab773486524984cb65066a361a94982dd0510",
  "formal-neighborhood:cf74901a8f92fd4ebc8c1ea0f65d01a48ae827e0e80bee16ddb3183ffaed2828",
  "formal-neighborhood:cfaffbf95dec6b61407705edd77f428ab491011ad755dde308f638beb3c4b697",
  "formal-neighborhood:cfb9b4243ee4eafb24fb8c673ec62d781a46c0ce1a6307dc3bfc892c9c80cff2",
  "formal-neighborhood:cfcaa6a3e963b292690795aa80ef03a2ac2b4428c3cb95a2a55c771e5b3459a7",
  "formal-neighborhood:cfe4c0d382d694e37910f2bc1f8f103606f7c2a7d8f80c7b491c89b06fa519aa",
  "formal-neighborhood:d00f835f6d95b5bc47487145c4f1ebc1692b782840bce23f8227ff45f5042a59",
  "formal-neighborhood:d03711b47379c048b62fe45e13a1cc35a66a1699097a068b475efd798e5d8a50",
  "formal-neighborhood:d06fdc635ece28d029c58b10595b7a488e70004a88cb839132057d9db4bc22fa",
  "formal-neighborhood:d06fed076456606470bfe53d683bf3d86b23d0b8123b6bdcbfc36e0ecd880f4b",
  "formal-neighborhood:d072bc64dd68658c98af3e77901ec6e4c2fb7386230b53e876c18ce3683e45d9",
  "formal-neighborhood:d07363c432249ac4ff4e1c7ee98cbcadd81a5d9236a632a7c3254b98641a9847",
  "formal-neighborhood:d0b18a505d60819926924282108a069f5d708afa716f67e402d1b9788a50b473",
  "formal-neighborhood:d0df5d9bab933080a046a4dedb59afe865353f34960e8d273784c448cd48c9b5"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L124479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
