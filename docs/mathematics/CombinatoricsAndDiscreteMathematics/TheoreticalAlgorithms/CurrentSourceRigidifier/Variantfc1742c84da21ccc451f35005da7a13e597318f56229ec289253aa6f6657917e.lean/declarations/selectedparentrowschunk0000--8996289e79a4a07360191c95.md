# selectedParentRowsChunk0000

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:568bc759de9470133db91123ca5b5f7fc20f56f0ad6efc62d5221baa43989c34",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0000",
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
  "slug": "selectedparentrowschunk0000--8996289e79a4a07360191c95",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114608,
    "line": 114410,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8996289e79a4a07360191c959aa6df80f02a97bea69825519fd09d7200c8f3d1",
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

Occurrence: `declaration:568bc759de9470133db91123ca5b5f7fc20f56f0ad6efc62d5221baa43989c34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114410–114608.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0000 : List (String × String × List String) :=
[
  ("formal-neighborhood:003e9e39f0d5f6fc1234b4120024b3c3351d9c0b6ac1f39e7219b9199e7fa2c1", "formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e", [
      "formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e"
  ]),
  ("formal-neighborhood:005e9a1e1b6759ef023599cae6623de0b22792a335ea075272bb5b65046cb8bb", "formal-neighborhood:e37a9acc1e447af33fd156760c827a1fbfe4ecae6c5e054675f3b369c5b39569", [
      "formal-neighborhood:e37a9acc1e447af33fd156760c827a1fbfe4ecae6c5e054675f3b369c5b39569"
  ]),
  ("formal-neighborhood:00795939af0625495d58684b07ca7c2501d780dcf35e65b394205146aec35121", "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727", [
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:009acc3989204bd51d5390808b39b43e54d0e23f4b17bd49800b1afe76cd5f7c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:00da9bf0a50bc58fcca056cffcd3faa99d9f7fd2bdf96ade8d7cfb8a0095236f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0103a5eb9f3b2d459bac3a355cef1041e71cc34a7e6fb72b1d627fdd4e081a31", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:014095f530e0504280136b76980d3797fd7fec0f973cfcfe7eb69de36a55c6f4", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:0146d9182274d8cd981360f2c394b82b85a45b1bfa3db4a516525e3c92687e98", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:01733afe6dd6d3ad88058e82581e61c4a2ed749f264285f10cbbf076c329132c", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:0188a0c10b303f0e06ff995f5862d0c7bc0ba92e808382ca0e4ce2df43309243", "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f", [
      "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f"
  ]),
  ("formal-neighborhood:01ddc064f927e7c7e810fa1a2610c6fa40911020d83df3c6b80d98fc4243d0d5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:022230be0d179ade4e4e4403d78b925387d5b5c51c376a82188de41919ac5c53", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:023744f77d190fbdf6b9af833140282f4faf487838d7649484a07ab1ee602299", "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7", [
      "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7"
  ]),
  ("formal-neighborhood:02387c12a8369156be216a2711d390e852cf70575b0f5eaa16c055778ab2beb4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:028fa514e0df8c6c258b113e7d8f64dd5a5516b4173f9b570536cfc3ff1ab0bd", "formal-neighborhood:35d7e7db7b0e4c2fa437735f465627054635a5b1916f396c44ac94810a546d0e", [
      "formal-neighborhood:35d7e7db7b0e4c2fa437735f465627054635a5b1916f396c44ac94810a546d0e"
  ]),
  ("formal-neighborhood:02aef0812ac37772b4bf81055fd4c3df7c487cfa1dd567d0ff4443024c093207", "formal-neighborhood:255133780f3d3f3172676bcc229ac54c60c8c4bd5eb60bceb24c6671ec51b22c", [
      "formal-neighborhood:255133780f3d3f3172676bcc229ac54c60c8c4bd5eb60bceb24c6671ec51b22c"
  ]),
  ("formal-neighborhood:02dc5fb123bae32497ed5fef1bf6d6646b33498782483c1a30c91546e4bfbf33", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:03119b8b9a163fb1f7b01d512938a4c0a3954a0d9f28bd3740c7a2a24faa7377", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:036addcc3feebbf0760225f8a00def9caf0a237bd760c2bbc35b180f9190ff5a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:03c89a54485ad807b8f7c7a71bccb7d03d4f262005a1527969445223520d2431", "formal-neighborhood:1fbae47b3ce53478213d126398d7f2123e881a693dff0cb7b8725d1a0047e970", [
      "formal-neighborhood:1fbae47b3ce53478213d126398d7f2123e881a693dff0cb7b8725d1a0047e970"
  ]),
  ("formal-neighborhood:03fc1db576f31509ad34a237e56590c5165ec17b4ea8502019285d4450fe9ff5", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:03fd59499a0105df0f4f16ef8d3c8f2f63f03ab9f5e430d1c9dbe03adc56527d", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:041f9c0323b69c4230bdb390960fabf799a6e164d3decfa05cfc66d8b3055b2f", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:042a8f9d18a2a15ec8e3f74296cdfec76fc04f6be95a058a9ed80c01dc4839a4", "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6", [
      "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6"
  ]),
  ("formal-neighborhood:042d587954c58887d90ac83fe959d726370de15dbbc2f1334ab51d2f886eaea4", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:0455337f1376d4f37de680de47277e7349a0d7e77caa7c499153fe2eb3b4e18f", "formal-neighborhood:ef6b3777b0f728ce110b4eeb887cf17e072ebf5547833a9312dafa8ae34192e0", [
      "formal-neighborhood:ef6b3777b0f728ce110b4eeb887cf17e072ebf5547833a9312dafa8ae34192e0"
  ]),
  ("formal-neighborhood:045ec265131690ba7d66eeb80f7a5904b602575321a76cf58eccdcbdec7b95be", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:046ba7b0dfe5fac0bf3cac628cd4099d4d6135867975a7509fcf209307004506", "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f", [
      "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f"
  ]),
  ("formal-neighborhood:0470623dc62ddc85f0c1b81478db4771507815af5296a489e8e04e14b8b20181", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:048651ea33124f64c95d92cf5d3bfcbc9428f4dc17264e762ac82790d33667be", "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7", [
      "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7"
  ]),
  ("formal-neighborhood:0491d77ed98e0851bae05e8408af482e37402104734fa6628899de003b398081", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:04b3c97edff1f62739df6e9fe26652569defe58fda63945a95214b3197d18e2c", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:04ccf63e7d29d6298936eb7955a8c2a33976881a514e8aa1b975e608ac867e68", "formal-neighborhood:10bd71589746ae3a1a7f1b1cc70d505228b05548a06a3caee09cc1aba53f64bb", [
      "formal-neighborhood:10bd71589746ae3a1a7f1b1cc70d505228b05548a06a3caee09cc1aba53f64bb"
  ]),
  ("formal-neighborhood:04d67275f829cac44e471ff62cb3d704b4e4d3047f1012154955042674dd707a", "formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e", [
      "formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e"
  ]),
  ("formal-neighborhood:04f899683b9c65fb4e6c74e08cdc23e6682cd85861b71ef88588b4b209884221", "formal-neighborhood:f269dab0cdf3143b9820920be11ba8f99ec1125b8e0ab3d9789288da9ff6b07c", [
      "formal-neighborhood:f269dab0cdf3143b9820920be11ba8f99ec1125b8e0ab3d9789288da9ff6b07c"
  ]),
  ("formal-neighborhood:0517acad28c7b779bdfeb3b6777049fc57970f310eba8f2d098e239f04d1174d", "formal-neighborhood:6fe0a4c183f395ed2e42b5677f74832dda077b4d9ca1c879709e941bdd521421", [
      "formal-neighborhood:6fe0a4c183f395ed2e42b5677f74832dda077b4d9ca1c879709e941bdd521421"
  ]),
  ("formal-neighborhood:051de1a265cf1bed14c4581bd121824dc25501a583cc687a04243ad0f059b824", "formal-neighborhood:ed1358f84668fa75b5ae9ca2c2779ee0cd5be747971adc7611e1f333bf793bf6", [
      "formal-neighborhood:ed1358f84668fa75b5ae9ca2c2779ee0cd5be747971adc7611e1f333bf793bf6"
  ]),
  ("formal-neighborhood:05219f05a4f5cac6613b558386f236084eceebd3f062a71bd9b916516d9b5137", "formal-neighborhood:47d8290773ebb104ce10eb5f4b31953c406281ec90f9d47071be4395f47f53f4", [
      "formal-neighborhood:47d8290773ebb104ce10eb5f4b31953c406281ec90f9d47071be4395f47f53f4",
      "formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3"
  ]),
  ("formal-neighborhood:05405873a66fb02048e044c021c02932f2c4f711126154950040965f916a5b14", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:055285b6d0475f2db8b7a9c2da25e0e7a51dd857e7d5699e4a88a62e3fe85dbb", "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684", [
      "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684"
  ]),
  ("formal-neighborhood:055a8a8097e18fe84e43ce739d4e39185c567be9fb1487847a15b8a596dad752", "formal-neighborhood:eab980bf9161cb3d3cf5df9019245d574d8cba65f444f327397523d0c1c74398", [
      "formal-neighborhood:5adc76236da3d931eca8bdc698c0f47b622de9d6854b692969214a8b41711da6",
      "formal-neighborhood:eab980bf9161cb3d3cf5df9019245d574d8cba65f444f327397523d0c1c74398"
  ]),
  ("formal-neighborhood:056088d8649df3df262dd9198f4558f3a8ca532f0a8e6dc36eea0d523a0c7352", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:057007adeb65a89db5924754cbfcd48bb7dfb517e860df8afdf710604ad8847d", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:057d71e01526ad9a02fab61c8de7e946c0ffff35bbc2074c716e1320e3b35990", "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f", [
      "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f"
  ]),
  ("formal-neighborhood:05b72730052732b85ed4fd4c5988a8c72401802f2187ce0c4f56a2e94ddd994e", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0624b9200c204aab2ec340aa052217515736cb7123a4972e8e7f5a573bdb4420", "formal-neighborhood:31fc8ff5368e18e1518380110c88ff620c841b1d89ecd9a7316cf3f0d6c73539", [
      "formal-neighborhood:31fc8ff5368e18e1518380110c88ff620c841b1d89ecd9a7316cf3f0d6c73539"
  ]),
  ("formal-neighborhood:0636f25d302c0f54fbf0f6faf295e9e9826405dbf524948a433793ea2c209f11", "formal-neighborhood:13a131c2cd2c46a2b05f82e4127814101498e3a9dc28f95fb0266e030a6708c1", [
      "formal-neighborhood:13a131c2cd2c46a2b05f82e4127814101498e3a9dc28f95fb0266e030a6708c1"
  ]),
  ("formal-neighborhood:063703d316ad0550563142045331d358e831d5fbf796728c4365fa58e05be9eb", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:06437e40bb81e55db97eaad60c7e2da35a85c84687c37a9e06b7dd0cb8125b8b", "formal-neighborhood:bda1b664290f6f43c41d45aaf35a118aaeab821d8839769dbe40507332b284b7", [
      "formal-neighborhood:bda1b664290f6f43c41d45aaf35a118aaeab821d8839769dbe40507332b284b7",
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:06679bdcbdf7d36a4ba876b0061daa62a6e6b2e7068673594aadfc022756efad", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:06c19ab993811c3a112975fe7a04ca5db7c57b2ff4492815a86fdff58267c6f0", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:06c4107695e3782fc42b5d34ac9a7ad58ea7e270a14293449f4fedbbb44ae46c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:06f7798b7bb5ac13b52015b6692964a783eb9139ecda04753f5aa9b230598817", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:07956b630376803fbcb7375fc264748784d770fde504f7e1d4df1eeec7e0ea5b", "formal-neighborhood:648c87db79955f7c76c5a236ebb56be832448a0a0a40a828ba15090e1f1b9a35", [
      "formal-neighborhood:648c87db79955f7c76c5a236ebb56be832448a0a0a40a828ba15090e1f1b9a35"
  ]),
  ("formal-neighborhood:079c81011319fd1f24b35211ce4ca4660641fe60d69b837a5ec084cb5bc60548", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:07c55bfdd5a7f77fa47ec4f41ac032c4ce7303e830397a13654efe7fd5166107", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:081bf5f9b590785461b6bce48c89f177f2bd9c696058ed024f0a5807d6470ffc", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:081d108027004e2ced01405417530a89a74390b4718abbd9c5006aa7e46b74a8", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:08478c3ee77d411b590a4ca8d8aca4a3541d9476c448bcba2497881f688a0dfa", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:0864e33715d1306d6b19197a289e9db5d6522595b16a9f90f6e360f2e776b0b6", "formal-neighborhood:1d8bb2af7f758203e7062c2ce241877061395f916e8e1e7da1985c7d22489391", [
      "formal-neighborhood:1d8bb2af7f758203e7062c2ce241877061395f916e8e1e7da1985c7d22489391"
  ]),
  ("formal-neighborhood:0865fcbbadebdad08b777a6024bf73a5c5218075ee7f8d912792e51363f5fa2a", "formal-neighborhood:9a347bbd043321dbdeebda67e837c5d8f5daf5361e64bf1b684e756b7b58eeee", [
      "formal-neighborhood:9a347bbd043321dbdeebda67e837c5d8f5daf5361e64bf1b684e756b7b58eeee"
  ]),
  ("formal-neighborhood:08676abea00593a0889a037cff86aecd09c24561dcd2796b7e3c455ec1575353", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:08e9d1afd416f6648471b66b7d3b1d4b94334dc59aaec6ec22e95744d595f73b", "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684", [
      "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684"
  ])
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L114410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
