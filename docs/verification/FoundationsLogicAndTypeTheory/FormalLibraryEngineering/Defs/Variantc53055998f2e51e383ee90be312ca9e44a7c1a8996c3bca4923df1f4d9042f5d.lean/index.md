# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Defs.Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d4f32d8eec4d35d8a700b6f4376034f98a2b5a7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d4f32d8eec4d35d8a700b6f4376034f98a2b5a7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Lemma` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Alias` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [traverse.](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean/declarations/traverse--5525c144a509de4775da16dc.md) | 21 | `declaration-track:5525c144a509de4775da16dc95775dc2a6716eaf75f9f0b93a017f577044174c` |
| 2 | `def` | [elim'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean/declarations/elim--1c248668a227f23d7c3e3bf8.md) | 28 | `declaration-track:1c248668a227f23d7c3e3bf8042f54ffc971177526136e8926d4e089c9d5767e` |
| 3 | `theorem` | [elim'_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean/declarations/elim-none--e1964b02935d1bf589085750.md) | 33 | `result-track:e1964b02935d1bf589085750b7544a19ea7cdf4096afbb3080876a3dc305f298` |
| 4 | `theorem` | [elim'_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean/declarations/elim-some--ed3034071e91b3f96a1d9f75.md) | 36 | `result-track:ed3034071e91b3f96a1d9f751bbbef4f77bb9470187a58d52288a2fc447e5ebd` |
| 5 | `theorem` | [elim'_none_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean/declarations/elim-none-some--4fa89344e0c17f72da78a451.md) | 39 | `result-track:4fa89344e0c17f72da78a4518d5d8b4adea2f8c3fd68897acff9a3bb4cb86799` |
| 6 | `lemma` | [elim'_eq_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean/declarations/elim-eq-elim--5f72988b36216a629f1b5a2f.md) | 42 | `result-track:5f72988b36216a629f1b5a2f10fbc7f6d4f65001c73108b9a3433647a5ad0070` |
| 7 | `abbrev` | [iget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean/declarations/iget--071ac30c16cb74bce12b795b.md) | 47 | `declaration-track:071ac30c16cb74bce12b795b1ec474f5935ae661d563eb2c187efb6c86bfecb2` |
| 8 | `theorem` | [iget_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean/declarations/iget-some--c57b26c67cc926a7325cc605.md) | 51 | `result-track:c57b26c67cc926a7325cc605aee2228449c05cf1314c03e2ec1448d70492f07b` |
| 9 | `instance` | [merge_isCommutative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean/declarations/merge-iscommutative--cdb8d45771863deba878c305.md) | 54 | `declaration-track:cdb8d45771863deba878c3052e8dd108e2600b62e4328e607cd3693bbba00def` |
| 10 | `instance` | [merge_isAssociative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean/declarations/merge-isassociative--057b03a6f0edf6dd72ea31df.md) | 58 | `declaration-track:057b03a6f0edf6dd72ea31df6018d6f3ded2d6584ae4878ef384bbe20ce9a526` |
| 11 | `instance` | [merge_isIdempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean/declarations/merge-isidempotent--02adc06b466f0df6cb426cfe.md) | 62 | `declaration-track:02adc06b466f0df6cb426cfe70b175949a25055cc4db3f2824b12fc72a64d34f` |
| 12 | `instance` | [merge_isId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean/declarations/merge-isid--176ede3d01762518f14e4a5f.md) | 66 | `declaration-track:176ede3d01762518f14e4a5fa7cea670d8f843cb51981b8e83c177ef9abb0f56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
