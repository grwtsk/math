# primitiveElementKeysChunk0050

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e79f9dc97939f074bd3c937a62e7e0fcdae2327d196b47ca4cc4d3541cf8ed1",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0050",
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
  "slug": "primitiveelementkeyschunk0050--c7ff314c7cce5230e2d97272",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3494,
    "line": 3427,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7ff314c7cce5230e2d9727255034578fbfb05600ca464936b2d352f68733b31",
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

Occurrence: `declaration:5e79f9dc97939f074bd3c937a62e7e0fcdae2327d196b47ca4cc4d3541cf8ed1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3427–3494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0050 : List String :=
[
  "source-command:2da0a23163b32643df0d3ad41f2da59dd9d45669973547d9cc4f2fe3dfcda8cc",
  "source-command:2db7ce2aaebdc115ef7a8ab06edd415061b6ba2987551168b482acfc4bf677ba",
  "source-command:2dc5d1fd6b70051f5329efb1defa7eaa640354629c8b2c20aafa0ddd44d9b7bc",
  "source-command:2e2ecf782e8bfd13e27d40e13f0bebc0fee1dcbd234743169366626a36964c36",
  "source-command:2e397763eac4df7c89b28988af5eed616c9abe639a5fbc46ab978a1ac944e4b6",
  "source-command:2e3a5df2bd5e2d2929d19a8a569de613ae8304c3912d4e3dd902037d50f82911",
  "source-command:2e4979ca7a6a0344f80749af50774a10e784468a90364ace5ea9e315560e30dd",
  "source-command:2e7c18ed18e80b7490bfa0946ea80cd0782c1311ce66388e1f3f272503b6e4c6",
  "source-command:2eb5d746f989f704706b78f33cec0e18141390418ff758bdee2a64161078f157",
  "source-command:2eedb64e3ce8e3ad36aaca13b958481424c97b6aff8d5aa470308d51252db235",
  "source-command:2eedeabe9023ce63cb79594177d4881fefc58bf9c7b767417c6af897290a1bb4",
  "source-command:2f70a032f659453c892d8c2bfb0470d6605c4d8512d47c1bf4eadb53a6922133",
  "source-command:2f8c12a2f0eb7ed09f75baa38a30af281a42455136ca8adc3c902f72a81a9e84",
  "source-command:2f90dd0a68c5f804b01824d0c571cb0ec799698f95725a736ca237db9e520cca",
  "source-command:2f9df8f379cbe738c88c087db6efeea2969d71165a2f83a6026fe4c772a6e064",
  "source-command:2fa439b836d28ca21c4c7e76444e16d09afa942b85b031e13e2c44e521f47826",
  "source-command:2fc6eb3e936b54e6ee57f153d0062e281e570c3d400082b4b5e3e2381076e1cc",
  "source-command:2febfd7b761cea79c5912500cff5c3227e5898b57bc44be85ae0870ca9d2170a",
  "source-command:30243777cc5cf84996409b0e72ca00c846e1c9569a2e548fef9f83adb945dd3f",
  "source-command:30312e3ead255d487d33712cb8118d9d11545e8ad9e07c024aed90328c806e33",
  "source-command:30337e414d6c387f24f95312dab60e4a8d7e24bca12a9385c15280f30fb53446",
  "source-command:30a3002d8fc3ec1b712134d3de40bea4d683a06b4a42ec333618b82b671526e4",
  "source-command:30b80630a287c100f6c4f07ebcb73527424f1694663cf9c2fd61fc6cb730f337",
  "source-command:311e74dc4de87cead5b48aba137997da50389e6453e1fd47484228165554eb8a",
  "source-command:31260ef930f5e5feeee4716eb4b3b19c5f713bd7fc7b60ec20da56fd8bf8cffc",
  "source-command:314237701b3f5ec03a1f773ca4bf9c7fb99f2476adbc66c20c52f1a6d92c4a07",
  "source-command:314d07af6008a03ee2a547fc3c2be6f612f60edb7a53377cebbdd11aa12debc7",
  "source-command:31894fac257b297a81b8124ea1d06949f3ef8077f7c6cf44634a3e6475fc7c05",
  "source-command:31bf8dac683b0549e5150584c353c034d76adadbc46f4da0ab35831a2a993b19",
  "source-command:31fe4802892c89e85a81b102296d8879a4caf513f1883012be3bc3d1c49703ce",
  "source-command:322c026a547e5eaf0574f7302378f8eadca3d71963a2242f64f1bf83acff59d0",
  "source-command:325daf67a39b8d90734d303b17186a46d53b049e167efcf2c049976871bca5d4",
  "source-command:3266a60aa0742a8b99e67154b6353744ebbb6b09d79058b51e9aa4c9e433e468",
  "source-command:3287856e0f31f4e3e81c157e63fee4817a760e8508b0e14e3ca149ea1bf0db6e",
  "source-command:329f7139e139019cad5e19634c56cc708f90e04889749ac950f7931e26ce61f2",
  "source-command:32a9bdf7b9d40e46e758e7449c8ed80306ff4afa95ceb40d812e047d6007106d",
  "source-command:32af208967c66f7852328902db0b4ea097ed5afa98be30d0615ab007abffb851",
  "source-command:32b113421138ed83a84a2205f6112dac94fa29094dc3eb5ec96be4b39fb3cc70",
  "source-command:32c9f69d6b44da218a4cb8913e1b5b3dc37851f7e3d595989ec970e86bf8ea10",
  "source-command:32e753274bd137650a64c2a454ba403292aea3ab1cbd05f0e3d120cb5de12fd6",
  "source-command:32fe03a98fc98bceff19f9b974796f4e173c7579cfeffe71775ebf938ff33ac0",
  "source-command:33048076f6dc7dcfb5b3a7807257e3b912c86a214ffe4fe42151dacecf02b383",
  "source-command:330c5ecabe93586c98368b76d52c22b1756ca4c47ee3c74f16bd8d9b7abb4df8",
  "source-command:337bbbdd74c4df7e55158026a6c3abcc3e92d3bac28dad4a61a1599404eb4295",
  "source-command:33990ff1d77b29db433cc10b4b0605eefd53fb9cad95cc65bc00fe7944a3b3c4",
  "source-command:33a992351082b81bd47c2e595d05f78a44bf2872c7ba9bad8a97be7663b69063",
  "source-command:33b42b5cab1c4554e494daa97d01962991d8c57dcd7b15fdd9a36727350e0dbe",
  "source-command:33c32bea65f2fb6b4950c5974f233f5a54ab80b044eb99ea155ef979cc63fffb",
  "source-command:33d5bc514def158e192a4135d687f980ce9ad970f940c40eef2405e7e9c96c5a",
  "source-command:345bd625eac1caca7db0790ef8c2545a3a10729e6de2246e84e3a0f955940337",
  "source-command:34b5594c75ce5c9832f1bf34fcefcf4f860944d2fbefd3eebf8300c878c58151",
  "source-command:34c11e4f9a63804dde7afc6be3514d1d7d041a4e1e3e5f9f0c79890e788be24b",
  "source-command:34f29de9dba34c587fd5a93c367febc109e818b2666c5dff08f9dc902149d4b9",
  "source-command:3528e7020f5861ae9cad5107248b62d2446f6e3bdeb55736b2e2957f1981d18a",
  "source-command:35559e548c4ee8f83d8b9909ae85a274d355d19048c39bd50a52990fa8b760ec",
  "source-command:35658d08810bf178b3a69feb10a99caad41991e73ec30747908e891dcfb33853",
  "source-command:3590a5dbd4f8c639ad2f77c3392db29822a5220e79ccbccc43f9e62130db3042",
  "source-command:35cc99267fa7e6794c4f183dd9f7cb5b7ab15dd10c8ff9aaab648b47a37b07d1",
  "source-command:35d6ae476078551d72fde1476fd7b1f979f8c49d07c57f71eb250bbd08b3b18e",
  "source-command:365d291a9373708a713c6f5de93eb8ea0009483c49ddacc51c835c87eb78cbc9",
  "source-command:369db186708070402828f44c8341102ac6ac5c6447269e8e65ccf200638b0e1a",
  "source-command:36c53eb31fbaaf1afa05bdfac339209a5f57c2dde854a2c4aeb30670de9119c7",
  "source-command:36cbefd93f6d770334e19d8c25111055dd181a3248a9d35bda84767bde967881",
  "source-command:36d5f4dc0ea4e682a24f85a807142746a1a6be648bb65c0e6c7530502a885a9d"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L3427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
