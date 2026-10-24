# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07af0ad535001c133d543dbd3c8fd4fcb507379d",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07af0ad535001c133d543dbd3c8fd4fcb507379d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Module.AEval` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PolynomialModule](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/polynomialmodule--fbe445c4a2ec9b8f1c35496d.md) | 38 | `declaration-track:fbe445c4a2ec9b8f1c35496d4371c29f0a597d661c72bdb8e83e51f90f15f6eb` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/instance--c7bd96d469de84e52d14a88d.md) | 44 | `declaration-track:c7bd96d469de84e52d14a88df27c013940475548f611800e7cb19bb42f060168` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/instance--bc69b69095b9ced27b5fcb7c.md) | 45 | `declaration-track:bc69b69095b9ced27b5fcb7c8c59e7b7d7fcc6de898c93f606e35697abe0b4d2` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/instance--63934f83be9a1c36a808fd03.md) | 54 | `declaration-track:63934f83be9a1c36a808fd03dd3207419582e74382bd1140fa194973f4f90633` |
| 5 | `instance` | [instFunLike](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/instfunlike--fed8f90c181bb18d8eb4e59b.md) | 57 | `declaration-track:fed8f90c181bb18d8eb4e59bcfc72dd3faa07aa881c53053c043d5c31547db4b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/instance--2b06df1f6980ada924f90e05.md) | 60 | `declaration-track:2b06df1f6980ada924f90e0522daaf13384b1764ff2d2aead3bf3d97bfc8f91e` |
| 7 | `theorem` | [zero_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/zero-apply--dece0cd3795d9d2f328ba80c.md) | 63 | `result-track:dece0cd3795d9d2f328ba80c1c95ec5b1d881405618025b17dbed771d5e9da7f` |
| 8 | `theorem` | [add_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/add-apply--5d2ed0e3c8829f1083ad6a42.md) | 66 | `result-track:5d2ed0e3c8829f1083ad6a42f14c5893692fee02cb63f87048fb74f5365a9602` |
| 9 | `def` | [single](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/single--28ad8befbe7e4351a59fa901.md) | 71 | `declaration-track:28ad8befbe7e4351a59fa9019f50c91726a4ecea85593f06d1ea3c549050c09f` |
| 10 | `theorem` | [single_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/single-apply--9a0aafced4df502f60764c14.md) | 74 | `result-track:9a0aafced4df502f60764c14f9d05be27f31927a6c452b51526a20d0033a9be1` |
| 11 | `def` | [lsingle](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/lsingle--ca3cc12582c9c41861ef6474.md) | 78 | `declaration-track:ca3cc12582c9c41861ef6474d13e9008520316e8fe0466c293b8daa01625c604` |
| 12 | `theorem` | [lsingle_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/lsingle-apply--1bbbad6fbe2621d089750606.md) | 81 | `result-track:1bbbad6fbe2621d089750606943bb577d5864010760c7451306721e9d90fd763` |
| 13 | `theorem` | [single_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/single-smul--d305a9ad7424f31dcd47c929.md) | 84 | `result-track:d305a9ad7424f31dcd47c929b4a7cdbd1c51c8509cfe69fcee9ea6e32599b3d8` |
| 14 | `theorem` | [induction_linear](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/induction-linear--6485558dfcf5b9efc250687b.md) | 90 | `result-track:6485558dfcf5b9efc250687bcd505c456379bf86970de97ff9172580b4e51f6a` |
| 15 | `instance` | [polynomialModule](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/polynomialmodule--70efd30bacd471bb5ac90b41.md) | 95 | `declaration-track:70efd30bacd471bb5ac90b413bd2e0352f7431ca3775656269866e123cfb30d4` |
| 16 | `lemma` | [smul_def](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/smul-def--97b7debbf65f14857d48dd4d.md) | 98 | `result-track:97b7debbf65f14857d48dd4d3fe4757385333e4ae27dd826053b4829ef8270e0` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/instance--603bfadb2bfeff3d569e60c7.md) | 102 | `declaration-track:603bfadb2bfeff3d569e60c71ad92553fd1f911f2f3a44b65daa5f3df2619496` |
| 18 | `instance` | [isScalarTower'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/isscalartower--8e98bc79b1716ae6452a139e.md) | 106 | `declaration-track:8e98bc79b1716ae6452a139e6d68d7eae2b7c29ceefff76ad2582719675855b3` |
| 19 | `theorem` | [monomial_smul_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/monomial-smul-single--e18ff681ad2362c8ea6a8c3c.md) | 115 | `result-track:e18ff681ad2362c8ea6a8c3cae35b842304e20c817e593fe64f1d7804efb9919` |
| 20 | `theorem` | [monomial_smul_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/monomial-smul-apply--e020372ae4efe749807aa724.md) | 130 | `result-track:e020372ae4efe749807aa72400fac071a00891c4206ee352175f7850e9c03613` |
| 21 | `theorem` | [smul_single_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/smul-single-apply--261caeeac5df70c1ebed2b85.md) | 147 | `result-track:261caeeac5df70c1ebed2b8560009862226834b11f1c2a546cdff1bc0b2996ae` |
| 22 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/smul-apply--7da66021ddaf072ade82c534.md) | 159 | `result-track:7da66021ddaf072ade82c534e9a0f23d6ad98992b900d4bb9a11409d46ebb512` |
| 23 | `def` | [equivPolynomialSelf](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/equivpolynomialself--7a96f32ccea713cd0ff39288.md) | 178 | `declaration-track:7a96f32ccea713cd0ff39288e9587299794442c6a0d9346f77eadaaab01ef06e` |
| 24 | `def` | [equivPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/equivpolynomial--2d3568171a6e7dd47a6de883.md) | 215 | `declaration-track:2d3568171a6e7dd47a6de88310380233d0d5e17c78acce2140cd8b3929988c0e` |
| 25 | `lemma` | [equivPolynomialSelf_apply_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/equivpolynomialself-apply-eq--b9b57ce53ca09fd7d84ed8a3.md) | 220 | `result-track:b9b57ce53ca09fd7d84ed8a3c37fb234c29d15496db4434125e75c237aabf61b` |
| 26 | `lemma` | [equivPolynomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/equivpolynomial-single--cc4c58001b8a1b2b205e9ff2.md) | 224 | `result-track:cc4c58001b8a1b2b205e9ff2152d70462dfeb129dc8b1031180daa7a91750d95` |
| 27 | `def` | [map](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/map--4aa0248081a6bfac0c8c2f0e.md) | 231 | `declaration-track:4aa0248081a6bfac0c8c2f0e997cc2b0efd0edbf6daf40792810d3de3438efa4` |
| 28 | `theorem` | [map_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/map-single--f82ba58c25e5f55bcd98b67c.md) | 235 | `result-track:f82ba58c25e5f55bcd98b67ce0c0a44f64d4563d75c5662757b904b7da381ab3` |
| 29 | `theorem` | [map_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/map-smul--11e58ab00e21a2b7065e9147.md) | 240 | `result-track:11e58ab00e21a2b7065e9147c75ee5fead84b1881185c4bdca2ae6752b7570ab` |
| 30 | `def` | [eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/eval--6f46e1b23574a43bd4d0f6ae.md) | 253 | `declaration-track:6f46e1b23574a43bd4d0f6ae072b0330661a7a8eacb33cc1be53c6ebcff31e47` |
| 31 | `theorem` | [eval_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/eval-single--cf1c1a6331605c9cf1d1e386.md) | 265 | `result-track:cf1c1a6331605c9cf1d1e3863656425bf7d4ce3b8e6a8325b324b81542c3e21d` |
| 32 | `theorem` | [eval_lsingle](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/eval-lsingle--8beefe3a66f35f8c52985bf7.md) | 269 | `result-track:8beefe3a66f35f8c52985bf7580c8d6b6beebc1104a345044e26dbc46f6bb1be` |
| 33 | `theorem` | [eval_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/eval-smul--1c24ed7266ab96af9954388f.md) | 272 | `result-track:1c24ed7266ab96af9954388f86f8dc527324550182a7ce4938c4fe000f34cc29` |
| 34 | `theorem` | [eval_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/eval-map--420a9570b07bd01f7afdaa5e.md) | 283 | `result-track:420a9570b07bd01f7afdaa5e7af6227c4ecc6787aeb34c8e94a8fd1b86893000` |
| 35 | `theorem` | [eval_map'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/eval-map--efb1e86c3bd90b553c4afce4.md) | 291 | `result-track:efb1e86c3bd90b553c4afce4576a094b6dea7187e95973b0d3a99b3b267cd8a2` |
| 36 | `lemma` | [aeval_equivPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/aeval-equivpolynomial--162a30d77a74d46288a23628.md) | 296 | `result-track:162a30d77a74d46288a23628353e105cd89a1f6a3af0050bfc3ce107b282524d` |
| 37 | `def` | [comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/comp--e80d0b51b119dbfafc7469f6.md) | 307 | `declaration-track:e80d0b51b119dbfafc7469f6fff4c91fe0085b9d433777fe942c7821a4a645a1` |
| 38 | `theorem` | [comp_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/comp-single--bdf0bfd3c44f907e9de62269.md) | 310 | `result-track:bdf0bfd3c44f907e9de622691cd63a7988450f92c49fd078aa572ad481b803c6` |
| 39 | `theorem` | [comp_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/comp-eval--1c9e17370b1d98c65cce782b.md) | 314 | `result-track:1c9e17370b1d98c65cce782b3f3f4b65520be0d605555a09ee60dce99d5ce05f` |
| 40 | `theorem` | [comp_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/declarations/comp-smul--c233805dc93e3a38f4728935.md) | 324 | `result-track:c233805dc93e3a38f4728935d99db899cada72175b969d2c64086b470dec0bfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
