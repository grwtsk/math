# primitiveElementKeysChunk0046

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46bd21fe3d0f17ea37c279161fb3e35787152a8179e6520d25ce6be4f995db51",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0046",
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
  "slug": "primitiveelementkeyschunk0046--707b2efe08ab347da9e04b25",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3220,
    "line": 3153,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:707b2efe08ab347da9e04b25b13b78295ecc212eb906270ab5f144a7fe897dc5",
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

Occurrence: `declaration:46bd21fe3d0f17ea37c279161fb3e35787152a8179e6520d25ce6be4f995db51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3153–3220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0046 : List String :=
[
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
  "source-command:196e967d750f6db382633878262f1eca8c415c0ae496eea1b7869da3255142f8",
  "source-command:1973a204aca48b7a34fd0d54c94628c7166bcff204ac053d0b4736790512a16a",
  "source-command:1a0a2666ef6c34a412af535da21147239426582028c32cf0044e46f234f5f499",
  "source-command:1a1b73cc9ac7f317401a87e5189bf97341d7eb3c6783b876527d99960899ebdf",
  "source-command:1a1eeebf38e9a6a3c7f22dd7a6fdacf454eeb838ba06f76c15a077594044c22e",
  "source-command:1a92308ec632b433ba3949428fe696b6a6fd293d9071dbb7fa2707e7806df9e5",
  "source-command:1aa5026715170168a01b8379c6ea063aa4dbe9d6f943ea8086c7ebef92902b29",
  "source-command:1b1c54708944eea7ffe4894f4068d97dacb0397c3ab669280e5c57eb613d4ae0",
  "source-command:1b3bf60518225588e77db2d1bffafd8bd5cfcdc772942846d2ce48bb48eea281",
  "source-command:1b549ef212d6509f4c34df08b599fd7f64a78da6b45924f2b6cf903f7968c984",
  "source-command:1b685d1d6548dfdfdcae716ac08d03612f74b6c61d989c824c141ab323a10c45",
  "source-command:1b7b1bf96851438a0a23a04fc3abf15de318b02cc74c469cea8cefc24fad44f8",
  "source-command:1b93955ab457b98b3e672c8be1c5da24cd44398ce45bf7a040e3ee9330b71d5c",
  "source-command:1bd1674cf73affda50adea473a13515a6ec58eed0c4d7662d60b53ae6564ea69",
  "source-command:1bec832fad4a6913dc338ee69c6808ad464c02b7cf525429ef3a44f7001f4a1f",
  "source-command:1bf8b725603b569f53f4622759b6bdbc6637811bead5231d9a55cac2c7f9659f",
  "source-command:1bfcec7e0d6cbd44660251f1e7bb2931352dcb6102344b7ecd131dcacc0adb9f",
  "source-command:1c03db41b385ec4fda44d1d72e969d6c1f52f260bd0cb0bffa1eb6944d0e1326",
  "source-command:1c0dd0db5c06f5bd47803f83b4a4cfc2ad0a9b85bfe7c0eaf81b16d18c8c5a74",
  "source-command:1c39f24e283e7331756f2fe1a147d51e70354a2bcdf7f6536d926490c0a91c60",
  "source-command:1cc8c6f6b6668af69a48e410697c2d0972dd1ea5914f450427e777894db55609",
  "source-command:1cd77ceabc89734df4b7b4001ddba8d3b546c6c43f25044e6b4e0b41ec060dd7",
  "source-command:1cde52ec365c7bbc3b02faa678f856379ef95e1164d7b5b8a1a964684616695c",
  "source-command:1d30a0d0d2a5ae866e9059ef0f94ce1f11a5ac73c3b0527ef54a1c0278690e08",
  "source-command:1ddcdfed7a286e2f0f987398cd50b2778f25bf1a064e774d793f198972e05bf7"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L3153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
