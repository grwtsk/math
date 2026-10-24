# physicalNeighborhoodKeysChunk0002

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57052d409668e7914f274d3f903aeb4899b738b12f36dac5d9f6dc2e7aea404c",
  "kind": "def",
  "lexical_name": "physicalNeighborhoodKeysChunk0002",
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
  "slug": "physicalneighborhoodkeyschunk0002--af86fac4c151cc6c320ffc3d",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125237,
    "line": 125182,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af86fac4c151cc6c320ffc3dc00b9f3074878c92318173b7d4120d7a9450852d",
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

Occurrence: `declaration:57052d409668e7914f274d3f903aeb4899b738b12f36dac5d9f6dc2e7aea404c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125182–125237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def physicalNeighborhoodKeysChunk0002 : List String :=
[
  "formal-neighborhood:bc4d87524da11f184b63e08a568670bd85881d7a24372aa38bcea8de95adeca0",
  "formal-neighborhood:bdaa31c9842e1bd4f9ad9b6f6e9adcdd0b99dfaa499de478a4a10ea8ff8342fd",
  "formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3",
  "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da",
  "formal-neighborhood:c56879317db7f83cedcb63b04cb92d8f8d3d085cd2d66c0e6e88f040b85ab93c",
  "formal-neighborhood:c6577fd46fcc6ac9abdf2a00d1f3a40e68c8e10f015c985be97dfde63d434b9a",
  "formal-neighborhood:c717cb446ccfba6845bc384c2e63e2c52b08847fecc703cde2bd0df73e87a2f9",
  "formal-neighborhood:c76f2ea6c00c8a71326cdd4e46d83bbde6fab3d77efc9a4d2e30f336a9929727",
  "formal-neighborhood:c88cc9af165fcc28c52d96a9ca284b98696ac585fd656339abea5552be505b9c",
  "formal-neighborhood:c8a6c0954b95287ba8261ab92de8750c8f45ff15675a94768ea0f4d9ad864283",
  "formal-neighborhood:ca85785ad178ee9532837d58c9b30735e918b968b519f814d7b7525221e72663",
  "formal-neighborhood:cb744f31bf42f89245f03084e7bd9f53649295a493d24a83adb700a6e54e5690",
  "formal-neighborhood:ce0e3eda72d86f39e4e7e073b8d61830e2823fb8d066c3516303e3e6bf4b287e",
  "formal-neighborhood:d113cb82eefe661ceb072b8d8b4af179ce6fc78c542ad0b823306e5de3d63471",
  "formal-neighborhood:d48edbe69919d0e36a26d000c377ff5b64c39d9f14ad096084a704b617480a50",
  "formal-neighborhood:d64941f6b52a0bbdb379b362559145fc8bedaa0004e5f5b48008584ca07e473f",
  "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee",
  "formal-neighborhood:dbb3ac5bba53f1f37daf540a8b57f7da7749168bd843e8dcdf8a25c355a1d8e2",
  "formal-neighborhood:dc3cf71cf4730ad1e27b4693fc98589d6e242aa0352f109f1031053629728e37",
  "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0",
  "formal-neighborhood:dc8ce347fc69ca037927fc9c0338c49f9495acab73f2f0df5190f62d881ef53b",
  "formal-neighborhood:e070761ee1e42f668ba6a0eee955ad7aa5ed203a210899a2aea3e71ef1d3a2f6",
  "formal-neighborhood:e12e873c1a5a0b141ad7511019cad192b3f10becde728d8aade32fb09d12891b",
  "formal-neighborhood:e289d5a424266ffdabfaf8857b7d94880067c1d6c8732438d134eaf5f5a2dd83",
  "formal-neighborhood:e37a9acc1e447af33fd156760c827a1fbfe4ecae6c5e054675f3b369c5b39569",
  "formal-neighborhood:e7b28d477c8421bb29bad5a4eaaaa64a7995c55bc3299163e8462338e22f93a0",
  "formal-neighborhood:ea10903f10ac8795cd28a791a45f5c368a1a5360118dac411d40c25133e395a8",
  "formal-neighborhood:eab980bf9161cb3d3cf5df9019245d574d8cba65f444f327397523d0c1c74398",
  "formal-neighborhood:eac08d7fb00cc1a72fc481c5da6404d82b0bf777ab56b23e4d748355adad3eaa",
  "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e",
  "formal-neighborhood:ebfc725d08e2e165ec1152f812beeb377b86f70e8739a94befea6fcbcff9837b",
  "formal-neighborhood:ed1358f84668fa75b5ae9ca2c2779ee0cd5be747971adc7611e1f333bf793bf6",
  "formal-neighborhood:ed3fd62d6daee40b5518605cc72a9f5df586b2f0da6a43cbfc66eb08fb8b3f60",
  "formal-neighborhood:edc1585ffa6c35c3f9972e6fbe38f53544e031faedf00f10e2b180e4f385e20d",
  "formal-neighborhood:ee76e132d26929f6bb6b324b6a28a04ccf34d480d335df1312b8a6f053e28d27",
  "formal-neighborhood:ee9563e021a1ef09817abd2409c79d336c6edd74701914595558746607326441",
  "formal-neighborhood:ef6b3777b0f728ce110b4eeb887cf17e072ebf5547833a9312dafa8ae34192e0",
  "formal-neighborhood:f269dab0cdf3143b9820920be11ba8f99ec1125b8e0ab3d9789288da9ff6b07c",
  "formal-neighborhood:f2e8365c984b751022da3dc2040a5186be9b7207811eee857e524f4c3278b539",
  "formal-neighborhood:f383fcd9568153f2ebf58244d99bcaf8947f311b05f7e6a74c87f89f7a16d109",
  "formal-neighborhood:f3e078852abcfde6619e7303d6d3e264db444ac93c8f99ad05ff8bd54b196b88",
  "formal-neighborhood:f503c1dcdb2e060f69459c6d2ca85e041f6de2fe0f5cdc2012ef9371a23f047c",
  "formal-neighborhood:f7ba8f6b5eefe4ee97a6ea8086c368075995540395b402c4fb2d7ab53f867967",
  "formal-neighborhood:f9b41d4d3cfb0790461c799eab88d978600ec802be5d0840087f75ae1c8657d1",
  "formal-neighborhood:f9d9bf71e76e7b26c53794e77dc359d8da052984a7261af9798afe0dcf6de8e5",
  "formal-neighborhood:f9ded91a76994425ab042ce37542bc433c8043568d4c9f18cd2840d946089b95",
  "formal-neighborhood:fa53402ad15f5b7eee02fade8383b612cd02ff439c4da4c60c54f07961ad9030",
  "formal-neighborhood:faa763dca853bc9b756bce2fe236668e733cd9a039803ae53672ba149b7d21c4",
  "formal-neighborhood:fba29b2cfc89703651bea943fec30795329904f40c493cf3ec8581895819c4a2",
  "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29",
  "formal-neighborhood:fefa39290137c0f7c1dd29fa56bb46085a90d89a991bad37d1389a1bf6469756",
  "formal-neighborhood:ff7908abfe4e8046468214d38f4e987e58b1a6c90ed190491f97868be7d66161"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L125182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
