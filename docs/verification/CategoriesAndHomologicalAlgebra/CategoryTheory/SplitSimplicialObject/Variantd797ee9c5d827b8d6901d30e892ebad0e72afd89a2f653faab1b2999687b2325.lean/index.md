# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SplitSimplicialObject.Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de3c89a5c125a19b8a1c06a17ef9b6a53a4db25e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de3c89a5c125a19b8a1c06a17ef9b6a53a4db25e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialObject.Split` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.DoldKan.Degeneracies` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.DoldKan.FunctorN` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [πSummand](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean/declarations/summand--593420a808ddc9239a60b4ec.md) | 44 | `declaration-track:593420a808ddc9239a60b4ec34b77711359227cab2682b738dae0f4a00e85187` |
| 2 | `theorem` | [cofan_inj_πSummand_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean/declarations/cofan-inj-summand-eq-id--314045ac06e7a1104ad5336f.md) | 52 | `result-track:314045ac06e7a1104ad5336f02f980ab89c90c8660d1514483883ccfa721164f` |
| 3 | `theorem` | [cofan_inj_πSummand_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean/declarations/cofan-inj-summand-eq-zero--1e8bd1a7c53df3234f715406.md) | 57 | `result-track:1e8bd1a7c53df3234f715406494df43ac6e99dbba4ac493d8e54d9467ac1f061` |
| 4 | `theorem` | [decomposition_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean/declarations/decomposition-id--984771046f33840190bb5227.md) | 64 | `result-track:984771046f33840190bb5227f308bf8408bbfd14c5de3a2692106aa5c15d02b3` |
| 5 | `theorem` | [σ_comp_πSummand_id_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean/declarations/comp-summand-id-eq-zero--8a1b5e86d2f5694e149d93d3.md) | 75 | `result-track:8a1b5e86d2f5694e149d93d32d719dbbe6fcb1cdb86cff583620c318010feb3a` |
| 6 | `theorem` | [cofan_inj_comp_PInfty_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean/declarations/cofan-inj-comp-pinfty-eq-zero--96077d50e63e2353522e73fd.md) | 92 | `result-track:96077d50e63e2353522e73fdbac9a4eb241ea3d66b1d083d11eb0020614022dc` |
| 7 | `theorem` | [comp_PInfty_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean/declarations/comp-pinfty-eq-zero-iff--05d2fb698bc07f1493c59b0c.md) | 98 | `result-track:05d2fb698bc07f1493c59b0c9c22d5df25a471a33b4f351a124fd867f20a641b` |
| 8 | `theorem` | [PInfty_comp_πSummand_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean/declarations/pinfty-comp-summand-id--5aab9995bae310ec2682b9e4.md) | 124 | `result-track:5aab9995bae310ec2682b9e49e112f550104f4ec21b3295a49603fc53b02deab` |
| 9 | `theorem` | [πSummand_comp_cofan_inj_id_comp_PInfty_eq_PInfty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean/declarations/summand-comp-cofan-inj-id-comp-pinfty-eq-pinfty--088a88e18c87f68d4cb699bd.md) | 132 | `result-track:088a88e18c87f68d4cb699bdc8ae55d70253320d35b13f8185a752f69a8d7d9e` |
| 10 | `def` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean/declarations/d--62729ecdb61d0ee18beca91c.md) | 145 | `declaration-track:62729ecdb61d0ee18beca91c9f236fd2e5f277ac849dfe52da7a07821288b8c2` |
| 11 | `theorem` | [ιSummand_comp_d_comp_πSummand_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean/declarations/summand-comp-d-comp-summand-eq-zero--8797813723c2e04f0e764482.md) | 148 | `result-track:8797813723c2e04f0e764482457e7afad14b9400777af002076814d03c055e29` |
| 12 | `def` | [nondegComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean/declarations/nondegcomplex--e0160759e2045c7e256c4be8.md) | 158 | `declaration-track:e0160759e2045c7e256c4be8071df759a4f2ba1cbeb70390b377a1561751477b` |
| 13 | `def` | [toKaroubiNondegComplexIsoN₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean/declarations/tokaroubinondegcomplexison--f6a533e68d2b229965bfa458.md) | 181 | `declaration-track:f6a533e68d2b229965bfa45869c5980f2bf5cdfcd3d6d6c5970dd585b8c99671` |
| 14 | `def` | [nondegComplexFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean/declarations/nondegcomplexfunctor--d24d83e21bc8a330e0f5f7a2.md) | 229 | `declaration-track:d24d83e21bc8a330e0f5f7a25db242e4e284580ae57f24baba7e7d80b8b1a693` |
| 15 | `def` | [toKaroubiNondegComplexFunctorIsoN₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean/declarations/tokaroubinondegcomplexfunctorison--3a4b666a38b297ef9c90b71b.md) | 256 | `declaration-track:3a4b666a38b297ef9c90b71bad735c40be30745af658c8bca252341b80b3a6e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
