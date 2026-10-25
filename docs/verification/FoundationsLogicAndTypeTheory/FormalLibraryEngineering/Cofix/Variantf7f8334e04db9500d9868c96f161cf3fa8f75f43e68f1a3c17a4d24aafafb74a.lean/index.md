# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cofix.Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6da5cafe59314ad6223cbcf5d1aa599d6bf55fa8",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6da5cafe59314ad6223cbcf5d1aa599d6bf55fa8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Functor.Multivariate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFunctor.Multivariate.M` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [corecF](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/corecf--3128cc7798cf544de1c1d814.md) | 67 | `declaration-track:3128cc7798cf544de1c1d814eccd1b4048f09254ac7b68af23c6d9ee4213aed0` |
| 2 | `theorem` | [corecF_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/corecf-eq--2b515cff85bbb806858fdaf3.md) | 72 | `result-track:2b515cff85bbb806858fdaf3be1c67bf65017dfacd55ea71c66063872a4313c8` |
| 3 | `def` | [IsPrecongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/isprecongr--dd58d9ea80cd42419a54d15c.md) | 79 | `declaration-track:dd58d9ea80cd42419a54d15c79344f74981ab12f5cbfd18188bd39a9625b9a16` |
| 4 | `def` | [Mcongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/mcongr--b3fa35f77f759b1c90db44cf.md) | 87 | `declaration-track:b3fa35f77f759b1c90db44cfa6894e64a77f2369af5c34d6d680f02398b9d8e7` |
| 5 | `def` | [Cofix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix--1d75c919e27db9099659d0d8.md) | 99 | `declaration-track:1d75c919e27db9099659d0d8f164adcd4f60e910a1a37a6388bfe7c793ca6eee` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/instance--c54f89f7deb5f9a435defee6.md) | 103 | `declaration-track:c54f89f7deb5f9a435defee6a6699e143b30217ff37eba2b7c90dce3c02aaefd` |
| 7 | `def` | [mRepr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/mrepr--d7ecd59784a4bb59471a1a2c.md) | 108 | `declaration-track:d7ecd59784a4bb59471a1a2c3d13f9a68401e2e5911096938f845682ffad5832` |
| 8 | `def` | [Cofix.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-map--ed59909cabb2b2abf63e5ec1.md) | 114 | `declaration-track:ed59909cabb2b2abf63e5ec1bd8359c8cc09691dd6d048ff029e1deb6ee0bb5b` |
| 9 | `instance` | [Cofix.mvfunctor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-mvfunctor--91d81d504f3d0c77965bc21c.md) | 137 | `declaration-track:91d81d504f3d0c77965bc21c183999621f047ca5ea03efe32554e320d6aeae93` |
| 10 | `def` | [Cofix.corec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-corec--1822f9b6b8de3f21c7dc3c27.md) | 141 | `declaration-track:1822f9b6b8de3f21c7dc3c271e1632c0b1dcf67d650afbdb7661c4809488eabf` |
| 11 | `def` | [Cofix.dest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-dest--5a331862ba1875c5266a267e.md) | 146 | `declaration-track:5a331862ba1875c5266a267e1b1b828ab26b5767331cb6feaea76f4a34c0f11e` |
| 12 | `def` | [Cofix.abs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-abs--906660f0c57c3468948baab7.md) | 162 | `declaration-track:906660f0c57c3468948baab7f77ca11718be4c6fc4e6918a67c4a19033acae9c` |
| 13 | `def` | [Cofix.repr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-repr--b8194afb3078f50b905e3a6b.md) | 167 | `declaration-track:b8194afb3078f50b905e3a6bd07560b702a65add1434991a48ff14bfe835adc3` |
| 14 | `def` | [Cofix.corec'₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-corec--8dbfee9216eca02672beb85d.md) | 172 | `declaration-track:8dbfee9216eca02672beb85d1082e0db38a70ceff71ba140b968a59389c601e3` |
| 15 | `def` | [Cofix.corec'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-corec--ba525f808a2f372c52d3f8d7.md) | 179 | `declaration-track:ba525f808a2f372c52d3f8d7a796d6abc993be8003dc0b226702b4816882a26a` |
| 16 | `def` | [Cofix.corec₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-corec--e4636998ab7b729f757ad02a.md) | 187 | `declaration-track:e4636998ab7b729f757ad02ac691363ea6910169b4ea36b2d4732dfc9aea9e87` |
| 17 | `theorem` | [Cofix.dest_corec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-dest-corec--5ae4bc113d20cfbf18c7a120.md) | 192 | `result-track:5ae4bc113d20cfbf18c7a12079413fb54c85d30e1af8177faa3d3d385118b9fd` |
| 18 | `def` | [Cofix.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-mk--8fb973cba9484df2af2a6685.md) | 202 | `declaration-track:8fb973cba9484df2af2a66850d95cfea2a908dad46be598170f7ddda4f5de49e` |
| 19 | `theorem` | [Cofix.bisim_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-bisim-aux--63d9806bd18b5b62126d0e01.md) | 222 | `result-track:63d9806bd18b5b62126d0e01e8dcb44694870201daac03f2b7dedfa8b1ef570b` |
| 20 | `theorem` | [Cofix.bisim_rel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-bisim-rel--68a53046f38e822f00e2a2e7.md) | 266 | `result-track:68a53046f38e822f00e2a2e7c2217c42751df09114d84f00eddcf2ef485e0857` |
| 21 | `theorem` | [Cofix.bisim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-bisim--74209a05b99a423f6dd3904a.md) | 292 | `result-track:74209a05b99a423f6dd3904a5e40f4974c8b1339fa304441a9b06173c3c05650` |
| 22 | `theorem` | [Cofix.bisim₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-bisim--850a3ffa476cc11ce4186795.md) | 313 | `result-track:850a3ffa476cc11ce41867951a4404c78e2ffc8f4ae5e4d000c1752c777bf7d2` |
| 23 | `theorem` | [Cofix.bisim'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-bisim--654a87b8007846654e28d93a.md) | 322 | `result-track:654a87b8007846654e28d93a9998739c1909b6906714aa822d4549f6f69083a8` |
| 24 | `theorem` | [Cofix.mk_dest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-mk-dest--d5498381c08905551e5a7520.md) | 343 | `result-track:d5498381c08905551e5a7520dd5d12d2e080188d5dbcecaa370a80c75234c4c2` |
| 25 | `theorem` | [Cofix.dest_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-dest-mk--825c616c03db3426559c5fbb.md) | 363 | `result-track:825c616c03db3426559c5fbb7784ae812a29601f2ebf6f9fd48358c495d097d3` |
| 26 | `theorem` | [Cofix.ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-ext--8a164f3e9782b39be5995734.md) | 370 | `result-track:8a164f3e9782b39be5995734d5bba667ac6b9f9ce5ed03261ab9c7b5463ebe93` |
| 27 | `theorem` | [Cofix.ext_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-ext-mk--df326c4075234fb1b545b3ce.md) | 374 | `result-track:df326c4075234fb1b545b3ceef73cc2292474285489788c37c362cb3284a3612` |
| 28 | `theorem` | [liftR_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/liftr-map--acef4f47766c802a58b7fc34.md) | 386 | `result-track:acef4f47766c802a58b7fc34126b572c35b339e0f4e4fb6b3a2fc086f6687a4d` |
| 29 | `theorem` | [liftR_map_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/liftr-map-last--2eb0cb335f70e0cf7f30d035.md) | 398 | `result-track:2eb0cb335f70e0cf7f30d035c9e020bb3df58e5197999b3eb126251752af0731` |
| 30 | `theorem` | [liftR_map_last'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/liftr-map-last--ad830b101c27cf58bb46f6b7.md) | 430 | `result-track:ad830b101c27cf58bb46f6b7fb6e92153f5b90f53e807700d453684ded177046` |
| 31 | `theorem` | [Cofix.abs_repr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-abs-repr--f0a18a5ba40ed65c052de138.md) | 440 | `result-track:f0a18a5ba40ed65c052de138235d7804b4571c809d31948ff8f41c83bc8ddd2d` |
| 32 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/syntax--7f68b2005d859a0e0922b6bc.md) | 466 | `declaration-track:7f68b2005d859a0e0922b6bc804c0b2677be265987c3508713206fc49f08de09` |
| 33 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/elab-rules--a9bd5f353f719235a1eb1a26.md) | 468 | `declaration-track:a9bd5f353f719235a1eb1a26af5c6c48497b3ee47d394e9591adaf264cfc2b8f` |
| 34 | `theorem` | [corec_roll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/corec-roll--d745638e5c5977435255817a.md) | 528 | `result-track:d745638e5c5977435255817ae50a5ddf184d8c5f059cd7de6125e06c2e7ad8e9` |
| 35 | `theorem` | [Cofix.dest_corec'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-dest-corec--2a12c4af0b4f276b7c7d3a20.md) | 537 | `result-track:2a12c4af0b4f276b7c7d3a20e88f003272d1a51cf870f149ca57a1df33cb0a19` |
| 36 | `theorem` | [Cofix.dest_corec₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/cofix-dest-corec--d3deb2951283d2dc0658a224.md) | 556 | `result-track:d3deb2951283d2dc0658a22465b72aaedeaed7a030e8290deae6e227b2bf01be` |
| 37 | `instance` | [mvqpfCofix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/declarations/mvqpfcofix--5da6122f3d098e0e75df797f.md) | 564 | `declaration-track:5da6122f3d098e0e75df797f7610bb6fce66f6492c2b44fdf694221e60b16212` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
