# semanticSupportRowsChunk0001

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4843685e2ec33c904992ec0fcc3cf9092e7a5e5dcfabc85378222ac82c9c8804",
  "kind": "def",
  "lexical_name": "semanticSupportRowsChunk0001",
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
  "slug": "semanticsupportrowschunk0001--68f4d6a73c1ee6ca0a02b5f6",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53263,
    "line": 52468,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68f4d6a73c1ee6ca0a02b5f6613f947ca0f1b2fa75c411711dd7cc9eebe2587b",
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

Occurrence: `declaration:4843685e2ec33c904992ec0fcc3cf9092e7a5e5dcfabc85378222ac82c9c8804`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52468–53263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def semanticSupportRowsChunk0001 : List (List String × List String) :=
[
  ([
      "declaration:load_module",
      "public-output:load_module",
      "raw-source:179ba9cb7cbf2cef4fe7c2cd59ea6f067224ef0b30f7781907ed95d6670584bd",
      "source-context:tools/organization/cache.py"
  ], [
      "capsule:153b7367d8f5c3c804a1547e3b216018828634c97a78b6c60f27af56af9f7a2b",
      "declaration:load_module",
      "element:python-point:11f5f396ad64b92c552d64a804adc2247aecc8111b2763ac9c2ee7e93540ea9b",
      "public-output:load_module",
      "raw-source:179ba9cb7cbf2cef4fe7c2cd59ea6f067224ef0b30f7781907ed95d6670584bd",
      "source-context:tools/organization/cache.py"
  ]),
  ([
      "declaration:read_ndjson",
      "public-output:read_ndjson",
      "raw-source:b5a866f4c96f771e3ab78beb9bb06bf761893be6475c6ddac6c1e75d4864f6c9",
      "source-context:tools/refactor/canonical.py"
  ], [
      "capsule:6ef8e9fe94b8f8d3050d5c1f90860e9482c6266ecf5e820fe2744aaffc176c96",
      "declaration:read_ndjson",
      "element:python-point:123640fefe8cd3d9c23ac857419e7144bebe5495c49bebcba04c7a4e883e8ae9",
      "public-output:read_ndjson",
      "raw-source:b5a866f4c96f771e3ab78beb9bb06bf761893be6475c6ddac6c1e75d4864f6c9",
      "source-context:tools/refactor/canonical.py"
  ]),
  ([
      "declaration:_mean",
      "public-output:_mean",
      "raw-source:9aa919f38517dca6defade545ee158d0a342d5dfc84265219222bdc97574ec21",
      "source-context:tools/oracle/naming_direction.py"
  ], [
      "capsule:08e98bd4d5d6b815884d5ea7628308b2d4310ca60095268783d8770a9bb7a9a5",
      "declaration:_mean",
      "element:python-point:12457d03e8c7aaa25cee4166815d4b2fe85fd9fd08ea3227a5df124727aaf0e5",
      "public-output:_mean",
      "raw-source:9aa919f38517dca6defade545ee158d0a342d5dfc84265219222bdc97574ec21",
      "source-context:tools/oracle/naming_direction.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:b47b2fc4eb1cd52cd43ea21627e7f4f83894d5b0124b73c8441e8e3d1186f7cd",
      "source-context:tools/projection/project.py"
  ], [
      "capsule:12897497c447eaf1b26f6df92cca09d264d1c2849e1a6bb5891ac27637772f3e",
      "declaration:main",
      "element:python-point:126f76a66d6dfabd65dbc00b07ef7bb050fa039c99d5cc243fbd958843bd4652",
      "public-output:main",
      "raw-source:b47b2fc4eb1cd52cd43ea21627e7f4f83894d5b0124b73c8441e8e3d1186f7cd",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:canonical",
      "public-output:canonical",
      "raw-source:5b2955f0323cccc7a10202c011315b0dad56b0a2146985401a75cc98893af66d",
      "source-context:tools/taxonomy/calibrate_anchors.py"
  ], [
      "capsule:fcf1ae8702865d995caff7be14add6fa02c79f0ebc1fa3c4963cd9b9ba45610b",
      "declaration:canonical",
      "element:python-point:1290f8ae0ac7a2a61b0f7c6208f0780f692a2aeefcdbdd1e43ee8040e5b22d3e",
      "public-output:canonical",
      "raw-source:5b2955f0323cccc7a10202c011315b0dad56b0a2146985401a75cc98893af66d",
      "source-context:tools/taxonomy/calibrate_anchors.py"
  ]),
  ([
      "declaration:ratio_record",
      "public-output:ratio_record",
      "raw-source:d2ec2ecf3daea22ab15915aa36ace4b4ab5b687f19ff800dbf91caa04d48428e"
  ], [
      "capsule:263f929c9083a551ca02afe92e05e2e2fdef7846e5763130dfae0cc32cdc0773",
      "declaration:ratio_record",
      "element:python-point:12b51dc0e0d3de23ee637006a5c07e10d0386c15a60c35d2a10aa18a2cc97dcd",
      "public-output:ratio_record",
      "raw-source:d2ec2ecf3daea22ab15915aa36ace4b4ab5b687f19ff800dbf91caa04d48428e",
      "source-context:tools/taxonomy/anchors.py"
  ]),
  ([
      "declaration:_expand_module",
      "public-output:_expand_module",
      "raw-source:776838a1fcaf22c31e613013d8ec480545850291476ba7fbf9971ba310667d45"
  ], [
      "capsule:94b83e8641294ae3402c8a46fd3939f49a19f690dd234c262a2042b84513d9bb",
      "declaration:_expand_module",
      "element:python-point:12cad4c16ad148cfa562ac237be637429a81a6c1c1e58729a932e55fe48dd724",
      "public-output:_expand_module",
      "raw-source:776838a1fcaf22c31e613013d8ec480545850291476ba7fbf9971ba310667d45",
      "source-context:tools/refactor/obsolete_facades.py"
  ]),
  ([
      "declaration:parse_args",
      "public-output:parse_args",
      "raw-source:2adb346db8966ea2cba26f919cb0ce7e3299219f56bb527d179a89f240a16404",
      "source-context:tools/taxonomy/propose.py"
  ], [
      "capsule:796fbe86950c8608b00be3efae287d4177cbbd345f121a0bee94b6b3d2b98ab8",
      "declaration:parse_args",
      "element:python-point:1349d33b4ac2d20563806d036ae99995e06ad7c6db5aaec88c04825469f10c63",
      "public-output:parse_args",
      "raw-source:2adb346db8966ea2cba26f919cb0ce7e3299219f56bb527d179a89f240a16404",
      "source-context:tools/taxonomy/propose.py"
  ]),
  ([
      "declaration:subtract_signals",
      "public-output:subtract_signals",
      "raw-source:5176e2c146736ebd3c195fde6eaff29c0c1911c3b8bfc3a9d3835233793551b7"
  ], [
      "capsule:9500de311c8918487da85d75d8a287e5f411904736572744b9f5187e9b6f9461",
      "declaration:subtract_signals",
      "element:python-point:137684d0812f66370d00d4083ad868a7b7f59c5ca568a5005697496ce4009d94",
      "public-output:subtract_signals",
      "raw-source:5176e2c146736ebd3c195fde6eaff29c0c1911c3b8bfc3a9d3835233793551b7",
      "source-context:tools/oracle/cyclic_cubical.py"
  ]),
  ([
      "declaration:dependency_profile",
      "public-output:dependency_profile",
      "raw-source:9828474131d890535e42f83cb441e019cbd9f8b4875ed84301df0173eac32f66"
  ], [
      "capsule:2406340866f44026ceb041d0599fcd27c38f0c9b1e5b19c87f92e8ccd07e64bd",
      "declaration:dependency_profile",
      "element:python-point:13b99d7f353b2469d03d629e1c52758568d5f9ca84ab7697ee6098846cb1b12b",
      "public-output:dependency_profile",
      "raw-source:9828474131d890535e42f83cb441e019cbd9f8b4875ed84301df0173eac32f66",
      "source-context:tools/projection/build_profiles.py"
  ]),
  ([
      "declaration:digest_bytes",
      "public-output:digest_bytes",
      "raw-source:76f6f1f7dfe94abb4ab680723f829c125378d4e11830563fdf706c8f9d211bce",
      "source-context:tools/embedding/common.py"
  ], [
      "capsule:00dea4c5450af46e3ef0b68200d305e05bb4802b58ffd5d68241cc41ed2164e9",
      "declaration:digest_bytes",
      "element:python-point:142d2d4acf8ce9cb541a8a5c320056d7deedac05b7ef2fe9f2e80095570a490b",
      "public-output:digest_bytes",
      "raw-source:76f6f1f7dfe94abb4ab680723f829c125378d4e11830563fdf706c8f9d211bce",
      "source-context:tools/embedding/common.py"
  ]),
  ([
      "declaration:build",
      "public-output:build",
      "raw-source:03a35e2fe8e0e28f929adbef02f91a5a2db82793543cbbdcacd413157f6ca6ea",
      "source-context:tools/taxonomy/scaffold_ledger.py"
  ], [
      "capsule:308f09184c42a5d638b8bc17dc6f8c983cda8538432b0968790b2e9a369b0a6b",
      "declaration:build",
      "element:python-point:145b4b89c2167e962cd16ce9f724705001096d7d71552ad0ca4cec4adc319e20",
      "public-output:build",
      "raw-source:03a35e2fe8e0e28f929adbef02f91a5a2db82793543cbbdcacd413157f6ca6ea",
      "source-context:tools/taxonomy/scaffold_ledger.py"
  ]),
  ([
      "declaration:_verified_fragments",
      "public-output:_verified_fragments",
      "raw-source:226dd42c00c16055b938699ffde3ad38b72c507b945824a8c64f167509ee4183"
  ], [
      "capsule:d1f8e2e46b4a7e2c6963c22bd874a51f9b784f5882599941d226fd4075a2f8dd",
      "declaration:_verified_fragments",
      "element:python-point:14ab535720dae7f51dca494a413a09100cf9524f144655c8c1ba7312ce448ea3",
      "public-output:_verified_fragments",
      "raw-source:226dd42c00c16055b938699ffde3ad38b72c507b945824a8c64f167509ee4183",
      "source-context:tools/refactor/materialize.py"
  ]),
  ([
      "declaration:_venv_python",
      "public-output:_venv_python",
      "raw-source:b6268325a1422a89eabfc4b0d3ef7eb89065e96bf5381a68a58fbf2331d7c099"
  ], [
      "capsule:e9d1cdd81ada48f45075523cb07de5a551c3141d01f7a6a5eefed7862e650019",
      "declaration:_venv_python",
      "element:python-point:15a15d182c3337b0a1c33edbce019158c5a0a59a1c94ebe6f8851646136d37a3",
      "public-output:_venv_python",
      "raw-source:b6268325a1422a89eabfc4b0d3ef7eb89065e96bf5381a68a58fbf2331d7c099",
      "source-context:tools/oracle/mlx_bootstrap.py"
  ]),
  ([
      "declaration:normalize_assignments",
      "public-output:normalize_assignments",
      "raw-source:425949a0712e17e7a474fdb3c9043164654336cc510443b0fbb00b7a216e3f59"
  ], [
      "capsule:95ded4ab365b786a63aa50644abc6adad4d34bb5a8f66ea85d8d16cf423c2817",
      "declaration:normalize_assignments",
      "element:python-point:15deb940e5a18cf65e225ea9a021d5179311f81adbca3212b43f68fe603b1d7b",
      "public-output:normalize_assignments",
      "raw-source:425949a0712e17e7a474fdb3c9043164654336cc510443b0fbb00b7a216e3f59",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:1ad61e2cbb0c766854274960d6b7503b25eb2eb4c2d23e265f98f1083d790116",
      "source-context:tools/projection/build_profiles.py"
  ], [
      "capsule:26a8f006717131f8c4540d5cf1a372f456821c7e3a4b2bf354d0aa2a09d8cd30",
      "declaration:main",
      "element:python-point:16412a4cb4dbca5adf6244eeb51eeb3473ae4758c48c460dcafb90f0723b7334",
      "public-output:main",
      "raw-source:1ad61e2cbb0c766854274960d6b7503b25eb2eb4c2d23e265f98f1083d790116",
      "source-context:tools/projection/build_profiles.py"
  ]),
  ([
      "declaration:parse_args",
      "public-output:parse_args",
      "raw-source:c265f32d191c65d2874adbab47b43708ae42c2a82acefcbafff413f49d0e7b45",
      "source-context:tools/environment/assemble.py"
  ], [
      "capsule:4ce1a8d682ffa5a8b7bc61361c6bfc1b16193b3f607167e327b2b3524de40f42",
      "declaration:parse_args",
      "element:python-point:165cf00e8cb0bc34914fd969e90822acc3c2cf82dd746a22990775abbf27333b",
      "public-output:parse_args",
      "raw-source:c265f32d191c65d2874adbab47b43708ae42c2a82acefcbafff413f49d0e7b45",
      "source-context:tools/environment/assemble.py"
  ]),
  ([
      "declaration:raw_entity_input",
      "public-output:raw_entity_input",
      "raw-source:9ba49907a3d2dfb121d6c2142c29ab8601153c2c55e6a97a413961f47b617d1f"
  ], [
      "capsule:e12e4fd9cea5eac1ff8efbc9dae04245fdfb5a0f1a70a98a80dbc6b7da43ca3e",
      "declaration:raw_entity_input",
      "element:python-point:1668a8a4406baa6e7e39d583eceb6ba61d92271f69f7eabc456d3cd32d10c2aa",
      "public-output:raw_entity_input",
      "raw-source:9ba49907a3d2dfb121d6c2142c29ab8601153c2c55e6a97a413961f47b617d1f",
      "source-context:tools/kernel/build_features.py"
  ]),
  ([
      "declaration:build_factors",
      "public-output:build_factors",
      "raw-source:4abd128a1c973c6dbfe3042867046c4ea5ca6e3786d9d7167d27ad49d971af64"
  ], [
      "capsule:64ca816c21d250e3f7f8caf564f9ad2e0eef7e1c4c7e50948784d165367d50fb",
      "declaration:build_factors",
      "element:python-point:166b678e93a04e598df09ccbe8d1d9da99565ef8122d8d00bb95104a277332db",
      "public-output:build_factors",
      "raw-source:4abd128a1c973c6dbfe3042867046c4ea5ca6e3786d9d7167d27ad49d971af64",
      "source-context:tools/refactor/features.py"
  ]),
  ([
      "declaration:entity_signals",
      "public-output:entity_signals",
      "raw-source:c9c5dca22dd0c9c2bdc3acfa0dd03945d520742d55cb643f2616afc496b9c249"
  ], [
      "capsule:43d06802cd7b16fcaa2891d4d39f039ef0b923ac3975e1c2979263e3f9b47029",
      "declaration:entity_signals",
      "element:python-point:169763b14a67d57c7b400741f5a2377f38da5dc649c51c596589865b59635d02",
      "public-output:entity_signals",
      "raw-source:c9c5dca22dd0c9c2bdc3acfa0dd03945d520742d55cb643f2616afc496b9c249",
      "source-context:tools/taxonomy/anchors.py"
  ]),
  ([
      "declaration:concept_entities",
      "public-output:concept_entities",
      "raw-source:142e556ee03e0b3461c77efbd472357034f303e047610dd5f35ef008a5d8098e"
  ], [
      "capsule:3f27e0a3a9e435d03717765d529ee46e6e5914c5b259b1e3a5c7aaf02d872937",
      "declaration:concept_entities",
      "element:python-point:175390083f813c03ccb28268fcbabcad3c9b8eeaaa842c5ced427e89fdddd6d3",
      "public-output:concept_entities",
      "raw-source:142e556ee03e0b3461c77efbd472357034f303e047610dd5f35ef008a5d8098e",
      "source-context:tools/taxonomy/propose.py"
  ]),
  ([
      "declaration:build",
      "public-output:build",
      "raw-source:ad2d66525d781a89bc8662c12960f2db206bd30a12a30a3e076fb44bfc164a50",
      "source-context:tools/organization/persistent.py"
  ], [
      "capsule:6b0ccbe89d3ec4007702c902dee9964a61d8fd17cd312688b9e16d7b945a0299",
      "declaration:build",
      "element:python-point:1798e97dc47df6a46fb6ed36b8c97d887930cfbdd61572336e39fd3e8bf1523f",
      "public-output:build",
      "raw-source:ad2d66525d781a89bc8662c12960f2db206bd30a12a30a3e076fb44bfc164a50",
      "source-context:tools/organization/persistent.py"
  ]),
  ([
      "declaration:load_receipt",
      "public-output:load_receipt",
      "raw-source:df95b44b17216f4e4adba4580e969758be578df86ac26db7c332443fe8c13491"
  ], [
      "capsule:ef5207172e7ba957d0d472ed01957cb63d901c0e17188d58adc009e75b9b5ee2",
      "declaration:load_receipt",
      "element:python-point:17b111ff57bce7a82e31ae91c2864314e5797fef12b8d9e7bbb795a5ac000f8e",
      "public-output:load_receipt",
      "raw-source:df95b44b17216f4e4adba4580e969758be578df86ac26db7c332443fe8c13491",
      "source-context:tools/environment/assemble.py"
  ]),
  ([
      "declaration:_compiled_maps",
      "public-output:_compiled_maps",
      "raw-source:62c84a3d07b0fd7f4265e00418ad1b69209ff2247f9adc8c5415e74ea27aef19"
  ], [
      "capsule:7f73a595fc3e16dd725c6f2ab1ea5b43f79505f18438614e164cf1c1365b35cb",
      "declaration:_compiled_maps",
      "element:python-point:17b5f32284b1c2d6777222eb2bf0a2ffcc0507f1549bfc163add70c36b719882",
      "public-output:_compiled_maps",
      "raw-source:62c84a3d07b0fd7f4265e00418ad1b69209ff2247f9adc8c5415e74ea27aef19",
      "source-context:tools/refactor/source_trace.py"
  ]),
  ([
      "declaration:run_cached",
      "public-output:run_cached",
      "raw-source:3d8f12de573f652799114271fda1b3f9982fbb3506781bbd5496ddf1de358b28",
      "source-context:tools/organization/cache.py"
  ], [
      "capsule:bff4533814149e222eea35c04a5bd4421e87bd192ff3467b7c0fb4e38b9ff5f3",
      "declaration:run_cached",
      "element:python-point:18787c91350ef0a7eec877505ea1785ce46eed1299237243c90eec75a7d40d83",
      "public-output:run_cached",
      "raw-source:3d8f12de573f652799114271fda1b3f9982fbb3506781bbd5496ddf1de358b28",
      "source-context:tools/organization/cache.py"
  ]),
  ([
      "declaration:_limit",
      "public-output:_limit",
      "raw-source:6d70946e74ac920cdaf316328a9e311d9c5ad1211c4c2a60820677483c50bc5a"
  ], [
      "capsule:fc29712fa57ecda6f8d254f9bcb8dc25b1beb22939201d32ad993992f934b9aa",
      "declaration:_limit",
      "element:python-point:189f09ce8d1683b54a52ba8ab0eb0696667c5d27d38cd6f0d75ebf9481b4df25",
      "public-output:_limit",
      "raw-source:6d70946e74ac920cdaf316328a9e311d9c5ad1211c4c2a60820677483c50bc5a",
      "source-context:tools/oracle/public_tools.py"
  ]),
  ([
      "declaration:convert_expression",
      "public-output:convert_expression",
      "raw-source:520b3461c6076ad0a1b13997d34634dd8e0660dc34400c1e023fb5e2a990bb50"
  ], [
      "capsule:717b9181f876a716337f1fe3474aef701de3364435891baee4a2a5b3a81fff13",
      "declaration:convert_expression",
      "element:python-point:18d781e4f6875812ce862c72b2cd95a6f498f275b840ded1731b15e347f44650",
      "public-output:convert_expression",
      "raw-source:520b3461c6076ad0a1b13997d34634dd8e0660dc34400c1e023fb5e2a990bb50",
      "source-context:tools/environment/assemble.py"
  ]),
  ([
      "declaration:walk_tree",
      "public-output:walk_tree",
      "raw-source:255af3826587b193729460a5fac9433fd2b1c8a5ce1881b42a4b4d58d3da4da3"
  ], [
      "capsule:f28514ef0e148daf71ae4578f9bb0b447e2686b15adc3d85d14dbc5d2a378f7a",
      "declaration:walk_tree",
      "element:python-point:1907b2916134c54184f027a5b14b08da16c8743c908e312f97fb6a263c843222",
      "public-output:walk_tree",
      "raw-source:255af3826587b193729460a5fac9433fd2b1c8a5ce1881b42a4b4d58d3da4da3",
      "source-context:tools/kernel/build_features.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:a9226d65d978c9438fd13b8b052ebbd7368df58898cb4a318c541bf345421f25",
      "source-context:tools/organization/cache.py"
  ], [
      "capsule:343ea3c6f163d0912f830d87e5dfb5bea8f93888dcd41c4c597727b671b2d8b3",
      "declaration:main",
      "element:python-point:193cf646ad41b0aa1972209b29e31a0c112203e8ae56c9037450e84a8925164d",
      "public-output:main",
      "raw-source:a9226d65d978c9438fd13b8b052ebbd7368df58898cb4a318c541bf345421f25",
      "source-context:tools/organization/cache.py"
  ]),
  ([
      "declaration:installed_version",
      "public-output:installed_version",
      "raw-source:0f576616a3245e8998cd83732bdb529bcf6df13e072bd936186a6a19a5521361"
  ], [
      "capsule:f304390858a566ad9e04734fb630d9aee4ba9e705bc953776bf450acd846f9be",
      "declaration:installed_version",
      "element:python-point:197550d0fab0e20a0893c59d26d5eaaf22ab807ad82914f5a687e05910ef60a5",
      "public-output:installed_version",
      "raw-source:0f576616a3245e8998cd83732bdb529bcf6df13e072bd936186a6a19a5521361",
      "source-context:tools/oracle/mlx_bootstrap.py"
  ]),
  ([
      "declaration:callback_receipt",
      "public-output:callback_receipt",
      "raw-source:9073eeb4fb344b3a9b9efa239bf9add28907c665a096231626c25007fe5092af"
  ], [
      "capsule:92e4a0d5fb611d245af4b0e27e7be1a85dddfc15b9893a7d512ac1594b4b896b",
      "declaration:callback_receipt",
      "element:python-point:1998e998118fcd932a85dcdc853619957ac988123094c5080835d33049a27e63",
      "public-output:callback_receipt",
      "raw-source:9073eeb4fb344b3a9b9efa239bf9add28907c665a096231626c25007fe5092af",
      "source-context:tools/mlx/receipts.py"
  ]),
  ([
      "declaration:module_bundle",
      "public-output:module_bundle",
      "raw-source:5525dc01412ec6ae582b210b06ab9d3ae8d1c63737377d29058f083989543360"
  ], [
      "capsule:09c073336889423c8e1d4405245fda098eae319d7cec734f4d4565d7211053ab",
      "declaration:module_bundle",
      "element:python-point:199a44b97dd10861fc19f1cbf33ab750a8b80407642decf1f80d5a6f875252ea",
      "public-output:module_bundle",
      "raw-source:5525dc01412ec6ae582b210b06ab9d3ae8d1c63737377d29058f083989543360",
      "source-context:tools/environment/canonical_cache.py"
  ]),
  ([
      "declaration:bootstrap",
      "public-output:bootstrap",
      "raw-source:1ec2fd6d3f06322cdb1cf8186b494c034f3b8e2c154b843dab46acffdee427c0"
  ], [
      "capsule:24fda611fe36e4c380204b12476fe6903743c2389d10202d7fd43b9fb4c241b9",
      "declaration:bootstrap",
      "element:python-point:1a5c9782b40fb9a372a93b5db1243cd1a2c7690d1edeeca834674c11d19deea1",
      "public-output:bootstrap",
      "raw-source:1ec2fd6d3f06322cdb1cf8186b494c034f3b8e2c154b843dab46acffdee427c0",
      "source-context:tools/oracle/mlx_bootstrap.py"
  ]),
  ([
      "declaration:AuthorityAndMlxTests",
      "public-output:AuthorityAndMlxTests",
      "raw-source:322c02a70815c97b10aee98d1ac39122ae3e56ec834e3afe588fc3c913428463"
  ], [
      "capsule:c626266c8635fef023b6f7442d8deae47ae91d17c75382255febf24f8c5664d5",
      "declaration:AuthorityAndMlxTests",
      "element:python-point:1a6fe8c30f1ad193b5966c34856915ba9a21015d7f1c2ac25e941ccb36c08636",
      "public-output:AuthorityAndMlxTests",
      "raw-source:322c02a70815c97b10aee98d1ac39122ae3e56ec834e3afe588fc3c913428463",
      "source-context:tools/tests/test_mathematics_oracle.py"
  ]),
  ([
      "declaration:induced_face_signal",
      "public-output:induced_face_signal",
      "raw-source:ef78977da0d8c60774117cfead15156c645ed42018fe413b393ac764938ecb4d"
  ], [
      "capsule:0eb6dc1c00a03166d8fa64b73eff463bf52406776ae41e5580efd0738d69c3e3",
      "declaration:induced_face_signal",
      "element:python-point:1a8d06f4b52d669dfd4349c40f72bdd81fe85d5006096da74b7bf620405dc02a",
      "public-output:induced_face_signal",
      "raw-source:ef78977da0d8c60774117cfead15156c645ed42018fe413b393ac764938ecb4d",
      "source-context:tools/oracle/cyclic_cubical.py"
  ]),
  ([
      "declaration:build",
      "public-output:build",
      "raw-source:b92adeb262f97b7927de6aab2424f9992023d683c27f6a992c0f0843e71120d5",
      "source-context:tools/taxonomy/coverage.py"
  ], [
      "capsule:b1a68e139fd5969061fc7e57ac6abe60ff883305283f1c7fe1f36de0e8ab704f",
      "declaration:build",
      "element:python-point:1aaf4422f5ac163f7600c9482e4cffc3c4c5ed3aa0a98b75fd652b06c5fcf54e",
      "public-output:build",
      "raw-source:b92adeb262f97b7927de6aab2424f9992023d683c27f6a992c0f0843e71120d5",
      "source-context:tools/taxonomy/coverage.py"
  ]),
  ([
      "declaration:OrbitAndSurgeryTests",
      "public-output:OrbitAndSurgeryTests",
      "raw-source:640473469eae0ad9a255ab974c6deb5575dd0ff48d90b5f4222c670d498ef852"
  ], [
      "capsule:1f15aa28ecb0dcd7916cbdc9be6e06037ccc081d003348f2b03b73b62a289439",
      "declaration:OrbitAndSurgeryTests",
      "element:python-point:1b33f88b7772b6a93b2e83780a273cddf671f040f20ab09606c96aed98e09d39",
      "public-output:OrbitAndSurgeryTests",
      "raw-source:640473469eae0ad9a255ab974c6deb5575dd0ff48d90b5f4222c670d498ef852",
      "source-context:tools/tests/test_mathematics_oracle.py"
  ]),
  ([
      "declaration:rotation_orbit_count",
      "public-output:rotation_orbit_count",
      "raw-source:22576e5c3b387cdeb6e952561bd19a7a71fe284408e2403fc1b9c662aa6c8eec"
  ], [
      "capsule:53f8b796656adae1f09b101469221cc3d2783bdde136827a15b3dc2477d8b028",
      "declaration:rotation_orbit_count",
      "element:python-point:1b69eab621ae24bad6ff8e9b5b8cdc9d9c7c331e11cec46cf056da63ca348229",
      "public-output:rotation_orbit_count",
      "raw-source:22576e5c3b387cdeb6e952561bd19a7a71fe284408e2403fc1b9c662aa6c8eec",
      "source-context:tools/oracle/cyclic_cubical.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:724ba1db794c81879e4198bd9cba3d6afe1785bb24a9cd5ad69339ffae4ecb3a",
      "source-context:tools/environment/cli.py"
  ], [
      "capsule:dfe68bcdecc524567a1ba0ee886da5de44269d3cafd6a1b7fcc7e0dff550261d",
      "declaration:main",
      "element:python-point:1c0274730e80c9e37d07fec3e2acedcd4bce27095f92ff8f6b0fe09aac0e301b",
      "public-output:main",
      "raw-source:724ba1db794c81879e4198bd9cba3d6afe1785bb24a9cd5ad69339ffae4ecb3a",
      "source-context:tools/environment/cli.py"
  ]),
  ([
      "declaration:RigidifierFailure",
      "public-output:RigidifierFailure",
      "raw-source:98284fe196ce9f860e00875352026b5bfacbc0e9377211f313c4ce061d1d1ba5"
  ], [
      "capsule:60520e7b49e9ef04a265187b59ae3f02c0110e5ded5d52b291c738ecaf8b5072",
      "declaration:RigidifierFailure",
      "element:python-point:1c14fb5b98f94abacb6edbdf9eac815b6c790f7010a8b015ff01b745f98d1061",
      "public-output:RigidifierFailure",
      "raw-source:98284fe196ce9f860e00875352026b5bfacbc0e9377211f313c4ce061d1d1ba5",
      "source-context:tools/projection/external_rigidifier.py"
  ]),
  ([
      "declaration:materialize_adapter_occurrences",
      "public-output:materialize_adapter_occurrences",
      "raw-source:e616d1d4701a1359d8b00eaf8115d2e04b0929ee7fe3d6095937fa55f36adc0d"
  ], [
      "capsule:7cf64132ae75c84839c1b234944dcb4abbafc99fe242a96def338ce022463419",
      "declaration:materialize_adapter_occurrences",
      "element:python-point:1c4ce0af1f42a0539e41384364442644bf779cc4ed9234e67e9776d26e8fd4e2",
      "public-output:materialize_adapter_occurrences",
      "raw-source:e616d1d4701a1359d8b00eaf8115d2e04b0929ee7fe3d6095937fa55f36adc0d",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:_digest_value",
      "public-output:_digest_value",
      "raw-source:285e1563ac59bbeb4a8b9e5476c4739be137f0eeb731fc458d74cee1878f469f",
      "source-context:tools/oracle/evidence.py"
  ], [
      "capsule:120e20d45e21b6b50f0c084dd9615785afa6de86bfb7d2df2e90e6f2c85f435d",
      "declaration:_digest_value",
      "element:python-point:1c5c083a1b50e360c7fa0637bceffabc56396db7138b040f06ec9648681b284d",
      "public-output:_digest_value",
      "raw-source:285e1563ac59bbeb4a8b9e5476c4739be137f0eeb731fc458d74cee1878f469f",
      "source-context:tools/oracle/evidence.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:04513e405501b53473e4ca918acbede2969a8bda95d481481ab3fed16f34ec51",
      "source-context:tools/organization/multiscale.py"
  ], [
      "capsule:ed89214317ca7adeee57e82001aec5efe5ef30100743d5600ffcf0709ef40c1e",
      "declaration:main",
      "element:python-point:1c997f2392b09e6cb68d0dc2ba7adb1cb627041b62fb33f408c1eead3ee50642",
      "public-output:main",
      "raw-source:04513e405501b53473e4ca918acbede2969a8bda95d481481ab3fed16f34ec51",
      "source-context:tools/organization/multiscale.py"
  ]),
  ([
      "declaration:parse_args",
      "public-output:parse_args",
      "raw-source:48df0aa561736c11c88d092c236b209354eab29e2b0c48552eec4ea5ee0531be",
      "source-context:tools/concept-inventory/enrich.py"
  ], [
      "capsule:0c6f5cb003065280de0f555a4b16583227080c8ceeada79b25d97ebe5ae14cec",
      "declaration:parse_args",
      "element:python-point:1cccf536a976f80b7fbaf487be1c1a0082c69699b4507f71ef37cf19a2c75abd",
      "public-output:parse_args",
      "raw-source:48df0aa561736c11c88d092c236b209354eab29e2b0c48552eec4ea5ee0531be",
      "source-context:tools/concept-inventory/enrich.py"
  ]),
  ([
      "declaration:read_json",
      "public-output:read_json",
      "raw-source:5c01782051aff4f611d06f43ac1984993cee5d03d43c80b49496e3733081590f",
      "source-context:tools/environment/canonical.py"
  ], [
      "capsule:9fff88b66ce1d060e28bc28491e84fb1384a6a001370d56a83b07905bfc0f521",
      "declaration:read_json",
      "element:python-point:1d9c48ccb3b20eca316873da2f15bee993f6c0f9fad13d7f7c0496ca6402107b",
      "public-output:read_json",
      "raw-source:5c01782051aff4f611d06f43ac1984993cee5d03d43c80b49496e3733081590f",
      "source-context:tools/environment/canonical.py"
  ]),
  ([
      "declaration:reconstruct",
      "public-output:reconstruct",
      "raw-source:27896640c49254cb568577e27b6e7682996b85ffcd1e9cb9dfb213bae7f5af1e",
      "source-context:tools/refactor/point_corpus.py"
  ], [
      "capsule:58bd2bb0d4cff29bd61529e2a02f8ed1c879836d18abbc22ecd0686439238150",
      "declaration:reconstruct",
      "element:python-point:1e292f7d12f5ba1555fde07088e2273fcfa84f58fe7aaef8f72a692dacaf874d",
      "public-output:reconstruct",
      "raw-source:27896640c49254cb568577e27b6e7682996b85ffcd1e9cb9dfb213bae7f5af1e",
      "source-context:tools/refactor/point_corpus.py"
  ]),
  ([
      "declaration:run",
      "public-output:run",
      "raw-source:49b768e3c35fa7c5de50d7855e8b77651f9c4e04080dca4110a6c2063d91be24",
      "source-context:tools/locality/check.py"
  ], [
      "capsule:23b35df50ef1209bcf5673bef2defc6696cb887090a029e2fe5f7e19186793a4",
      "declaration:run",
      "element:python-point:1e4709ad139bedca788e65657f14a4d1aa689c58c7b85bf70be5df04f00a73a6",
      "public-output:run",
      "raw-source:49b768e3c35fa7c5de50d7855e8b77651f9c4e04080dca4110a6c2063d91be24",
      "source-context:tools/locality/check.py"
  ]),
  ([
      "declaration:_declaration_roots",
      "public-output:_declaration_roots",
      "raw-source:ce6ede9682d448c441802e889770e91815b823bdd9536f0155b6c421548bbf1b"
  ], [
      "capsule:20cc76d9bc7f4a3ae1f36aea5f103b4c32786edb3e9ac5ffac5519ea1ccd4cb9",
      "declaration:_declaration_roots",
      "element:python-point:1f56ee3e82df24d88308db42742e65783e31611d396a0ebf4a49d0c7ec9a08a4",
      "public-output:_declaration_roots",
      "raw-source:ce6ede9682d448c441802e889770e91815b823bdd9536f0155b6c421548bbf1b",
      "source-context:tools/oracle/oracle_names.py"
  ]),
  ([
      "declaration:build_evidence",
      "public-output:build_evidence",
      "raw-source:49c4e969bc93a01286e45cfbcccbbf5b940d75ffea42aeece11a437b12a27ee7"
  ], [
      "capsule:d4dfce3d2f61368cdf8952d22aa344c21e9116ae6d9d4a1fe312c816f69f2a9a",
      "declaration:build_evidence",
      "element:python-point:1f8b3f0267a1b443df4d335935f5d8285c63b709e7e4ba26a0a77554fc5d666e",
      "public-output:build_evidence",
      "raw-source:49c4e969bc93a01286e45cfbcccbbf5b940d75ffea42aeece11a437b12a27ee7",
      "source-context:tools/oracle/evidence.py"
  ]),
  ([
      "declaration:compute_block",
      "public-output:compute_block",
      "raw-source:ee679824cafd0776781a3fd5a2d6d950f30304d992ce3ddbea357735e821f3bf"
  ], [
      "capsule:bef79326a1bf3adf8af23ec6472c34a4fbf189f9648306c0555ef1c91cf340ef",
      "declaration:compute_block",
      "element:python-point:1f9546554687a9c7bf527895d3a0ecaa57c2350683acd316311c8604aba6b7ed",
      "public-output:compute_block",
      "raw-source:ee679824cafd0776781a3fd5a2d6d950f30304d992ce3ddbea357735e821f3bf",
      "source-context:tools/kernel/gram_cache.py"
  ]),
  ([
      "declaration:OrbitAnalysis",
      "public-output:OrbitAnalysis",
      "raw-source:5576d407f8f854c3224370bdc39965e15c6e6799b3190abcc569c512bbc08a4e"
  ], [
      "capsule:608600f547e0b168f1803c92b7052b4d36ae03d745e28caad668ec0de93b8a32",
      "declaration:OrbitAnalysis",
      "element:python-point:1ff298d9c454aa5449cb00fb1dc6163854b572f994fd6c50ccb3db7f1b9c7908",
      "public-output:OrbitAnalysis",
      "raw-source:5576d407f8f854c3224370bdc39965e15c6e6799b3190abcc569c512bbc08a4e",
      "source-context:tools/oracle/orbit.py"
  ]),
  ([
      "declaration:minimize",
      "public-output:minimize",
      "raw-source:70bd8e73ad755b675bcde194140e090a0704974d0e04d044847b6bce8a204a92"
  ], [
      "capsule:fbbeb4e70c4029d65b0c590f499b1d5f2abbefcb78fb71341d0af3cd2f4639aa",
      "declaration:minimize",
      "element:python-point:2053e212a83efdb008e78cf47ea7fd05d353f526c522ca3ae7676e7956b93fe7",
      "public-output:minimize",
      "raw-source:70bd8e73ad755b675bcde194140e090a0704974d0e04d044847b6bce8a204a92",
      "source-context:tools/refactor/minimize.py"
  ]),
  ([
      "declaration:_plan",
      "public-output:_plan",
      "raw-source:6598a8d0d9f4c543152c73c6dc1a1a143a8a94e50d71485dc533745d0ca834d9"
  ], [
      "capsule:b1d456ba06cf309fb68d4004521dd9680dc5b63a56d7ebe708b48c8872c0a2dd",
      "declaration:_plan",
      "element:python-point:2067bb64ed3c8aebec84f2d68b1f75af02faa60c69289123e711285514b9e649",
      "public-output:_plan",
      "raw-source:6598a8d0d9f4c543152c73c6dc1a1a143a8a94e50d71485dc533745d0ca834d9",
      "source-context:tools/oracle/cli.py"
  ]),
  ([
      "declaration:log",
      "public-output:log",
      "raw-source:fd8b9afd64dc03124e844198d2dc24ae953d247a15dc714fe9ba15ebd9541b78"
  ], [
      "capsule:31394c2531369bd371d7bd04bf33bff4af0b8a6d2c8b34e3e163973ddeda42f6",
      "declaration:log",
      "element:python-point:20a555263930bbea4b6a96d73391e9e83c6a539d146a9702fd0ceb39af2394ec",
      "public-output:log",
      "raw-source:fd8b9afd64dc03124e844198d2dc24ae953d247a15dc714fe9ba15ebd9541b78",
      "source-context:tools/refactor/cli.py"
  ]),
  ([
      "declaration:rotate_face",
      "public-output:rotate_face",
      "raw-source:0d4246dc163e3145d43d18e634b3a902258334b8b7adf7579ff15d00c32cdd04"
  ], [
      "capsule:e2c90ae45717211adb482aa7fef6bd2703cd6ae35924af33f8be9aed56cea8d4",
      "declaration:rotate_face",
      "element:python-point:20d7e16c4b10b1aa286f5b2752bbe1f772491bcb361d1111b91e6b58823ce474",
      "public-output:rotate_face",
      "raw-source:0d4246dc163e3145d43d18e634b3a902258334b8b7adf7579ff15d00c32cdd04",
      "source-context:tools/oracle/cyclic_cubical.py"
  ]),
  ([
      "declaration:parse_args",
      "public-output:parse_args",
      "raw-source:e28ae4549666ef4288d0ddec307084609744e5afeae85ed9a5908927dd177ecd",
      "source-context:tools/environment/to_inventory.py"
  ], [
      "capsule:9e53278facfb3c1092e3bd6f48c6513ee452b7e4dc4756fce4ae4ea2ff6d4b97",
      "declaration:parse_args",
      "element:python-point:22706cd4a1cbaf531917d84f2aeee5651509a7e4edc0616b0e9f3dfc82fae7c9",
      "public-output:parse_args",
      "raw-source:e28ae4549666ef4288d0ddec307084609744e5afeae85ed9a5908927dd177ecd",
      "source-context:tools/environment/to_inventory.py"
  ]),
  ([
      "declaration:_divisors",
      "public-output:_divisors",
      "raw-source:f7a193ad01180fd8a65e90412b35289a0a32a8918683cb08366557d48c5b8e07"
  ], [
      "capsule:4cdea22ce7704c024fcb4463b6493d9a53c256a0b6940da40ea7ccfd553e97cb",
      "declaration:_divisors",
      "element:python-point:22b7adb06c91e00f45e5e709477e9dd0e66ee1fb17348a74b3a9f2868ec350d9",
      "public-output:_divisors",
      "raw-source:f7a193ad01180fd8a65e90412b35289a0a32a8918683cb08366557d48c5b8e07",
      "source-context:tools/oracle/cyclic_cubical.py"
  ]),
  ([
      "declaration:_render",
      "public-output:_render",
      "raw-source:7c166607579f96aeaa73c15928ee77909e60987244a1c4d8ef86cf1099f8d77b"
  ], [
      "capsule:e716ccef1ff2367d46ea415992833e64fd2cedf5a2a31d2d059adc3ea3c54ad7",
      "declaration:_render",
      "element:python-point:22eb1232ffd66d68458a48d2d5a5054bc6a7616c830dcac9533f29f07a65c720",
      "public-output:_render",
      "raw-source:7c166607579f96aeaa73c15928ee77909e60987244a1c4d8ef86cf1099f8d77b",
      "source-context:tools/oracle/mlx_backend.py"
  ]),
  ([
      "declaration:normalize",
      "public-output:normalize",
      "raw-source:039efbd873b97a2a01dfc9769792e745b1790e107f49d74deeaa27b7f75fd551",
      "source-context:tools/environment/canonical.py"
  ], [
      "capsule:5be3c6ce10dc51f555c6adf1cf7784760f2faba8292e5756e447a440dda45036",
      "declaration:normalize",
      "element:python-point:239e6ad40573b41cef719c1c4a01c30ea89bf1eb8d9084242deae05e314c50ea",
      "public-output:normalize",
      "raw-source:039efbd873b97a2a01dfc9769792e745b1790e107f49d74deeaa27b7f75fd551",
      "source-context:tools/environment/canonical.py"
  ]),
  ([
      "declaration:block_coordinates",
      "public-output:block_coordinates",
      "raw-source:368e4c2074405cc269798d00e4f4cd34d27e5300f638854960ea575c89a09943"
  ], [
      "capsule:b47953ba0dce9a4e845bb05c7a8a3b439b621370847b1f500ff2c2c743f25c94",
      "declaration:block_coordinates",
      "element:python-point:239f257db885fa961395facfe42e577e88513f8b5baab41ffb0e9357839882a9",
      "public-output:block_coordinates",
      "raw-source:368e4c2074405cc269798d00e4f4cd34d27e5300f638854960ea575c89a09943",
      "source-context:tools/kernel/gram_cache.py"
  ]),
  ([
      "declaration:principal_path",
      "public-output:principal_path",
      "raw-source:cc388900145cfb5c2de10241c8d1583e3aeebf89a006ad6d45e2bd5c1b282768"
  ], [
      "capsule:57cad37601065ab8ada2a3c47f64892b5785c5ed9c695d5a4d74bf8846313f58",
      "declaration:principal_path",
      "element:python-point:23bf3ae344bb9d4f804b5db06f8c7a65414ef509f1d1d26ea719e06a1bbe821b",
      "public-output:principal_path",
      "raw-source:cc388900145cfb5c2de10241c8d1583e3aeebf89a006ad6d45e2bd5c1b282768",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:canonical_bytes",
      "public-output:canonical_bytes",
      "raw-source:4ccafeeaf2eb1fcb2a3799ec3ee18b85c0ce7ff1b7429628571745b64823f06c",
      "source-context:tools/environment/canonical.py"
  ], [
      "capsule:2c9f5d8c32e7dcaabc6afc349155ef8466aba27aefcb671e8e3f79d6f427c54b",
      "declaration:canonical_bytes",
      "element:python-point:2410d91c43d5ab241b18f252e50896dccdd5a36c1204d81d805c6f20b05478bf",
      "public-output:canonical_bytes",
      "raw-source:4ccafeeaf2eb1fcb2a3799ec3ee18b85c0ce7ff1b7429628571745b64823f06c",
      "source-context:tools/environment/canonical.py"
  ]),
  ([
      "declaration:run_adapter",
      "public-output:run_adapter",
      "raw-source:aa7578e6be587a379ca9f97089e0326810d9046e93f148412092306046809edd"
  ], [
      "capsule:ee97afd0523bcf5f6df9d676d902fe4e610203810e1ba0157fc4081d5814eb72",
      "declaration:run_adapter",
      "element:python-point:24117a690916c7eebd198754ca86f7f8cc09943d29593fe44ea65e3a415743c7",
      "public-output:run_adapter",
      "raw-source:aa7578e6be587a379ca9f97089e0326810d9046e93f148412092306046809edd",
      "source-context:tools/environment/local_extract.py"
  ]),
  ([
      "declaration:validate_witnesses",
      "public-output:validate_witnesses",
      "raw-source:578921cfb38d90781b2c86c7f5b94ba2c9b1b355db0b4a66f9644a519c82acba"
  ], [
      "capsule:c1b1a98646d200ed7034e892e8ced4fbf0b31c8d1f8c85d5c875a5dd6e50572c",
      "declaration:validate_witnesses",
      "element:python-point:250a22d72301ac13840fa731da7ad4aa580360c7dd640a4eed376c4753c10011",
      "public-output:validate_witnesses",
      "raw-source:578921cfb38d90781b2c86c7f5b94ba2c9b1b355db0b4a66f9644a519c82acba",
      "source-context:tools/refactor/collapse_witness.py"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L52468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
