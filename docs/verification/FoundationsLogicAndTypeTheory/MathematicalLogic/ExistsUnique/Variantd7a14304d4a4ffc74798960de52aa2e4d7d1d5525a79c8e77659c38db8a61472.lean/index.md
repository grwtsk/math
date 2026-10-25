# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ExistsUnique.Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e9570d340b3a26e9a19915b3e537032373e174c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e9570d340b3a26e9a19915b3e537032373e174c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.TypeStar` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Alias` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExistsUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/existsunique--258d1a693b50ee3d2359d402.md) | 27 | `declaration-track:258d1a693b50ee3d2359d4025666d6dc1bc866cdd3d829fae8d066e493b4dedc` |
| 2 | `def` | [isExplicitBinderSingular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/isexplicitbindersingular--b0cca1bf757abf453dbbc8ec.md) | 33 | `declaration-track:b0cca1bf757abf453dbbc8ec74bd36a3992cb7bd85ad5581f47938c8ecbdcbf3` |
| 3 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/macro--17cd378f55efa739bc25c498.md) | 48 | `declaration-track:17cd378f55efa739bc25c4987a22f843073ed6fc822db46a7a0105ab59049f37` |
| 4 | `def` | [unexpandExistsUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/unexpandexistsunique--21c7daa04331abc9dc39238b.md) | 63 | `declaration-track:21c7daa04331abc9dc39238b6ff0d0f9c686ed361c4fad590a9ca0a0d8ddc91d` |
| 5 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/syntax--15eae350a34df5016e2d09de.md) | 74 | `declaration-track:15eae350a34df5016e2d09de1ac550f9712df4a6680a85f2af4b02e4edf8a1ee` |
| 6 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/macro-rules--fbc0b4c0fed5f646ab51e768.md) | 76 | `declaration-track:fbc0b4c0fed5f646ab51e7682332cef8860cc67303ae5569bddbd24d81059f30` |
| 7 | `theorem` | [ExistsUnique.intro](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/existsunique-intro--d961d8a44df43300c7f6b9ee.md) | 83 | `result-track:d961d8a44df43300c7f6b9eeb205f6449a7d9654f1fefff4a8cbcb07cecf49bd` |
| 8 | `theorem` | [ExistsUnique.elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/existsunique-elim--b6b951a1a2fc763ae03cf79d.md) | 86 | `result-track:b6b951a1a2fc763ae03cf79da9a1caac73eb059b1644d5e591b564cdd874589e` |
| 9 | `theorem` | [existsUnique_of_exists_of_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/existsunique-of-exists-of-unique--c40f9078edcaf05d934b9931.md) | 90 | `result-track:c40f9078edcaf05d934b993164b5e4a8773e70c231a1da714a2b8179e96c15aa` |
| 10 | `theorem` | [ExistsUnique.exists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/existsunique-exists--585cf443022d632ba022b8f1.md) | 97 | `result-track:585cf443022d632ba022b8f1bd2530ec92dabf9335654e1b03444aafbd103d20` |
| 11 | `theorem` | [ExistsUnique.unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/existsunique-unique--14f752cac9485badaab871d7.md) | 99 | `result-track:14f752cac9485badaab871d71875336f42a91639f28a8e0a78d06aec9f0ff90a` |
| 12 | `theorem` | [existsUnique_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/existsunique-congr--32f1b982f302485eddfd3a73.md) | 108 | `result-track:32f1b982f302485eddfd3a73b800425e0532c442172a400d6974902ccafd1b70` |
| 13 | `theorem` | [existsUnique_iff_exists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/existsunique-iff-exists--d9389ea750f11ea3a72cb71b.md) | 111 | `result-track:d9389ea750f11ea3a72cb71ba375b1f57372a9a3794f7119d11a2eb22ee7e16e` |
| 14 | `theorem` | [existsUnique_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/existsunique-const--51b38c32922e82d9d8781189.md) | 117 | `result-track:51b38c32922e82d9d8781189fecba6affb8a4edf739d0b6040a43e33f2d8a090` |
| 15 | `theorem` | [existsUnique_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/existsunique-eq--0124e100ca1a5353452dbf5f.md) | 122 | `result-track:0124e100ca1a5353452dbf5f4c2de7b6a37176ebccf454c9f6f8489562647255` |
| 16 | `theorem` | [existsUnique_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/existsunique-eq--652ae74e0ec369f2fd31933f.md) | 128 | `result-track:652ae74e0ec369f2fd31933fc3bf7fbfe1581dc00067a54c2b5f9072ffa6cac2` |
| 17 | `theorem` | [existsUnique_prop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/existsunique-prop--5cc650ad4360a329f62fd16c.md) | 133 | `result-track:5cc650ad4360a329f62fd16c8502c92d7266ca6764598504237fbeae908539a4` |
| 18 | `theorem` | [existsUnique_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/existsunique-false--379af5cb3dc8ffe0ae6379a2.md) | 137 | `result-track:379af5cb3dc8ffe0ae6379a26a421148a66335906feb5758e219f41a95c0c078` |
| 19 | `theorem` | [existsUnique_prop_of_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/existsunique-prop-of-true--886e8125921701ec8c78914e.md) | 141 | `result-track:886e8125921701ec8c78914e220cf7a0bd4a108c220e5ccbd9c4ca1f93563dc2` |
| 20 | `theorem` | [ExistsUnique.elim₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/existsunique-elim--a4b1e3f7d9165c1619dbd9a9.md) | 146 | `result-track:a4b1e3f7d9165c1619dbd9a9b4cc70c600121d23ba1cd51070eee8fc20362acc` |
| 21 | `theorem` | [ExistsUnique.intro₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/existsunique-intro--307513b42db6aad16763bc14.md) | 153 | `result-track:307513b42db6aad16763bc14a423d5671101eae3c9240249b02f2a924e65b008` |
| 22 | `theorem` | [ExistsUnique.exists₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/existsunique-exists--a804ffc761690bf2903cf136.md) | 159 | `result-track:a804ffc761690bf2903cf13616d4f1dccc52f6f747f87c4ca08ec28f9f637f1a` |
| 23 | `theorem` | [ExistsUnique.unique₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean/declarations/existsunique-unique--79849bf7bb4c7887a61b7363.md) | 163 | `result-track:79849bf7bb4c7887a61b7363cae631717f8cf3769f5e3073655f657404bab2f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
