# selectedParentRowsChunk0021

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86b7b2274c7f46efe750db78ccdebce02b0be78fb07b57bc973d0fb238325b81",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0021",
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
  "slug": "selectedparentrowschunk0021--8b8668d227367f9ba6be789a",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136416,
    "line": 136217,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b8668d227367f9ba6be789a22322dc870f13daa9b3c22e6947d33a13ff9fef0",
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

Occurrence: `declaration:86b7b2274c7f46efe750db78ccdebce02b0be78fb07b57bc973d0fb238325b81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136217–136416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0021 : List (String × String × List String) :=
[
  ("formal-neighborhood:a407afda0a7052bee81bb4a327d1e780ed1a7485a068107f9104495930532b41", "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1", [
      "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1"
  ]),
  ("formal-neighborhood:a416544a4320f201e4397b0cfc2a1d712f8972cee54f5ba80aeefd489025d660", "formal-neighborhood:377b598359d96a9c19e6e592b40795e9dd2c11436fd136716ffdfde2c1424a30", [
      "formal-neighborhood:377b598359d96a9c19e6e592b40795e9dd2c11436fd136716ffdfde2c1424a30"
  ]),
  ("formal-neighborhood:a41e0e778f43dabf440249b8e5999943b7d41b8cdee9a13f009d17c9eb5f29a4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a421189245c501217c9397ab9cfbc57e691fb14219aa6d6648e5dffb97b636ca", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a4304f94df6d40b5387e4d6ef05e5dd80e10484af1fc1ce6449a640e1b6cff6e", "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f", [
      "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f"
  ]),
  ("formal-neighborhood:a43d27a0cbf8f717268c79baf3020ce145644035a2aa3001b22f73d69cf40da5", "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a", [
      "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a"
  ]),
  ("formal-neighborhood:a44f38967ef40300ca2544927d850d3a1eb6ceaaf8a2d5cdc383cd2793fb8b20", "formal-neighborhood:1d8bb2af7f758203e7062c2ce241877061395f916e8e1e7da1985c7d22489391", [
      "formal-neighborhood:1d8bb2af7f758203e7062c2ce241877061395f916e8e1e7da1985c7d22489391"
  ]),
  ("formal-neighborhood:a476ae9b409cbfa965a7b8923ce90e4f12a130fb6be8d2227f0064fa400cdfd2", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a49768c0cccab01ea3e1a1a3fefe999f0c8526bcf1cf49466ef370a97d1c0e5b", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a5062bd7e931d979a7f8c2f76c745c861dfd83a91d75a29e4a2b5633f802f848", "formal-neighborhood:d113cb82eefe661ceb072b8d8b4af179ce6fc78c542ad0b823306e5de3d63471", [
      "formal-neighborhood:d113cb82eefe661ceb072b8d8b4af179ce6fc78c542ad0b823306e5de3d63471",
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:a54476296a227e72135f342ec2216bec37dc0d1a37d9e723fd352cf144c88c0f", "formal-neighborhood:06c19ab993811c3a112975fe7a04ca5db7c57b2ff4492815a86fdff58267c6f0", [
      "formal-neighborhood:06c19ab993811c3a112975fe7a04ca5db7c57b2ff4492815a86fdff58267c6f0"
  ]),
  ("formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:3a6af848f023f9dd886082e88d386db119355e31fa59154f6571c606ad7f8324",
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:a55a8ccab495e8a9951534e26ec0efde2b860f590c9f0c5726193840b17f8e18", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a56e639f5df2a6b4181712006161e558d74f95a07d4dba3e96207e07c76725e0", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:a56ef0a39ec6c00009826312aa5375494b8b38e94706b9a152cda2be6b0ea44c", "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29", [
      "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29"
  ]),
  ("formal-neighborhood:a58e09306b4d65ce31ede59a4e8995ab3862dbcedef36a76409cdac1dd9370ed", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:a5d83ee0cd51bc199926dfb6b759bb02cd0cd6937c612e3ec79e02d577108793", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a6033a94003cea17ff7f00e6954b364929b0a3590e7bf284c620de91c3e5fa71", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:a611568502c0f446fa040ded3e2d9a50d8f3dfecc97ed16c08369928090a857c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a61bc31bde1354453af31bf7b6b7b7f305f7f190d81c8d5a5846aa95d925091e", "formal-neighborhood:d48edbe69919d0e36a26d000c377ff5b64c39d9f14ad096084a704b617480a50", [
      "formal-neighborhood:d48edbe69919d0e36a26d000c377ff5b64c39d9f14ad096084a704b617480a50"
  ]),
  ("formal-neighborhood:a62230a734b4a666ae54f4afd40a153d570bd74d9413fd1dd3d1f1f08fea9954", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a64ad2a34cfc748746dae371981d06f1d768d95b919436f88654f60be5a5874b", "formal-neighborhood:1fbae47b3ce53478213d126398d7f2123e881a693dff0cb7b8725d1a0047e970", [
      "formal-neighborhood:1fbae47b3ce53478213d126398d7f2123e881a693dff0cb7b8725d1a0047e970"
  ]),
  ("formal-neighborhood:a65717512f4f2f3a8839270ed8ae17a241eea786035c82aeea49043772f5442b", "formal-neighborhood:9974e0eb7b3514c52de76d4342389baaacc3e7aa6afddeb9180684ed683fcd20", [
      "formal-neighborhood:59a119827ad90fb5d924df154e1cc686d43e13af9ac706bd83afb1573c591cf2",
      "formal-neighborhood:9974e0eb7b3514c52de76d4342389baaacc3e7aa6afddeb9180684ed683fcd20"
  ]),
  ("formal-neighborhood:a6806f0396c2ce59e1e69d6fb91db6566ff2daf791c685110d7c8c2e5b127b20", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a6a8114e5966b846b8766d13a8be01775e524acc22671997989d6b5e3ed59e7b", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:a6bf95057ef6d004e43911131d4a03c2bd4c4338496867fe8f51aef292e265e9", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a6e5b6ff9830fdef9e09f9643dc2e83113f15f5b631d116f9a15b6016f25046e", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:a707c3ce1ef8c446b0fcfa18bf429bfaf945703062721e3cde6c6a394fcd0075", "formal-neighborhood:15b066d755ecdb319912c2691c414db7e98e9ce4f282e5d84841c49c8b13ca7d", [
      "formal-neighborhood:15b066d755ecdb319912c2691c414db7e98e9ce4f282e5d84841c49c8b13ca7d"
  ]),
  ("formal-neighborhood:a70b5741486f9c5ebaa76435d8c2517c762c47a7266e8f0c4d32700aca64d514", "formal-neighborhood:f269dab0cdf3143b9820920be11ba8f99ec1125b8e0ab3d9789288da9ff6b07c", [
      "formal-neighborhood:f269dab0cdf3143b9820920be11ba8f99ec1125b8e0ab3d9789288da9ff6b07c"
  ]),
  ("formal-neighborhood:a70d50f64e8fabf2e0da438a8a6814a93cef529945f9f4da47b9ecd73e2931d1", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:a72499cc179092f3a7bab8adeec770ef8653aee90f1edeb415e45348633aa35e", "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6", [
      "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6"
  ]),
  ("formal-neighborhood:a7482d2f3588602854e1597b8078b01a480d5da834aa5f6585692d1eb0525900", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a7ae072f242efbdefadad79785c2e1aa6791983b174ec24285cb1818e082b064", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a7db0a46b7d2613cfa874ad0dfc0ea40c0f97f59b966e64449e0e90506d2f94a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a8195cb7121e5cc114fd6dd8f46c9e1f8686a2891ac3381e7f465d42cf5c9b61", "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a", [
      "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a"
  ]),
  ("formal-neighborhood:a82db7262470f3ff89b3a4b18b58c85560ca8fc0cd31022601e034eca545316f", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:a83d78b1c8151c35629b499a915a6cf461a693ef5ccc4c764642c6fec7e4c93a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a83f57923ce55a69d95b5d5c3158e95e77afe6a77dcd590188db438d40c0a565", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:a84f80e77394aaf5a019b7e0643551ece7e9b605c42c8d92957966ea7d15b140", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a8661df3734d28845421df76b80451c8459ba954cd0b7510c172a93d4791f645", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a87a66d8aa4c658903ebd0376bf84494b7ed23a23290d9aab236a30cc1432637", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:a8a9f384f9bd6ef8e1503f2013583de8784a018d136b9394db61b57b662fbc6e", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:a8fd758e68cf88ab751c661d4ca75a40c6e8da34628beacdba359d594bf6f89b", "formal-neighborhood:255133780f3d3f3172676bcc229ac54c60c8c4bd5eb60bceb24c6671ec51b22c", [
      "formal-neighborhood:255133780f3d3f3172676bcc229ac54c60c8c4bd5eb60bceb24c6671ec51b22c"
  ]),
  ("formal-neighborhood:a90bd0e9644540a207cbdde7b43999f994fdb133aa075e21b587c1baa1bf09f3", "formal-neighborhood:9836a306ea59cf381862571023153eaa9c9ab8994f2d79a5cbe3240e17933441", [
      "formal-neighborhood:9836a306ea59cf381862571023153eaa9c9ab8994f2d79a5cbe3240e17933441"
  ]),
  ("formal-neighborhood:a9163a6d0cda0c25f80193daacadef7d53195d3325afc2aef706d30ae8ab9a74", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a92a6aaa3690b1642b4df04ea94fda700be17b70a7c2a16454cd828a92d29351", "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1", [
      "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1"
  ]),
  ("formal-neighborhood:a93016ad7924f9ef90eb936b65548cd1dd713d396154982db80e41726388ca69", "formal-neighborhood:dbb3ac5bba53f1f37daf540a8b57f7da7749168bd843e8dcdf8a25c355a1d8e2", [
      "formal-neighborhood:dbb3ac5bba53f1f37daf540a8b57f7da7749168bd843e8dcdf8a25c355a1d8e2"
  ]),
  ("formal-neighborhood:a9370eda4ebbcf4f7a1952fc41f89ed220cd2d5798a7af6599f23e3655a6e638", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:a93d7068955129c8bb6d33bd8ce7b3f6cec8545dee0d74607320169911f10274", "formal-neighborhood:58a616a5efd4e4c0819ae4269e8a470fb08dbcab976c63e8f933201904b813ca", [
      "formal-neighborhood:58a616a5efd4e4c0819ae4269e8a470fb08dbcab976c63e8f933201904b813ca"
  ]),
  ("formal-neighborhood:a9403ab74774be61b80817e38db00bec47a988610e996507f1db0ea2a2f9c7a6", "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7", [
      "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7"
  ]),
  ("formal-neighborhood:a963a472d8e7d0c502971cba23f57aaf880fa7afb3b59f4a2f9d7b5f77f868bd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a9c1c6487e1a36787b98fd201c202e9a2742f6e9fc4e777bb71f526e7cdf192c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a9d389f55894feb788b498ebf1d074728924d3ee2bca265a991ca95d3c3cfc64", "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7", [
      "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7"
  ]),
  ("formal-neighborhood:aa05df4ddb4a38180d5fed3e5ad7b971e513f3ceed2384c16c5ab7820b12aec1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:aa4f2731b00c61853338d1d22c1bfcd16103a8e4f49b5b4e492c22762af9303c", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:aa6c39c844f45e0e3812aee77408f7062b9a4339dde8a08f6274bf1446191755", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:aa875463a9e15888b2f0d116e9086ef98bb9af8256ce5e9f201c5e664914d51f", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:aa965215f0dddc1c50dec93543f4a80b801d5c40fa07b040ca44451dc7843344", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:aad9ff4c5313ba569c95a6984fbd3d16984cace6b7dd9003973a509c9b11374f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ab485d4916da379cfe3142c6d30065293e7367023d2b88d0d9387b71a2fa64c1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ab617a1e1fe3202ea2593e24e9adc31cba84deaabe67aa1df2d431533bb0da5b", "formal-neighborhood:31fc8ff5368e18e1518380110c88ff620c841b1d89ecd9a7316cf3f0d6c73539", [
      "formal-neighborhood:3b2dacf59a414392fe9d705d5cf6f0737d7b3b66776055010814b4a5cfd55dc2",
      "formal-neighborhood:31fc8ff5368e18e1518380110c88ff620c841b1d89ecd9a7316cf3f0d6c73539"
  ]),
  ("formal-neighborhood:ab78206510eeafe9001adb60ab5d116704adf7fbbfc0ead2054979eb30ce65db", "formal-neighborhood:99dcd590e94d19f8c797ffd44302e5f147d5707fa5bca4bd5152bc9786f917d1", [
      "formal-neighborhood:99dcd590e94d19f8c797ffd44302e5f147d5707fa5bca4bd5152bc9786f917d1"
  ]),
  ("formal-neighborhood:ab82b9a2150a4b64319b25747ba345db930dde21c4b2cae87240668744f75be8", "formal-neighborhood:a87a66d8aa4c658903ebd0376bf84494b7ed23a23290d9aab236a30cc1432637", [
      "formal-neighborhood:a87a66d8aa4c658903ebd0376bf84494b7ed23a23290d9aab236a30cc1432637"
  ]),
  ("formal-neighborhood:ab8f4551e69b86f7375d7bb476569352000ffa3035a6ac74cb414518327de87f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ])
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L136217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
