# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cofix.Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d6afaab4f0ed286fa5246a614135df9f07b3fa8",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d6afaab4f0ed286fa5246a614135df9f07b3fa8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean.json)

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
| 1 | `def` | [corecF](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/corecf--87f911d50a58ac53eef2c1a3.md) | 65 | `declaration-track:87f911d50a58ac53eef2c1a34658f674b4bd37f25a08e33e24b56b662368368f` |
| 2 | `theorem` | [corecF_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/corecf-eq--7e185df583f52668de0771df.md) | 68 | `result-track:7e185df583f52668de0771df8bf557cc5d616d0dd53ceced87ea227c501f49c9` |
| 3 | `def` | [IsPrecongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/isprecongr--1dd21ee6235a5467c5083ca5.md) | 73 | `declaration-track:1dd21ee6235a5467c5083ca55f5186247f01abe7f5d9433cba146e58ddabd7df` |
| 4 | `def` | [Mcongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/mcongr--540fca1aea3df10680297a00.md) | 80 | `declaration-track:540fca1aea3df10680297a00c410b9a56519e33497cf701be053bb980c5610c4` |
| 5 | `def` | [Cofix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix--285560d4003b90ad30973298.md) | 90 | `declaration-track:285560d4003b90ad309732982f536f885735732bce0b695ea324c31ed75f21b2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/instance--eeaa0dbc23ee7fde0971e786.md) | 93 | `declaration-track:eeaa0dbc23ee7fde0971e786806786dd896ebe5b55c34e2af0602784340133f1` |
| 7 | `def` | [mRepr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/mrepr--0b9571d572d18081519c37dd.md) | 98 | `declaration-track:0b9571d572d18081519c37dda3e4045a3d98d4eb61191cc8f4f4df319c773e27` |
| 8 | `def` | [Cofix.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-map--94808272f34a22ef51b4fe54.md) | 102 | `declaration-track:94808272f34a22ef51b4fe54758ff1167943a7eb0472c0ec9eaa2d633cb37cb2` |
| 9 | `instance` | [Cofix.mvfunctor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-mvfunctor--ab06da827abdcbb7a8a12056.md) | 124 | `declaration-track:ab06da827abdcbb7a8a12056c790be00d5914c6eaf3c9a412e7580c161ad8f1c` |
| 10 | `def` | [Cofix.corec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-corec--ff773bdfe747af28263173df.md) | 127 | `declaration-track:ff773bdfe747af28263173df43e430ea9d13ae786f32acb6337a51c8259b1ace` |
| 11 | `def` | [Cofix.dest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-dest--4a5dbcfaa7ef64cf15481bf7.md) | 131 | `declaration-track:4a5dbcfaa7ef64cf15481bf7d74b09fb6d088d5e8510d571f560558200fdff8c` |
| 12 | `def` | [Cofix.abs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-abs--9c5d5eeb5c2e2bbf0478bac6.md) | 146 | `declaration-track:9c5d5eeb5c2e2bbf0478bac6278bdd93be532caa52ea4595120903577d754322` |
| 13 | `def` | [Cofix.repr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-repr--4d1d3104f12db4d2aa0a3b6b.md) | 150 | `declaration-track:4d1d3104f12db4d2aa0a3b6bc2266dc221bd8ba3b93443b8424363df14036c1c` |
| 14 | `def` | [Cofix.corec'₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-corec--2e5c3e33325a00a235125760.md) | 154 | `declaration-track:2e5c3e33325a00a23512576039525c062fb43be1ef5cf7b690a2ec455128dfdb` |
| 15 | `def` | [Cofix.corec'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-corec--172da24ed68e060f4eb51132.md) | 160 | `declaration-track:172da24ed68e060f4eb5113232398b3905e51e3b1d5817840a0edddbacf590ef` |
| 16 | `def` | [Cofix.corec₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-corec--bee9229067c7ea7a5dbc4648.md) | 167 | `declaration-track:bee9229067c7ea7a5dbc46488b09ff6d857e54193829d720baaf32014c8367fc` |
| 17 | `theorem` | [Cofix.dest_corec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-dest-corec--3f74023118ce4d3941297c61.md) | 171 | `result-track:3f74023118ce4d3941297c61dccc9c568dd3396ecdf8e469d196344d7c633322` |
| 18 | `def` | [Cofix.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-mk--c24aef2839e46545c56511a6.md) | 180 | `declaration-track:c24aef2839e46545c56511a62899378c2764154094a7a5446f9b467f7b9df08e` |
| 19 | `theorem` | [Cofix.bisim_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-bisim-aux--3b76b57966ee64cf0e3d8033.md) | 199 | `result-track:3b76b57966ee64cf0e3d80335494aa60c9263f49b1f972e3ef3c93ec8ff85ab3` |
| 20 | `theorem` | [Cofix.bisim_rel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-bisim-rel--ae35790caec6b7183bf87352.md) | 243 | `result-track:ae35790caec6b7183bf873528ec38faed331fde04f452f64e852247eb95354ae` |
| 21 | `theorem` | [Cofix.bisim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-bisim--b85e4509402df73a22251de5.md) | 268 | `result-track:b85e4509402df73a22251de5d525551a650580d16b709aa4dcb545cfb5b344b1` |
| 22 | `theorem` | [Cofix.bisim₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-bisim--41946b9b793eea27c585e76d.md) | 288 | `result-track:41946b9b793eea27c585e76d7378bb4de841ea10db77e4cb5918821621d2c5dd` |
| 23 | `theorem` | [Cofix.bisim'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-bisim--5d4ebbbb560d589d1d202dd6.md) | 296 | `result-track:5d4ebbbb560d589d1d202dd6778250df7e3311632d482e01e19b789c7899c696` |
| 24 | `theorem` | [Cofix.mk_dest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-mk-dest--55aaef1c1d531daa22d2663a.md) | 316 | `result-track:55aaef1c1d531daa22d2663a795f9584ea7ecb531ae1ee7561cb90c8fac08aca` |
| 25 | `theorem` | [Cofix.dest_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-dest-mk--10d6356f6ebb2ff52963a1f5.md) | 335 | `result-track:10d6356f6ebb2ff52963a1f595026b35ce7fd984b29cad30e72ab625cc72b800` |
| 26 | `theorem` | [Cofix.ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-ext--ec064bd77b9e5a94b7e8dde1.md) | 341 | `result-track:ec064bd77b9e5a94b7e8dde153cb04a176e6749bd27a707e8ce4b827a23c8396` |
| 27 | `theorem` | [Cofix.ext_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-ext-mk--b645bd02c065875b05ebe1c6.md) | 344 | `result-track:b645bd02c065875b05ebe1c64ac4db5b032a63f1e97e84ec809b06f88894bf05` |
| 28 | `theorem` | [liftR_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/liftr-map--7a33f0616e3e6895f0e330d8.md) | 355 | `result-track:7a33f0616e3e6895f0e330d844306198b83492b8b704c9b83fcb892f05879420` |
| 29 | `theorem` | [liftR_map_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/liftr-map-last--aa66d51f7a9071336d3ae985.md) | 366 | `result-track:aa66d51f7a9071336d3ae98577ac48cd87c3fa7e92ae746d2332f1ddfc315248` |
| 30 | `theorem` | [liftR_map_last'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/liftr-map-last--93c0a2c9dbb17f9fb2c491ad.md) | 397 | `result-track:93c0a2c9dbb17f9fb2c491ad5d0edec673e8a92752799e5bb8c3bbe254f34c16` |
| 31 | `theorem` | [Cofix.abs_repr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-abs-repr--7bd28806dd9ca6666bda93a1.md) | 406 | `result-track:7bd28806dd9ca6666bda93a18d92ab88db4a5324f809019e90da7d3ffba5f978` |
| 32 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/syntax--2e0e5b12c1d375c45167c3ed.md) | 428 | `declaration-track:2e0e5b12c1d375c45167c3ed9c4fca293a0e755599429a0c0aa3acdcd9dd7e0c` |
| 33 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/elab-rules--55fde565193c570e2d4ba280.md) | 430 | `declaration-track:55fde565193c570e2d4ba2805eb04e5884d485b806cf94c58638f4c041314af3` |
| 34 | `theorem` | [corec_roll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/corec-roll--412202e2f1e0f75294a7c4b0.md) | 490 | `result-track:412202e2f1e0f75294a7c4b00b4d7e5a99894ee93d1a6e15cb96922bb0501871` |
| 35 | `theorem` | [Cofix.dest_corec'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-dest-corec--4d4175b47d342e53921e7190.md) | 498 | `result-track:4d4175b47d342e53921e7190e4fdaf0ef59f60cfcec4ebee4b732d45113ec7b9` |
| 36 | `theorem` | [Cofix.dest_corec₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/cofix-dest-corec--fcdaee2646628298203c32aa.md) | 516 | `result-track:fcdaee2646628298203c32aa63025409515672845537c703ee531ab8332d814b` |
| 37 | `instance` | [mvqpfCofix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/declarations/mvqpfcofix--7a9b106c9c003c6bf8f9a6f0.md) | 523 | `declaration-track:7a9b106c9c003c6bf8f9a6f02ba602a3c23068562509ee1fbc455a57083a4eba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
