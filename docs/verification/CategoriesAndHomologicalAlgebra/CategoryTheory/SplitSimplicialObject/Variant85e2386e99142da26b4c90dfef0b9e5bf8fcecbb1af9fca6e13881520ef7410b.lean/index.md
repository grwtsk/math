# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SplitSimplicialObject.Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ab1fe0382dc81635f80d72d986a98f7bfc0df99",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ab1fe0382dc81635f80d72d986a98f7bfc0df99`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SplitSimplicialObject` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.DoldKan.Degeneracies` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.DoldKan.FunctorN` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [πSummand](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/declarations/summand--839c229cfbe64548dfb48309.md) | 46 | `declaration-track:839c229cfbe64548dfb48309a7f86188cdca8624c75b8238983408c59ec7f234` |
| 2 | `theorem` | [ι_πSummand_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/declarations/summand-eq-id--8dc6fc68838f5a10a1af21b6.md) | 55 | `result-track:8dc6fc68838f5a10a1af21b6dd42ff2e7bf364d0611a048ebb93e21f95c6015b` |
| 3 | `theorem` | [ι_πSummand_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/declarations/summand-eq-zero--788bf84d32fdec9aa8e9a8ef.md) | 65 | `result-track:788bf84d32fdec9aa8e9a8ef3d66e45402075dad402629afad61dae69226749e` |
| 4 | `theorem` | [decomposition_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/declarations/decomposition-id--4d6ab9a05c783439fc0aab07.md) | 75 | `result-track:4d6ab9a05c783439fc0aab076ba0591f68d957f0b60c8e107a86f7dd7d76ccd7` |
| 5 | `theorem` | [σ_comp_πSummand_id_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/declarations/comp-summand-id-eq-zero--b882beb31913c4d4b6b75bb6.md) | 86 | `result-track:b882beb31913c4d4b6b75bb65fae9277fc8d68cbdf17a4938f47b381d4ed8504` |
| 6 | `theorem` | [ιSummand_comp_PInfty_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/declarations/summand-comp-pinfty-eq-zero--df6d53f418b653da0e5f2052.md) | 103 | `result-track:df6d53f418b653da0e5f2052188b03ecc2966677813bc4bb16ac1814191ca7c8` |
| 7 | `theorem` | [comp_PInfty_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/declarations/comp-pinfty-eq-zero-iff--026f3d63f5513ff6c7b051ce.md) | 111 | `result-track:026f3d63f5513ff6c7b051cee0403c8ab900f070fcb7049ded7be8b6ec9793f2` |
| 8 | `theorem` | [PInfty_comp_πSummand_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/declarations/pinfty-comp-summand-id--701aea68138547a96837c41a.md) | 139 | `result-track:701aea68138547a96837c41a61cf113a1c54d7f729f7e50960856d6f89ab93b4` |
| 9 | `theorem` | [πSummand_comp_ιSummand_comp_PInfty_eq_PInfty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/declarations/summand-comp-summand-comp-pinfty-eq-pinfty--56106cdc18ad95ef5627f8de.md) | 149 | `result-track:56106cdc18ad95ef5627f8de3962507e09207689f9eea7392f065628866cbf0a` |
| 10 | `def` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/declarations/d--2c3dc4bce7c8999bae0b8efe.md) | 163 | `declaration-track:2c3dc4bce7c8999bae0b8efebb2a4c5040ac487b5f48c2c0d65e574b9c5411e6` |
| 11 | `theorem` | [ιSummand_comp_d_comp_πSummand_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/declarations/summand-comp-d-comp-summand-eq-zero--2c6e31079881285db76a5442.md) | 167 | `result-track:2c6e31079881285db76a544265d625aa1f022a3b7fad23ae2519da8a8e2ca5bc` |
| 12 | `def` | [nondegComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/declarations/nondegcomplex--a2137c14fc82080836aece95.md) | 178 | `declaration-track:a2137c14fc82080836aece9521994e8e59effd919ada050ecc0f53327393266e` |
| 13 | `def` | [toKaroubiNondegComplexIsoN₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/declarations/tokaroubinondegcomplexison--6dce7d5396d69653c985b91c.md) | 202 | `declaration-track:6dce7d5396d69653c985b91ca1ecf89b2245a6964e09ee38bb5ca3f280e94451` |
| 14 | `def` | [nondegComplexFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/declarations/nondegcomplexfunctor--e23c532c9800cb3b749af9a4.md) | 251 | `declaration-track:e23c532c9800cb3b749af9a452ad1ccc0d281800424a302e3b266d02f0ffaa54` |
| 15 | `def` | [toKaroubiNondegComplexFunctorIsoN₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/declarations/tokaroubinondegcomplexfunctorison--f82bb78060813fbee36ed881.md) | 281 | `declaration-track:f82bb78060813fbee36ed881a95d6e98aa53ae917380d0c1495aaaeecfaef03d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
