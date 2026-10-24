# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SVal.Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "367ee943b06d8434b79784d2e0ead4cc921e2677",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `367ee943b06d8434b79784d2e0ead4cc921e2677`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.SimpLemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Grind.Attr` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SVal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/declarations/sval--72c848426db95820ddd782e1.md) | 30 | `declaration-track:72c848426db95820ddd782e15a003825660d74a96db0343d4e7e0d6e7614f6a6` |
| 2 | `def` | [StateTuple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/declarations/statetuple--4d176d0578a6acec8064d898.md) | 43 | `declaration-track:4d176d0578a6acec8064d8988c2b7a0bfbfbe7a448871c1e33f47863a4f76614` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/declarations/instance--400c908125912b44de79168b.md) | 47 | `declaration-track:400c908125912b44de79168bc32cb345cc1a6b5bfb72c5f88cb0c5d4505434d8` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/declarations/instance--4851522b1736580c33670a9b.md) | 50 | `declaration-track:4851522b1736580c33670a9b7b54c55233d42190b0a8c9d881bab5a41a87f7b2` |
| 5 | `def` | [curry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/declarations/curry--08553d653df90322e173d72e.md) | 54 | `declaration-track:08553d653df90322e173d72ef50bd746649b7bcd59c774f21f6eceeaa1ac0822` |
| 6 | `theorem` | [curry_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/declarations/curry-nil--2793fc5ca0636b8062765f30.md) | 57 | `result-track:2793fc5ca0636b8062765f30dc92c919800588a5964885668914c73445413bfe` |
| 7 | `theorem` | [curry_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/declarations/curry-cons--abe2f6554778c57cbb81eec5.md) | 58 | `result-track:abe2f6554778c57cbb81eec5b153dedfb2c1068e810baf791698cf107dec33a1` |
| 8 | `def` | [uncurry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/declarations/uncurry--bd9516766412513e99a38a29.md) | 61 | `declaration-track:bd9516766412513e99a38a290bd307ed5bf1676e89bb00ba928b46b01f08dd58` |
| 9 | `theorem` | [uncurry_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/declarations/uncurry-nil--87ca144ee4b28af18564dc69.md) | 64 | `result-track:87ca144ee4b28af18564dc697f44a242c79edbbdfa368db9318ff1d6eaef9d30` |
| 10 | `theorem` | [uncurry_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/declarations/uncurry-cons--5389fad796e7428220ecbc7b.md) | 65 | `result-track:5389fad796e7428220ecbc7bb34f5d5ae3a9f011efb627013d2e241380fe0aef` |
| 11 | `theorem` | [uncurry_curry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/declarations/uncurry-curry--31a7212e0437a77a0715c3b1.md) | 67 | `result-track:31a7212e0437a77a0715c3b1dff2988e73d20c952572f69656b9eeb31497e29a` |
| 12 | `theorem` | [curry_uncurry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/declarations/curry-uncurry--b3346e4d1ffb9e665af17f15.md) | 68 | `result-track:b3346e4d1ffb9e665af17f15f26a60e44c988d5af30a35059fe86e788dfae643` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/declarations/instance--ca960c894ad958f939c0d6a8.md) | 70 | `declaration-track:ca960c894ad958f939c0d6a8b1636e4a08665c8313850eee8e96c1794a236b21` |
| 14 | `class` | [GetTy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/declarations/getty--7f878d11f48a4ecba7a979fe.md) | 77 | `declaration-track:7f878d11f48a4ecba7a979fe02e84bacd337b41c9a63efb5457e7695f7f8f70d` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/declarations/instance--bdc1a92b1724311a0f80fe2d.md) | 81 | `declaration-track:bdc1a92b1724311a0f80fe2d6c216a6baf8f90dada732e8b1c8f00be55894d43` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/declarations/instance--e934fa52ec4c67a38debea6b.md) | 84 | `declaration-track:e934fa52ec4c67a38debea6bc69cb0cccd053509779d9797294e284624f2f78d` |
| 17 | `def` | [getThe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/declarations/getthe--7a71154b9e406a98eb32b16c.md) | 88 | `declaration-track:7a71154b9e406a98eb32b16cbd4ef337bce9614d0950a5c625f457b3cdb6a102` |
| 18 | `theorem` | [getThe_here](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/declarations/getthe-here--c7329dfda049f6a64d3616df.md) | 89 | `result-track:c7329dfda049f6a64d3616dfec926c6110ef5cb12c77abffe20664953b5f98b1` |
| 19 | `theorem` | [getThe_there](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SVal/Variant949a66098079c8219f21513542efc937853eea9ca1c6a08d6a089aecc969ea80.lean/declarations/getthe-there--3abd5fda05dc11fa3b23fe8d.md) | 90 | `result-track:3abd5fda05dc11fa3b23fe8df752c998c93f12ddbae70b126e225b2eaac0ec42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
