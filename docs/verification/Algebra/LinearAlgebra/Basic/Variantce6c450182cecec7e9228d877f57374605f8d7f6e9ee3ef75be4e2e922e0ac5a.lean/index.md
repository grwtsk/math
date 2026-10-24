# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bafa19048712ede4c1b43dd2edf99eba15018a1b",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bafa19048712ede4c1b43dd2edf99eba15018a1b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Spectrum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.GeneralLinearGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/eigenspace--e891708d38f97e57aff40752.md) | 71 | `declaration-track:e891708d38f97e57aff40752c61735f4d5fe58d5d3f67dc7c9f311fda8e65097` |
| 2 | `theorem` | [eigenspace_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/eigenspace-zero--94f4ad560549f281e5cf972a.md) | 76 | `result-track:94f4ad560549f281e5cf972a188cfae58368b4a3a2d00129637c3b6812840083` |
| 3 | `def` | [HasEigenvector](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/haseigenvector--d7c1ff1dcf4333c31312105e.md) | 80 | `declaration-track:d7c1ff1dcf4333c31312105ed8c97179483f920d930ffd8c3a2244719161393f` |
| 4 | `def` | [HasEigenvalue](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/haseigenvalue--f51298ea523e343180365df4.md) | 86 | `declaration-track:f51298ea523e343180365df4f5cbfcdbbffa59bbab301331d6be5a9e46076570` |
| 5 | `def` | [Eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/eigenvalues--f85ee68a244d7c1a7c89afc3.md) | 91 | `declaration-track:f85ee68a244d7c1a7c89afc309a57d8d140b32faf67f25a20a09163bf7bd6cab` |
| 6 | `def` | [Eigenvalues.val](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/eigenvalues-val--a7a5a92e4c1505235ae96aac.md) | 96 | `declaration-track:a7a5a92e4c1505235ae96aacc7580e6845508c39e7f745097f49ba901626b050` |
| 7 | `instance` | [Eigenvalues.instCoeOut](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/eigenvalues-instcoeout--e851557da059b62b07f11cdc.md) | 98 | `declaration-track:e851557da059b62b07f11cdcb730df405e0de72d98917177769355f00e32a7c7` |
| 8 | `instance` | [Eigenvalues.instDecidableEq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/eigenvalues-instdecidableeq--800e31fbf172508ac008d187.md) | 101 | `declaration-track:800e31fbf172508ac008d18768049a5064e97dd61450ae40ec0f632c47afd00b` |
| 9 | `theorem` | [hasEigenvalue_of_hasEigenvector](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/haseigenvalue-of-haseigenvector--d4132c6bc13acf9ef32daaa3.md) | 105 | `result-track:d4132c6bc13acf9ef32daaa3c9f391f70c3dc25c627851d50aaf179d3997204c` |
| 10 | `theorem` | [mem_eigenspace_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/mem-eigenspace-iff--b13ee28aed29f93cddae7259.md) | 111 | `result-track:b13ee28aed29f93cddae72597a62b92b406cb501d5dfe124af30aa3d25b3fb6a` |
| 11 | `theorem` | [HasEigenvector.apply_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/haseigenvector-apply-eq-smul--6399730816ef224e771b7fd4.md) | 115 | `result-track:6399730816ef224e771b7fd41005a530d3951ad183091d2cf141f9328940728a` |
| 12 | `theorem` | [HasEigenvalue.exists_hasEigenvector](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/haseigenvalue-exists-haseigenvector--484b45f65955775a0531e9da.md) | 120 | `result-track:484b45f65955775a0531e9dade16e9e792d10e31fe74af2d1bca7298a2b0f935` |
| 13 | `theorem` | [mem_spectrum_of_hasEigenvalue](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/mem-spectrum-of-haseigenvalue--cab7f5fdf36dcf46d5e6d53c.md) | 125 | `result-track:cab7f5fdf36dcf46d5e6d53cffdeabdb6d2ba35954fae67a02286aa4d89a802f` |
| 14 | `theorem` | [hasEigenvalue_iff_mem_spectrum](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/haseigenvalue-iff-mem-spectrum--8ba4da899f92517d706de346.md) | 134 | `result-track:8ba4da899f92517d706de346ac4b3125bb849059f34a40aa7b0010d2b2938c63` |
| 15 | `theorem` | [eigenspace_div](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/eigenspace-div--a113657d9d430ae151ccd75c.md) | 140 | `result-track:a113657d9d430ae151ccd75c68a2fd40c3712959103fadba0938f3d2c42b8be6` |
| 16 | `theorem` | [eigenspaces_independent](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/eigenspaces-independent--9f7defc30551c944119b4972.md) | 154 | `result-track:9f7defc30551c944119b4972d6acb0fe61a569377db4f58aaf0980ab27f42880` |
| 17 | `theorem` | [eigenvectors_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/eigenvectors-linearindependent--33da1f994a27d411092ec565.md) | 256 | `result-track:33da1f994a27d411092ec565eb4ef02d81fbdc3654a6047a61eef11c56868ffb` |
| 18 | `def` | [generalizedEigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/generalizedeigenspace--4833cba1884d4263d5f41464.md) | 266 | `declaration-track:4833cba1884d4263d5f414643495f7fa88908cb649dc97c97c7ba430b73a1b43` |
| 19 | `theorem` | [mem_generalizedEigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/mem-generalizedeigenspace--8dc37963875507a71be57965.md) | 276 | `result-track:8dc37963875507a71be579651a9d174cfc83937bae24a077a7b2b02a6e7d8974` |
| 20 | `theorem` | [generalizedEigenspace_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/generalizedeigenspace-zero--d9f8b31662aad1f942f486a7.md) | 281 | `result-track:d9f8b31662aad1f942f486a78ffc8b5781c0e12e5810988a845d5c85ff858a42` |
| 21 | `def` | [HasGeneralizedEigenvector](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/hasgeneralizedeigenvector--716ca00c06861197dd5d9ade.md) | 288 | `declaration-track:716ca00c06861197dd5d9ade7153f43d4f07c4be9343b8fae3aeaa9e04ed2e14` |
| 22 | `def` | [HasGeneralizedEigenvalue](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/hasgeneralizedeigenvalue--cc35d4c3abb507f6cf958bf2.md) | 294 | `declaration-track:cc35d4c3abb507f6cf958bf29f1877d81e73d76988a481e5f1c7b6f2454f7508` |
| 23 | `def` | [generalizedEigenrange](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/generalizedeigenrange--981ed788a998ccd5b440e319.md) | 300 | `declaration-track:981ed788a998ccd5b440e319348be2245233438696c06c0071fb7a07ac3f1b39` |
| 24 | `theorem` | [exp_ne_zero_of_hasGeneralizedEigenvalue](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/exp-ne-zero-of-hasgeneralizedeigenvalue--b9743f89d2eefcbaddc4bc34.md) | 305 | `result-track:b9743f89d2eefcbaddc4bc34fd8f951dd32bba5f5c59cb0eda7cd5eca9c98c7c` |
| 25 | `def` | [maximalGeneralizedEigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/maximalgeneralizedeigenspace--3adece383b6660c972126ee5.md) | 312 | `declaration-track:3adece383b6660c972126ee513a685b3728190888ee36bc03da374385568ab96` |
| 26 | `theorem` | [generalizedEigenspace_le_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/generalizedeigenspace-le-maximal--7e410fd1ce7541a1e7d6edec.md) | 316 | `result-track:7e410fd1ce7541a1e7d6edec2d95246efce42a90113e742412d19f29bd791999` |
| 27 | `theorem` | [mem_maximalGeneralizedEigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/mem-maximalgeneralizedeigenspace--270094a2370f3c09678a27ce.md) | 322 | `result-track:270094a2370f3c09678a27ce079dd6ee42fa3b8bf027e9c48392240ef2fcf85a` |
| 28 | `def` | [maximalGeneralizedEigenspaceIndex](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/maximalgeneralizedeigenspaceindex--96a9f4cab831d2fc57284b90.md) | 330 | `declaration-track:96a9f4cab831d2fc57284b90ec49085206952dd59252cc0afd4b983d0b072294` |
| 29 | `theorem` | [maximalGeneralizedEigenspace_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/maximalgeneralizedeigenspace-eq--084f8527ba5a43179d5e7676.md) | 336 | `result-track:084f8527ba5a43179d5e76768d28e5984ba55c3cdc769f5dd14a3cfa41d96139` |
| 30 | `theorem` | [hasGeneralizedEigenvalue_of_hasGeneralizedEigenvalue_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/hasgeneralizedeigenvalue-of-hasgeneralizedeigenvalue-of-le--2213a5f8688a2fad45ad4904.md) | 345 | `result-track:2213a5f8688a2fad45ad49043480443a410acedd5e33c94b3166ecf36f448848` |
| 31 | `theorem` | [eigenspace_le_generalizedEigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/eigenspace-le-generalizedeigenspace--30929050179c29ce9ffb3c47.md) | 355 | `result-track:30929050179c29ce9ffb3c4781976d39577a881fe5c31ef3075448ba587f7773` |
| 32 | `theorem` | [hasGeneralizedEigenvalue_of_hasEigenvalue](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/hasgeneralizedeigenvalue-of-haseigenvalue--e8c727405ce7aad6464d8358.md) | 361 | `result-track:e8c727405ce7aad6464d8358a81024bc77faff466e6144a65690453d4f7eaea8` |
| 33 | `theorem` | [hasEigenvalue_of_hasGeneralizedEigenvalue](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/haseigenvalue-of-hasgeneralizedeigenvalue--c334434fdd79efc76840d490.md) | 369 | `result-track:c334434fdd79efc76840d4907ac5ace4e1be1dc329896d12cd6875bd2c224dce` |
| 34 | `theorem` | [hasGeneralizedEigenvalue_iff_hasEigenvalue](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/hasgeneralizedeigenvalue-iff-haseigenvalue--4f0768cd33f3d13fca4c830c.md) | 378 | `result-track:4f0768cd33f3d13fca4c830cacbd44740647ee453574103bdaf8cc44ef1a5bdc` |
| 35 | `theorem` | [generalizedEigenspace_le_generalizedEigenspace_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/generalizedeigenspace-le-generalizedeigenspace-finrank--23ea7b36322e43ad29e4a4b5.md) | 385 | `result-track:23ea7b36322e43ad29e4a4b5d1ccf5b44cece1f7f6dad6886f87fe9bde34f69e` |
| 36 | `theorem` | [generalizedEigenspace_eq_generalizedEigenspace_finrank_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/generalizedeigenspace-eq-generalizedeigenspace-finrank-of-le--8a7fcfa51c2277934fd98bbd.md) | 391 | `result-track:8a7fcfa51c2277934fd98bbd3bd3c42c5dff7171f760e902f12c722300271e69` |
| 37 | `theorem` | [generalizedEigenspace_restrict](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/generalizedeigenspace-restrict--562c65538d0bf6725b603be6.md) | 399 | `result-track:562c65538d0bf6725b603be61e5891eb4ea956fb206faedf12f3ab05d50500f8` |
| 38 | `theorem` | [eigenspace_restrict_le_eigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/eigenspace-restrict-le-eigenspace--b1fe060a49205c8601aef217.md) | 413 | `result-track:b1fe060a49205c8601aef2174b6e5a881426e3eed6cfa0f952771a0a7dd78367` |
| 39 | `theorem` | [generalized_eigenvec_disjoint_range_ker](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/generalized-eigenvec-disjoint-range-ker--cc272baaae82b41efaab5c3a.md) | 421 | `result-track:cc272baaae82b41efaab5c3ade728aaaecd9934f4bf553abcb9151bdf30a8d1f` |
| 40 | `theorem` | [eigenspace_restrict_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/eigenspace-restrict-eq-bot--7b3675a1cc05d6a83049bb3e.md) | 441 | `result-track:7b3675a1cc05d6a83049bb3e074a455059704eeb499cdc696d940be3c6867752` |
| 41 | `theorem` | [pos_finrank_generalizedEigenspace_of_hasEigenvalue](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/pos-finrank-generalizedeigenspace-of-haseigenvalue--1ed186c84e75e07eae342350.md) | 449 | `result-track:1ed186c84e75e07eae342350283bb04b45c1c9f42135aad74007e73f8de2e77a` |
| 42 | `theorem` | [map_generalizedEigenrange_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/declarations/map-generalizedeigenrange-le--f4057bca2e7fe71cea8a8f60.md) | 461 | `result-track:f4057bca2e7fe71cea8a8f606e0562b423ca283aefa33f0487e0af400b07507a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
