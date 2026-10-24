# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Schur.Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd804d0e4464fa91fe486a90f064ad894a24b1ad",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd804d0e4464fa91fe486a90f064ad894a24b1ad`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Ext` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Simple` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Endomorphism` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Spectrum` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mono_of_nonzero_from_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean/declarations/mono-of-nonzero-from-simple--f72aff11e247cb02229cc0b7.md) | 33 | `result-track:f72aff11e247cb02229cc0b7a071d35e98e0767374f921e34a1d06478ded784e` |
| 2 | `theorem` | [isIso_of_hom_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean/declarations/isiso-of-hom-simple--ac0f8718c7532941f04d501b.md) | 40 | `result-track:ac0f8718c7532941f04d501b5939706e454c5836a5269badfa17b1613e10bcfd` |
| 3 | `theorem` | [isIso_iff_nonzero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean/declarations/isiso-iff-nonzero--dbd2730cf2e795636d824257.md) | 48 | `result-track:dbd2730cf2e795636d82425748c6a29a45f571f4c32825791e6c554ff88c81b2` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean/declarations/instance--c1b3942c9ae019e8c48cbcaf.md) | 59 | `declaration-track:c1b3942c9ae019e8c48cbcafdbb22d05c59c723bcc4085bfb653de7a26498cb7` |
| 5 | `theorem` | [finrank_hom_simple_simple_eq_zero_of_not_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean/declarations/finrank-hom-simple-simple-eq-zero-of-not-iso--c167991c7f4e06196f875aea.md) | 82 | `result-track:c167991c7f4e06196f875aeaf1013eda20cb5bd7d6215c77d93b11c826511a58` |
| 6 | `theorem` | [finrank_endomorphism_eq_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean/declarations/finrank-endomorphism-eq-one--002d5b30318aab8c6853bbde.md) | 110 | `result-track:002d5b30318aab8c6853bbdefe06ea23abbdfe701c0f0cc26ce886ab6f5fa651` |
| 7 | `theorem` | [finrank_endomorphism_simple_eq_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean/declarations/finrank-endomorphism-simple-eq-one--1b11b54332134f927ff64356.md) | 127 | `result-track:1b11b54332134f927ff64356d40a300264d79def91337ab9989e731936bb16fb` |
| 8 | `theorem` | [endomorphism_simple_eq_smul_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean/declarations/endomorphism-simple-eq-smul-id--17273080e4425ec8642d6a8c.md) | 131 | `result-track:17273080e4425ec8642d6a8c4a204f7681132e695c7e032478f7fbc837c199f6` |
| 9 | `def` | [fieldEndOfFiniteDimensional](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean/declarations/fieldendoffinitedimensional--351769981f01854d4d2c056d.md) | 139 | `declaration-track:351769981f01854d4d2c056d6a0a756bd82667765af0c5a4a088ef777b1b8650` |
| 10 | `theorem` | [finrank_hom_simple_simple_le_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean/declarations/finrank-hom-simple-simple-le-one--215e21a6b212914b41d1d5aa.md) | 156 | `result-track:215e21a6b212914b41d1d5aa448accd8f4328853a7b6230b75cc27860dbf5c22` |
| 11 | `theorem` | [finrank_hom_simple_simple_eq_one_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean/declarations/finrank-hom-simple-simple-eq-one-iff--1bcab306a50b35dd6b3eae20.md) | 168 | `result-track:1bcab306a50b35dd6b3eae20883168347ae44878fa154298b964606e1bc5908b` |
| 12 | `theorem` | [finrank_hom_simple_simple_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean/declarations/finrank-hom-simple-simple-eq-zero-iff--b0472463a828169d2f721eb2.md) | 183 | `result-track:b0472463a828169d2f721eb2f9707ff5c7313fc8ec58a190baacbdd9ffb76223` |
| 13 | `theorem` | [finrank_hom_simple_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variantc716676c4ce00fae4b21198b1c72e23e1d023c055c2293a7b27b7e52d7e704f4.lean/declarations/finrank-hom-simple-simple--313aeb34cbef54e0ca0a9176.md) | 191 | `result-track:313aeb34cbef54e0ca0a91767f466e540cba846efb7d16b197fb2655d1294c42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
