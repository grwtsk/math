# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SplitSimplicialObject.Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09547c87adbffce2a3f8c9103149b27f8b2e3fa5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09547c87adbffce2a3f8c9103149b27f8b2e3fa5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialObject.Split` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.DoldKan.Degeneracies` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.DoldKan.FunctorN` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [πSummand](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/declarations/summand--560e587e46b04822b7605c86.md) | 36 | `declaration-track:560e587e46b04822b7605c864cf00ca875f5a0d71fdcd0e5332b0e41f639cd2b` |
| 2 | `theorem` | [cofan_inj_πSummand_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/declarations/cofan-inj-summand-eq-id--a22100402893594f661c00bc.md) | 44 | `result-track:a22100402893594f661c00bccdcba9e9f538aea63efc03ee367bd0edec2f9a05` |
| 3 | `theorem` | [cofan_inj_πSummand_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/declarations/cofan-inj-summand-eq-zero--2fafbdd188479fe6e823816e.md) | 49 | `result-track:2fafbdd188479fe6e823816e264390b9e84e1090defc3ca3aa86eb8c857be13e` |
| 4 | `theorem` | [decomposition_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/declarations/decomposition-id--93bd3fb36c76ff357661cff8.md) | 56 | `result-track:93bd3fb36c76ff357661cff8febc069781b5fe659980598054e9d8db6337f943` |
| 5 | `theorem` | [σ_comp_πSummand_id_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/declarations/comp-summand-id-eq-zero--d9ee9bf9b0963efe4332bd18.md) | 67 | `result-track:d9ee9bf9b0963efe4332bd18931de878b9c7109af42b085bb24a0119dbb631e5` |
| 6 | `theorem` | [cofan_inj_comp_PInfty_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/declarations/cofan-inj-comp-pinfty-eq-zero--d5c0f9a71c4e50f4ed19bd8c.md) | 84 | `result-track:d5c0f9a71c4e50f4ed19bd8c64bbfdeaea82788075b610e0ce5715b32400db35` |
| 7 | `theorem` | [comp_PInfty_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/declarations/comp-pinfty-eq-zero-iff--d659229c5477538672884b22.md) | 90 | `result-track:d659229c5477538672884b22015d2a78afc659668d639cec33ec3252a24a0133` |
| 8 | `theorem` | [PInfty_comp_πSummand_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/declarations/pinfty-comp-summand-id--9b574bdcd5702d58cfedb987.md) | 116 | `result-track:9b574bdcd5702d58cfedb9879e001b75d48afcae854911b7754add6194a8e1fe` |
| 9 | `theorem` | [πSummand_comp_cofan_inj_id_comp_PInfty_eq_PInfty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/declarations/summand-comp-cofan-inj-id-comp-pinfty-eq-pinfty--2f756a1628e3d3aced00afa1.md) | 124 | `result-track:2f756a1628e3d3aced00afa1699355f227431600cf819ac987d441c78ac01cbc` |
| 10 | `def` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/declarations/d--d7ed5361f025f4886d0170c8.md) | 137 | `declaration-track:d7ed5361f025f4886d0170c8d60d14d8f2339df99eccd7911ad5ee91ba6d0bf8` |
| 11 | `theorem` | [ιSummand_comp_d_comp_πSummand_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/declarations/summand-comp-d-comp-summand-eq-zero--1129239a6755457e5a13d7a2.md) | 140 | `result-track:1129239a6755457e5a13d7a274cb2eac3d84253a05e43f89c9c3bc30b5f574a7` |
| 12 | `def` | [nondegComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/declarations/nondegcomplex--9a9df018c306a2a6a821bd86.md) | 150 | `declaration-track:9a9df018c306a2a6a821bd8658db19e5b5327666b0726624baa9719ea6ce5936` |
| 13 | `def` | [toKaroubiNondegComplexIsoN₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/declarations/tokaroubinondegcomplexison--b67c849c908fba8556d12859.md) | 173 | `declaration-track:b67c849c908fba8556d1285928d6ae2528363452b2c1c91bc63186c64001441a` |
| 14 | `def` | [nondegComplexFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/declarations/nondegcomplexfunctor--5fba58dd797cca3292d7bb02.md) | 221 | `declaration-track:5fba58dd797cca3292d7bb022923f6a19e69b1653ec7809e41dbba50bbaf25ef` |
| 15 | `def` | [toKaroubiNondegComplexFunctorIsoN₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/declarations/tokaroubinondegcomplexfunctorison--c19cc82ce25fff971b66a917.md) | 248 | `declaration-track:c19cc82ce25fff971b66a91781c9b744343b97e3161c2d8d1ffd123fceaa7df0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
