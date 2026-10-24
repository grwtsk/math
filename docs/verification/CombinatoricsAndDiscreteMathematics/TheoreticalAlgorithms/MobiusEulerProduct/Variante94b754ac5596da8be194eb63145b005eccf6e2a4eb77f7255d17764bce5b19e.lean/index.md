# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MobiusEulerProduct.Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7a51724aa6e28e1cd249456d4f0a61772563171",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7a51724aa6e28e1cd249456d4f0a61772563171`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.FinitePhaseBitmatrixAlgebra` — import line 1; external provider; requires a separately pinned dependency.
- `Think.Targets.Statements` — import line 2; external provider; requires a separately pinned dependency.
- `Think.Targets.ConjectureLedger` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeWindow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/primewindow--5c7874211d070a01ea5ed6ac.md) | 18 | `declaration-track:5c7874211d070a01ea5ed6ac2adfdfcfb669763714bd78ba078e5247b01bafde` |
| 2 | `structure` | [SquarefreeSupport](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/squarefreesupport--2e385e6c9dd5b7367c565730.md) | 23 | `declaration-track:2e385e6c9dd5b7367c565730338458eb8b67fd5f7351a724c52ebc4e1d2b9785` |
| 3 | `inductive` | [FiniteMobiusCoefficient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/finitemobiuscoefficient--9e62a62aa9a316708a930f3b.md) | 30 | `declaration-track:9e62a62aa9a316708a930f3b878f7be84d078d2356e4299a19df22c1ac7c130e` |
| 4 | `def` | [coefficientFromFactorCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/coefficientfromfactorcount--b7d3b59ddb49cd5b4ce4840e.md) | 36 | `declaration-track:b7d3b59ddb49cd5b4ce4840ea7da91d6caccbdcccd711cb36fb1fcd3f9bbaea8` |
| 5 | `def` | [finiteMobiusCoefficientFromSupport](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/finitemobiuscoefficientfromsupport--14f7e3c499a4f04b81bb9ce5.md) | 43 | `declaration-track:14f7e3c499a4f04b81bb9ce5a62e6a493c473f983293d96ae16ff1ccd9b7fd42` |
| 6 | `def` | [finiteSubproductsWithFactorCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/finitesubproductswithfactorcount--8e83761061c722bfc2abfddd.md) | 53 | `declaration-track:8e83761061c722bfc2abfddd146c15ba0232f3d1c6be3d9072aa5f9698fc1f46` |
| 7 | `def` | [findSubproductFactorCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/findsubproductfactorcount--db52bc38da89621e04eb5f09.md) | 59 | `declaration-track:db52bc38da89621e04eb5f092bf8c7d4a1cfec951647b60f810ffec729ada63a` |
| 8 | `def` | [finiteMobiusCoefficient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/finitemobiuscoefficient--fc77125110797bfeb47d7acc.md) | 68 | `declaration-track:fc77125110797bfeb47d7accd00cd22a305dc9b61e1239b5632e131317f1d1a4` |
| 9 | `inductive` | [EulerProductBridgeResidue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/eulerproductbridgeresidue--2d19da718d9b09f0c6328c1b.md) | 76 | `declaration-track:2d19da718d9b09f0c6328c1b88aa704f4e6a62e6593168f9ae5225fd1cbb26ee` |
| 10 | `structure` | [MobiusEulerProductSurface](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/mobiuseulerproductsurface--1a8a0f299da9f68c0e0f104e.md) | 83 | `declaration-track:1a8a0f299da9f68c0e0f104ec7b34dd38f5f72cdc79a91be3642d4dd41e72f98` |
| 11 | `def` | [defaultPrimeWindow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/defaultprimewindow--efe05bdbe07a9bff597b4a12.md) | 92 | `declaration-track:efe05bdbe07a9bff597b4a12618ec1dde3be306baa2273b44efc7aa1441d221e` |
| 12 | `def` | [defaultEulerProductBridgeResidues](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/defaulteulerproductbridgeresidues--48afed906b4e0be653fb1049.md) | 96 | `declaration-track:48afed906b4e0be653fb1049be2d6264558c5b7f087d3fcc2e9782c6a816dddd` |
| 13 | `def` | [defaultMobiusEulerProductSurface](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/defaultmobiuseulerproductsurface--4aba6844e651b8588dfc5098.md) | 103 | `declaration-track:4aba6844e651b8588dfc5098dca37445856f4691f51aefdb79ba879ffd678014` |
| 14 | `theorem` | [finite_squarefree_even_factor_count_coeff_plus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/finite-squarefree-even-factor-count-coeff-plus--87f1985cb1f96569bd2edd51.md) | 111 | `result-track:87f1985cb1f96569bd2edd51434fdeb460de55f38ff583cb3a480f025affddd9` |
| 15 | `theorem` | [finite_squarefree_odd_factor_count_coeff_minus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/finite-squarefree-odd-factor-count-coeff-minus--a0768c0832650bcc1c6a28e0.md) | 122 | `result-track:a0768c0832650bcc1c6a28e0158ab62413059c65ad2ab1bef043958ef309b67f` |
| 16 | `theorem` | [finite_nonsquarefree_coeff_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/finite-nonsquarefree-coeff-zero--bb974b6084bffa8c1036baf5.md) | 137 | `result-track:bb974b6084bffa8c1036baf5a4b78cd36d9b14517f7db57d08315a817682b1e7` |
| 17 | `theorem` | [support_squarefree_even_factor_count_coeff_plus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/support-squarefree-even-factor-count-coeff-plus--cbba9360113a6d01cfc1e8e9.md) | 146 | `result-track:cbba9360113a6d01cfc1e8e99745df2ad1609f02bf3b46b842e865162afd4525` |
| 18 | `theorem` | [support_squarefree_odd_factor_count_coeff_minus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/support-squarefree-odd-factor-count-coeff-minus--6e98a42741e73c4d4188aafb.md) | 161 | `result-track:6e98a42741e73c4d4188aafbe8652d9fd55a626c732dd4974bf0bd69ff8dfd7b` |
| 19 | `theorem` | [support_nonsquarefree_coeff_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/support-nonsquarefree-coeff-zero--b14389c557e207e911b339e7.md) | 180 | `result-track:b14389c557e207e911b339e7f4844590a7ba03ae427d810c3ac166f855fc1840` |
| 20 | `theorem` | [support_out_of_window_coeff_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/support-out-of-window-coeff-zero--d796c0618320a8341a80c2aa.md) | 188 | `result-track:d796c0618320a8341a80c2aad5ddd2e3c59098dac849cf7490e6f80315c4479d` |
| 21 | `theorem` | [default_surface_has_finite_coefficient_law](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/default-surface-has-finite-coefficient-law--7ce0ee5d296d7c94e1aa2159.md) | 195 | `result-track:7ce0ee5d296d7c94e1aa2159f5b62c764918a8ae6645fdd1e71f89625f3a8b8e` |
| 22 | `theorem` | [default_surface_denies_infinite_euler_product_claim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/default-surface-denies-infinite-euler-product-claim--863228d53b003d5e5bd4fc1a.md) | 199 | `result-track:863228d53b003d5e5bd4fc1a818b10be610e036aff2e78b812d346cedfce2b37` |
| 23 | `theorem` | [default_surface_denies_pnt_claim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/default-surface-denies-pnt-claim--21333878ebe5a04034ad3fb5.md) | 203 | `result-track:21333878ebe5a04034ad3fb552c9c23c9ad53fc3487f693db40e37cc678a73ff` |
| 24 | `theorem` | [default_surface_denies_rh_claim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/default-surface-denies-rh-claim--bacf7fc162bfe0f4d348056b.md) | 207 | `result-track:bacf7fc162bfe0f4d348056b89eab74293edb2438d2cea550db13b6f056e8e32` |
| 25 | `theorem` | [default_surface_retains_analytic_residue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/default-surface-retains-analytic-residue--a692991da16be6460d28af93.md) | 211 | `result-track:a692991da16be6460d28af939a2baf7155d2ae183deafb9c557208ac77659d01` |
| 26 | `theorem` | [finite_mobius_surface_does_not_clear_rh_boundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/finite-mobius-surface-does-not-clear-rh-boundary--fea0580448adf39ea63ed784.md) | 225 | `result-track:fea0580448adf39ea63ed784a7483169d62df911b47c713500e8dc9f27253f5d` |
| 27 | `theorem` | [finite_mobius_surface_does_not_clear_pnt_bridge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean/declarations/finite-mobius-surface-does-not-clear-pnt-bridge--1490cf7866d2fa6a36fabfed.md) | 230 | `result-track:1490cf7866d2fa6a36fabfedf8fc9c2766a3ddfa3bf81dafd8f87388250fbba8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
