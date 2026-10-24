# Verification target: GRWTSK.Algebra.GroupTheory.BraidQuotientAttempt07.Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee0a91b1eea84cec6bfc7222141f8a07e6afbcb1",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee0a91b1eea84cec6bfc7222141f8a07e6afbcb1`.

Source path: `GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.PresentedGroup` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Centralizer` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braidRelator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/braidrelator--a7094f175bf3a893afe44cdb.md) | 15 | `declaration-track:a7094f175bf3a893afe44cdbf8cf8c370dc1ec54506dd5eaee1bafc905d195dc` |
| 2 | `def` | [braidRelations](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/braidrelations--1109ddd45ef98e1fcfaf8e99.md) | 19 | `declaration-track:1109ddd45ef98e1fcfaf8e990919888176fa3be2f077ccdafcfcf0ae24783a47` |
| 3 | `abbrev` | [B3](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/b3--d9ff404b38fc7027fea6802d.md) | 21 | `declaration-track:d9ff404b38fc7027fea6802d53ca84e38f12c3f25be48cbd1addb5da11b0cdf8` |
| 4 | `def` | [sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/sigma1--b230a9bc3c30f7ababf97a52.md) | 23 | `declaration-track:b230a9bc3c30f7ababf97a52111722785203e4d5dedfbbc018c8aa0a6084a312` |
| 5 | `def` | [sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/sigma2--d941ed1bb718f0a009327f0a.md) | 25 | `declaration-track:d941ed1bb718f0a009327f0a69a6376cc53cb4866b6e103c1bae09cbd6a72a29` |
| 6 | `theorem` | [braid_relation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/braid-relation--65a75907c59b09f1fc15ce54.md) | 27 | `result-track:65a75907c59b09f1fc15ce545b585fb1d1a05a691e054905e8a4232c360f0f44` |
| 7 | `def` | [halfTwist](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/halftwist--b3b3c6a5e5cb19e60e306c4e.md) | 36 | `declaration-track:b3b3c6a5e5cb19e60e306c4e30d143e8817fb5c136fa328419cea49c5e21fe72` |
| 8 | `def` | [fullTwist](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/fulltwist--532ca3dd2898cc855b2afe67.md) | 39 | `declaration-track:532ca3dd2898cc855b2afe6706f3429ddce313b1a74266f59000da1475bc721b` |
| 9 | `theorem` | [halfTwist_swap_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/halftwist-swap-sigma1--e10335307c6806bf4d666817.md) | 41 | `result-track:e10335307c6806bf4d666817f2565c7dc340660dc61ef84caf45d31489a7132e` |
| 10 | `theorem` | [halfTwist_swap_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/halftwist-swap-sigma2--c71dc65d1e792b85480ea487.md) | 48 | `result-track:c71dc65d1e792b85480ea4874f48f95b9eb5e00bd6f9ece633cb898d29f78a2c` |
| 11 | `theorem` | [halfTwist_sq](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/halftwist-sq--84dfa9de0332166978ad618d.md) | 56 | `result-track:84dfa9de0332166978ad618da01a9c5b3f5e2c7fae331060254bbf2c0104eee0` |
| 12 | `theorem` | [fullTwist_commute_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/fulltwist-commute-sigma1--a4d30ab68dca41a02cff4d3a.md) | 65 | `result-track:a4d30ab68dca41a02cff4d3a905077782e9b01283496761811318b1ad3326067` |
| 13 | `theorem` | [fullTwist_commute_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/fulltwist-commute-sigma2--0276f3dda50bf3b921aba908.md) | 74 | `result-track:0276f3dda50bf3b921aba908f0fc4baae97e1384f4433e0d1980bb6f3f7764bd` |
| 14 | `theorem` | [fullTwist_central](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/fulltwist-central--65d7c70df896673596afacde.md) | 83 | `result-track:65d7c70df896673596afacdeb3a89ab58496bd222b7351ee6468d18cb79d4de3` |
| 15 | `def` | [upperGenerator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/uppergenerator--643f6a013139221f4a7b6711.md) | 92 | `declaration-track:643f6a013139221f4a7b6711c29ad6e56d629b1b6f223cb78ea14cbe3d65112d` |
| 16 | `def` | [lowerGenerator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/lowergenerator--f2f7436cc725712d58be7d35.md) | 95 | `declaration-track:f2f7436cc725712d58be7d3559b480d5d43f2b1cd4da5e7d4979429755185328` |
| 17 | `theorem` | [matrix_braid_relation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/matrix-braid-relation--59a2d264413daaa429264a75.md) | 98 | `result-track:59a2d264413daaa429264a757bfd1bf606a509644f9cc545fb7a63a6de20295a` |
| 18 | `def` | [generatorMatrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/generatormatrix--507bb201aaef760680892ed1.md) | 108 | `declaration-track:507bb201aaef760680892ed1346fd6d79edf6fbdabf9a0288f82f466b03fcd23` |
| 19 | `theorem` | [matrix_relator_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/matrix-relator-identity--acaf4330ee44bba8a6b359eb.md) | 110 | `result-track:acaf4330ee44bba8a6b359eb6e0b142bb837cabfc3d422b62f072fc285170186` |
| 20 | `def` | [matrixRepresentation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/matrixrepresentation--ae72840676ce9e7fc1937dc4.md) | 120 | `declaration-track:ae72840676ce9e7fc1937dc40cbb03c27e3f386522e620ad2e1d8e9492bf1fe3` |
| 21 | `theorem` | [matrixRepresentation_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/matrixrepresentation-sigma1--bc30003a1da51b16d6cfa299.md) | 123 | `result-track:bc30003a1da51b16d6cfa299b1b4ee3a554411aeebdf5351c8cc450e69e039de` |
| 22 | `theorem` | [matrixRepresentation_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/matrixrepresentation-sigma2--7cd15b6242dd451e110d4d22.md) | 126 | `result-track:7cd15b6242dd451e110d4d22e834e02bafb394d1fa5f4a2517b824891179eddd` |
| 23 | `def` | [generatorExponent](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/generatorexponent--a522bbc2d2bb8627d35192e1.md) | 130 | `declaration-track:a522bbc2d2bb8627d35192e1317357f48522a23a2fb6766fbefc07552ae0be7f` |
| 24 | `theorem` | [exponent_relator_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/exponent-relator-identity--5be255cd5df426353cbe869a.md) | 132 | `result-track:5be255cd5df426353cbe869a030c8e2f0f86a9141bd0e3074767245ee8a3fcd6` |
| 25 | `def` | [exponentHom](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/exponenthom--c773a38b53702ac20dfbacc5.md) | 140 | `declaration-track:c773a38b53702ac20dfbacc5f6b10cb8b822cd66017d9322508c6bde293ce8b3` |
| 26 | `theorem` | [exponentHom_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/exponenthom-sigma1--37cf2c547aabe0f9c06c4bec.md) | 143 | `result-track:37cf2c547aabe0f9c06c4bec7a9ce242e7fdf60a229308e0359b5b5d15bc41e6` |
| 27 | `theorem` | [exponentHom_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/exponenthom-sigma2--50ba89bb8c70749b2aedcf16.md) | 146 | `result-track:50ba89bb8c70749b2aedcf16a45f3ba44fe36375285e13994ab0aee184b8b686` |
| 28 | `def` | [lostBraid](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/lostbraid--a53c8b4f5b74f918889a5a53.md) | 150 | `declaration-track:a53c8b4f5b74f918889a5a5369a27154b6d82a64fcf82e5ef3dc756b337e5550` |
| 29 | `theorem` | [lostBraid_eq_fullTwist_square](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/lostbraid-eq-fulltwist-square--4eeec976b64273fa039cf033.md) | 152 | `result-track:4eeec976b64273fa039cf033eeee480de2e273ddbd531ea93acc55f80880a071` |
| 30 | `theorem` | [lostBraid_central](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/lostbraid-central--849eec22ee3d0e14cf9dac54.md) | 156 | `result-track:849eec22ee3d0e14cf9dac542f724a6dac4ea9e33f5317e1ef1f0db2877daa9d` |
| 31 | `theorem` | [generator_product_matrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/generator-product-matrix--28442a61813a1b8e32f63925.md) | 165 | `result-track:28442a61813a1b8e32f63925bc1b7d37fbdc11d880598dfc27633c5e69c2f3ec` |
| 32 | `theorem` | [generator_product_cube_matrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/generator-product-cube-matrix--d03bcc3114c9264b6d5f66ff.md) | 174 | `result-track:d03bcc3114c9264b6d5f66ff5df1a002968406c29de7158507344e2d724f033b` |
| 33 | `theorem` | [fullTwist_matrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/fulltwist-matrix--a0959d17065dc01fb0977c4d.md) | 182 | `result-track:a0959d17065dc01fb0977c4dc248f25db3ebbe4e9a37f0329af9af125add83e4` |
| 34 | `theorem` | [fullTwist_matrix_ne_one](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/fulltwist-matrix-ne-one--d246043a8084df3e675b1ff1.md) | 187 | `result-track:d246043a8084df3e675b1ff1fa1136db1a0577158c46d26370ca59d22f2a74f9` |
| 35 | `theorem` | [generator_product_sixth](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/generator-product-sixth--7ec0708690495ab7c476ad24.md) | 194 | `result-track:7ec0708690495ab7c476ad246698c9ecf035adad63c8885cb5895a4896fb2530` |
| 36 | `theorem` | [lostBraid_matrix_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/lostbraid-matrix-identity--994c78083cb73cecce9620c9.md) | 202 | `result-track:994c78083cb73cecce9620c9e92a0d34102e9b6d28292016e5cd9ea83baeb7f8` |
| 37 | `theorem` | [lostBraid_exponent](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/lostbraid-exponent--0a404d3225efe188577dff85.md) | 206 | `result-track:0a404d3225efe188577dff85e7292d220b39c728efde63764bee8f9d6290b5d2` |
| 38 | `theorem` | [lostBraid_ne_one](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/lostbraid-ne-one--833e0eacba6c82a941b4579e.md) | 209 | `result-track:833e0eacba6c82a941b4579e9de77a0ecbf7678b039f22145f109a4ab3c2d8f4` |
| 39 | `theorem` | [matrixRepresentation_not_injective](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/matrixrepresentation-not-injective--eb6c4b1328ab881ad9ba76c1.md) | 215 | `result-track:eb6c4b1328ab881ad9ba76c1b9a08c947dbc2750a72cd5b97cd0febc882ccb86` |
| 40 | `theorem` | [beta_mul_lostBraid_ne](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/beta-mul-lostbraid-ne--495b9f79c706a13eb15033ce.md) | 219 | `result-track:495b9f79c706a13eb15033cef1385f28d805369c05f1e813e2989166957e93e6` |
| 41 | `def` | [FactorsThrough](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/factorsthrough--3ed8dcbc784b4d23ea962449.md) | 224 | `declaration-track:3ed8dcbc784b4d23ea96244947c3a0c80c83455a668091edc529a08ef6e59d8c` |
| 42 | `theorem` | [factored_kernel_blindness](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/factored-kernel-blindness--54ccf64a992a875db648df56.md) | 227 | `result-track:54ccf64a992a875db648df56427b8976452a877208283d3257ece802e525f334` |
| 43 | `theorem` | [factored_lostBraid_blindness](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/factored-lostbraid-blindness--bf21092024f016f23947a66a.md) | 233 | `result-track:bf21092024f016f23947a66a99313e151032bbef19360ad2617319b5c6668d08` |
| 44 | `theorem` | [factored_not_injective](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt07/Variantdabaeb7ba60299b5d35bb5133f4341afdee2d12311954439a81b4921a82ea85d.lean/declarations/factored-not-injective--8d386bb2ed2de5871cf840aa.md) | 237 | `result-track:8d386bb2ed2de5871cf840aa032ab802adab056917625b50be21e873a4fde156` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
