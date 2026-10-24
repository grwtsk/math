# neighborhoodKeysChunk0006

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c54415b4499503549e83d7ff85526e4d1b4c47e2c8f3a1c4024d9b522ef61fb5",
  "kind": "def",
  "lexical_name": "neighborhoodKeysChunk0006",
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
  "slug": "neighborhoodkeyschunk0006--6cb6b818724bf271909da2d5",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123194,
    "line": 123127,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cb6b818724bf271909da2d5670dd136169b7e94c2ff98b119853d70c846a9e2",
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

Occurrence: `declaration:c54415b4499503549e83d7ff85526e4d1b4c47e2c8f3a1c4024d9b522ef61fb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123127–123194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def neighborhoodKeysChunk0006 : List String :=
[
  "formal-neighborhood:2d38451da92ea0ab90f960e6c2db427c6ef25a6db45557b0948aafd1a4b66bb9",
  "formal-neighborhood:2d827177bed835e02bfcdbd9f37001545d5e569b65c9d17814393e8f14036e62",
  "formal-neighborhood:2e7bdb17cddb74735d775100400c3d3c32dd66a2198cb97a4fa6e7112ca94680",
  "formal-neighborhood:2e7fc9ab88f7949eb7149887e200eeb5eea8e40e9f1a304b362d3f2a27280674",
  "formal-neighborhood:2e83426e3dbfd67a7521d8f6f9e19577e9bb8a97203d33ed4ebe6949231b75ee",
  "formal-neighborhood:2ea7be6f0e8832dd34864f98a66a03153331d5d432006f9ea33857610bf72cad",
  "formal-neighborhood:2ef1f671c367c69f6dbb393fe634333cdb8d2e46d34143822909495b627b8336",
  "formal-neighborhood:2efc802def6829f4da911f1951c9b7a53ecd6f962be1fe97fe9644c966f27a8b",
  "formal-neighborhood:2f09b988c63da3ad8e823d7bcab07cb539e9cf1bfc83aaef0b2f6a52e13efaac",
  "formal-neighborhood:2f2297f1e977d3ad2a60ce2c9e8016ec4503208c2aa540a9a3bb9f797cf40b49",
  "formal-neighborhood:2f8fa30231075ac85cec24fb928a5b8f93025a4279f051593b575e99b7d4166a",
  "formal-neighborhood:2f92fb9c4859df04c6b8398a8bc9934e5f3912295f0dcd1df3815cbe208087c5",
  "formal-neighborhood:2f9c6bf439aa3eb1eadb3a747c371e8833ccecd06d2161f24fab4cb06fc49b7e",
  "formal-neighborhood:2feb58ebe61b212c34b1eb99de8c1acf19ac1bd0b4fa9a1a92dbad947ff5145f",
  "formal-neighborhood:2ffa05615782e0a842ef5a10c6e1af6f07b79c776283a3b6f6697f44a3d8b8cc",
  "formal-neighborhood:3000f1cc050613e56ab4d8c03dca7b1f66f61002c7274958fc33e86f512a4c8d",
  "formal-neighborhood:3002184faa135a0a266b7a74876aa1c16f8240bca01a80129d2168c665f338c0",
  "formal-neighborhood:3082ec1c41871179cf5baca21d4e5b2957a0c889fe5b75448248cfa2ebeb7030",
  "formal-neighborhood:3083b361ecaea6cad033c22ef92771487ffaf7580a2087a8995101053fd3efef",
  "formal-neighborhood:3084b219f0e1ddaff96e4046fa84c25faf40051cd10a0df52c9ecc96cd1fdc3a",
  "formal-neighborhood:30aaff71b875ad023e6d86eff9a1c0aaa8015a4a21b445dcd1307245befee8c2",
  "formal-neighborhood:30c7f164df2eb6255371fb4e499c80709d2a001b9b47409f9b0658d929f652fa",
  "formal-neighborhood:30d89aad1bda31a34864bb77eedb7b2ae1b0cd42e85e1025530847f1e289df83",
  "formal-neighborhood:30f1c369ee51d4dbe074c4cb187d72fa4cf250e48e36bf066eeca20cc1bbc6e3",
  "formal-neighborhood:310a070299f4717c555a6e4710223476e38c397efb8d80f701b71b85f7d1b0f1",
  "formal-neighborhood:311afd66a3a3408e23d83c93fccce093f7aa1b327a24f44883d249df8e2c0257",
  "formal-neighborhood:31334ee32e31f17cdc803b69f3a2c6b8d4ad2e14257f1ca5e08de2541161c686",
  "formal-neighborhood:314d2eda71efb75b414d61f2dc55b121471f9e6100e917bbc4ff354115bcbc7f",
  "formal-neighborhood:31752f2fb6825be47d1c41c310819b0204799ea0b2a4813b0d5a98c8cd589c5d",
  "formal-neighborhood:3190a47ce17f7066820eec78db50684ca81653113b8edd11e4d4729e5f281a5b",
  "formal-neighborhood:319da6dd3e3ca76dec6c19aca50d7dfe11e7f4c5fc7e1ada6f18c40f7858f2a8",
  "formal-neighborhood:31a1ceffdc3f38ae088753ba1b1f77206a646a6e51488a086beb533ab7afef6c",
  "formal-neighborhood:31d24d29f67a1e5032212cff1fcc0dedee7e6a2ecd6ab6bbcdf05aa7d137209b",
  "formal-neighborhood:31fc8ff5368e18e1518380110c88ff620c841b1d89ecd9a7316cf3f0d6c73539",
  "formal-neighborhood:31fe8601e122bdcd739e26b6f0c15b01d397642d59e8809c05505f35cd3f0aaf",
  "formal-neighborhood:3240e8737ea9f5c516a8f1c498474c93ca146ef50ec95beea6a344b1e110f00d",
  "formal-neighborhood:326f6fc861df1f976099b71c1806a496791b5964d406115ae18089547caf6e4e",
  "formal-neighborhood:32952567496322cd7bd435b5681f6f654a0eb17d05319e42e315df8bb0189698",
  "formal-neighborhood:32c0763690e50be62cfd3ae1e4bf677ec54a80b29fdf74112e372e5894ab667d",
  "formal-neighborhood:32c3a4b62af86564667243510389b35c956c2ab46317113ea6ec50756dc5dd14",
  "formal-neighborhood:32d3f14a46ff2bb8f5b4b26ab102a7c1f64b3b6dc96bab9c62b45b037aa8865c",
  "formal-neighborhood:32e122b7b40b67fbcc9702e302d4e30ba25ffe194dc607e752ee4343fce11e43",
  "formal-neighborhood:32e8efda59af370613d99f9f5ab5348e8388515eab77e62a0ea93c94efda937e",
  "formal-neighborhood:32fb030b2fde0fc4db5374729dea402e432b84a563a5feccbec5ed1374be821e",
  "formal-neighborhood:3318617c1806299f884dadb4feb3efd877bc96c8e037ef3436240aae8ae84e54",
  "formal-neighborhood:33251bed62807d5a3448c402f1ac241a68a56908e6f5dffecc2f9b52d3fbd2ce",
  "formal-neighborhood:3356496c100296574991ad56d20eab1b34106935b4051919da8d342468918d86",
  "formal-neighborhood:337d1a592ba3bb53b6c05713ccf61f885b7d72fc9002d2b139f3aefbfe712613",
  "formal-neighborhood:33811e7a1e09fa1c10107559214678977157d150342b2345c57cbcd62e9d3e52",
  "formal-neighborhood:339da4bcbbcd13b7194555e222bb452c62de1ab4236348e6f66aa30d4e0467ce",
  "formal-neighborhood:33b5fb610927767558ab939e5d24e812446468bff0a2de62b7673bc714b32a4a",
  "formal-neighborhood:33fe486efe9f950879e1b02a1a005076b54aa6cee5d910793b47526e632293b0",
  "formal-neighborhood:3419d1f4609d75605feb9069c07e61ea837353b90bf3803030f51c4c223c2514",
  "formal-neighborhood:3421cae3f37dbe126b35a6f3181098f10105b12a100c38ac463dc45d385adafa",
  "formal-neighborhood:345996e6acff31276815622c19a41eb6c7a5c7823bf3ca9593a6efded69167e0",
  "formal-neighborhood:3537463faa3b125c9f4eb34bc4e970ed4c4b9eff205ba838bbd94ae4dd92afe8",
  "formal-neighborhood:3539efc269cac42b48d19a1debcfde97b2bea781e781e641e09fb2d7a238e446",
  "formal-neighborhood:353aa7473ea44bc5658f60ed1de2049665d214f1a0c8d0a95ad4207e74c824ef",
  "formal-neighborhood:3569c0eec86e516c3594de7717d09558096b0ca04dbdb5cfcd4306f3b73defae",
  "formal-neighborhood:35924f81330e727115f2b2d4e03b677b7f5e1b57dcead5c436bff3f1be1151fa",
  "formal-neighborhood:35c601b9c0fe442fe1059b0113d0b3cefe3e7a4a121c4167e511396c15bd4a6f",
  "formal-neighborhood:35d7e7db7b0e4c2fa437735f465627054635a5b1916f396c44ac94810a546d0e",
  "formal-neighborhood:35df93207d569b4f8ef3519cc39f25c36992a67f5c900fc537059dc449ea2ed3",
  "formal-neighborhood:35e9f47111b68eb5ce7429e91c53b60849e56f197e335f829bd34e8eddcbf6c1"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L123127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
