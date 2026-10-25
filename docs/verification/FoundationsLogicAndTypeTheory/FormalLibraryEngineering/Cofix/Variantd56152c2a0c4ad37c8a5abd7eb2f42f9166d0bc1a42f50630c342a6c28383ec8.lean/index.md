# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cofix.Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "625b87ba6a7606e1d2ba7461a3fd256ee8291982",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `625b87ba6a7606e1d2ba7461a3fd256ee8291982`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Functor.Multivariate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFunctor.Multivariate.M` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [corecF](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/corecf--c1da9d253bc9d7f5513cc97c.md) | 57 | `declaration-track:c1da9d253bc9d7f5513cc97c1109a94464517bb6f2eac7c81705d307062ed9b0` |
| 2 | `theorem` | [corecF_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/corecf-eq--d69532b0b9e120a320cedc06.md) | 60 | `result-track:d69532b0b9e120a320cedc0640f763d379e587607c32c127bea6c6925728de5a` |
| 3 | `def` | [IsPrecongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/isprecongr--a05a4244ca36eba4052beab3.md) | 65 | `declaration-track:a05a4244ca36eba4052beab3aa27a125a2c9829e0dbcfe348ac6f548fa0048eb` |
| 4 | `def` | [Mcongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/mcongr--3fa96c07bb5dd8e0caf8c3ae.md) | 72 | `declaration-track:3fa96c07bb5dd8e0caf8c3ae084a0c57bd6731ea192341c0293ff85275c4e92b` |
| 5 | `def` | [Cofix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix--e050304c6e13aef861d7591e.md) | 82 | `declaration-track:e050304c6e13aef861d7591eb4a6e1ffc98df473b266063b4d40aa5a8e983761` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/instance--f32a59b85a58dc342d38937c.md) | 85 | `declaration-track:f32a59b85a58dc342d38937cb78d5a99867e238aa0c3c69a173203941d98ecb4` |
| 7 | `def` | [mRepr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/mrepr--1aa0bbdf7696ac95af483235.md) | 90 | `declaration-track:1aa0bbdf7696ac95af483235f948fde01f61656ee021b097ebf15c8326a17615` |
| 8 | `def` | [Cofix.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-map--9c0e9645f8d70a7ec80d9a2a.md) | 94 | `declaration-track:9c0e9645f8d70a7ec80d9a2afc1c1e316d57270de9f8df72cd76866c64a16154` |
| 9 | `instance` | [Cofix.mvfunctor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-mvfunctor--aa7ea08edacddb60eb79d7f5.md) | 116 | `declaration-track:aa7ea08edacddb60eb79d7f55fd4b129b8b9100c97665ffca7f4089fd9c9ee4c` |
| 10 | `def` | [Cofix.corec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-corec--c6f4094b57fd5d5278a7a132.md) | 119 | `declaration-track:c6f4094b57fd5d5278a7a13266f095f9809ae5103a636ec41d2b363857cc9c2f` |
| 11 | `def` | [Cofix.dest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-dest--69ce13835e345e392c99cc3e.md) | 123 | `declaration-track:69ce13835e345e392c99cc3e474916792706be725c36246cf147a66a7143d7b0` |
| 12 | `def` | [Cofix.abs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-abs--dbb022e6eb817304c0aeff78.md) | 138 | `declaration-track:dbb022e6eb817304c0aeff780fd6065b22bed699b982a9b755e3d02cd25222f8` |
| 13 | `def` | [Cofix.repr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-repr--f626c3021838d07250bbcf48.md) | 142 | `declaration-track:f626c3021838d07250bbcf48f1bbe7d03faaeaec244ce9556674eb6f6eda55e2` |
| 14 | `def` | [Cofix.corec'₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-corec--caed3284911beb5affac2715.md) | 146 | `declaration-track:caed3284911beb5affac27159d49032629c418e396d2acd894a32789c8fc58c2` |
| 15 | `def` | [Cofix.corec'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-corec--4efa776c5fa77ca15fc89422.md) | 152 | `declaration-track:4efa776c5fa77ca15fc89422573bd687b777606cda51d7f7692bf2a6fadae10d` |
| 16 | `def` | [Cofix.corec₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-corec--174f09e9ecde5ffc8106a7fb.md) | 159 | `declaration-track:174f09e9ecde5ffc8106a7fb7a5ee2f960c6eecab1b8e78db3bb1e1fe0e88734` |
| 17 | `theorem` | [Cofix.dest_corec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-dest-corec--a20300ee6c8104032eaa81e9.md) | 163 | `result-track:a20300ee6c8104032eaa81e95da3d57f3c88d55ad58c1e49a808e61ba122a95a` |
| 18 | `def` | [Cofix.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-mk--378f099bc981ac9ce6b06d11.md) | 172 | `declaration-track:378f099bc981ac9ce6b06d11a754a64c5b13fa1a440986e4fe93feefdab059ea` |
| 19 | `theorem` | [Cofix.bisim_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-bisim-aux--1aec6194695144174a7988e6.md) | 191 | `result-track:1aec6194695144174a7988e611c56a1c32553d5219a918d989d763c3c8f07df4` |
| 20 | `theorem` | [Cofix.bisim_rel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-bisim-rel--28b9d33cba8fa31e41e88374.md) | 235 | `result-track:28b9d33cba8fa31e41e88374603044aa4e63d1705709ff4ab9f646f90e14c23b` |
| 21 | `theorem` | [Cofix.bisim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-bisim--4fa74beecaecf71fd02d2a6b.md) | 260 | `result-track:4fa74beecaecf71fd02d2a6b750291cf69c0385b185198262be6c0ee0f64dc86` |
| 22 | `theorem` | [Cofix.bisim₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-bisim--0d23ffdd9d18468ba135130b.md) | 280 | `result-track:0d23ffdd9d18468ba135130b2be205647652efff67f45e2c2c4f96ca8364d745` |
| 23 | `theorem` | [Cofix.bisim'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-bisim--a14ff7717bb5d2e202846b74.md) | 288 | `result-track:a14ff7717bb5d2e202846b74a5975e28794b652ecc083d80f076ed0f65fd4f1a` |
| 24 | `theorem` | [Cofix.mk_dest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-mk-dest--5be419671f8a1feed7212467.md) | 308 | `result-track:5be419671f8a1feed72124676b5d2ccae2eef6b9af0eb955f25eb949a54a8b67` |
| 25 | `theorem` | [Cofix.dest_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-dest-mk--9c2682c5b0a7fd662363b514.md) | 327 | `result-track:9c2682c5b0a7fd662363b514ee555718a4c6dbd926433072e3e269a7a13f8c47` |
| 26 | `theorem` | [Cofix.ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-ext--87e9eae6cf393e005be63849.md) | 333 | `result-track:87e9eae6cf393e005be63849ae65fae6055b71fa385b41d403f0891c0cb2142a` |
| 27 | `theorem` | [Cofix.ext_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-ext-mk--2fbd6c9e8d4abd868e12f618.md) | 336 | `result-track:2fbd6c9e8d4abd868e12f6187e0358687cba7feb928eacb85083645ee574fd4b` |
| 28 | `theorem` | [liftR_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/liftr-map--2e4dd8a68c24b785bd2f72f2.md) | 347 | `result-track:2e4dd8a68c24b785bd2f72f239a59287f5826ac7c4409ad56abe1b828d86916d` |
| 29 | `theorem` | [liftR_map_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/liftr-map-last--c68ae0f995bce7bd12bb79df.md) | 358 | `result-track:c68ae0f995bce7bd12bb79dfc7cfe4ce16e3b46bc0a6f3a6e6db03e5f5b17144` |
| 30 | `theorem` | [liftR_map_last'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/liftr-map-last--12c755a054b61d1c9572bd5b.md) | 389 | `result-track:12c755a054b61d1c9572bd5bf70f0e116991000b774d1befa51a5010907d6936` |
| 31 | `theorem` | [Cofix.abs_repr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-abs-repr--df4565714ea2bf2f711b185c.md) | 398 | `result-track:df4565714ea2bf2f711b185c29e066f5cdbcfd845dab8968bc47fb923a1885b8` |
| 32 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/syntax--20fd254f1dd59ac60829e5b3.md) | 420 | `declaration-track:20fd254f1dd59ac60829e5b36c7adf13e2da831d0e80ba808737f3328a0a7888` |
| 33 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/elab-rules--857bfb0fdd373c46dc0dfac6.md) | 422 | `declaration-track:857bfb0fdd373c46dc0dfac666e8b071cc26d98896cc58704a979c662f14f0dc` |
| 34 | `theorem` | [corec_roll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/corec-roll--d257bb59d245a337ad2cfa54.md) | 482 | `result-track:d257bb59d245a337ad2cfa54184ce6b42f2ef5b5b4efa433a1f56a35cac2664b` |
| 35 | `theorem` | [Cofix.dest_corec'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-dest-corec--94dc5b4b7fd264c9fb30e8d4.md) | 490 | `result-track:94dc5b4b7fd264c9fb30e8d47285324097ebb0afa85f668d0486b77c93e8a1e2` |
| 36 | `theorem` | [Cofix.dest_corec₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/cofix-dest-corec--0dc6f3d0c4bf2e777e9c9bf9.md) | 508 | `result-track:0dc6f3d0c4bf2e777e9c9bf93c897e563f87ee128a495428f2fcb19112ef4cb5` |
| 37 | `instance` | [mvqpfCofix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/declarations/mvqpfcofix--3a8a3b9562f6018598dd8d95.md) | 515 | `declaration-track:3a8a3b9562f6018598dd8d955f67b88e1ef2b2126d782a358ff0faea9f177aae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
