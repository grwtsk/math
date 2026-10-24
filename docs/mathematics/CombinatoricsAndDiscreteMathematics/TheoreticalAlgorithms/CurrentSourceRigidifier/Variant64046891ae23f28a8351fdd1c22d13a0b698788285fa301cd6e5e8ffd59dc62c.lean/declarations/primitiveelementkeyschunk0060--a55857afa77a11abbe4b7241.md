# primitiveElementKeysChunk0060

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:208cc35e7463ceadc77798227d52855a07c2201fd29fd80c19c7a4f84ffccb54",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0060",
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
  "slug": "primitiveelementkeyschunk0060--a55857afa77a11abbe4b7241",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4174,
    "line": 4107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a55857afa77a11abbe4b7241f00df1365268b0ad5c2d6770540f57d156c2ed91",
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

Occurrence: `declaration:208cc35e7463ceadc77798227d52855a07c2201fd29fd80c19c7a4f84ffccb54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4107–4174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0060 : List String :=
[
  "source-command:919dcf635a714527af05de00423096d99e3cefb4c7d1208e3a6cf3abda0491de",
  "source-command:91b420c7f102f57cf91ef1534baa15b99b2c388d4c8d7f8bd09433f59ca7904b",
  "source-command:91c8dab7d9842c4239ea9d3b24b7b83906ccf0bd54d1bd67aee10da131b58937",
  "source-command:920126ef8ef7110782dfd3d145877a0d1bdd91ddfd6298ca91b908d5a0e7af2b",
  "source-command:9213f1b005eaf65cac6ddf8073c1c457353b8474129eea48d74a85ce14ae9682",
  "source-command:92453595f522447095bd0a5bf323e565f282591b38ab9912deac00e6da6fd206",
  "source-command:9256dfe500cca2d27c30a2b2898e8922c75829f9ccac12f7988ccf44ad0d7da7",
  "source-command:92800ec38b97ace6c3d6b408d701e7d88fc6310bf7743d0a71c2c2fdc25fadd5",
  "source-command:92c4775f854dbb5c937ac175acdd95fa10bd2e82d45027bba8863337c821590b",
  "source-command:92c52b8a2bfa9fbd8088cbca768c84d888a62f74acde743f0c666f6201f3c982",
  "source-command:92c96427433e43e50a44748f662123ffe4e7b5357b483db392d10c7e514a767e",
  "source-command:92d71ab04f5e0b14f59a84274bc64310008cc2ddf72cf234d8b8a8e5f6d0fe15",
  "source-command:92da96430d6ad63b97614a50cc0df348a23338f8c09e02ebc0f374983fc2a1b9",
  "source-command:92ff1b8c77d10a2863e501335b8d54ff8584bec97adfff74b0d46e54eff309c8",
  "source-command:9372624061ef747aee487d97f7d4197f999753dd54f13f8b671d3c2c930dbae4",
  "source-command:93b2bf0f4bdadf5798fb176f1805dbcf3a487d750318b056a7ca59f29fb4b5af",
  "source-command:94377aff66118b6d6c8a88db1ae055d4b35ef7a605b3a68b485c5bb4160b9d69",
  "source-command:94b8b2753ceb89c7a9c935294304266c621215187f0164213e6a66e6c84d4a30",
  "source-command:94d1f7638587b32e6390b13619d498b8d4257cdd2cf6f4c449455ae4f7eb15e8",
  "source-command:95030c2c84d07d1fec2266362ae57c9d39b4d00bee623c824293aac4e43a036b",
  "source-command:95370eeec8a57106f8fe33b88379d84b3cd478a103d1bc30d396237f6105c42b",
  "source-command:955af87d4ac839e4742504bac29bdaaa4f6ec65ce3fccc49feb7abd3d2596d2c",
  "source-command:95d46c0e58b0f3bb335917a7a9cad108bf772638252f7debd0aff17f76714361",
  "source-command:95f88035774c014cee29e19209abc1cb83fb043c3287bcff61fa43171d582681",
  "source-command:96204fc0f7a4b56f55834b2b1fc67108027054ef70f2748506f63041e70bc89e",
  "source-command:965e0446ca26c088bf70b7e207033b5c259dc2f49817944358d8f5d0059a78a1",
  "source-command:965fedeb9dd0f9c06f14d23e7e1a7cefb30734d7f1ba70bf9468442d080bd6ac",
  "source-command:96beef9a8927c65fde6555b627954448d25e69261bc8c1b113cfe78039bb593a",
  "source-command:9705a1b0346bf812f9d740c69c71e472c9dd4d2df102000a5011ff801480e70a",
  "source-command:975f4de8169b7794b0e06e51d15564bfa3c4bc6522ab4d52ae4a650d6bce486d",
  "source-command:97915ddbe8281e791a94b33e4df897e031dd2c77ee781afc75df037a85c2f407",
  "source-command:97abe4cf983f6fd575c4cdb4add28a741dd2ed44e647c96942b25790b2ece577",
  "source-command:97c43dd94475b32335e88b46b8077cf168bc90fbeb76d99e31ac017dfe4db0a3",
  "source-command:97cb436f73cb9e1c57b39d8325f987b27ed2fc64b6dbcb8cf9b8187f1e3e1826",
  "source-command:980f0bb3a21c64db866c62ba39e1f8be2cc99c6d436fa96c68665c0f2f3e2c10",
  "source-command:982e184976972255558a7f7d21b4a1cd2f59b3b9d914c839a3ceeaa7b4d592bc",
  "source-command:983e8bfc9598414843643d1ef85563f6d2a2256717f266457e8b09677626a0ab",
  "source-command:987b55f6a5d05cb7a50d87f2efd8ac8be137f5cd73c24c16f9be9803bb529389",
  "source-command:98d31b0042acd7e1426b0a279445275cb5fb026dd8bc18cde287fcd3abf881ad",
  "source-command:98f2f5e573ed06c86c51467914413e6a7d18c88e60b3618ebec218b106237a29",
  "source-command:991e2713bb187ca239786542bf71a7750759803a6af32ddc345e10d7619429a7",
  "source-command:99533565826926a184ceee6d6cc6eb0864a1a74926876a97bd357aec8fcb3106",
  "source-command:9972aa1e738df45a342ec5dcb9d43fde66ebaf2eed86f9c09bc7326115cd9a5b",
  "source-command:99b18c7c806d5bcceadbeeeb097a3e0f056ac31d0d7b699021e5865ae5d602c1",
  "source-command:99ebc59dafe66e99a360022a0ad301d11f558617a1a95cc98e63721c0979caf2",
  "source-command:9a0efb1e7c2c0dec89aaf77c0f0fbcba42f2e921e7f46ef177fa73e07981d0c9",
  "source-command:9a304820638a0dd32c8e0d30a237cb99415890f23fb7c94a0aa30f4aca5d8bea",
  "source-command:9a47a964bfabee341ea620e3a0a41202d8d4cac54fa6b902a83d907b5322c26a",
  "source-command:9a5d53b8e9b424d6c7eb7e5ba3380bfb3c875105c91ae5846c615647d5c304a1",
  "source-command:9a7c24e214032e03a32b3968733896c3d96982ba988f680c8fab2fd486064021",
  "source-command:9ab9a4d0a29d79c7812e98202b1a183d6c5f56145e5c192372dbb616e789c3fc",
  "source-command:9ac2677bae0a0c7b66de3dc2e2445f422bc154197e001f84504f25c65c609f18",
  "source-command:9acebb83674e5fc0da45c5ba4674e08556d691447b73b2fa442fd4b0612ef500",
  "source-command:9b683eb4341a8dbd384dc2829f731646224eb56ce771f33a008c920e279e4b33",
  "source-command:9b6bbb882f8c9a03da35ab82d1c0aa29b7171d30f60ef3c5827f30436a2dd3bd",
  "source-command:9b9b8d42430b992f7e22c9d810c59298ef614ae13efb21446440ebcf140ad332",
  "source-command:9bb3249cdae5fa65562ab198932c1308a329228dbbb725dbd810bcf3601feb5b",
  "source-command:9c2ec924c41bed55506189194ddd2654306d9ea8424a7d39dc1e475bb4425646",
  "source-command:9c3a755e45c2e14743ca2c29d2b2f7a45e6a59add2c09f1a64715376a0cf66f4",
  "source-command:9c5cffbbe2d9605869b2a1e770bb38dd0c5f1b17852190c5783a9920a2e7d5c2",
  "source-command:9c726a45114a5c3b97a30ca4703faa2a91fc3d803973a06da3af62ca95b7612a",
  "source-command:9c768f1866d70769eeafdf75cd8c02594d76bad923403b44e867a1d81825b2db",
  "source-command:9c793ab3f53b65c22ab02083dd6312725ad3c67055aeb338a2faa244f6f73c70",
  "source-command:9c9f6d650b1a6aecd52fc2530c2af3b6b535620bdb9477a7ce5b88b17ab78070"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L4107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
