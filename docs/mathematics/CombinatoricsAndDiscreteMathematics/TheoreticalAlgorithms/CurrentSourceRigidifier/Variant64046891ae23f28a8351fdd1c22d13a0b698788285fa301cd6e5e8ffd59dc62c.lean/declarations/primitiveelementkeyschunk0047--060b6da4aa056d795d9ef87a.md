# primitiveElementKeysChunk0047

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8646c12be3054b8ddc150ed7fdc54af6b0a289b400f77f50dcfc4e92e79f2378",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0047",
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
  "slug": "primitiveelementkeyschunk0047--060b6da4aa056d795d9ef87a",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3290,
    "line": 3223,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:060b6da4aa056d795d9ef87aa6afce8af93603896fdaf15c5020bec002252e3d",
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

Occurrence: `declaration:8646c12be3054b8ddc150ed7fdc54af6b0a289b400f77f50dcfc4e92e79f2378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3223–3290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0047 : List String :=
[
  "source-command:0f44630b6b48b70a93b65552135eebf560bbb7480ab4a7f9fa396b43d5a5091f",
  "source-command:1076bb839a86690061a96be0efcaf3d7d06073df2c0f864fcc86c228b8b7181f",
  "source-command:107ff2f17e40f7dbc28c1e7ab574d58123f0461a1e3fe0521cebf1d77f4ad853",
  "source-command:10807e139cd2e83ff3c0b68ee5793d71eaea40dcd2fc09378ac9e61c6819045b",
  "source-command:10883327526b28405a5854c49432d8c697560674d41afb4b1d488eb745358ccc",
  "source-command:109e4c836cbf4ca6e41a5fb5f30ab539dd93e46cc3fe1022bc0c924e542c5695",
  "source-command:10bf6e676d4a0b955cd49f7ebdc0f3112599d3ee83e8373758c2478caa9291eb",
  "source-command:10f2d823bb8c480271e20c5945e742af0cc8111c6be24d136571b691ad56eada",
  "source-command:10ff8928ca8927c950a41116b9fc687b6faf32676b736ff83d32b4f32d77e4b6",
  "source-command:11011c2156f921e0aff8306635074f68a62b519737299c30d0d4d52637905b72",
  "source-command:110196edb5e3eb9fcfb2557bf7857c865e18413debbcb7927c5f29737937a32a",
  "source-command:110f3d5390da0ea548b21d1cc3686aae4f3bd199d96f6ec7c458c702bec55310",
  "source-command:111b19339d27d0f7e203cb7ae59215c4675ef6e9ae1571334689681bb6a86a46",
  "source-command:111fbbb6d3f56b1c71cdcac610dc006978225edf03fd162f084aeb98e5607c94",
  "source-command:11338062bbed500edcc0a99c2d77731c36e7607a5f53f141efc6f5c5fa76608d",
  "source-command:113a11acf422db6d2aaa90dd133e6bfe7d4cedcb0ce5167fe58a6608f18ef603",
  "source-command:11575b2748b4dffb8bf288cc5d12dcdbd464b3ae5e5b06841d27a8364d579c89",
  "source-command:1159b551491ff1d79bc77c67744e8ef77d5c1e88d1fb8b1d7737b3c24a4e5c3d",
  "source-command:11719f95f116ffde82cc94082d0e6e27459f1bea0a3354e49cff6a1f2affca5e",
  "source-command:118aa5b968f9696aca523433b8e8c12e92a8c4c003f0ffd3366b04c4914fb869",
  "source-command:11b2f65b61c7302630d02c494d7c127c7f2945c1bba3afcce84595bb0abb3094",
  "source-command:11c9057a5fac6b1c91eb21b2cf2a969048ae6392168dc6784c6934886af9649d",
  "source-command:11cc48e68ec2970db3feb52a658da193442630784c973972739fd09e6b7fcf0f",
  "source-command:11e51b86e1c90b49f9cfd004dea10ac0f842c27d179072547a1eddd37821696f",
  "source-command:11eda1f28b4c267fa7ed6641cbcbe39305434f35ff9ff35f67d3a25462e50b54",
  "source-command:1205805ce65c41de6d38bae1bd6c72897d85181574c0f22fa7184ddb1aa9b8ce",
  "source-command:1255b43434451e8013810ee4703f3357b948d1cd28c047b3334f7237eb112f77",
  "source-command:127490dabd8782e361dd14062945e2acf1a419b0b129938293dc268e867b8cc1",
  "source-command:12b610ec5988afe97e2fad14616d356a8fdcb0ed1b1485a893b10274cd760036",
  "source-command:131eb301192fc00820e0ef5bc7fe411fe39e25f32be3c57d397ba0514c3aea4a",
  "source-command:132e19c6d1dd1c6fc389dd2017bb332e6183f99be8048d86635e155ead9c5720",
  "source-command:133c46fd19d752b52651086e2c9f1b300d6a85d12d9e99bd34fab03719572eb9",
  "source-command:13550e9dc804697b54e78899f978b365b53954938ac78d5912fae235a76351d6",
  "source-command:135b3750a63b3084d9e5dd6416ecfa08137f42116abb17c70557cd27705ee331",
  "source-command:1369cbc3e1844d8bd71e368fdaeb2277acb849cbddfb32730dcfe4720be576ff",
  "source-command:143b4796fef21b26510a4f26d23ee669da0545aa84d16ebc395304eac0eaddca",
  "source-command:14457c6af216c4b22e7ea034a2ebd37d8a5f7d44d9cf98a5a6b370be32839eaa",
  "source-command:1449b54b8851a75c2fefcfa80c1f9a54f7b1d741398869988bf4423f7a38c03d",
  "source-command:14bdb7e4eea4dd7abedf27e54503d1f1fadec464a45b31c8eebd915098588220",
  "source-command:14e3fba610d65ce091b034659197f8b8bebf499d76400aa6415383459e034059",
  "source-command:150998579ab5415c7e85c1657021916d71a41ea65089dc812dd4481ddb31d741",
  "source-command:1541551c400c34b3944646b711a764a243b0b940fd3c2d8348551e19c2d82653",
  "source-command:15496469e839910bb70f48c4f9812493492b12407f04cc8eb128b0cf1ef2f0b9",
  "source-command:159eb645240f47d0b1fc285a9e59a5bfb42605974bd7e94f760c73c748718480",
  "source-command:15c683fd48fcb4b17e96d991e783703efa92bd06ac4041fa93499e91552199c8",
  "source-command:15ce75b0f4d71de8d61e89fcb9564a4040fa04964ec6ec56abcbb4e185fdf05b",
  "source-command:16064e494269e79dac3e5fb9aff454f39a686066fc150da63ca997fec991e9c2",
  "source-command:1611a1ec80133dcfd9f84e65a5876ada24d43b0ebbe41fe54d3c30e8c44bde9d",
  "source-command:1622498dda6d7c528df769926a640e05e14fbc3e89fb63fee87091217a2a1b27",
  "source-command:174c40a07cbc713695abc814789bac90b1d96e61511e7f3cf7a9142581f4fb4d",
  "source-command:176e1588188b51e7f99d9ff8b54f247aee9d3d4aaef4a678acfd0338f9a5ba5f",
  "source-command:1781d5c631b53e35151f03965f9e501c409086ae40f963891034ea0a70e25750",
  "source-command:17d165206cb9dc91dba75430d6a764453afe10c62ea69f0db8cacacbba5c660a",
  "source-command:17f97ff58068f8c27c58fe7df2598e16cf13a8785a9bdb93ee4e4ce5a239af36",
  "source-command:184ae1746e9630f60763d999dfdea7be2852402b99853a09059730108f61989a",
  "source-command:188336cd80a54f1efabba959a676fe359cdadbb8a0fad98173f76f2f9a2076a7",
  "source-command:189ad5fe107a1f9506c724af5dd57770112397145f5105e790aecfbe04e72bfa",
  "source-command:18a7f25ff1d4ba0c53eb9362ba526e6fad9b22dd0a5f429ce5f17995f8b76032",
  "source-command:18c91b182af74f32dbfc583b981e2b8360232c0b318fe680b0ec44fcd44815ad",
  "source-command:18d12188b8ea54119ccc4ef514deefd8073286915f4745e9570c4e790bc64659",
  "source-command:18ea752f35a476da8bd54d1750f78bb3dacd0ab2328d63f19dc44e67abd5a28c",
  "source-command:19055600fb8a7446c1f5a8e0b4d6b96d120bc2b82e159b4bd784f9a73a46829e",
  "source-command:19534b3c1676b47dd4bf166a9400a3358f8e1971c4bb32246486467b1dfc1ec9",
  "source-command:196e967d750f6db382633878262f1eca8c415c0ae496eea1b7869da3255142f8"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L3223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
