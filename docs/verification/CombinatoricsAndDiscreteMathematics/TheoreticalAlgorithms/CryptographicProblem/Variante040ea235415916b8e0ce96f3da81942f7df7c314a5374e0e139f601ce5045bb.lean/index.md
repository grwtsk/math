# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CryptographicProblem.Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c14a81a1d810e58c04be25e590ed3b132596ac3",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c14a81a1d810e58c04be25e590ed3b132596ac3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ComputationModel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/computationmodel--bc981883962b88a993d22725.md) | 22 | `declaration-track:bc981883962b88a993d22725e2958f757eb960114e41ffe27188a5c8261acc7e` |
| 2 | `inductive` | [OracleAccessModel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/oracleaccessmodel--8be9cf95b3c5e2fd2bdec430.md) | 28 | `declaration-track:8be9cf95b3c5e2fd2bdec4307f1294619dadfe50d8da40edcb0565bb64b56fb1` |
| 3 | `inductive` | [CryptographicProblemKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/cryptographicproblemkind--16191930e6a7da8da79680da.md) | 37 | `declaration-track:16191930e6a7da8da79680da7fa5dfc4a4684b4d0e813f271c1032ec2f97278e` |
| 4 | `inductive` | [GenericComplexityScale](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/genericcomplexityscale--03d4e133cb05f960bf43f82d.md) | 46 | `declaration-track:03d4e133cb05f960bf43f82db3ab08f98f8802c76514ca4a45c2688807e30981` |
| 5 | `def` | [genericComplexityScale](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/genericcomplexityscale--d4d480520dcd5fb64cb5c8b4.md) | 54 | `declaration-track:d4d480520dcd5fb64cb5c8b4d5ee9c070d2e6bc4843e8389d8030d22304cbe9c` |
| 6 | `theorem` | [quantum_collision_is_not_quantum_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/quantum-collision-is-not-quantum-preimage--2cba1a521eba54d31e24cf22.md) | 66 | `result-track:2cba1a521eba54d31e24cf22d9835ef2df3268a2a6f0938ff8385229b679b0eb` |
| 7 | `theorem` | [permutation_collision_is_impossible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/permutation-collision-is-impossible--9f5a01ffb32825e598c2d4f4.md) | 71 | `result-track:9f5a01ffb32825e598c2d4f43a3937b4c5fa7823ac604272f1771408dc3d5cd5` |
| 8 | `structure` | [SecurityParameters](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/securityparameters--8e6bfc79254549a521863129.md) | 77 | `declaration-track:8e6bfc79254549a5218631293e9c292579ae001c57a9ccedee76b91ea39654e2` |
| 9 | `def` | [Collision](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/collision--232df3808f60dd21adbc9109.md) | 85 | `declaration-track:232df3808f60dd21adbc91099f706f83c9c12e4b32ffd070f641cd89f83d040d` |
| 10 | `theorem` | [no_collision_of_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/no-collision-of-injective--f662985d0687ccc9e31bc7f4.md) | 90 | `result-track:f662985d0687ccc9e31bc7f496266de9a05bfa9a48fe934bad0eed917ce12ab4` |
| 11 | `theorem` | [permutation_has_no_collision](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/permutation-has-no-collision--f7f5f96dad8987b2188cfcce.md) | 99 | `result-track:f7f5f96dad8987b2188cfccef51ca280d077dd5eb0158ba07a4f5d9dad85e0c8` |
| 12 | `inductive` | [SquareRootPhenomenon](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/squarerootphenomenon--acc2469d98f102400842537c.md) | 107 | `declaration-track:acc2469d98f102400842537cb455babc11596fcde829e6dcdeac38c9c5c8b7ac` |
| 13 | `inductive` | [GoverningQuantity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/governingquantity--43ccac75ca964a1751b1356c.md) | 114 | `declaration-track:43ccac75ca964a1751b1356c7b62e20099ae919341566ddcdc8417fd2e5ff128` |
| 14 | `inductive` | [AnalyticCarrierKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/analyticcarrierkind--8fb909b683703ccff7ab83f5.md) | 122 | `declaration-track:8fb909b683703ccff7ab83f52454985b02f8b33c5660704ab828cd8d66d06816` |
| 15 | `inductive` | [SymmetryVocabulary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/symmetryvocabulary--25a4633931a2695aee299c2f.md) | 127 | `declaration-track:25a4633931a2695aee299c2f64ed97f05cb62254ff25ab923afa040100e272c0` |
| 16 | `def` | [vocabularyAdmissible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/vocabularyadmissible--51198428eb9a43339d14cce2.md) | 132 | `declaration-track:51198428eb9a43339d14cce2a0fcae2198b5a4c17ef8007814ca84b1e20b01b4` |
| 17 | `theorem` | [generalBanach_unitary_vocabulary_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/generalbanach-unitary-vocabulary-rejected--bd752f0f7fc75fd12df04645.md) | 138 | `result-track:bd752f0f7fc75fd12df04645a52f1e32e2f35b1dec27ba6d6a72f9d924e119fb` |
| 18 | `def` | [SquareRootPhenomenon.quantity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/squarerootphenomenon-quantity--319f090a3b3c42434766a806.md) | 142 | `declaration-track:319f090a3b3c42434766a806f4f1d8fd81d185d4720ac9be0c0ebf96b4f6b151` |
| 19 | `def` | [squareRootPhenomena](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/squarerootphenomena--9db2ad1d87bea1ba876bf03b.md) | 149 | `declaration-track:9db2ad1d87bea1ba876bf03b2d3ff5bfcf623c2e621127f40e957b905b35e92a` |
| 20 | `theorem` | [squareRootPhenomena_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variante040ea235415916b8e0ce96f3da81942f7df7c314a5374e0e139f601ce5045bb.lean/declarations/squarerootphenomena-nodup--62800eca4f393a4810a137b2.md) | 157 | `result-track:62800eca4f393a4810a137b2ec4bbd2670bff6587ab59c8c6825aa255d2f1557` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
