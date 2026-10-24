# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Concrete.Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd9f640c56cefe0f759e109ac88dd078acaeef48",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd9f640c56cefe0f759e109ac88dd078acaeef48`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Action.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FintypeCat` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofMulAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/declarations/ofmulaction--3f9ca7b77840efa31980875b.md) | 36 | `declaration-track:3f9ca7b77840efa31980875b3bd055d18de248a99ee9846d33e4359efe8e1aa1` |
| 2 | `theorem` | [ofMulAction_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/declarations/ofmulaction-apply--61d31dd590c3184fa4750dc2.md) | 41 | `result-track:61d31dd590c3184fa4750dc29fba2b30f28890955c5fe30a7d69311304e82edc` |
| 3 | `def` | [ofMulActionLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/declarations/ofmulactionlimitcone--684bdd40008298aef1b8de6b.md) | 47 | `declaration-track:684bdd40008298aef1b8de6bfa97c663d3fc83e53fdcc997f1b256511db5c276` |
| 4 | `def` | [leftRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/declarations/leftregular--dcd1271fc4e068f9d421c5dd.md) | 70 | `declaration-track:dcd1271fc4e068f9d421c5dd24ea020c03fcaf2ebdbc019c86838be42ecf10a6` |
| 5 | `def` | [diagonal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/declarations/diagonal--ac50a63fd152d586ac5c5d11.md) | 75 | `declaration-track:ac50a63fd152d586ac5c5d11a5c82882390a67f5544834dff1401dee219f7a99` |
| 6 | `def` | [diagonalOneIsoLeftRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/declarations/diagonaloneisoleftregular--0f8996746d4149706a5668c8.md) | 79 | `declaration-track:0f8996746d4149706a5668c82b5cb135bb879e1803b6040d5129366a823361b5` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/declarations/instance--71477d96a8604b8b11d79d99.md) | 86 | `declaration-track:71477d96a8604b8b11d79d99bd5fe2d12b60c2c120b99732e657a484c5a622e7` |
| 8 | `def` | [ofMulAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/declarations/ofmulaction--031c936cc86940bd9df5ea72.md) | 91 | `declaration-track:031c936cc86940bd9df5ea72c4671309e46ccd303c019277781bac630d581838` |
| 9 | `theorem` | [ofMulAction_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/declarations/ofmulaction-apply--01bddab0a85dace32804e908.md) | 97 | `result-track:01bddab0a85dace32804e9088ac560ab509b33ac668539ba0847f641f246f9b3` |
| 10 | `def` | [toEndHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/declarations/toendhom--468511b44722f5083c8a94dd.md) | 111 | `declaration-track:468511b44722f5083c8a94dd063faa814db75cd0c9918348d74b2091614a0f96` |
| 11 | `lemma` | [toEndHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/declarations/toendhom-apply--778fc9181c3f3ecdd32d9f68.md) | 139 | `result-track:778fc9181c3f3ecdd32d9f68027794a01863f39134c6d69b638d299cbe2790a2` |
| 12 | `lemma` | [toEndHom_trivial_of_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/declarations/toendhom-trivial-of-mem--5ca9d62a4a087d0b4ab42a85.md) | 142 | `result-track:5ca9d62a4a087d0b4ab42a850282e215f82d56f10ac87a8027ca3be33c1f70ca` |
| 13 | `def` | [quotientToEndHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/declarations/quotienttoendhom--a1fce12e319b2dbca184a10e.md) | 150 | `declaration-track:a1fce12e319b2dbca184a10ed4a81c8af5b9e2a0f939557585c945fa6ebe17bc` |
| 14 | `lemma` | [quotientToEndHom_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/declarations/quotienttoendhom-mk--a919b1cc4f9242b56189ecc4.md) | 155 | `result-track:a919b1cc4f9242b56189ecc46be1ecab67c72ee305729ab505362b2e67c35fcb` |
| 15 | `def` | [quotientToQuotientOfLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/declarations/quotienttoquotientofle--631161ef3cafe396a57bf6b3.md) | 161 | `declaration-track:631161ef3cafe396a57bf6b3f6be741a077a21c21f2b14c022f08b9a015153e4` |
| 16 | `lemma` | [quotientToQuotientOfLE_hom_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/declarations/quotienttoquotientofle-hom-mk--de619ad6e0a9f6a95998cf12.md) | 170 | `result-track:de619ad6e0a9f6a95998cf12c3408797da8542825e6bc7a6a94b49c999827d0e` |
| 17 | `instance` | [instMulAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/declarations/instmulaction--3193983597491f1f32787216.md) | 183 | `declaration-track:3193983597491f1f32787216ff396ee19a3758508841941acdb94666425ffbc4` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantcc52fac5e2976a9c277d10caa45a303ff60d6aa39005381340e0f323363f48a6.lean/declarations/instance--515c47f0b085cf073efd406c.md) | 195 | `declaration-track:515c47f0b085cf073efd406ccb502bae7ebb062b4210ef80f67e8e734447f80b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
