# modelSelectedCandidateIdsChunk0027

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c704e21135a4a609927748fdb0e937d025bd985013d02b26fb435f566dffc03d",
  "kind": "def",
  "lexical_name": "modelSelectedCandidateIdsChunk0027",
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
  "slug": "modelselectedcandidateidschunk0027--c9dac6b7f66fa26b9f7e9d21",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43846,
    "line": 43779,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9dac6b7f66fa26b9f7e9d2136a861f9ea925f453b3dca518fdc448dcf4c3403",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c704e21135a4a609927748fdb0e937d025bd985013d02b26fb435f566dffc03d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43779–43846.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelSelectedCandidateIdsChunk0027 : List String :=
[
  "name-candidate:a7ee6790d97a65457d6df28d38a26ff274a1e35f483318d2dcdd9b5a40f83906",
  "name-candidate:0eb5431acbcfdc1a2806a6444b4e64cb572307bbb893dbd5bf3a0a1a62e989c7",
  "name-candidate:08c3281e06a7defc433a70f83df984e2800752f9aed45a0f75fb40fab3e9275d",
  "name-candidate:e5ef490ca7e6b52cd080e1a7932e828df446eecf953fb82c58c6cc9556545ad8",
  "name-candidate:b95a1c5db39b822c82cb41cfbc6e38faf71ef265544c1a7da0152b19edde963e",
  "name-candidate:9b62c7bcac0305947e8e5687fe4f963cf00d25cf6dccd343b2ea945975cef6c5",
  "name-candidate:11ecc85624f8aaa10e7bea85a33963eda31c9351cc05a98ccf51ec22e58894a0",
  "name-candidate:1098df276d0094ff0f2571f76d3a3a49e19557bd8e3adac15abe5ce019029225",
  "name-candidate:ca8647dbcbdd470aa48fb182dcf1c54a3627baff10fcba8891a064fc32e9f475",
  "name-candidate:fdc95b4ddefb6ea2e144cc5d87a0201d5415af4862af0c5669dd15b78b90be52",
  "name-candidate:d89bb4712b78b30984c1e4c12b97d17396d34f5bc9710f25c988237130cbf752",
  "name-candidate:0c373809d7806eb3d1c990c035e90377498e274eda962f895fda2ee49f454e9b",
  "name-candidate:d800b9476a5701ae547787b3cb90306a6729a0300c5eee83f1c2baf67e1a1b2c",
  "name-candidate:6e50a001c8ec6b3e9f988f6fef1d64859c745ad3391978653fe7f4c57020d1e4",
  "name-candidate:5ffc992cbdf11d4751fe088bd6d1b19023f18532b65126ad9c48c377b8425cc8",
  "name-candidate:41ea911df563061780fe09070961a1fcb16766f39fc1878d348fb65e389ec723",
  "name-candidate:f2e020135de505a6be6fd4e291bf0d83f56ac3ca195fbc37016d732040fb614e",
  "name-candidate:2c4f91eb021bf66ce3d2bb8eac8754e16c111abe8c9a79ec909fdecee35d0939",
  "name-candidate:1c88be27cfe02fb7c0a0f78486eed20e6ca4a7e0c552022f4356973c393a6a13",
  "name-candidate:e0519b13481495a2a4ccfb72fa2afe73386e14578bee7dfbb55019db4ac566ef",
  "name-candidate:2817836f3d9e9071efab79e33cba60f81582d4bf90eb95fc65d1a8400d9ea624",
  "name-candidate:11bf7e28354f5550ae48dfcaf689a70086639144d3824e279e58e32fc4f65550",
  "name-candidate:36e07e172662135d99048f11d05f5e2bea431776b5291a3aa066c8fd175df45d",
  "name-candidate:f99e7cbc1efca8172521453d29ffbefc7437fc2c76dc17f2b2c673446e4c118f",
  "name-candidate:d4f96bcbbb9ee91c801d2c9addc3d80900354d6a3baea916ab66713fb3e9c9a9",
  "name-candidate:9981a1ba649bb33a578f929cb3a5016958f671b5744a6d9644190431faa0c2b1",
  "name-candidate:bfda9978c7852db9b36d03d6fc7b4d7305a642b71dcdbb6538079b5216708249",
  "name-candidate:921f76cceab0d2247fb83f8192686979b1400a9d32d74ca0294b6c2a82d9ec63",
  "name-candidate:0c578409be951d4fc996b50a7bb0650057042d931f1c6ba61d7e695e194a2cd0",
  "name-candidate:63634a5d04ad941ebd169216b49604f83992e56b3c94824798bea7a66bd1320d",
  "name-candidate:374ab243398ec8f2f9a7a18703023d47c16e880cb14588109bee2f9723523f24",
  "name-candidate:5b32a19bc3986972ee8694f8cd23f58cbc68c6b37f5ebe0bf43662649d8df308",
  "name-candidate:027dda32b1ea840ec06e4c088d581de9d4f9b7429cc8c78a2dd8d4802c674e61",
  "name-candidate:cad379b1f3f6067590a0e0a528626d2959424f423e6c7bd6af7bcb3cc9478dd4",
  "name-candidate:ee47117a8eb29cc03ab5d808168849ee600771beebe02f182ba60d521f8540ed",
  "name-candidate:e3b2800eddc7725a2fcdd3417bb2d4160561304e913f5a169686982a50445984",
  "name-candidate:c29b91bee1f947ec74a2a9edd57d75f213f5fced123853d573b97919b1660b79",
  "name-candidate:43cde55bb2151e1744168422fa4c1fbea1c0746af9c452501bd808abd33ee331",
  "name-candidate:9add53f7321a6b62ea8e53821216b3b25b26a237f4c1d2ce465e36052226cf90",
  "name-candidate:f86ae9df6cdca0f83d860d5d9bb609c19ff22d58ea75dbfd0cec91404459df1c",
  "name-candidate:506e1ff8b41828dd7b0960c96d007f69e1684c36acc73fef43c9fb2ab37b6b12",
  "name-candidate:81e880760b6a43367ecd5b8a0aee2338830018efc9c3a627f3fec9b434c6aa2e",
  "name-candidate:7e20c1d0bf535a851d8475960c96a5bf958dcc7dc28f26126e537215e47f6125",
  "name-candidate:d823597921131e5bba0ef252260031c2f932aef7af1742ec323cd7fa6aeda2e2",
  "name-candidate:48b5e9989b1762895cb4a88fcd0437e4ca1f7f17e5fdd3f46b5d57b4f7d9774f",
  "name-candidate:904e39f746453230122214b918e39577c60ea1cb60220e241a5aa6eb991f4f25",
  "name-candidate:a5d438848d95abfec9c51daf328424d1510898169f48379dd175f6b21df2aa88",
  "name-candidate:a72c99aae4b23d3138f1145a7db7319a4259d7df5274d7a6867f8e47e5753c8b",
  "name-candidate:32873ea033cf02fb65d9b86d72ab29a213d1ac2e9f2807849eef8c8c1edfced0",
  "name-candidate:f11047ebaef3c8e45dadcebd0f8bbc5e4216ac8ca1670af8e48653df32c4834e",
  "name-candidate:7dbc70e7845d23c4d2ef8f5f126b0b1a61a3da1c8fd340bb4ccc56dfea532c83",
  "name-candidate:0a1a527cb7999ccc8cec86cd253a4eab5c28c1bf6aa4dcc06c791ed6e38b35e4",
  "name-candidate:6697bc414f547e4704a68c563e2f481e9920ea841f168a9600bc9c6369cdfaf7",
  "name-candidate:e03d9cffeada6617e40daae48b2e0627e797f031e9f68b53bf7275be881e4e57",
  "name-candidate:1e055f4e68c9931dddf99ad5aa9c57a63afb2a1ffb0eda46662755bce933f7ca",
  "name-candidate:fe4ff9634e577fc875f1f5ee8890a022ce1d09554e4f9fbabb8b42a7e8590e34",
  "name-candidate:f573999fb8cab54c0099139134b7c4beae123fc6eb98901ee52b8bb3a5f56a83",
  "name-candidate:7cbdf850c8b771af441b173da9fb3d85314dd8ce96f97229837516c7447d091e",
  "name-candidate:6cbafbcfe3a5ab0b839bbf8ea6bc6601c7cc617230360b00482b53fa1e53390f",
  "name-candidate:376177b3fc5cf0c4772aeae1bdfeda372e3044b03f88a8ea7d389fab59721cd8",
  "name-candidate:a9efe13f3749225d9c29366d91876abd2e7e3f9f204b3c065e9fe8b952a62ed8",
  "name-candidate:ca0d8e7be973b6008bfd8c36c75f9e67b7b086245cd8a761d428d56b2ca88c11",
  "name-candidate:5bc0f345ef2702daeeea47c8daf3d7e6bdcff113bb906b9a3515a233f2628a7c",
  "name-candidate:e5230665489f80eb413bea81bd8113a18d86377669293b08bcd6b3452ed38379"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L43779).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
