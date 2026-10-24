# Verification target: GRWTSK.Algebra.CommutativeAlgebra.AEval.Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62253978f2166e83ba083d90768a574e9546361d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62253978f2166e83ba083d90768a574e9546361d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Invariant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DFinsupp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AEval](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/aeval--1a1f8b65fe6197cc92f13471.md) | 36 | `declaration-track:1a1f8b65fe6197cc92f1347139d207b661c19d263a20c49a8bcce6c5914b199e` |
| 2 | `instance` | [AEval.instAddCommGroup](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/aeval-instaddcommgroup--8773c0dc3c833e1897bb3383.md) | 39 | `declaration-track:8773c0dc3c833e1897bb3383cf07859fb26d06fc67e5b2878e7b615121f2f181` |
| 3 | `instance` | [instAddCommMonoid](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/instaddcommmonoid--cd8ca05b0cf2fd69738d1cfe.md) | 48 | `declaration-track:cd8ca05b0cf2fd69738d1cfea3209c3cf5d07797d3400fbb0220cdc24aa83f15` |
| 4 | `instance` | [instModuleOrig](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/instmoduleorig--a9353336f7f5798caa8b73b6.md) | 50 | `declaration-track:a9353336f7f5798caa8b73b6c86240262ed99024689baa415667916c5b5ef18a` |
| 5 | `instance` | [instFiniteOrig](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/instfiniteorig--f7290dd189ef6e9913c8811a.md) | 52 | `declaration-track:f7290dd189ef6e9913c8811ae8c9b17d7fe08fc8d34b1e2e5afbf552e9be04ed` |
| 6 | `instance` | [instModulePolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/instmodulepolynomial--8d9de0c607a97b763e83c746.md) | 55 | `declaration-track:8d9de0c607a97b763e83c746244abd51a350f2401be841c0d78cfcc4613b90c2` |
| 7 | `def` | [of](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/of--bb2b0e44190206453dda418b.md) | 61 | `declaration-track:bb2b0e44190206453dda418bd01fa64d763dbdb1fd10493be4fa7f700008ac37` |
| 8 | `lemma` | [of_aeval_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/of-aeval-smul--ef877a73315a94a6537ae524.md) | 66 | `result-track:ef877a73315a94a6537ae5247217d5677c85a4e544c050d7ef1128e652d2cef4` |
| 9 | `lemma` | [of_symm_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/of-symm-smul--c42a6be0ff6b67421b17de43.md) | 68 | `result-track:c42a6be0ff6b67421b17de43d7eaa5f276b23b0adf887871d7909723d134a854` |
| 10 | `lemma` | [C_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/c-smul--ebcfe55a9c823b4bb09e832a.md) | 71 | `result-track:ebcfe55a9c823b4bb09e832acf84b27b6b27e01bb374ea0423fd4a4f6ae20f69` |
| 11 | `lemma` | [X_smul_of](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/x-smul-of--fba8877b1dd39dd579f3ac8c.md) | 74 | `result-track:fba8877b1dd39dd579f3ac8cbfb2d1a8abe4d69f4c2c3922a98d5f74797a48e4` |
| 12 | `lemma` | [of_symm_X_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/of-symm-x-smul--7348b9f6ffd61511e0a4988c.md) | 77 | `result-track:7348b9f6ffd61511e0a4988c0bcf5b948e333ddd6c8ff1e13e9a08678a5297ec` |
| 13 | `instance` | [instIsScalarTowerOrigPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/instisscalartowerorigpolynomial--f6e84510351777b6aa2b2f84.md) | 81 | `declaration-track:f6e84510351777b6aa2b2f84adebdfa283a5c81701f31b46996b9f1d759e7721` |
| 14 | `instance` | [instFinitePolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/instfinitepolynomial--7206afcae93dc68c1eab7d5d.md) | 86 | `declaration-track:7206afcae93dc68c1eab7d5df86e40ac9938ece4f2e9de67116f43963496a6dc` |
| 15 | `def` | [_root_.LinearMap.ofAEval](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/root-linearmap-ofaeval--b478b813d4dbaa74f254aa5a.md) | 90 | `declaration-track:b478b813d4dbaa74f254aa5acf9c6ea0ab401a57c9c4326d80f870f08d38cb0f` |
| 16 | `def` | [_root_.LinearEquiv.ofAEval](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/root-linearequiv-ofaeval--d87bab88162c8c2f87aad86f.md) | 101 | `declaration-track:d87bab88162c8c2f87aad86f58c7581aa009e8965f73d651ec051cad079218d6` |
| 17 | `lemma` | [annihilator_eq_ker_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/annihilator-eq-ker-aeval--ccb47dd3cba9d90b36031267.md) | 109 | `result-track:ccb47dd3cba9d90b3603126711453578cf42d0b73a1ab2c43e012540fa54a185` |
| 18 | `lemma` | [annihilator_top_eq_ker_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/annihilator-top-eq-ker-aeval--def0299ebdde4914c1f3ce87.md) | 117 | `result-track:def0299ebdde4914c1f3ce878b099ad4ea587aa49aea67851a2154468c65b3f2` |
| 19 | `def` | [mapSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/mapsubmodule--4867b6cad1c4fde6da149d05.md) | 129 | `declaration-track:4867b6cad1c4fde6da149d05588d61e59a0eb6c2537c9fd8806a80917fb8128a` |
| 20 | `lemma` | [mem_mapSubmodule_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/mem-mapsubmodule-apply--fc3c453f621bc1040732495b.md) | 144 | `result-track:fc3c453f621bc1040732495bb2f59fb693115bab3ea21726e662804a1cea33dc` |
| 21 | `lemma` | [mem_mapSubmodule_symm_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/mem-mapsubmodule-symm-apply--98b0e3352e32a3be85227ed9.md) | 148 | `result-track:98b0e3352e32a3be85227ed9e003979cac2f5442ff13ff4bc66fc6796418a00e` |
| 22 | `def` | [equiv_mapSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/equiv-mapsubmodule--1f08453e3df5a10ef28edf18.md) | 156 | `declaration-track:1f08453e3df5a10ef28edf1897c6238921dc0cb1e6b6fc148d4523f59348e6c2` |
| 23 | `def` | [restrict_equiv_mapSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/restrict-equiv-mapsubmodule--916653378464b35e544021e8.md) | 167 | `declaration-track:916653378464b35e544021e8557f24215d6df56686a32b8c4a6365f2305742cb` |
| 24 | `abbrev` | [AEval'](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/aeval--98a5db39814bf619ca97a93f.md) | 188 | `declaration-track:98a5db39814bf619ca97a93f0ab35da1296476b13b0fe5fdf2b14cb582c45e4c` |
| 25 | `abbrev` | [AEval'.of](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/aeval-of--fa026c48a71f5d1eda447d9a.md) | 193 | `declaration-track:fa026c48a71f5d1eda447d9aec865b3ba4a9210abfdad8bdacb6c6253dbadc16` |
| 26 | `lemma` | [AEval'_def](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/aeval-def--ec99246a7b1353c43e0bcf5e.md) | 194 | `result-track:ec99246a7b1353c43e0bcf5e35c3e80706ffc284806a630ac121de43b2647d12` |
| 27 | `lemma` | [AEval'.X_smul_of](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/aeval-x-smul-of--99ca3dbcdb9ee650a2717d35.md) | 195 | `result-track:99ca3dbcdb9ee650a2717d35b535a7d368e7c9ec3507cd3c9f1f270dd0f40e1d` |
| 28 | `lemma` | [AEval'.of_symm_X_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/aeval-of-symm-x-smul--375173370fd9e53c4e38c7b0.md) | 197 | `result-track:375173370fd9e53c4e38c7b061a4d49f130fb63d7da3a0a5b36c781eb232656f` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/declarations/instance--42d5b238f73da42ca51ef3ae.md) | 200 | `declaration-track:42d5b238f73da42ca51ef3ae34abed97675b06ce74c6cb6a2b36208397303ae1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
