# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimits.Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15c8739fe0f8793b67310998cf45ec89d5e8801c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15c8739fe0f8793b67310998cf45ec89d5e8801c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.FilteredColimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Colimits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [M](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/m--2fda8599a16d57c4be1db258.md) | 44 | `declaration-track:2fda8599a16d57c4be1db2582a4d7d3287491e8d727a16268b9018f3373d5a9a` |
| 2 | `abbrev` | [M.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/m-mk--6467c6ae4ea5cd8645dc03bb.md) | 49 | `declaration-track:6467c6ae4ea5cd8645dc03bb446d29adf72c82176f6a031c5d52dcfbc5e05aec` |
| 3 | `theorem` | [M.mk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/m-mk-eq--f486760f479cc3e6fdff1f64.md) | 52 | `result-track:f486760f479cc3e6fdff1f64ee2c9d7c58f7d5ae90c5530fd30db97e783f0024` |
| 4 | `def` | [colimitSMulAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/colimitsmulaux--27ee84059681e4202661572d.md) | 57 | `declaration-track:27ee84059681e4202661572d0cc42f20c708a9849c185086634475496d6fb2ab` |
| 5 | `theorem` | [colimitSMulAux_eq_of_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/colimitsmulaux-eq-of-rel--566aaeba3d0517518ba6336a.md) | 60 | `result-track:566aaeba3d0517518ba6336abd1cfb840edee7defbcec9f3f2cbde6222556c4d` |
| 6 | `instance` | [colimitHasSMul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/colimithassmul--6ab73ceec6568c0ecd1d30a2.md) | 70 | `declaration-track:6ab73ceec6568c0ecd1d30a231063f243a5ef383f3c20b311ddc1e6455cd1bd5` |
| 7 | `theorem` | [colimit_smul_mk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/colimit-smul-mk-eq--75614c451b49337e822e4a0c.md) | 79 | `result-track:75614c451b49337e822e4a0cc8630f9e15adf85edb705a041ce804bea39f5655` |
| 8 | `theorem` | [colimitModule.one_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/colimitmodule-one-smul--46e7c76aae42434f5ab81944.md) | 82 | `result-track:46e7c76aae42434f5ab81944d5a7f56405ae34ee55a9a35693780e7785b35530` |
| 9 | `instance` | [colimitMulAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/colimitmulaction--31550784fbbfe7cf1fcc1a96.md) | 89 | `declaration-track:31550784fbbfe7cf1fcc1a96f234aecace99fb1926ec3650b2ba77d6764615e4` |
| 10 | `instance` | [colimitSMulWithZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/colimitsmulwithzero--92bfa37da288a80f92c1e314.md) | 99 | `declaration-track:92bfa37da288a80f92c1e31435b7ec5c2f1dba2f7a982e1b51753544b15da232` |
| 11 | `theorem` | [colimitModule.add_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/colimitmodule-add-smul--b8c97a4847483440b4673a8a.md) | 109 | `result-track:b8c97a4847483440b4673a8aae0380b1b328b24a3be830b0261f3f5ea3135a46` |
| 12 | `instance` | [colimitModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/colimitmodule--e45c1d9bbe442171f848aee6.md) | 117 | `declaration-track:e45c1d9bbe442171f848aee6966c5376f18b11d8b96d4329ab76cda71c8cc1e5` |
| 13 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/colimit--8ae477d3afb996d4e527152e.md) | 130 | `declaration-track:8ae477d3afb996d4e527152e137778293898417e829934d757ba82c460189ff9` |
| 14 | `def` | [coconeMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/coconemorphism--9befd422577a53c2a1d25080.md) | 134 | `declaration-track:9befd422577a53c2a1d25080ecaa548700118c44fa5a1daded4bef4602358fa7` |
| 15 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/colimitcocone--3e80ebf932013423eceb468b.md) | 141 | `declaration-track:3e80ebf932013423eceb468bb41da0a7e072ae2b11853c080375b647277a0429` |
| 16 | `def` | [colimitDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/colimitdesc--fd1b65060d0b23ad8aa35860.md) | 153 | `declaration-track:fd1b65060d0b23ad8aa3586016faecb1a0eee413a7587c3343a6bb5147cee558` |
| 17 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/colimitcoconeiscolimit--a67e48ed6f455421a7ed00df.md) | 164 | `declaration-track:a67e48ed6f455421a7ed00df4a8db70c198b7f91d9938ed4d4aec6423623c654` |
| 18 | `instance` | [forget₂AddCommGroup_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/forget-addcommgroup-preservesfilteredcolimits--58934a555db316a15425e497.md) | 176 | `declaration-track:58934a555db316a15425e497a73840cc729d22df9bdddba414550ea8e91ab8b1` |
| 19 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/forget-preservesfilteredcolimits--8f9a80825efa4c37ce5b1db1.md) | 184 | `declaration-track:8f9a80825efa4c37ce5b1db1bc674894f92ff9872f86754d8c41da3a8f9d5d31` |
| 20 | `instance` | [forget_reflectsFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4e573fec9db4954eddb5c1bc68ad19e2d4086643a22a97e9bf30eecfe9e05775.lean/declarations/forget-reflectsfilteredcolimits--f32cd8fe916c6365ef50c427.md) | 188 | `declaration-track:f32cd8fe916c6365ef50c427bb461ed73d30e68f4f0b79169b90eee6141b5784` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
