# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fa562b5ca4e4c97bf173676c6b6803583a6b8fc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fa562b5ca4e4c97bf173676c6b6803583a6b8fc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.List.Init.Attach` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Data.Array.Init.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Data.Ord` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reduceOption](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/declarations/reduceoption--1fe448020be0225ac55073ff.md) | 20 | `declaration-track:1fe448020be0225ac55073ff7460661cba0c833b58353ac23c7aee5df3988d2e` |
| 2 | `def` | [equalSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/declarations/equalset--e15d0906b80298dfa1c24b53.md) | 29 | `declaration-track:e15d0906b80298dfa1c24b53e22fb3b192621f53191fd5b1042f37ded70c7797` |
| 3 | `def` | [qsortOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/declarations/qsortord--988b7c2172fcdac052681b78.md) | 36 | `declaration-track:988b7c2172fcdac052681b781759e348729a7c72c370a73b9d050b2004c753d6` |
| 4 | `def` | [minD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/declarations/mind--82752757e783cdc087761c47.md) | 46 | `declaration-track:82752757e783cdc087761c473f79f5ecc8d12d77d78364e5cce5c2f3d26d8fd9` |
| 5 | `def` | [min?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/declarations/min--d4ef076972c478b14854f2f1.md) | 58 | `declaration-track:d4ef076972c478b14854f2f1272e5226cf1e280bc472469f40a3c6823a1f4c50` |
| 6 | `def` | [minI](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/declarations/mini--77c18a22f99a0310fbe90789.md) | 72 | `declaration-track:77c18a22f99a0310fbe907895b3b6fb8b47158aa17785686387e0dfdf2bf72a3` |
| 7 | `def` | [maxD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/declarations/maxd--815401bace8e972e3b2d0389.md) | 83 | `declaration-track:815401bace8e972e3b2d038997261cc0bb5ce9da01a6eac151f73dbb6f3e4a1d` |
| 8 | `def` | [max?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/declarations/max--22b3dc223005d1f7ac822b38.md) | 94 | `declaration-track:22b3dc223005d1f7ac822b389002e8c38ddcd90ffe750d2ab0de771c7f53c149` |
| 9 | `def` | [maxI](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/declarations/maxi--ade5f5eecf1827583ee4f181.md) | 105 | `declaration-track:ade5f5eecf1827583ee4f1819e10ebab328b97080021fd26b301d8cf5fc6e896` |
| 10 | `def` | [attachImpl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/declarations/attachimpl--7596de0a3f76d22dfb260332.md) | 113 | `declaration-track:7596de0a3f76d22dfb260332c619db81ccfa5b4cabf02d254bea233085320cec` |
| 11 | `def` | [attach](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/declarations/attach--c0556162df1dd65bcf43220a.md) | 117 | `declaration-track:c0556162df1dd65bcf43220aced0e5c66cf2de886a9784d9a6f7f6685e404c28` |
| 12 | `def` | [join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/declarations/join--de140ce4a144f2d5a47ba9f5.md) | 124 | `declaration-track:de140ce4a144f2d5a47ba9f5fb9269eb360ff5ea8c9c515e643e044cbfa27f13` |
| 13 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/declarations/empty--01c84f0dc2491f1ea6e46615.md) | 134 | `declaration-track:01c84f0dc2491f1ea6e4661529017732fa2ce967f07e91e62357c155052395b7` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/declarations/instance--a753860df753df8e31cb723c.md) | 141 | `declaration-track:a753860df753df8e31cb723c2b04573fc4600b7cd6e0b943b6bc4638807eef46` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/declarations/instance--46dd53f643778fed6022f0a3.md) | 144 | `declaration-track:46dd53f643778fed6022f0a320e08c37026b2c8452d0b2eab9e4f502d4f1e657` |
| 16 | `def` | [isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/declarations/isempty--8be1058e037de73f708676ac.md) | 151 | `declaration-track:8be1058e037de73f708676ac660834f65274361209c6b8d5e3b7b2a5685e8197` |
| 17 | `def` | [contains](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/declarations/contains--69c2736d2b47abf832b7da35.md) | 158 | `declaration-track:69c2736d2b47abf832b7da35680f52a8de3c27b78c2d087116c7ba7537cf62bc` |
| 18 | `def` | [popHead?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant5068dbe096043435e762e5be8dff1f9e4df4ff391c7f710870468ba0487ddb63.lean/declarations/pophead--c005117555bfd9249d5899c2.md) | 165 | `declaration-track:c005117555bfd9249d5899c2569a8bb1cad112645d773ebcd25f9c1d14ca4839` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
