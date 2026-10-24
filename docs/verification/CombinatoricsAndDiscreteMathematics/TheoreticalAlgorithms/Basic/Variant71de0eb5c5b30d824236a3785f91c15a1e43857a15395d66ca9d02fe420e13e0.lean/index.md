# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e454b7f60ac073d7e4122beff9c566b4e50be21",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e454b7f60ac073d7e4122beff9c566b4e50be21`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.UInt` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [allDiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean/declarations/alldiff--e72dc3252a8caaf308a4e409.md) | 31 | `declaration-track:e72dc3252a8caaf308a4e409ff8dbbad8fde307e1e08b862789bc937808875b1` |
| 2 | `def` | [uset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean/declarations/uset--bdbf82890a0be36a4194b49c.md) | 38 | `declaration-track:bdbf82890a0be36a4194b49c1565ef6df8ec0dfabb46090ddafa0be96ec0515e` |
| 3 | `theorem` | [USize.succ_toNat_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean/declarations/usize-succ-tonat-of-lt--b2faa839da2016de28eb4a63.md) | 41 | `result-track:b2faa839da2016de28eb4a632f46ca1d561c8abeb66696cb71433df035a0b035` |
| 4 | `def` | [scanlMFast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean/declarations/scanlmfast--d42f433b2dea8859dfd2b40a.md) | 51 | `declaration-track:d42f433b2dea8859dfd2b40a6516274955c0519a93778171a68b70ca6c06533a` |
| 5 | `def` | [scanlMUnsafe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean/declarations/scanlmunsafe--dbf07020fcd5963df784c95a.md) | 75 | `declaration-track:dbf07020fcd5963df784c95a02c5b1523a9c285add21f4b25ff5642a12e9b262` |
| 6 | `def` | [scanlM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean/declarations/scanlm--064bc85fadd1509d236d593e.md) | 83 | `declaration-track:064bc85fadd1509d236d593e367b278ab0308985ca8b2861be7a68ed69b2243f` |
| 7 | `def` | [scanrMFast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean/declarations/scanrmfast--f31ed4cf4bf383032d778d30.md) | 97 | `declaration-track:f31ed4cf4bf383032d778d30512e1d375d4638bdd3ffede50fb62d3caf205aa8` |
| 8 | `def` | [scanrMUnsafe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean/declarations/scanrmunsafe--9fd169486a50e9641ccbd738.md) | 120 | `declaration-track:9fd169486a50e9641ccbd738488242eb941ae194747b49d23a39b63344538f87` |
| 9 | `def` | [scanrM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean/declarations/scanrm--a4521e8caa7c597d447ec276.md) | 128 | `declaration-track:a4521e8caa7c597d447ec276fbc5d258b3c80c2f5289e377f52db40dcbb393f5` |
| 10 | `def` | [scanl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean/declarations/scanl--cced78448739158833fb1fb4.md) | 145 | `declaration-track:cced78448739158833fb1fb46f40d5716e2d1d210689c825a52f8cdc25d4d59a` |
| 11 | `def` | [scanr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean/declarations/scanr--0a583fd3d84464a353ed5c05.md) | 152 | `declaration-track:0a583fd3d84464a353ed5c053c81d4f3241881cedd96978af8d9a1806a47dc98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
