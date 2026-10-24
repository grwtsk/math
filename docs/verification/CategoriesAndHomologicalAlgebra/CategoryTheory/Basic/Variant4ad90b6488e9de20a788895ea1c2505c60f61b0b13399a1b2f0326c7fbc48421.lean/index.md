# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64520a8896c12d7b24256eb65906f77cfc19cf3b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64520a8896c12d7b24256eb65906f77cfc19cf3b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Preadditive` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preadditiveYonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean/declarations/preadditiveyonedaobj--3720ad8af1c6638ae5647ed2.md) | 48 | `declaration-track:3720ad8af1c6638ae5647ed2f6fc581d14db6141fedd59e78088497b7ed90968` |
| 2 | `def` | [preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean/declarations/preadditiveyoneda--a33c37144399be7b5747b674.md) | 60 | `declaration-track:a33c37144399be7b5747b674ca4e0c155cfc6e1360f6f268c2f3b6bc72adf01a` |
| 3 | `def` | [preadditiveCoyonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean/declarations/preadditivecoyonedaobj--a1cccf674f743c83902e8974.md) | 73 | `declaration-track:a1cccf674f743c83902e8974e1edbe71aa0cb233434ff0314ec2992d049762a0` |
| 4 | `def` | [preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean/declarations/preadditivecoyoneda--e899be21875245783888107c.md) | 85 | `declaration-track:e899be21875245783888107c991d7ed35e7d75662630b8e595d4a6d299a94b4e` |
| 5 | `instance` | [additive_yonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean/declarations/additive-yonedaobj--b56e1ad527790c907b8f44db.md) | 95 | `declaration-track:b56e1ad527790c907b8f44db48c0e337bc359f8230904929aeed3b21cca8444c` |
| 6 | `instance` | [additive_yonedaObj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean/declarations/additive-yonedaobj--f90f93341bc95d2ce47f4fba.md) | 97 | `declaration-track:f90f93341bc95d2ce47f4fba920c6f7b04351605e79a13376bdaaee20bc0ab8c` |
| 7 | `instance` | [additive_coyonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean/declarations/additive-coyonedaobj--49bed70302e6340fd0f21974.md) | 99 | `declaration-track:49bed70302e6340fd0f21974d9d7ddce9849d4edc1e0715d410ea4a70a2359a0` |
| 8 | `instance` | [additive_coyonedaObj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean/declarations/additive-coyonedaobj--e579f3dedc31d6150adab1d0.md) | 101 | `declaration-track:e579f3dedc31d6150adab1d0bf4caea5731160b5499e0d863e9fd1f15d4a6fc8` |
| 9 | `theorem` | [whiskering_preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean/declarations/whiskering-preadditiveyoneda--e9527c2c80d112518ea2941e.md) | 107 | `result-track:e9527c2c80d112518ea2941ebeaf3a75e5650b0900667f99b0f5e0e2cf02cd05` |
| 10 | `theorem` | [whiskering_preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean/declarations/whiskering-preadditivecoyoneda--3c046751dc97494675e3e05c.md) | 117 | `result-track:3c046751dc97494675e3e05c822a81c88cf79dc70f4b64e9f6b9fffa0ca14849` |
| 11 | `instance` | [full_preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean/declarations/full-preadditiveyoneda--45aeabebc42cb0675f95b1c9.md) | 123 | `declaration-track:45aeabebc42cb0675f95b1c9ec0f2cc8af53bbe9171b33676802a7231c01b026` |
| 12 | `instance` | [full_preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean/declarations/full-preadditivecoyoneda--ffdb4cfb41c1a16330b7cee7.md) | 130 | `declaration-track:ffdb4cfb41c1a16330b7cee7a4aa14a89839e9e2c04c0decee9b5f939efbb3ef` |
| 13 | `instance` | [faithful_preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean/declarations/faithful-preadditiveyoneda--2a205c8760567afd9920a8d9.md) | 137 | `declaration-track:2a205c8760567afd9920a8d90cf10dbf90b9ae5e4176d0e35a695a51bac16ca4` |
| 14 | `instance` | [faithful_preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean/declarations/faithful-preadditivecoyoneda--0fdcf1d9a6fe47b1a663141a.md) | 140 | `declaration-track:0fdcf1d9a6fe47b1a663141a38d09c38d38c39d13a24bfc235ae527be507afea` |
| 15 | `def` | [preadditiveYonedaMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean/declarations/preadditiveyonedamap--9774680d9492f274bd4968b0.md) | 151 | `declaration-track:9774680d9492f274bd4968b0d013aee5521b2a793d2737b053ef645fb1c16de5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
