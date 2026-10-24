# Verification target: GRWTSK.Algebra.LinearAlgebra.Reindex.Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7efdad2126fe7957564c475f2cd3fab654e5427e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7efdad2126fe7957564c475f2cd3fab654e5427e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reindexLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean/declarations/reindexlinearequiv--d16a91f90a5ef3f2501c307b.md) | 48 | `declaration-track:d16a91f90a5ef3f2501c307bdb271b9e9ed075df349eb0311c6d2e2dc57d7893` |
| 2 | `theorem` | [reindexLinearEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean/declarations/reindexlinearequiv-apply--4a5c69a72a4c72e6c79b97d3.md) | 54 | `result-track:4a5c69a72a4c72e6c79b97d3f37548264ec4fe79d1d55ee32f5753ab9782aa2d` |
| 3 | `theorem` | [reindexLinearEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean/declarations/reindexlinearequiv-symm--df1f544316227c6252b6ecad.md) | 59 | `result-track:df1f544316227c6252b6ecada6f58e873b9dcb4e0f45c914f654b1248b12bbb5` |
| 4 | `theorem` | [reindexLinearEquiv_refl_refl](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean/declarations/reindexlinearequiv-refl-refl--79f27d05620e06781c4d956b.md) | 64 | `result-track:79f27d05620e06781c4d956bae2415feb429e6678777d72d41f009f80c88952e` |
| 5 | `theorem` | [reindexLinearEquiv_trans](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean/declarations/reindexlinearequiv-trans--e169e6b0aa3b5e50afe6dd86.md) | 68 | `result-track:e169e6b0aa3b5e50afe6dd86f4fe95706e44865ec3a9ef40b6dcc71f469bfd7b` |
| 6 | `theorem` | [reindexLinearEquiv_comp](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean/declarations/reindexlinearequiv-comp--f0a6a1ae69fbc21130bb90e6.md) | 74 | `result-track:f0a6a1ae69fbc21130bb90e6087b8192445143eab43b75b3ebdada167da6c531` |
| 7 | `theorem` | [reindexLinearEquiv_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean/declarations/reindexlinearequiv-comp-apply--2c7f923e68aea85a2e4ea801.md) | 80 | `result-track:2c7f923e68aea85a2e4ea801af10162d9b9d961229ddbb224dfe689a60da5818` |
| 8 | `theorem` | [reindexLinearEquiv_one](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean/declarations/reindexlinearequiv-one--d5dbf7023172ee84fe6fb7a4.md) | 86 | `result-track:d5dbf7023172ee84fe6fb7a4a1ff39a5bf231d48b9aaade7dbf49eeb2141139e` |
| 9 | `theorem` | [reindexLinearEquiv_mul](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean/declarations/reindexlinearequiv-mul--934887b898a4dee392e47b1e.md) | 96 | `result-track:934887b898a4dee392e47b1e3ed961ca5c5afd3e5b57719fa438c485b44e5b1e` |
| 10 | `theorem` | [mul_reindexLinearEquiv_one](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean/declarations/mul-reindexlinearequiv-one--e906e9b3d4c040b4a5d4f746.md) | 102 | `result-track:e906e9b3d4c040b4a5d4f74676c0acb2dc5ba97ebd7bc5b723d51529652a04ae` |
| 11 | `def` | [reindexAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean/declarations/reindexalgequiv--4a9d745e14075821c60b9413.md) | 119 | `declaration-track:4a9d745e14075821c60b9413686d9571a0af843e2a3116af4b40c538ec4808c4` |
| 12 | `theorem` | [reindexAlgEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean/declarations/reindexalgequiv-apply--0dcdd32f5ea1fd18642fc3f5.md) | 126 | `result-track:0dcdd32f5ea1fd18642fc3f5d1ecbc82e678b81ad9d1ebe63812bf7ca5571019` |
| 13 | `theorem` | [reindexAlgEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean/declarations/reindexalgequiv-symm--ad56744ce084f86e22afc5e2.md) | 131 | `result-track:ad56744ce084f86e22afc5e28af3622a38f3b43d2d169ef549f2be4ffd442957` |
| 14 | `theorem` | [reindexAlgEquiv_refl](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean/declarations/reindexalgequiv-refl--47a9dc4a9f9c598ad6397069.md) | 136 | `result-track:47a9dc4a9f9c598ad639706973d262274f8101f347bd36eee7c12deb9017acdc` |
| 15 | `theorem` | [reindexAlgEquiv_mul](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean/declarations/reindexalgequiv-mul--6b574c9d41b8e89e64fd926c.md) | 139 | `result-track:6b574c9d41b8e89e64fd926c84ac315382f3c212bf596788ab4c29b4158e0928` |
| 16 | `theorem` | [det_reindexLinearEquiv_self](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean/declarations/det-reindexlinearequiv-self--7c529766c0f9fbc931ec1979.md) | 149 | `result-track:7c529766c0f9fbc931ec1979c42fc14b34dbb2c964402f49e158b36678a74102` |
| 17 | `theorem` | [det_reindexAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variante6d5a9331684b8376689588869824374c0186bd9cdf4dfb7e7ee47dc0dcfde20.lean/declarations/det-reindexalgequiv--8e75e3ac08e2061ac581f3c4.md) | 157 | `result-track:8e75e3ac08e2061ac581f3c49c1d1558d150ed2e87f92d0fd1660a019bbb79e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
