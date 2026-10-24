# primitiveElementKeysChunk0077

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:448c7cc1a4c56bcbd2677363405d5d3979eeaed159c043217e2b2ba03b24b0d9",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0077",
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
  "slug": "primitiveelementkeyschunk0077--6f8b9f8aea6c4c654ccaef19",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5328,
    "line": 5261,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f8b9f8aea6c4c654ccaef19cc163ba6d92fa342355973830701c1b327410c6c",
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

Occurrence: `declaration:448c7cc1a4c56bcbd2677363405d5d3979eeaed159c043217e2b2ba03b24b0d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5261–5328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0077 : List String :=
[
  "source-element:5babdad3be88b11499b78f87de516c9b9499f68623a134c974ebeeffb453a016",
  "source-element:5bdda5e8bed2fb3b5450b35f2f5e9908e8044d6a15a7bae9fb4e733d49385846",
  "source-element:5be0df43508e331fd0120aedbfa294f91979d270b25960db0510cd214992cd5a",
  "source-element:5c2546e4c0e682df86c379776ebf8f680a3856ef6e6091e2a686e4e2141226bd",
  "source-element:5c5def92de190dbd25826e281ff157c7b0c277c8b337ccc6dcab83c2da6db52a",
  "source-element:5c8f9626987cb8ae5a5f53de3eef4e016ae721e2106b4dc6b106bd9bc1c86c20",
  "source-element:5cd951ab176270c3a8b2825c68412dad63da28dc98337e684526acb183dcf202",
  "source-element:5ceeac3112bdcd79e720290f6e1180a473bf50986e19244744a9bce25b42419e",
  "source-element:5d2665a48a1b94cab57b0c9a266c920059bf2c791a8344fae16e8909f22f9f59",
  "source-element:5d631bbc504998e5d8f8f426c2689940f55a82b18775a50cb9078b115c9ee063",
  "source-element:5d6a2c63c76be7ad9450ec892880dd3d43f29bb3d61d0f24c4904e5c1e95507a",
  "source-element:5e0728a31128b4dc710be4fd0663d34d835c44f8e06fbac63dbbecf8f73793eb",
  "source-element:5e259159c8d4f8c5ea857ab4785dcc4dae91f452cdccb02e4306400e8fdf818d",
  "source-element:5e4fe0ddc1e9261abc765df960ecbe227656d9a3da2e7aa245bc133aee449a11",
  "source-element:5e846de64743cd11123d62880e9c692f91d228f58c0ba1a5f722a7a0240c9d4f",
  "source-element:5ed959b5b7dd8773f4d70b825d499f52125e6c75f56a603fba2267e3c9ef4d42",
  "source-element:5ef27821891ffbe955f85dfc2bc6aa06792ead539f002e13f8a55b97b2debf51",
  "source-element:5f484efccfb85635f277e5f2926fc56e8a94f3097cca2b190a57f438274ef232",
  "source-element:5f4dcf0609c199131a0adc5520db0e125f80d7d76cf662da8432caefb36e9940",
  "source-element:5f7ca279e6a4b9cedc9cdf281784792d76712c99fe842f5b89f18f4ee906c22b",
  "source-element:5fb3b4f39a140792d7a64ef06ddf337273341b9e09e6bb1feaf4dd2b043aa812",
  "source-element:60007c10eccf7b5a7e526c75665a5bbb35811c34e5d226c1f1d601dbe1ddfb97",
  "source-element:6023fdadbcc8dc455319cac673964ed487a61a3583f6c1f0c4cda0fbeae99e4e",
  "source-element:606ded7f67e792aeb708ea1d3a3030ba989683da33370f6c5d1c57a0d381dff3",
  "source-element:6094182adc4f10caac7ba8502b63c73ea2f4bef7de80c5c4b2fb8b3d350ee738",
  "source-element:609c43aa83d146010f8d31c9424469099c820099089f06c9bb1bdf3441e30446",
  "source-element:60c93365c89ee234f1ac69e826e7333a98d8e0807f515e120d2430d19ddb30c4",
  "source-element:6116f4e2ae62eef7f2e3106c855b1d41476eeb00671580ca3395400ee1f54c23",
  "source-element:6159661cdc98ca80e8742625ef0d31203e02cdefc3770f5173ca5397a711499c",
  "source-element:615d05c1d3aeed2030b2357b2437e845bf76ececc87429eaaa8a8b9a972bbdf3",
  "source-element:6179c887dff3ec05adef249f86ed4c39366751de3d4c6c558c5c7cc1a1c2cb25",
  "source-element:61ade2dff27d63d9310c880c0820110c048353bdb8dcf6f3d5cc5fd40f694f81",
  "source-element:61d88baed852b2c94cc03b2659329a611a190f1b4d3d7839c281b33c73b4967d",
  "source-element:61e9c14846fb84f4042e42dcc28b27e62f18ad5198f8076f1b1f60d0637b252e",
  "source-element:620f49151c3187d4e216fc21c29d5fbe0ee978d572fa1508bccaf99182602100",
  "source-element:6222a249730aad77deb2e7f7a7e3486eaa6819727c361aa95b863a57b1295561",
  "source-element:623b32126119e8daf847d63cddd51870a1a420f554fcc5502504bdaf7bdc29f2",
  "source-element:6245cc423807b1b68b0d66d779db2ea1cd140f5116963c69e2b38674646ebbc5",
  "source-element:629af4afb4eceeef698d6c17f3bd1e2e20486aa33307e06747b3e400816e8dd6",
  "source-element:62aaeb213d65fb34ce6cea15c2e40c77fffe97793387888f54cafbdcdef8ba2e",
  "source-element:63205a2f9bd0cebbedc004e5380d000836343d1a7125a02465c34ee217e0b6b4",
  "source-element:633920ac1fa3cee9506e10670cc320092863bfe4c7e4a6781078ebfb11e8359e",
  "source-element:634391c7065649bd928ef71aa73c64d8682dd25cbaeb17a289c61f36c76f959a",
  "source-element:63b051dc0528f304599debd0740d6174eef278de491b22f8b51f07a099549343",
  "source-element:63caa115c6b3005da8190e5f32510b842f09598fa17404dc08275be71d284d3f",
  "source-element:6414188fe0593cb1e675e7ee28a25d1b6bb46bc6ad15d116abe7a87e7a69b5e2",
  "source-element:6420bd9aa38e4c29ce14de1d553a2c3c145dbef1a87dea7b277e206cc4fc7d96",
  "source-element:6434163b5c4b63d6b871ce4162e9c74e9bc7b23a2fe38699401d407080401fa1",
  "source-element:64344986291e1143edd1f3bff1be4828dfa832eba4411b5caad6d314ffbfd991",
  "source-element:644898da17a21f0d4fea575450f37f5d863505ea5b914a0abfc1abd49f6e8a18",
  "source-element:648209fcefcfc36cb5fa558ea4ba30b40f458fef88dadc5bd8c8d2b50ad964ba",
  "source-element:64c6426c8805e77cef1e6c4773cb6fb16c876fde0385f6232715ae14deb72136",
  "source-element:64f66127bd7fcf59579b3c917a52e5b8667b99278758dbd6ff347f1e9e6e0485",
  "source-element:650b20a3092c60d72b316c6cf51d5477a8bfd2ac1657858d17487c378fd62478",
  "source-element:65a112af15da327cfbed6de1b6c95e0fd1ea43231b68521acd5e0221bdadb6d5",
  "source-element:65c6645c612a7fe6f3482897b6c047560e8ebc40c2a2662a44786d6776ff1067",
  "source-element:65ef9d021a9d0f3a30caf40b1ea5dec373a2ba87231fd485c0ff8062a5b86ef2",
  "source-element:65f42f8e9cc2a4a28eec8d9c502829c595e46acbfb619def976fa315a4c3fb09",
  "source-element:6606f71e9f669dbf591d72bac9e96b9d2f84f84433b2aa352add64eeb977b94a",
  "source-element:66096a7045979fdce3a3fefaeb64d2a955f30745c30fce31cd0472b492a6b01f",
  "source-element:6642639cdd80b8a95327c20220c9c7d604335f8370bbf6533a3f51ef6a3edf08",
  "source-element:667a4652307b3a5313270d65139c5f07920057f681fd1504040947fa5fa707c6",
  "source-element:66cc4a93795922600b17f5b7bc5e85f7235229a38d93c5296ed04882ffcb70d4",
  "source-element:6703d87b9fc330b43cb3ba3d157fcd2a48cf05656a9e3ccad587018aac8fb218"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L5261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
