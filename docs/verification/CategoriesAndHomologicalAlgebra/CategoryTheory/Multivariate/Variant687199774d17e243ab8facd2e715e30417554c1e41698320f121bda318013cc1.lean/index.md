# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Multivariate.Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cad701468a61b58d62eb4d3e58322acb98f331c1",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cad701468a61b58d62eb4d3e58322acb98f331c1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Fin2` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.TypeVec` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MvFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/mvfunctor--c09401ab58977fa4561b3be6.md) | 37 | `declaration-track:c09401ab58977fa4561b3be6d0bb338cdb4867ae0984aba6871c8872c097b441` |
| 2 | `def` | [LiftP](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/liftp--f73a8eecf8a8736f80450f14.md) | 52 | `declaration-track:f73a8eecf8a8736f80450f14d9318146b31050d5721161c134bbe8d45cb6de1f` |
| 3 | `def` | [LiftR](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/liftr--fe44e3dd3904b632a1dc45c7.md) | 57 | `declaration-track:fe44e3dd3904b632a1dc45c7b66edea760fe1baf6b9f533e1d579b9dff5ceda1` |
| 4 | `def` | [supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/supp--2b5cba5cd711db5da10edda1.md) | 65 | `declaration-track:2b5cba5cd711db5da10edda1501de14e0b2401d378fef7e0afe8f429a1bb83a8` |
| 5 | `theorem` | [of_mem_supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/of-mem-supp--7e68c677d00e3857f920bfd1.md) | 69 | `result-track:7e68c677d00e3857f920bfd1326f0493141b8e0ef920894ef3e4446034c2007d` |
| 6 | `class` | [LawfulMvFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/lawfulmvfunctor--ce6022cc38b6b20f58ec5f48.md) | 78 | `declaration-track:ce6022cc38b6b20f58ec5f48af9d51a79ccee094b7e2e61c0717a93b256b499b` |
| 7 | `def` | [LiftP'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/liftp--34a2720f6184362322991d77.md) | 101 | `declaration-track:34a2720f6184362322991d77308ccdfebba83c7a19f0c7ba244e882418e1a90b` |
| 8 | `def` | [LiftR'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/liftr--31629b0ca5d2e04509c16197.md) | 107 | `declaration-track:31629b0ca5d2e04509c16197b028debaa76e43966d80196c972b0144455e5460` |
| 9 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/id-map--5e2bf1c473c12b9e91983d02.md) | 114 | `result-track:5e2bf1c473c12b9e91983d029f8ff8e184896418a783634028f05b83a4b1e5df` |
| 10 | `theorem` | [id_map'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/id-map--e2a86fad2e359a8778e5bfad.md) | 119 | `result-track:e2a86fad2e359a8778e5bfade28bb4713521af0c3e63c63fc23250c0c76bc7f9` |
| 11 | `theorem` | [map_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/map-map--988e50a0831f4069975932f7.md) | 123 | `result-track:988e50a0831f4069975932f78820f77bb247336835e24d8646faf828b573e7ad` |
| 12 | `theorem` | [exists_iff_exists_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/exists-iff-exists-of-mono--c675a6904d50505ec8872cb5.md) | 131 | `result-track:c675a6904d50505ec8872cb5831bb66d7c748c5281b4126b20a1b7b869ab81e0` |
| 13 | `theorem` | [LiftP_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/liftp-def--79ab38171f870b43870fa8ba.md) | 146 | `result-track:79ab38171f870b43870fa8baf9326b22cc2a01dae709d1d920691d5796c46b54` |
| 14 | `theorem` | [LiftR_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/liftr-def--1293c808a295ad0621dc35f2.md) | 150 | `result-track:1293c808a295ad0621dc35f2cb4bbbe5f32a3f4324c09afa282f969bf02d6b03` |
| 15 | `def` | [f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/f--5cda18f27704cc0732297077.md) | 179 | `declaration-track:5cda18f27704cc07322970774c8bccc14477b6e8f1f3f8dda981a5d633c9ca4e` |
| 16 | `def` | [g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/g--682828b3175f39d07437c31e.md) | 187 | `declaration-track:682828b3175f39d07437c31e060dc5df8c5001f73d3615e3ddbaa96fc821de02` |
| 17 | `theorem` | [LiftP_PredLast_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/liftp-predlast-iff--d7aae36436a8fa09c711a6f0.md) | 195 | `result-track:d7aae36436a8fa09c711a6f052e300b783ae1b78bf0f8fe630273cc10ea798c9` |
| 18 | `def` | [f'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/f--7942e20d72dede6cfc1a9c7e.md) | 214 | `declaration-track:7942e20d72dede6cfc1a9c7e8efc4e617aa8588e1797a77b48e51a11d81d90f2` |
| 19 | `def` | [g'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/g--9be3f62aeebca1e656e37990.md) | 223 | `declaration-track:9be3f62aeebca1e656e37990800066f252f16e52466f09d2d204fded6f66a9e7` |
| 20 | `theorem` | [LiftR_RelLast_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1.lean/declarations/liftr-rellast-iff--08750feca14bb277e462f979.md) | 232 | `result-track:08750feca14bb277e462f9795e9f9832ac429bfce392ff701d499bd16bed3673` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
