# primitiveElementKeysChunk0058

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7db4a169c5de76d100b2ac13f93161918474d429aa25372f2d85db4d31e1ca0a",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0058",
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
  "slug": "primitiveelementkeyschunk0058--68e417abba8569264cae4188",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4036,
    "line": 3969,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68e417abba8569264cae4188b89281fd7912f0688aa0dc66c7a825e0f56569ab",
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

Occurrence: `declaration:7db4a169c5de76d100b2ac13f93161918474d429aa25372f2d85db4d31e1ca0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3969–4036.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0058 : List String :=
[
  "source-command:8c20f7d112ccaaa1df455ffe5c0fffe065cd4d64019dd9df49f12ebdc0a3b667",
  "source-command:8c55643a971674ac1b47a09457d0fb1d9c7d448580fde1e5513089c574846de3",
  "source-command:8c5b4f24dbf96afa91fd018d0930a17f7d25dc0808d6d40d31f8151e605e3637",
  "source-command:8c9b3cfe6d821f07915a639a615734b45516589d6e763505de497c9ee554b907",
  "source-command:8ce03c57e98f10fd44b7ce5b6deff39f081d81ed362a5d4f5c720d1cd44b63b0",
  "source-command:8d384bbd54bbd92e9d35547a8cde51ca263fca0205c2549296b93336980a0c3a",
  "source-command:8d4e3cfe7f1adaa3fd813bc7c7da0ea2afe86573ec41ace10889f70823882f29",
  "source-command:8d77c86c08242323148343eda85b5e0bc4e2f654cae541d12b3491686cc994b0",
  "source-command:8d83efde4d60d4c1c26aaf837bbae393646faa2a87aa8a2fb8ef249e3037f209",
  "source-command:8d8dcc9d23e2df7b78505d1d17bbf7c18e8d0085e73a883481a9adf9f78b1428",
  "source-command:8d91690fc71714fabf8bb9c70f9094e104d4a6aa660b9753d7f831dc9c7c2a5e",
  "source-command:8da25f858003ab0337fc98356e9c2f487516b12ff1260d8acebce829204465cb",
  "source-command:8dc30ce15fe0bb3e7b8642b0f6a415957b9f0a7e4830187cbf8547b23a2f5494",
  "source-command:8df86aece903871e92e48e6173a51d9bf54571ad650e15246e659d8686e74c1b",
  "source-command:8dfa4f4e2df6f4d17ecf97e83bd1e9008db40e9bbd4272c7ce625c29bfeacbdf",
  "source-command:8e472af06e1918d0d967d32069b4dd3f13f49d95381994dc09d6e122b491dedc",
  "source-command:8e87e335309953b9be2fd5a0bb3f8b53fd53f2e33787f781b6a5bc8beaafe535",
  "source-command:8e98cc0b8458b2cabce6b63b32fb5a7090c8c7504db732f135818b38ed3214e9",
  "source-command:8f1970a31897ce5c7e7490d623997cccc1a719d18c6b5ed4c7147c944fabfad3",
  "source-command:8f240455ebad71ddd0e955020fdcfaade21584cb1d5139ff8269e47497b8f3d9",
  "source-command:8f375f7e7f29eb6b941a4a0f191f419e6f17e27794062abaac229e9ec6c56879",
  "source-command:8f5668b96db20f01a585c15722f551d251ed9cb211f5ccee7761396c79c59fe2",
  "source-command:8f7f231ffb3844238f290262d166bcacb656528f355e7f10aa5898fbcdb2c74b",
  "source-command:8f836075cd010b9d0da020958edd11a8e248dfe0a44a293f71005b47d99eac30",
  "source-command:8f8cfa044b8c117a8df0f68ae69bfbb1143c49ae539e32f1d84ea2a255e3c9c7",
  "source-command:8fa7cc85bbba6b051823a9fb2cb0191d77543bffc456e11552c6b4e92ef1a23a",
  "source-command:8fca7078a04a1d359b731a0ead1a7ba979600ab6a21bbc62c32ab13e9920067e",
  "source-command:8fd50f83896bf9428adbab5dc4f8c0285f23f1173851d1cf147ca2830ab05836",
  "source-command:9022b05a9d6be13106da832b2c0827bd3f0d0e92914b2d79e6a318e4461464d3",
  "source-command:904536b78681955ca15d00c1259866375bf473ab851a0892d563528fefc7e88a",
  "source-command:908c30ae81c3aa09a1f6bb6e9e7d2085b67b240bd55066e75091f7c84391eb31",
  "source-command:9092bc315b9b043f1d7acb56b2fee8bcde4843ac44acb6cdc679effc6c173b84",
  "source-command:909c2a5b3ce11cdb444ed5214db13207aaebf06e7c69bc38b6b9d226b9b57dbf",
  "source-command:90a54d60f6f0f2a2a4b4de5e9c0f55670a7a7b819392954ee8963359c614e1ac",
  "source-command:90ac639e93a0dcc612ad5775abb19b0ac48badaa6875b67e9eaa90d0fc16bd1d",
  "source-command:90dc0afd1db7f0c57007b3f8010ff876442e99c943483137fcf3171e9dc949b1",
  "source-command:9132a202f587c89a4bb6eebe5cf447832137b4e9f175bdfd871f8221dda72318",
  "source-command:914e5a9ec6f544f28f845a57dc11b4c0708ebf3da50caccc00fe97ea51d8797d",
  "source-command:9169db2ae46e3e4cd772e01393e11f08d6c4c598d134b1ab0cd0a248019e7fee",
  "source-command:9195ccdf9ac50eb53492d0ef854eb2b8924e239f4eab014d193ce4e09cf69d94",
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
  "source-command:95f88035774c014cee29e19209abc1cb83fb043c3287bcff61fa43171d582681"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L3969).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
