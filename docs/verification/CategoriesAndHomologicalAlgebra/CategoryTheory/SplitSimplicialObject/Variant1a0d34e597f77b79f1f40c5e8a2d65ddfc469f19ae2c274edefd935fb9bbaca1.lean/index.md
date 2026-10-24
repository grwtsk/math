# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SplitSimplicialObject.Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe409de05b6c9367288315ce2c239d8ba39f5fb0",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe409de05b6c9367288315ce2c239d8ba39f5fb0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [πSummand](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/summand--d845cda744e7a6c45024b5bd.md) | 38 | `declaration-track:d845cda744e7a6c45024b5bd33eea5474e3756a8616c1095ec75afee6a34e2c1` |
| 2 | `theorem` | [cofan_inj_πSummand_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/cofan-inj-summand-eq-id--aa4079a542662155c5a2e218.md) | 47 | `result-track:aa4079a542662155c5a2e2185fa9b48c2db09047a2df4a1565c230d7eb1b9670` |
| 3 | `theorem` | [cofan_inj_πSummand_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/cofan-inj-summand-eq-zero--dae2aadbf1285217e7879b7f.md) | 53 | `result-track:dae2aadbf1285217e7879b7fac14887e9edebbe037cddca39a1308eb6578bb34` |
| 4 | `theorem` | [decomposition_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/decomposition-id--ece93665d325be8778e383b0.md) | 61 | `result-track:ece93665d325be8778e383b01fcebcba4d3c6b3a6c42c18bcf243550a65b7aaf` |
| 5 | `theorem` | [σ_comp_πSummand_id_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/comp-summand-id-eq-zero--209470a011009770c2617762.md) | 74 | `result-track:209470a011009770c2617762b2749d0e06aa5ca30646cbac41b6a224bcaf29fc` |
| 6 | `theorem` | [cofan_inj_comp_PInfty_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/cofan-inj-comp-pinfty-eq-zero--330ea7d69bbe389b64181e95.md) | 92 | `result-track:330ea7d69bbe389b64181e95b53571b7f476f029995e9cea11a4043c671526d4` |
| 7 | `theorem` | [comp_PInfty_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/comp-pinfty-eq-zero-iff--83daa5f9315861ea4df32b3c.md) | 99 | `result-track:83daa5f9315861ea4df32b3c92e2c83de5deb05173fea8355d93d1550e23da61` |
| 8 | `theorem` | [PInfty_comp_πSummand_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/pinfty-comp-summand-id--5e995e72f7d109e3302e222b.md) | 125 | `result-track:5e995e72f7d109e3302e222b301a39b4f24ec58b7060b9c93fae450d7c7e08d6` |
| 9 | `theorem` | [πSummand_comp_cofan_inj_id_comp_PInfty_eq_PInfty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/summand-comp-cofan-inj-id-comp-pinfty-eq-pinfty--840eb8e7f587eae770ffd7c5.md) | 134 | `result-track:840eb8e7f587eae770ffd7c5c853e49999e76dde26c359442edbf0db0e1bf06f` |
| 10 | `def` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/d--22765fef0af58e76a5ef2d94.md) | 147 | `declaration-track:22765fef0af58e76a5ef2d940611fd236d2e3afafb86f159a9e895d0e4a9ec59` |
| 11 | `theorem` | [ιSummand_comp_d_comp_πSummand_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/summand-comp-d-comp-summand-eq-zero--7bb0cd0eea2681538ef0402a.md) | 151 | `result-track:7bb0cd0eea2681538ef0402a3ecf4ca159a35cf54d71ea1f6e5d3e0e96635ae4` |
| 12 | `def` | [nondegComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/nondegcomplex--2ac89259bbb47eef639c9bc5.md) | 164 | `declaration-track:2ac89259bbb47eef639c9bc56bb2c1658040888b247ac5744bb7f0871c98b117` |
| 13 | `def` | [toKaroubiNondegComplexIsoN₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/tokaroubinondegcomplexison--b63d1fb77bb4dee5194c02d3.md) | 189 | `declaration-track:b63d1fb77bb4dee5194c02d359e4a37f9a9c07290f8a45715c2e6df36c4a6d08` |
| 14 | `lemma` | [toKaroubiNondegComplexIsoN₁_hom_f_PInfty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/tokaroubinondegcomplexison-hom-f-pinfty--bf065869e1a6c95f5986416a.md) | 230 | `result-track:bf065869e1a6c95f5986416a1d15cade3e2da4cfbecb5f9003b1798d173a4b1a` |
| 15 | `lemma` | [toKaroubiNondegComplexIsoN₁_hom_inv_id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/tokaroubinondegcomplexison-hom-inv-id-f--e19b3f9ee3b05562e3c26a19.md) | 237 | `result-track:e19b3f9ee3b05562e3c26a19c4f2356e8a6683e161a96fa2d4e261d45de9f091` |
| 16 | `def` | [toNondegComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/tonondegcomplex--80f4319ecf524fb1ce4a4817.md) | 248 | `declaration-track:80f4319ecf524fb1ce4a4817ef021c81e42fcd9b4ca0ba73dce4fe2c7a8faf18` |
| 17 | `def` | [fromNondegComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/fromnondegcomplex--66c1a71c1c440d0dfc8ee14b.md) | 257 | `declaration-track:66c1a71c1c440d0dfc8ee14b4165cc4c15dc4fd1e80275e2e9e457b9da32b0a2` |
| 18 | `lemma` | [PInfty_toNondegComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/pinfty-tonondegcomplex--6459fb9bd9a61f9d7b8ebda5.md) | 263 | `result-track:6459fb9bd9a61f9d7b8ebda57bb4a5e44f2a7a17c154984a71f5f8117e69bf51` |
| 19 | `lemma` | [fromNondegComplex_toNondegComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/fromnondegcomplex-tonondegcomplex--b329ed5fb68800254f913fe6.md) | 268 | `result-track:b329ed5fb68800254f913fe6957c1c67140d1e75700781ac9af1bc44df6de1ae` |
| 20 | `lemma` | [toNondegComplex_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/tonondegcomplex-f--b35cc1c94a8f8d6634fc17b7.md) | 274 | `result-track:b35cc1c94a8f8d6634fc17b7eea2c98915d474014949070491ad04f0cd46d19e` |
| 21 | `lemma` | [fromNondegComplex_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/fromnondegcomplex-f--38efa61649b9a0ce08332ded.md) | 281 | `result-track:38efa61649b9a0ce08332dedc5857fc9b7030d8116da305e1b3c84b5a2bac397` |
| 22 | `instance` | [isSplitEpi_toNondegComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/issplitepi-tonondegcomplex--dcfb217b84b93b5774a2f779.md) | 286 | `declaration-track:dcfb217b84b93b5774a2f7799fd6687023c5c4967cc37cf75c939f1cc2775b54` |
| 23 | `instance` | [isSplitMono_fromNondegComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/issplitmono-fromnondegcomplex--eae5245a716f8dd733a711eb.md) | 289 | `declaration-track:eae5245a716f8dd733a711eb1f908e4b1f4b8466920406bb44fd4d434ca1c013` |
| 24 | `lemma` | [toNondegComplex_fromNondegComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/tonondegcomplex-fromnondegcomplex--2660a006b651ad170d363521.md) | 294 | `result-track:2660a006b651ad170d3635211ea7eed77deedd49c3e816966c720d2f719b8e7d` |
| 25 | `def` | [homotopyEquivNondegComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/homotopyequivnondegcomplex--9c0ec72e8fe3d0ef6c574499.md) | 302 | `declaration-track:9c0ec72e8fe3d0ef6c574499cdfddfce3eaf40451ee13065f87729aed7b230e6` |
| 26 | `def` | [nondegComplexFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/nondegcomplexfunctor--8bcf70a3e11502eb621aa972.md) | 320 | `declaration-track:8bcf70a3e11502eb621aa972d3b42cb23be688c38846ed479701a471d0e1267d` |
| 27 | `def` | [toKaroubiNondegComplexFunctorIsoN₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/declarations/tokaroubinondegcomplexfunctorison--17b04909d248a5c2742b7857.md) | 349 | `declaration-track:17b04909d248a5c2742b785718bacd258335d54dba1719e9102fc5c5fbe7f7ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
