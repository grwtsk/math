# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sites.Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b12aeea8dabd5cfac6504c01674383e40b9a6cac",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b12aeea8dabd5cfac6504c01674383e40b9a6cac`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Spaces` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Sheaf` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.DenseSubsite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coveringOfPresieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/coveringofpresieve--de8a05483ce84c34d0487c03.md) | 42 | `declaration-track:de8a05483ce84c34d0487c032bc69c2af4cdfee8e62a038dc49755473016c2e7` |
| 2 | `theorem` | [coveringOfPresieve_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/coveringofpresieve-apply--0aaff338935979e9c378d494.md) | 47 | `result-track:0aaff338935979e9c378d4942194b1961d9d0730e002cbb603739377aa7c304e` |
| 3 | `theorem` | [iSup_eq_of_mem_grothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/isup-eq-of-mem-grothendieck--f1a7bd4b116fe90c8e6154bb.md) | 58 | `result-track:f1a7bd4b116fe90c8e6154bb3c700efd31776541ad7a01dc3ae70a1f140ece1f` |
| 4 | `def` | [presieveOfCoveringAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/presieveofcoveringaux--613674a46a0805bf225c6a9d.md) | 76 | `declaration-track:613674a46a0805bf225c6a9d6370baefcaa4a8ef65ee841e4d3c29b7b9c1caab` |
| 5 | `def` | [presieveOfCovering](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/presieveofcovering--29ddc79439cea7d616fd50fa.md) | 81 | `declaration-track:29ddc79439cea7d616fd50fa08f6df9eb5bdbf9d395e9d2091f94d0c5131cfc7` |
| 6 | `theorem` | [covering_presieve_eq_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/covering-presieve-eq-self--3e23fc674a22512dce36d77e.md) | 90 | `result-track:3e23fc674a22512dce36d77e1ce7d6ffa37cbb904e1aaa7f5595435165b5d1fa` |
| 7 | `theorem` | [mem_grothendieckTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/mem-grothendiecktopology--b448ac530c1c725aea0a8b3f.md) | 103 | `result-track:b448ac530c1c725aea0a8b3f5768ce8c2b9761c528381cdce6ae7320d5adbdde` |
| 8 | `def` | [homOfIndex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/homofindex--e720506dd6120050ef9b0d2e.md) | 113 | `declaration-track:e720506dd6120050ef9b0d2ec07c095c97dddab564d0e3b34d9c38da3e579e9c` |
| 9 | `def` | [indexOfHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/indexofhom--5bc0cd65e38b744197ee8f02.md) | 120 | `declaration-track:5bc0cd65e38b744197ee8f02959d19f2675ee10471988a2c916eb6b7b5d7efe7` |
| 10 | `theorem` | [indexOfHom_spec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/indexofhom-spec--eb93ac0d2a7000d46eb2a0ac.md) | 124 | `result-track:eb93ac0d2a7000d46eb2a0acbf6773b72970ab5f84bc3dd2f7278f24f927ed18` |
| 11 | `theorem` | [coverDense_iff_isBasis](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/coverdense-iff-isbasis--814cdfd65f15122bc2c850c5.md) | 137 | `result-track:814cdfd65f15122bc2c850c566bd9c71053d7c0d7c47a786bfd53fa451a1d147` |
| 12 | `theorem` | [coverDense_inducedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/coverdense-inducedfunctor--83abc4983c90b32a40a4b093.md) | 146 | `result-track:83abc4983c90b32a40a4b093cdbab5eb5c8d9385073cb39bed92a9feb67bb60d` |
| 13 | `theorem` | [OpenEmbedding.compatiblePreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/openembedding-compatiblepreserving--11ade5974db8384d0afdd450.md) | 161 | `result-track:11ade5974db8384d0afdd450302673d166fd467ad739543f446ed9085f7c56eb` |
| 14 | `theorem` | [IsOpenMap.coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/isopenmap-coverpreserving--2a3a0b23a88b01999cd9a619.md) | 171 | `result-track:2a3a0b23a88b01999cd9a6192f2352eb04cc353f8f65edfef8503d058d344d65` |
| 15 | `theorem` | [TopCat.Presheaf.isSheaf_of_openEmbedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/topcat-presheaf-issheaf-of-openembedding--4467683d374f42c82b84b88f.md) | 179 | `result-track:4467683d374f42c82b84b88ffcc47eca050b5f592e6b3c530a750950cad2234c` |
| 16 | `def` | [isTerminalOfEmpty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/isterminalofempty--de31fe9dbc440af8b1573c30.md) | 197 | `declaration-track:de31fe9dbc440af8b1573c3048850c9e842c1fe470f5cb341bcff349071258a7` |
| 17 | `def` | [isTerminalOfEqEmpty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/isterminalofeqempty--ee8813ff4f470ef28bfda61e.md) | 202 | `declaration-track:ee8813ff4f470ef28bfda61e61a451407289f12f966ced97a328e4b08292c4d1` |
| 18 | `def` | [restrictHomEquivHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/restricthomequivhom--3954fd685f2f37d5071a00b1.md) | 211 | `declaration-track:3954fd685f2f37d5071a00b105f733531890f91e2e6da4b9123f4d16322383f7` |
| 19 | `theorem` | [extend_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/extend-hom-app--1cae0a6d610c668316f79737.md) | 216 | `result-track:1cae0a6d610c668316f797376a541178cf9d97740ff26cef37be6364eee06093` |
| 20 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantefc69393e204a14566f46567bcc252ea1417b669df9a97f3e6e5d890239dca91.lean/declarations/hom-ext--38cef896a0070bfd1a07d481.md) | 222 | `result-track:38cef896a0070bfd1a07d4810f0619fd1d36b1b9a04377cf3aa5f1f14a74e640` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
