# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Construction.Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f46e7a2e474009aa6f5370f7ea46224d5db42a4",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f46e7a2e474009aa6f5370f7ea46224d5db42a4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.QuivCat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocQuiver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/locquiver--53b453a3290419550208c27e.md) | 66 | `declaration-track:53b453a3290419550208c27eff56d02b16b70bdddeb5479793c9f3380a8fbc0c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/instance--436a1f546697aada83398364.md) | 71 | `declaration-track:436a1f546697aada83398364db062431e56c268f1a52fc6e0801f042988a0f8a` |
| 3 | `def` | [ιPaths](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/paths--17e5fe41e0405829b36ae6a1.md) | 75 | `declaration-track:17e5fe41e0405829b36ae6a12d9d18652fa8ef19b486b77fcc2775a2a31ad3ea` |
| 4 | `def` | [ψ₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/anonymous--faa77905491716d6a9d0de01.md) | 81 | `declaration-track:faa77905491716d6a9d0de01a1dff64d067d4a0a0aca4d3f5d16847c707daae6` |
| 5 | `def` | [ψ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/anonymous--e332d26d1af804b543334837.md) | 87 | `declaration-track:e332d26d1af804b54333483786a53cc86b7ffa1f85a3888d03e6861e3e4295c2` |
| 6 | `inductive` | [relations](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/relations--5320551b76612f3609bae3ab.md) | 92 | `declaration-track:5320551b76612f3609bae3abe809a95b1e6c37bb6cd8c780c1944248a1349c08` |
| 7 | `def` | [Localization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/localization--934b328d6f48017a804109ee.md) | 110 | `declaration-track:934b328d6f48017a804109eed02d6e2407c0e65d5cf65808aaafaae009b96f2c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/instance--c77496447752aba4d06984c3.md) | 114 | `declaration-track:c77496447752aba4d06984c33be49910fb55ed81b8ad1fccd4361870aad87b1b` |
| 9 | `def` | [Q](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/q--3e3b55dbae930d2067a23ad9.md) | 119 | `declaration-track:3e3b55dbae930d2067a23ad9895cb64968a8583fdaf974a3ee270e479c1af83e` |
| 10 | `def` | [wIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/wiso--64815f4b64c40c7dccc497ec.md) | 136 | `declaration-track:64815f4b64c40c7dccc497eca23758c96c6f9b7e97f80376947c702316f51109` |
| 11 | `abbrev` | [winv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/winv--18bd425e9cc048835069ff04.md) | 146 | `declaration-track:18bd425e9cc048835069ff04afd6380e02a72ee778afbf1301b01ea8c71cf404` |
| 12 | `theorem` | [_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocQuiver.Variant744fc4d26df29fd42f36049f42eeb5f439e7a2257c70141bac477b6d34d7f1f5.CategoryTheory.MorphismProperty.Q_inverts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-locquiver-var--c82938fb4804b892a886aad6.md) | 153 | `result-track:c82938fb4804b892a886aad6504f936f6f3eb357063fc517aff07542d82cc5a9` |
| 13 | `def` | [liftToPathCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/lifttopathcategory--075680abb7864e9d6cf3fa9e.md) | 162 | `declaration-track:075680abb7864e9d6cf3fa9e8d0ddf2a98e6b3df4783674a100065fa70bed3c1` |
| 14 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/lift--1dd0bf96370b22d031e12e35.md) | 175 | `declaration-track:1dd0bf96370b22d031e12e3589da9f27b68dbcee805ef7c84f5f1a11c7bc9039` |
| 15 | `theorem` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/fac--6ed8530e0aafd6c5fc3c38ce.md) | 191 | `result-track:6ed8530e0aafd6c5fc3c38ced2d81d708483c155b552e4148aee0368eac71bb9` |
| 16 | `theorem` | [uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/uniq--9b61a7564832784d03fbf30e.md) | 200 | `result-track:9b61a7564832784d03fbf30e38a7428c811b1de019884e570362ec0b765588bc` |
| 17 | `def` | [objEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/objequiv--84fd958ed5b68be4fbab45e9.md) | 225 | `declaration-track:84fd958ed5b68be4fbab45e992ea77919e3c817da1bd0e71aaf107bb56fdafe2` |
| 18 | `theorem` | [morphismProperty_is_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/morphismproperty-is-top--393c162e2838374599017a46.md) | 240 | `result-track:393c162e2838374599017a46ac91aaa655f3601c519b8d517dce0c4c8af43ccf` |
| 19 | `theorem` | [morphismProperty_is_top'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/morphismproperty-is-top--52e0584de32c838b0b7e032e.md) | 271 | `result-track:52e0584de32c838b0b7e032eba7c3abf14abb164f2aa1689ccef4665acb9e584` |
| 20 | `def` | [app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/app--69e844979307743dda483500.md) | 285 | `declaration-track:69e844979307743dda48350016ab2557202a0d87c62b9b20d673fdd4ab54fd7a` |
| 21 | `theorem` | [app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/app-eq--bda1a49b3015694bfd79830c.md) | 291 | `result-track:bda1a49b3015694bfd79830c1097f786605d7c53387962bab91b5eed0d45c46e` |
| 22 | `def` | [natTransExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/nattransextension--7282fc0304f79fc4be9640ca.md) | 301 | `declaration-track:7282fc0304f79fc4be9640ca6fc43b20def6261eed792f22daa4f465db7338dd` |
| 23 | `theorem` | [natTransExtension_hcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/nattransextension-hcomp--990b46e9f15dbdab11c292a1.md) | 318 | `result-track:990b46e9f15dbdab11c292a15693a55a5cccdad9fa00f3e4ee2d4df579f30c20` |
| 24 | `theorem` | [natTrans_hcomp_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/nattrans-hcomp-injective--88fb03338b678c0999c2fa28.md) | 322 | `result-track:88fb03338b678c0999c2fa289b03fa5660b5932e1627d3a15e477221ac175d99` |
| 25 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/functor--13af8bc75223e8eb311dc4e0.md) | 337 | `declaration-track:13af8bc75223e8eb311dc4e01a729c598df8612cd2e6cf9aa6bdfe274d1d49ac` |
| 26 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/inverse--0efe0c674bc93abb2dc9cfeb.md) | 345 | `declaration-track:0efe0c674bc93abb2dc9cfeb56d71b2cb59a4c755edf05c5a4d81f7368c75ecf` |
| 27 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/unitiso--a248a60a91050d2245f1352f.md) | 369 | `declaration-track:a248a60a91050d2245f1352f9eba94957b5ead28c6eae4928c02109ac88e9843` |
| 28 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/counitiso--e4b8216ca4a3331ba5a79ed5.md) | 384 | `declaration-track:e4b8216ca4a3331ba5a79ed566bb37e4eb49e6620a58512a6d881b694be1ea1d` |
| 29 | `def` | [whiskeringLeftEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant3da724a98157371a7db289c0f06ac7ac8a5d7bdab76d02276ad70dedb418311d.lean/declarations/whiskeringleftequivalence--3e0190f6b13d6fb039e29961.md) | 400 | `declaration-track:3e0190f6b13d6fb039e2996142177a7f40e18009f6daa6831a4a4b921de148a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
