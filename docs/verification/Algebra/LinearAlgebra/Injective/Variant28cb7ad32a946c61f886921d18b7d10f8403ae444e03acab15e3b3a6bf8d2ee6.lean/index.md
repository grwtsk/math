# Verification target: GRWTSK.Algebra.LinearAlgebra.Injective.Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2dfe07b839715c70915cf7da98211c52d4b40e13",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2dfe07b839715c70915cf7da98211c52d4b40e13`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Injective` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearPMap` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.TypeMax` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Module.Injective](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/module-injective--3f0e042991f93b4b9e91c2c1.md) | 57 | `declaration-track:3f0e042991f93b4b9e91c2c1004c1cef5c0c39e87c70662fe2edd3e5d5345486` |
| 2 | `theorem` | [Module.injective_object_of_injective_module](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/module-injective-object-of-injective-module--9557ff52d9cdde56e1859b0b.md) | 64 | `result-track:9557ff52d9cdde56e1859b0b64c3d9bfcac897e94e0cc88a0c8160012fa458ef` |
| 3 | `theorem` | [Module.injective_module_of_injective_object](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/module-injective-module-of-injective-object--c00b76b7d82e609d544464cf.md) | 71 | `result-track:c00b76b7d82e609d544464cf23f0b7610fcb6030367b21843d3fe4352a015605` |
| 4 | `theorem` | [Module.injective_iff_injective_object](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/module-injective-iff-injective-object--a01ab680fa0bdb0792113342.md) | 82 | `result-track:a01ab680fa0bdb07921133423bda2d1b7e733b9359dd46bceaa43d7f9187b236` |
| 5 | `def` | [Module.Baer](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/module-baer--f6a6d3b263a35b5a4deb7e26.md) | 91 | `declaration-track:f6a6d3b263a35b5a4deb7e264abfb8b9c45a36237366cd43f2f65898fae97583` |
| 6 | `structure` | [ExtensionOf](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionof--dffb0274b0d427a3ae72492f.md) | 105 | `declaration-track:dffb0274b0d427a3ae72492f9c2ecd36ccd8c5fd7e04ca9e182df52e508f224c` |
| 7 | `theorem` | [ExtensionOf.ext](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionof-ext--4d31fcc8a41a4980748d42a2.md) | 116 | `result-track:4d31fcc8a41a4980748d42a2f976935a3d2e2a12ac9443cfa3c3164d75028a20` |
| 8 | `theorem` | [ExtensionOf.ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionof-ext-iff--4e5568b2c9e48e23446d9919.md) | 127 | `result-track:4e5568b2c9e48e23446d991955652b5de9d731eed3a7614c739907c21382d222` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/instance--5791da468ab1467a76370f69.md) | 137 | `declaration-track:5791da468ab1467a76370f6991c4b5c31445ed2698ebaae59d06a748b9b22696` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/instance--b29f51ed15e46d04cfa71164.md) | 149 | `declaration-track:b29f51ed15e46d04cfa7116471bd5f9897850271bbd9550c52d082ecf4e2d1c7` |
| 11 | `theorem` | [chain_linearPMap_of_chain_extensionOf](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/chain-linearpmap-of-chain-extensionof--23ae32a1d47cb1f5e0b4bd76.md) | 167 | `result-track:23ae32a1d47cb1f5e0b4bd76cc02e3aa0991a353c6cf011d22a1e9df4e0a23e7` |
| 12 | `def` | [ExtensionOf.max](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionof-max--fb51bcff44b23c88bac63928.md) | 176 | `declaration-track:fb51bcff44b23c88bac63928d4ed5c2bbdf5cf9eedb328429c0f85526841bbf8` |
| 13 | `theorem` | [ExtensionOf.le_max](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionof-le-max--792b9899ebad3b3607eed6da.md) | 200 | `result-track:792b9899ebad3b3607eed6da1d9414ff9ff651c8fbb24fdb84bf6b044984bda8` |
| 14 | `instance` | [ExtensionOf.inhabited](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionof-inhabited--da55badedd97967dda54c570.md) | 210 | `declaration-track:da55badedd97967dda54c57059036da2b7d17b3113bf57a934a1c146ea5e9e8e` |
| 15 | `def` | [extensionOfMax](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionofmax--fd94c3ff22e0df0bf70d9cf2.md) | 237 | `declaration-track:fd94c3ff22e0df0bf70d9cf200a0b33b3c851f80a31cf91eeef34877d614fb4b` |
| 16 | `theorem` | [extensionOfMax_is_max](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionofmax-is-max--a9da40f165265c95eceb5d68.md) | 243 | `result-track:a9da40f165265c95eceb5d68873bf0f073c9f3a6435005d976038ab561880dda` |
| 17 | `def` | [supExtensionOfMaxSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/supextensionofmaxsingleton--379bcb25a918b5ff7798dbfb.md) | 253 | `declaration-track:379bcb25a918b5ff7798dbfbc3fc07799e9f0de90d3c08252c0cd9765dde4f22` |
| 18 | `theorem` | [extensionOfMax_adjoin.aux1](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionofmax-adjoin-aux1--7b6c4c48beb8cb3102c235f2.md) | 258 | `result-track:7b6c4c48beb8cb3102c235f2ccd5ea57c9e7d2f25bbd1858b90c81419c678876` |
| 19 | `def` | [ExtensionOfMaxAdjoin.fst](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionofmaxadjoin-fst--079a950f8cdbdb0a518255f7.md) | 271 | `declaration-track:079a950f8cdbdb0a518255f70650e015b7060e26b03d3613157615e9d63d6f9e` |
| 20 | `def` | [ExtensionOfMaxAdjoin.snd](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionofmaxadjoin-snd--9722db8d32a1bf08da9903e6.md) | 278 | `declaration-track:9722db8d32a1bf08da9903e6fd1034ebfcb49950b68f166a61116c1d0463152b` |
| 21 | `theorem` | [ExtensionOfMaxAdjoin.eqn](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionofmaxadjoin-eqn--a435bbd8f8c734ef7dbfbcda.md) | 283 | `result-track:a435bbd8f8c734ef7dbfbcda7836bb61e2c679303f1885523bc538cfb64d26f7` |
| 22 | `def` | [ExtensionOfMaxAdjoin.ideal](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionofmaxadjoin-ideal--3566219f041217e9f00fa307.md) | 293 | `declaration-track:3566219f041217e9f00fa3072c83fd2683cee4c53ecd3851a3ece0c289ae103f` |
| 23 | `def` | [ExtensionOfMaxAdjoin.idealTo](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionofmaxadjoin-idealto--d0f886e3db1eb9473a9a43ec.md) | 299 | `declaration-track:d0f886e3db1eb9473a9a43ecd458fc35192160d1756cb29df74a878513eb974a` |
| 24 | `def` | [ExtensionOfMaxAdjoin.extendIdealTo](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionofmaxadjoin-extendidealto--c7b8791edabdd255df38edc1.md) | 316 | `declaration-track:c7b8791edabdd255df38edc10f04922239320358dbb00a029e8a91a4fce1cd9a` |
| 25 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_is_extension](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionofmaxadjoin-extendidealto-is-extension--391f471141dcfb63493fb5b6.md) | 321 | `result-track:391f471141dcfb63493fb5b627a1672e4a3fe9989d0e4b223badc8c2d10b8421` |
| 26 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_wd'](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionofmaxadjoin-extendidealto-wd--ac0fd37f897b706c29890eeb.md) | 328 | `result-track:ac0fd37f897b706c29890eebcdac15fb119377db3a6e9edcf411615c07fc026f` |
| 27 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_wd](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionofmaxadjoin-extendidealto-wd--7db7099213610660dcd10d64.md) | 341 | `result-track:7db7099213610660dcd10d6417d9bc5f55ea1899fa6e1fd0c899606108fb0e63` |
| 28 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_eq](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionofmaxadjoin-extendidealto-eq--6b30953e16ecacfbf587748f.md) | 350 | `result-track:6b30953e16ecacfbf587748fc90b95dac5d943a54315175555c29eb9add8dfda` |
| 29 | `def` | [ExtensionOfMaxAdjoin.extensionToFun](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionofmaxadjoin-extensiontofun--6b816352deec06afd5bd4933.md) | 361 | `declaration-track:6b816352deec06afd5bd493368285ef5549cb6ce2aab5824e1c349fd029c8459` |
| 30 | `theorem` | [ExtensionOfMaxAdjoin.extensionToFun_wd](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionofmaxadjoin-extensiontofun-wd--cd7ee88564998658c55a6c74.md) | 368 | `result-track:cd7ee88564998658c55a6c742b8a5d80b2d315f59545a8afe1c448ffc59bf37c` |
| 31 | `def` | [extensionOfMaxAdjoin](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionofmaxadjoin--4fa2c1ec1bb23476df9dc431.md) | 394 | `declaration-track:4fa2c1ec1bb23476df9dc431659e5da0c4fa30cc1af38903df4bd056dbbb9346` |
| 32 | `theorem` | [extensionOfMax_le](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionofmax-le--d53e81ba58bddcf69473c07f.md) | 428 | `result-track:d53e81ba58bddcf69473c07fa395fdcbc859e3634b6f512cfa61389ec2cc5d15` |
| 33 | `theorem` | [extensionOfMax_to_submodule_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/extensionofmax-to-submodule-eq-top--536e9d18b02cc846603fef7c.md) | 438 | `result-track:536e9d18b02cc846603fef7c3863dbf4afb387411fed2221a7806d3da19aa16d` |
| 34 | `theorem` | [injective](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant28cb7ad32a946c61f886921d18b7d10f8403ae444e03acab15e3b3a6bf8d2ee6.lean/declarations/injective--889490c314422dd55e2f5518.md) | 450 | `result-track:889490c314422dd55e2f5518dbae64ff474a67f8c326b046f44c004271be8e8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
