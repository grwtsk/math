# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SizeOf.Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8eace76270cae7c9e574a45b61ad4c284a3d7bce",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8eace76270cae7c9e574a45b61ad4c284a3d7bce`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Tactics` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean/declarations/sizeof--48e7b64cf047cc72edb53847.md) | 30 | `declaration-track:48e7b64cf047cc72edb53847938607fdfc0d79eaf6ad79d43281978ff63218b6` |
| 2 | `def` | [default.sizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean/declarations/default-sizeof--30af8cc475bac8e87a157370.md) | 46 | `declaration-track:30af8cc475bac8e87a15737069dae3212c110c75cf8e2efa8a4ef83103918f78` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean/declarations/instance--e10ac3fa73ab26e8038ecc45.md) | 53 | `declaration-track:e10ac3fa73ab26e8038ecc45b6efc86b4953473fa1b7a6825f836e5f694d728d` |
| 4 | `theorem` | [sizeOf_default](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean/declarations/sizeof-default--7d7d67c0d5ec4f63bc0a379a.md) | 56 | `result-track:7d7d67c0d5ec4f63bc0a379a66052b1369905a29889906f2a98e65f302b37659` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean/declarations/instance--b0a2e77f6e2b8194898c9705.md) | 58 | `declaration-track:b0a2e77f6e2b8194898c97055b1f833d70d9f54f71abc1ecc88f533ac863b530` |
| 6 | `theorem` | [sizeOf_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean/declarations/sizeof-nat--cf35d39c2732f99690083e19.md) | 61 | `result-track:cf35d39c2732f99690083e1977efa65b24acf28dd6ed7e12a1206653cb2f37c5` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean/declarations/instance--32fb025da2d9e8e2a28fd5fc.md) | 63 | `declaration-track:32fb025da2d9e8e2a28fd5fc445bce0626e5c6eeb6b61e1ffa65439a05409816` |
| 8 | `theorem` | [sizeOf_thunk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean/declarations/sizeof-thunk--8df81addb96230a961fa4184.md) | 66 | `result-track:8df81addb96230a961fa41841acfdfa97680cc970984dd5321be8cfc5c91219b` |
| 9 | `theorem` | [Unit.sizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean/declarations/unit-sizeof--5b363a994e181b9809b0bfe0.md) | 96 | `result-track:5b363a994e181b9809b0bfe0915db1b9bf0430e69129c8d8217d7467a3bc20c8` |
| 10 | `theorem` | [Bool.sizeOf_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean/declarations/bool-sizeof-eq-one--93108365d1444e4f57fb3a96.md) | 97 | `result-track:93108365d1444e4f57fb3a96f3af6cf3d687f03fe32b0eb66cd3ae84673f3115` |
| 11 | `def` | [Name.sizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean/declarations/name-sizeof--9795da06741130da6317c305.md) | 105 | `declaration-track:9795da06741130da6317c3050e32ebb805ea1b008e3421471520ef55549197ba` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean/declarations/instance--bd7bbf8d18ba71047bd0491f.md) | 110 | `declaration-track:bd7bbf8d18ba71047bd0491fccf150c6507c3abc416d39883f7daf88b97ef604` |
| 13 | `theorem` | [Name.anonymous.sizeOf_spec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean/declarations/name-anonymous-sizeof-spec--6ba892cbeedbe2eef181ea46.md) | 113 | `result-track:6ba892cbeedbe2eef181ea467c8949618585bf6e1a0956d26cc9bf9d6df634f9` |
| 14 | `theorem` | [Name.str.sizeOf_spec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean/declarations/name-str-sizeof-spec--325eddfccb1acb2164ebd21f.md) | 115 | `result-track:325eddfccb1acb2164ebd21fe1019a6a8859131a0201868943b6ead3488f34bb` |
| 15 | `theorem` | [Name.num.sizeOf_spec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variantf7c8f5c2aa4596139f6e37ee0cbf6c664218076fcb089c988787dcebc017d07c.lean/declarations/name-num-sizeof-spec--dd254e3a5d29f50a26452c32.md) | 117 | `result-track:dd254e3a5d29f50a26452c32f1fbbe587312306ab5716d1c912a485bff831993` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
