# primitiveElementKeysChunk0061

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:872391e820f4988aaf307cc04608cb7567276349d3df2c5230338afc98f672b2",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0061",
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
  "slug": "primitiveelementkeyschunk0061--5643cf31e8f10d49ac25bd99",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4240,
    "line": 4173,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5643cf31e8f10d49ac25bd99c88c1cf38c6c1a9ff13b2daebda4c01c567e7ec1",
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

Occurrence: `declaration:872391e820f4988aaf307cc04608cb7567276349d3df2c5230338afc98f672b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4173–4240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0061 : List String :=
[
  "source-command:aab43a5c41085de6112197e433a64727296821ccc37b21f119100688d6ae3f38",
  "source-command:aaf1e387922b3cf8703227336484b1057596e55456822f383ef0e0288d5b1591",
  "source-command:aafc2946a7ade6ab9c1b0af356eb6cbf4639ce0bf160969f214a9b88879fb1db",
  "source-command:ab2b801db20c06c09517ded53c60a4acfc4062ba6b11db1eea8ef31c34f53c70",
  "source-command:ab2e7a49768bf740a8fb515bbb371018e819b9068151d475b748989665742530",
  "source-command:ab4cf82065fe01250e29dd192f72126a42afff2c31412b2838199d3ef7f19d6a",
  "source-command:ab836dbbf734bd20e7ca1f8f25d4a089c35ba031340f1f2c38f15ae10c0904d3",
  "source-command:ab9d394690322be005f02dcbdd8d9694ab89c6bb8c58a88552592b2c9624c3fb",
  "source-command:aba636e4c0205ebe6caaef9956ec0336c95611601cd62edc6727ff4608f213a9",
  "source-command:abb8cd2da0dfa8a9022ea9d68dff363643bb3e376e88e9f19d9acaeda36a3da3",
  "source-command:abbea25d850fad8d4efc511a6c2fd2e283e3097089f9912279ebf3267769124e",
  "source-command:abd193315c2dca7127bd1a959bdee02c09ebfd3dc7114673669aaff75b18c003",
  "source-command:abda4c08630520669df03787b3652009c77a391ff1e74e56924e2a5e6643bb6c",
  "source-command:aca1ac1a908b813cd54e0eb1c17a0075f5dc8b26576e498ad562b38fa3cdf7c2",
  "source-command:aca4224fa1b038181ce43bedbf314121dda44aff79ffc96eea5553d5127ddff6",
  "source-command:acc1b87ca814e44a2d104efa701cabc4ccbfdecdba244ca39255beb26e71223d",
  "source-command:accc64f4c03adb7a2e9c820c1d50ca1d757aee8d458941e27bc674120b134531",
  "source-command:acdf516aa278321452e03f17076d307e4946ce9520a479bf38422e73aee57862",
  "source-command:acf91977977c51556a5379bc5a7006427edd5108a628773785c22f62ea211937",
  "source-command:ad25ebaa77a26915da3786b4254f8948a45767dc198500167e8515b458e8421f",
  "source-command:ad723f365f321e2429084b7d37889054fa28539fb21f1dadef48b81147173ff6",
  "source-command:ad7510a0c5a6b671443a196e0409fc6c16fd00b697f6d12b2e67c8256d0df0c4",
  "source-command:ad80d28a90d6a474cdd4a50d72aba7034f792d07c252063e17873efe02e08065",
  "source-command:ad842d13a5dcc5455278ef5899334c3e94e13b998085de47d79fd7f2b7b77af3",
  "source-command:adbc168dbc5fd77e08c5f06aea45ad5fedc67de3cc870758e5c8bc37ffb3a458",
  "source-command:add6f3eeeb48e66194857408bbbe148eb325faa6a231b8db414a0f772b7be780",
  "source-command:addb7ccc7c66087a8397fdc4b769220a9aca4072e8be5b10321890e3e6b4cf22",
  "source-command:ae0777a4102c9f21254a2de705cddb0b0138849f02b1a958aad79b50039486a2",
  "source-command:ae74360fd1c088048e4206b2c23a3fb434fcc14345fad2d42aa2c5a90f19dbbc",
  "source-command:aea2faa2dba0c6628d3a4bbbfd9dd0da904bed75be23afafdd9f148e064e28e8",
  "source-command:aee91b419893a445b231c80488b0752660b9bfca2dec7fd35d3060e1f9f03c96",
  "source-command:aeefb84aafd3db44563d1e0261a05fc37ce2313100d592de4b42e3b3b8509ee6",
  "source-command:aefd1053eae0d740f36efb63f7ef392832b35262b7790a360d08ab9f440f2409",
  "source-command:af6ab9a826787c64b8e3a418cbb4a1def2afd0656db26526978698e5dc028600",
  "source-command:af88c7f9b39c2a6b76af8fd0176554ba7f7c7a22fe5eb0f5b18601b64a6901c0",
  "source-command:af9955884a4e489bd193822f4c48b87c5c33366eb955783d9a6be8a3982fbd05",
  "source-command:afd45e408bfdbb287700c6fe9f658633d7294ac873125db034f1943f8f250971",
  "source-command:afde34fb1161549d9664b97808f0c87245ce193833c5876ef8594cea4f8a1401",
  "source-command:afe22232eb73c4fa0bf5456f4ca56eec0fd2b6e28ffda23983ce5f5e7372fbe0",
  "source-command:aff1095a63fdf5b4cf804de069b02cc911a6cfb8b7ffd0c980cf745497ee4a47",
  "source-command:b006b69d111e159432b6e041656a6159775aae5c79cc0dff80a7aeff28b62bfe",
  "source-command:b01845ce3d7f2ec9f90525a24bca090f9e0de40e42c929f7fcada1ee9b3f8b5c",
  "source-command:b01916bb08b431afb99b771f60d77c5d903341a9ed1291e0ade7282a99fb2b2c",
  "source-command:b028808dad7b509093d44a09a2a590becf11c02abf899621be8b1b3366cd0310",
  "source-command:b0344041c85939dc01107e71483d060ef6dab44fcb7617d194c5b2012eac397f",
  "source-command:b09aba2491498af50aebb4d1fd2c8a946d1e8418392dab0bda92589adbcfab8d",
  "source-command:b0a3f6d22927007630141e1bbb8804cf85c711dd25720e6c5bd5efa1e299e4a4",
  "source-command:b0a9b1ab6a728d9d57d9be24c7fd31ae4d68f8ed5ff5db6a3a08c0c0bebd3119",
  "source-command:b0ce541616d917bbd3d157d0e004e30c750da088becb8737d5993df8cae5c827",
  "source-command:b10456fe4a5bd5d6b174a98575036afccf52cf05431c73abc6c6fb3d31fdc968",
  "source-command:b11dbdd87670717a77497f43dc8ce66c938294575313d2e9fecc25a80e8c0b9a",
  "source-command:b16583e547c455198aea9aa0967578c6b3b545cd8ae38c0a49a5c2668b8872f0",
  "source-command:b16f03dc8a91386463fb967f4274a8b822d4a399e560654bacd6e14f8d5206b6",
  "source-command:b19ec6f9d807aada4ad5d3242a2cc5783d62e1f69fb3c17745bbbeca9e85be35",
  "source-command:b1a6b852f4540510bac739fee3b25a2b78ed60fdeeaea9b1ddc91c5af3386258",
  "source-command:b1caaeea6757e8e96e5fdeeced9aeea0ef9d3833d33c89a150adf1f5262a44c7",
  "source-command:b1ce0649ff0cc19c3ba89e7cddc9efa167b117ceec13be629993de3010a87984",
  "source-command:b1fb7f7ce8c354e610f2e51c27b8baef578c421d32adf9b4b58870cb9e9b32b2",
  "source-command:b20ed40baf285205bc0b2c434acb23081fcfdc42170415e2173c5d0aaf328296",
  "source-command:b26386f9d0f1066780cd61776fe59d66cfccbede4f656ec4b62652e8f7a6c2e8",
  "source-command:b26681a46b785d23e9c0b4c3d8910c2ba375505d1cc910a2cad001918dd5efee",
  "source-command:b2ac7d3d00108ca3411d6c2a11c18915dfc666b226b43ce8ad5a971cace2ee6f",
  "source-command:b2fcf9ce48c5e703f4fa49b4851876c0d5a449c5f89d762b36cd4f4e45424465",
  "source-command:b3251b989cdf7eb5f05143681369742645f618fb1c88ac1215df26ae5f95fa56"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L4173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
