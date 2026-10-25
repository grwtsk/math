# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45ba97aeb5b8bd82d3d78f6d0d6b1dcad24aa0d0",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45ba97aeb5b8bd82d3d78f6d0d6b1dcad24aa0d0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Simp` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [get'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/get--155dfb2387ac1ce307024c48.md) | 24 | `declaration-track:155dfb2387ac1ce307024c48f428dce55f0d3ce9010625934698e70fa5ba516f` |
| 2 | `def` | [modify'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/modify--5268068ba162ec2ffb84db10.md) | 27 | `declaration-track:5268068ba162ec2ffb84db10ce4b9deec0a35cf078d68596dc002a08228fc22c` |
| 3 | `def` | [checkMaxSteps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/checkmaxsteps--6b1059d922f491fbfc42d533.md) | 30 | `declaration-track:6b1059d922f491fbfc42d5330010483084ebc21e52d6cb99bd3ad1f3b8becf3a` |
| 4 | `def` | [incSteps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/incsteps--19d2e7abdbfb7b2ef5432a69.md) | 33 | `declaration-track:19d2e7abdbfb7b2ef5432a69304c31bdc1de87d6c18bd48bdfa44a1eaaef9872` |
| 5 | `structure` | [ACM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/acm-context--1b7b11dadac133101b4763bf.md) | 36 | `declaration-track:1b7b11dadac133101b4763bf49ce8f201b67095db227b854b2f00942bcccf988` |
| 6 | `class` | [MonadGetStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/monadgetstruct--b6fe36e596d8421d26bcb351.md) | 39 | `declaration-track:b6fe36e596d8421d26bcb3510129a9a162c0a7aacfcd5689d75f8695e64df1f3` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/instance--774278079d1e80cf9376089d.md) | 45 | `declaration-track:774278079d1e80cf9376089d344dbebff0faa8ddc7ef6eb862f9bb1061dcf9ce` |
| 8 | `abbrev` | [ACM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/acm--b388928e64a079fde0eb97dd.md) | 48 | `declaration-track:b388928e64a079fde0eb97dddfa3c664ec7d4e3d4d2b1af6224d6e8ddd2e2fe0` |
| 9 | `abbrev` | [ACM.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/acm-run--311f6bcf3f6b1a2db586b529.md) | 50 | `declaration-track:311f6bcf3f6b1a2db586b529d48b4dc2aab0fab1df8d633e19d981ae459250c7` |
| 10 | `abbrev` | [getOpId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/getopid--85554e436cf52275105d80b2.md) | 53 | `declaration-track:85554e436cf52275105d80b2ba35ff6f8321d4dba3c75705b29cc8381aa29ab0` |
| 11 | `def` | [ACM.getStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/acm-getstruct--c4564c2870f86a7658098a53.md) | 56 | `declaration-track:c4564c2870f86a7658098a535aef8597040c23d875f8cab5fbdd195a66860bc8` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/instance--95477f8836cbe8b779a3249d.md) | 64 | `declaration-track:95477f8836cbe8b779a3249d68eb39e2958784a4c6c73c1aafb7fd7ddc1a5798` |
| 13 | `def` | [modifyStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/modifystruct--7d29b8349ea3c207ed518ecd.md) | 67 | `declaration-track:7d29b8349ea3c207ed518ecd439a9b5207648e645fd9df1e856f123cadc87978` |
| 14 | `def` | [getOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/getop--26dbe89c28c9e184e58c7813.md) | 71 | `declaration-track:26dbe89c28c9e184e58c7813078a6c928614fceda7b7e043445beed31d26bd9b` |
| 15 | `def` | [notAssoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/notassoc--c2d3590f70258b44bfff3e94.md) | 74 | `declaration-track:c2d3590f70258b44bfff3e941b1c7c0aed465c4c4c5eebc5a36dd4cc85e49a51` |
| 16 | `def` | [isArithOpInOtherModules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/isarithopinothermodules--6877d116310a5f013e7f65cb.md) | 81 | `declaration-track:6877d116310a5f013e7f65cb8f9b21158540e7a7e558f7ff8b30cd0d2009e79b` |
| 17 | `def` | [getTermOpIds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/gettermopids--2d753ca791cdda397f761604.md) | 92 | `declaration-track:2d753ca791cdda397f76160401a9c72157d022f92bca341f7f918a19d5ad3310` |
| 18 | `def` | [insertOpId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/insertopid--5051beb54d7cd296690f7783.md) | 95 | `declaration-track:5051beb54d7cd296690f77832b9518756b9fec417771ce42ef08218638d96c4e` |
| 19 | `def` | [addTermOpId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/addtermopid--5be2a1cc116a768afb189628.md) | 111 | `declaration-track:5be2a1cc116a768afb189628865cbfe02f34900f157e94fce218da31d6350f1e` |
| 20 | `def` | [mkVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/mkvar--bbe131f8d960b7ea2a18f864.md) | 115 | `declaration-track:bbe131f8d960b7ea2a18f8641aa09e602c9187772ed7660830e76e1ac7adf8c3` |
| 21 | `def` | [getOpId?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/getopid--00c0d203ab4e4a96caed5453.md) | 128 | `declaration-track:00c0d203ab4e4a96caed54539ee40f354981a8dc36d9c27a73afcf4f97fb6ec9` |
| 22 | `def` | [isOp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/isop--d884524c22c1cb762193192f.md) | 190 | `declaration-track:d884524c22c1cb762193192faed4bde72d0ccceffc4d3cb90d6f92b087217f60` |
| 23 | `def` | [isCommutative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/iscommutative--2c99628892fdc9b1aea0579f.md) | 195 | `declaration-track:2c99628892fdc9b1aea0579fba18aea294690c796bcf16d42f4a6c0e7d63de0e` |
| 24 | `def` | [hasNeutral](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/hasneutral--d958fee82e1e0d5ff30c7856.md) | 198 | `declaration-track:d958fee82e1e0d5ff30c7856d64ff13b63ae89b2b8b7e7557ec2095ffcd49b24` |
| 25 | `def` | [isIdempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/declarations/isidempotent--4f67f42e522aa47837c2636a.md) | 201 | `declaration-track:4f67f42e522aa47837c2636a4b5fbec3ef24cccb554930ec22fc81b585063723` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
