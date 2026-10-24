# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteFunctionAlgebra.Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "843b87a64ffc2b08163be2a5f6e284db9181ba45",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `843b87a64ffc2b08163be2a5f6e284db9181ba45`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CordTheory.OperationalTopology` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FunctionIdeal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/functionideal--5e4999a9f4d11de018d3ff3a.md) | 20 | `declaration-track:5e4999a9f4d11de018d3ff3a04091ddbb6b4e0e3d8e93d6991748188ce337c23` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/instance--793014af848163488854aa7f.md) | 27 | `declaration-track:793014af848163488854aa7ffd420dd8e961875241e25162cc96fae7aa312a8c` |
| 3 | `theorem` | [mem_carrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/mem-carrier--eead531219af33e3c5d621a4.md) | 41 | `result-track:eead531219af33e3c5d621a44962b68f9e816c1f44e2f71c3dbab837632c84f2` |
| 4 | `theorem` | [sum_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/sum-mem--9d34d8fce8fdcf11ba67d5fe.md) | 46 | `result-track:9d34d8fce8fdcf11ba67d5fe1f3f0de53f6d8050fe6f1659eac90e15cf3181e0` |
| 5 | `theorem` | [sum_univ_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/sum-univ-mem--0022c4e247c06b035b9e51bd.md) | 60 | `result-track:0022c4e247c06b035b9e51bdf33421b1cff284c765768e8c6833fcaecd20a3fa` |
| 6 | `def` | [pointMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/pointmass--e5625a0eb54e0b905ddb890c.md) | 67 | `declaration-track:e5625a0eb54e0b905ddb890c1f92c84ae50b0c12a4f597866ab77936038e40b3` |
| 7 | `theorem` | [pointMass_apply_same](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/pointmass-apply-same--6d47cbea64b8e61bc3900462.md) | 71 | `result-track:6d47cbea64b8e61bc390046252d4dc897b4abf4e3fc289ba5b23c0aa2d0bd464` |
| 8 | `theorem` | [pointMass_apply_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/pointmass-apply-ne--28faabcb8962883c46835fdc.md) | 76 | `result-track:28faabcb8962883c46835fdc3cdbeb7ce1465459782804cb7c2b7f80e50f8e3d` |
| 9 | `theorem` | [sum_pointMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/sum-pointmass--64f6bcfae7af31691bc1dafb.md) | 81 | `result-track:64f6bcfae7af31691bc1dafb71a69e3970f70aceb215486d4bf5900d7775ada0` |
| 10 | `def` | [zeroLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/zerolocus--771bb2b265aed0b6265bdce2.md) | 88 | `declaration-track:771bb2b265aed0b6265bdce22f71203ef7ca92571ec31f022f787d89c7303c11` |
| 11 | `def` | [vanishingIdeal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/vanishingideal--1d53f4176f1dccfabf037ad1.md) | 92 | `declaration-track:1d53f4176f1dccfabf037ad1efdd053fb263e73b5feec18b2e4edc7de89ae2c3` |
| 12 | `theorem` | [mem_vanishingIdeal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/mem-vanishingideal--6edf779bcd34c291b3997aaa.md) | 106 | `result-track:6edf779bcd34c291b3997aaa55f0337baeb3b4dc2332ab7b3c09d36e49598221` |
| 13 | `theorem` | [le_vanishing_zeroLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/le-vanishing-zerolocus--e2507e5b9a540a26b0a4f76e.md) | 111 | `result-track:e2507e5b9a540a26b0a4f76ec01d5ee040ee66c199d4bf10df501ec68d61db29` |
| 14 | `theorem` | [pointMass_mem_of_witness](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/pointmass-mem-of-witness--3c1011e1b4bd647bb5dcd225.md) | 118 | `result-track:3c1011e1b4bd647bb5dcd22567ed37862446e741a498249323f1bb5a3bc224c2` |
| 15 | `theorem` | [finite_nullstellensatz](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/finite-nullstellensatz--748b6b4472b52b6cbbad0e9d.md) | 135 | `result-track:748b6b4472b52b6cbbad0e9ddd9e22a02e7530774e741cfbfd30cc09874d39da` |
| 16 | `def` | [IsTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/istop--8e07cca7b8eddf9d8f39b364.md) | 167 | `declaration-track:8e07cca7b8eddf9d8f39b3641b7fb6b81ff094fd4184003fce0d31aa5531f9bd` |
| 17 | `theorem` | [zeroLocus_empty_iff_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/zerolocus-empty-iff-top--0247b64b7a8bf0e32909581e.md) | 170 | `result-track:0247b64b7a8bf0e32909581e0a334332eb9a1817d0212b0771cc26d1bc1229fc` |
| 18 | `theorem` | [satisfiable_iff_not_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/satisfiable-iff-not-top--7861694d61f3ed90cc15e6fe.md) | 189 | `result-track:7861694d61f3ed90cc15e6fe46c23cd81eafd36831d42ca11606ca87c58a0b06` |
| 19 | `theorem` | [represented_consequence_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/represented-consequence-iff--bb98fd09d0ddde8b457faa01.md) | 202 | `result-track:bb98fd09d0ddde8b457faa01049cdff47525c6eef769da2a9aefbf656495f80e` |
| 20 | `def` | [RadicalMember](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/radicalmember--8c3889456a5221c3ed83e79c.md) | 209 | `declaration-track:8c3889456a5221c3ed83e79c9bb658e51f414319ed6ca12ea34483431038147e` |
| 21 | `theorem` | [radicalMember_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/radicalmember-iff--fb37859c3bf61bfda1c3e29b.md) | 213 | `result-track:fb37859c3bf61bfda1c3e29b43e9d01523b81504dde3f9e61f155144b0628c1a` |
| 22 | `abbrev` | [FiniteCoordinateAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/finitecoordinatealgebra--1dfc465df18b106942930361.md) | 231 | `declaration-track:1dfc465df18b1069429303619258d2be7f684bf32b33bd05348201c310ac1628` |
| 23 | `structure` | [AlgebraicConstraintRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/algebraicconstraintrecord--2ab49ce889983795db7386e4.md) | 234 | `declaration-track:2ab49ce889983795db7386e4a11ee19a08239cb8253405288edf6c045a2ea8b9` |
| 24 | `inductive` | [ConsistencyKind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/consistencykind--20a1a1210cc90d4b32da2582.md) | 242 | `declaration-track:20a1a1210cc90d4b32da2582c4cc1ea4b269ca776dc196f6a7b54b1885a621b4` |
| 25 | `structure` | [ConsistencyAssessment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/consistencyassessment--cfb1a7d3a009df8c44e913d0.md) | 251 | `declaration-track:cfb1a7d3a009df8c44e913d0487665acdc67c1bcc23281670cafefdc3160b8da` |
| 26 | `structure` | [OntologyConstraintIdealRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/ontologyconstraintidealrecord--77dde9f9e4bd81f3c74c3b36.md) | 263 | `declaration-track:77dde9f9e4bd81f3c74c3b369a7ec5b982488a5838d98df8d4c0815240356200` |
| 27 | `structure` | [OntologyModelLocusRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/declarations/ontologymodellocusrecord--916169fe8df5e95001076a72.md) | 272 | `declaration-track:916169fe8df5e95001076a72f6a2939e3632e6d75eca48de14f6710afd39ae36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
