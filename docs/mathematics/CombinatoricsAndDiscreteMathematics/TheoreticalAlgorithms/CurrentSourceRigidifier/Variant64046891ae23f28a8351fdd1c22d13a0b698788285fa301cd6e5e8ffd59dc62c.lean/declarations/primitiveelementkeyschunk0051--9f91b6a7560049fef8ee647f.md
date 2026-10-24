# primitiveElementKeysChunk0051

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:655c64b9216e7679bfbbc3128c831500977363146f6f83bda8b92688f91a0b4e",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0051",
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
  "slug": "primitiveelementkeyschunk0051--9f91b6a7560049fef8ee647f",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3562,
    "line": 3495,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f91b6a7560049fef8ee647fa231a0318c2949f4206cc03bccebdf57cc7d409b",
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

Occurrence: `declaration:655c64b9216e7679bfbbc3128c831500977363146f6f83bda8b92688f91a0b4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3495–3562.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0051 : List String :=
[
  "source-command:36e4c9d92379ff4dc865cdbababd4d94eda854cb70da21716c5ac1e4ddb71c17",
  "source-command:371f793e84fdb0510ab71af9c403bdf3ee814005fba05414e379710307443129",
  "source-command:37a2f5ad41538d104a2d159ca40949a7dfd2c459318f8b4ebd1f577f9d1c0bff",
  "source-command:37c76df8ea69d988b81f79f3f642154fb484e372e712f25c7fd3f2ce789fedf4",
  "source-command:37ef8621f3b27da2ce24f00d9e3e19f49ba19dbdcbdce163e90523a7cba1329e",
  "source-command:37f1f076aceac2635055cae8b848892e8bd7aa74eb28513755fae5f4c7fec8dd",
  "source-command:37fdc123cb55738d08f296c2c0e672203da16fb4237f50d73d422bb28f222428",
  "source-command:3814c8f007c21b20af9809b41ac58f6656ed9379ee018f17087054108d8004cb",
  "source-command:382188f5456609f1afdb022154a1bd6115adc21a0d5c836a9a111998f1f5fdff",
  "source-command:38b6473df9f0898abbad7a37844656158b634de6ad94cd1d85eee898f1d05d05",
  "source-command:39111ec7046c5070f1a8250f9fd30a70511ab960ff8af8d82a0a97e275373158",
  "source-command:393a01da64cdc60c0feeaf9bbbc27ceda9873b56b5f1123a9997852acf9b64f2",
  "source-command:3987d6a710709be7a8620ab4d0a2c7a5a8fff685ca85015562504cf81af9e6e6",
  "source-command:39dc52d4baf5d6696cb504d0184f0ac28a5c9c8250d1aacaf92fc3219d99a0a2",
  "source-command:39eb26db61f40836a4599f53fc89c957fb8fdb368d1d18af501258d15ea85a7f",
  "source-command:3a2a3972a6a79a89ec27de5f6485cf733a7132aad7b8d6632a67d8c018ea03a9",
  "source-command:3a44ed568df0694ffdeeab096b99a2de67cd305bc5698c7bb9e1f46a03cd9cd3",
  "source-command:3a53bb9e0e8c339cc98049183be63a9498e2a5429c76968ba5e98cf6473a3b09",
  "source-command:3a7bbdd2189a4735187b4b5be11f9f2c38cc166f6133fb079447f325bb08ae36",
  "source-command:3a9f5b17f385212f9352d7d0edd6bc96bbab79e8e7334f2d9f6a445aa3f9f40c",
  "source-command:3aa87bc977b7138a386eb668087c0d473fc251b85cb66e821ad99b506b6b635e",
  "source-command:3acc192e4315d30ba3905d99a3a328460bcf61ac0aa70aa94914a86b0dbe4e08",
  "source-command:3ae37cef08889a064c89c24c1dcc54577e63bd71ca19eb9a8aa5752efbf59bba",
  "source-command:3afa2556a2a64a6e5319ec9899e7fd5627b88fbbccd8dbd06c9a64359d0ffbb0",
  "source-command:3b12a994b78063965650c5eee38181c88ca3eb5b86e6460d25aa3ac8edfa7df9",
  "source-command:3b2403a588e755613f20c95afbefbb12b5be6e3a9172834198345df7ac354a1a",
  "source-command:3b38f6ddce9ddec4abf950130f7086fe7e857f9d9ea486c2cdba823ac4c7b86c",
  "source-command:3b5228c03430b4af3a06aeaad0d5d79c70643b3ce2bab3b3ecbfcb80300aec75",
  "source-command:3b576f71fa54ead73126d0da1f1c78dfa474f76be86ad24659d244d39ebfa9da",
  "source-command:3b6b6cb1b6aa0fddc282d322895ee25626bef17e868c29848035f39ef0daedc0",
  "source-command:3b9dbf786d7e1909d7835b503de5350e81ccaa8c8e0e97c5319a2c9c92ee67f8",
  "source-command:3ba3a2495a0392c92bdca7122dac6ac31d47b42b1c433063718d6082c1130e3c",
  "source-command:3ba5e072b24701ac5438f7ebf18547c4de36c4eae5fbf0ab0bfd2efb5890a99a",
  "source-command:3bb86f03373772e06e41840948584b8cac9f35cfc4f77290ca2306a9fff9b328",
  "source-command:3bc1b3c85331539f6ab292de3ac4738bbe22e1529eef8aa29e8da82cb06dfd67",
  "source-command:3bd96a69c32a7f8712fb2a9dc8c681581aa9cb475a43fd391cdde722949c3394",
  "source-command:3c0e19a4e3c5171c8066db9b8df8b5cd2c3272711e6bbc8012db4bac6011f15b",
  "source-command:3c1d1847ac3ed65a6761353c7314189630894c370b5de12c5cd2c86adf8f8226",
  "source-command:3c49175c5f36801b2b0cba0817111319c8ccffc3d0b2300f75056fba778e45af",
  "source-command:3c8dfdf65db2db6ee5271d2883a0b4838f404764ce65ffa1181d21e7c559b61b",
  "source-command:3cfde04bc6d296c94cc3fdd5b29fadc58db918530727b6c22886f81867ddf36c",
  "source-command:3d33004dcf3f158a9f836968ebb67d2cec930ca6e8cbdc24dfff420d9d59aebb",
  "source-command:3d56356ce51465f40f88c26f43d2003661900bc9edea18426c12e6bb2e9c39a8",
  "source-command:3d7323787f799d419e860f360ebe1f1f5a56d3b82b62843d82149954a9a6f2ac",
  "source-command:3da2bae4afa622c2a64f441cbc1a879708f4a445f43676e45e8817f3762ec47b",
  "source-command:3dd905a763b42300df93ffc34bd5c2b64a0dd9c9145943649341cf255f5c3c75",
  "source-command:3de58245c80e8837bbef0b15f1cff6a449ed6253a8eda6732ed7cfc816a36b19",
  "source-command:3df204a6ec1faa904f96bc1ce559f869a0f0d4e4e42596227f5bb6297a2bf4b9",
  "source-command:3e6e321e89f7514910a417a2f4fae5f8d8a87486157bc9be64e65f55b161f3d1",
  "source-command:3e7de1b64cdb0880f4d80a858f9339ad1f14ac9a08a1799b92ad8a1bd4d80f69",
  "source-command:3eab1153abe48aeb5f3a015f805c39c9fe7b1c9a7a2c948d49882de88952c218",
  "source-command:3ec998c0c68675234c5f896fb3fab8d76a06748c4acdb43b5bdedd2831d32d54",
  "source-command:3ef7d1a7cdb4bd0f157c5617ef9e40e41c998806061043edf2adbb0d6e9ae0e8",
  "source-command:3f12b3e223ae2fddd5aa582bad20a03d72d6b7ebac0d483abe2efb1d40d67c24",
  "source-command:3f1e8eee0f85d1a6fbb290b53d0bccb4cc271c47363ed356462e5eb2ad16d647",
  "source-command:3f4852d1e5d774c187e69c03948a61e6512f34cbc80538780c7d81ae495e4df7",
  "source-command:3f830cf5be86c83c49ff2fd85ea75891bdab900121b48dc9079010cc36e82b05",
  "source-command:3f8aee99ca9b78f680ad006fcf3f297605b74a78f06fee025a155aeb972913e3",
  "source-command:3fbae466477240052335c058ecae4436601aa1edada5e4d2e67b7cdd181decf1",
  "source-command:3fd221a0f164bc280f1de7f2ec88ff20a284ca371dd31d71f16300ddfe5bb1ea",
  "source-command:3fdeb2821abd060ae1cec94ccce0483d4728bfc0f771e846a1f2a94221a0f657",
  "source-command:4036eef8e007f5510d81dba5e69ffa864b876b14de9ceefe3aa32288875c1180",
  "source-command:404673aef2ff08ecde8e4c61c373f66c48a65ab4fb43b41e46cefc9e97bbb070",
  "source-command:40668dc836238ffcac297795faaea68cdf5f00fa8746ac47914e242a7785e29e"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L3495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
