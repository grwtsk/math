# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46b2bd31a9b2c888b731b607a633c74e0634750e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46b2bd31a9b2c888b731b607a633c74e0634750e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.InferType` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.AlphaShareBuilder` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.LitValues` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [isNatValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isnatvalue--3f523669cae6445407a59829.md) | 35 | `declaration-track:3f523669cae6445407a59829cf8d148b7ac04f6fbf2b4b400e25e6a313c34acb` |
| 2 | `abbrev` | [isStringValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isstringvalue--d0c08bc77c78dbc4db817780.md) | 36 | `declaration-track:d0c08bc77c78dbc4db817780e4b6f7cfcfcc5286add68017d905b7785d179ba5` |
| 3 | `abbrev` | [isIntValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isintvalue--8f20045d5fd15b13053ad7fb.md) | 37 | `declaration-track:8f20045d5fd15b13053ad7fb8ca9e1506e155c77590ed65ef05de5691cef333d` |
| 4 | `abbrev` | [isBitVecValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isbitvecvalue--00cbadda5d0a086914350783.md) | 38 | `declaration-track:00cbadda5d0a0869143507830c5c215fbfb4c1447d9c2d9e0a32158f42ad1d7d` |
| 5 | `abbrev` | [isFinValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isfinvalue--90b9e760945fb9e6d3e6d019.md) | 39 | `declaration-track:90b9e760945fb9e6d3e6d019348821f6bddf1b4975b3ea14ee7146f2bd4b6765` |
| 6 | `abbrev` | [isCharValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/ischarvalue--05cbef65d5718601d9a35b35.md) | 40 | `declaration-track:05cbef65d5718601d9a35b350ed4a7f99b5bf4a9450bc8e5423938a2567ab22d` |
| 7 | `abbrev` | [isRatValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isratvalue--bdf1746d258ed10f2be38d2f.md) | 41 | `declaration-track:bdf1746d258ed10f2be38d2fc2b609afec45829716fb91b1980139885d61e13b` |
| 8 | `abbrev` | [isUInt8Value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isuint8value--a1c52133c1e4ffca1ab137b1.md) | 42 | `declaration-track:a1c52133c1e4ffca1ab137b1e62b2d12734537d5849703c75746b1ba75d248ec` |
| 9 | `abbrev` | [isUInt16Value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isuint16value--02816d18d59f549473b5b298.md) | 43 | `declaration-track:02816d18d59f549473b5b298e95c7bc24d18e91610b7661ba834c5a1b9ae8562` |
| 10 | `abbrev` | [isUInt32Value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isuint32value--accb09e3b0eaeedd3b26a4f9.md) | 44 | `declaration-track:accb09e3b0eaeedd3b26a4f9918ec2938cce482e530b4eeea977163112aeed3d` |
| 11 | `abbrev` | [isUInt64Value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isuint64value--ed8696a9244c9fc4b6a9d70a.md) | 45 | `declaration-track:ed8696a9244c9fc4b6a9d70a1103adab4451e1ea2e93d7ee240c21f787a95623` |
| 12 | `abbrev` | [isInt8Value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isint8value--a761e2130ea8327287c48bdf.md) | 46 | `declaration-track:a761e2130ea8327287c48bdffa80f2110556a9a62df98bcb91ed8bcfb685e0eb` |
| 13 | `abbrev` | [isInt16Value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isint16value--875760d55b9303c078e27a89.md) | 47 | `declaration-track:875760d55b9303c078e27a89129a8ec6dae80c37fa261d2b9722b6d2876bbc7f` |
| 14 | `abbrev` | [isInt32Value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isint32value--da9852361332cacbf493cdbb.md) | 48 | `declaration-track:da9852361332cacbf493cdbb1fd452e59307db76369d9410ab323c294eaac0a9` |
| 15 | `abbrev` | [isInt64Value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isint64value--e0ef40911371ed2838a9424d.md) | 49 | `declaration-track:e0ef40911371ed2838a9424dbf76ed9833117a72f69496fda6041000cb0e9b8f` |
| 16 | `def` | [isVal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isval--9455c689d119436ab550f8b4.md) | 51 | `declaration-track:9455c689d119436ab550f8b49204ef06e173f642443885fcd2798a64fb467862` |
| 17 | `def` | [isBuiltinValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isbuiltinvalue--ac4ce990ca4e3060b5063752.md) | 72 | `declaration-track:ac4ce990ca4e3060b5063752c2c73639d6b3a66ca47878b21470667f18047cb2` |
| 18 | `def` | [guardSimproc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/guardsimproc--ad7796f485bf27e26a92ffc9.md) | 74 | `declaration-track:ad7796f485bf27e26a92ffc97afd1d4084cd94bc5b7399866ddfb559b6876741` |
| 19 | `def` | [isAlwaysZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isalwayszero--3d1d3d67120a12c3ae024993.md) | 78 | `declaration-track:3d1d3d67120a12c3ae024993f8ee9ba89166986d9d403cdb36eae437688d26bd` |
| 20 | `def` | [isProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isprop--ae8468b184301f9465c22b67.md) | 87 | `declaration-track:ae8468b184301f9465c22b675d280133e46c4fa48a6c059745ed4f0fc40606b2` |
| 21 | `def` | [isProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isproof--39bb3ccfd87535efc381c8b8.md) | 99 | `declaration-track:39bb3ccfd87535efc381c8b84bf3c2eea9ee3a6319f67d2dd5c8b74f74b8181c` |
| 22 | `def` | [isProofTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/isproofterm--f09cb1970be9b8df0994d281.md) | 106 | `declaration-track:f09cb1970be9b8df0994d2816af9ad0d617fe1a45966acde507de5565273decb` |
| 23 | `def` | [getListLitElems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/getlistlitelems--b6a284a3ce27f8b63dbaa599.md) | 110 | `declaration-track:b6a284a3ce27f8b63dbaa599f584adfb9e4117439adc970e5bba8a5a7248a978` |
| 24 | `def` | [markAsDoneIfFailed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b.lean/declarations/markasdoneiffailed--e54b469eef9987a12b838b96.md) | 116 | `declaration-track:e54b469eef9987a12b838b96eabb53a8806f8b8d2ee450e9b3992092c2198294` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
