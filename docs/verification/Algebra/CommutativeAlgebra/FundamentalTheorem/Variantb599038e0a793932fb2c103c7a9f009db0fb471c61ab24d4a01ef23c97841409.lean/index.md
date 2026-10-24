# Verification target: GRWTSK.Algebra.CommutativeAlgebra.FundamentalTheorem.Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b63979578d1a8b3a3b4647a95cb3746e0b10afe5",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b63979578d1a8b3a3b4647a95cb3746e0b10afe5`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPolynomial.Symmetric.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Tower` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Notation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.WellFounded` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [accumulate](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/accumulate--b7206962a8fefd83d6a4da03.md) | 70 | `declaration-track:b7206962a8fefd83d6a4da03a949b5a1484204fd32fe2d6cd796985aeae48f27` |
| 2 | `def` | [invAccumulate](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/invaccumulate--8ac32da30f3fcfcb31eea35a.md) | 76 | `declaration-track:8ac32da30f3fcfcb31eea35ae13ecc966e3c3a42d7bce50a65bb116f9c26981a` |
| 3 | `lemma` | [accumulate_rec](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/accumulate-rec--f581bc1054b57b8f49a77f70.md) | 79 | `result-track:f581bc1054b57b8f49a77f7098f1db5b9e790cc87cb420426811e2adaafce896` |
| 4 | `lemma` | [accumulate_last](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/accumulate-last--94c3e5f6eb64d6586687e0db.md) | 89 | `result-track:94c3e5f6eb64d6586687e0dbb0d8ce858ec621bcddfbfd540424a3a96fc868b4` |
| 5 | `lemma` | [accumulate_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/accumulate-injective--ded72d6af1e71733f822a874.md) | 99 | `result-track:ded72d6af1e71733f822a8746763a90a3b3c30af5a92de725ec298955396a54e` |
| 6 | `lemma` | [accumulate_invAccumulate](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/accumulate-invaccumulate--16854d1458055b13594391e6.md) | 108 | `result-track:16854d1458055b13594391e6dc029fb3e1f305a10505855fda570c03c2802020` |
| 7 | `def` | [esymmAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/esymmalghom--a506f959c87d80fb873754a5.md) | 138 | `declaration-track:a506f959c87d80fb873754a5e39c8ce8392d1d2dc816dcd5dec7a7629e646b97` |
| 8 | `lemma` | [esymmAlgHom_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/esymmalghom-apply--c63e4bd35ba8761cfadd8ba0.md) | 142 | `result-track:c63e4bd35ba8761cfadd8ba069c283b28dfc34717a6c26bfb0b6c5a42737a3c6` |
| 9 | `lemma` | [rename_esymmAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/rename-esymmalghom--aba092567bb4135ff6e29877.md) | 146 | `result-track:aba092567bb4135ff6e2987778301fd46d1da99da9eba04d55698afd1c4f6b5e` |
| 10 | `def` | [esymmAlgHomMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/esymmalghommonomial--4761e81dca2a91ca41e1e6a6.md) | 154 | `declaration-track:4761e81dca2a91ca41e1e6a67daa8b074723ceac86389b4c6d72b460f7b5ecaa` |
| 11 | `lemma` | [isSymmetric_esymmAlgHomMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/issymmetric-esymmalghommonomial--cd5f4f1a41fe0524b46b1983.md) | 159 | `result-track:cd5f4f1a41fe0524b46b1983337278ddfd2ab4bb006f939232e2d29ae73b4b40` |
| 12 | `lemma` | [esymmAlgHomMonomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/esymmalghommonomial-single--0b85d80e5486534969a65999.md) | 162 | `result-track:0b85d80e5486534969a659990f41d4982c01bc0b4784a53842a53f5565e080bb` |
| 13 | `lemma` | [esymmAlgHomMonomial_single_one](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/esymmalghommonomial-single-one--80313d28d9c69b2bf501ca59.md) | 168 | `result-track:80313d28d9c69b2bf501ca599c0aeffadb6210b0590aa1ea4f176ccd90c21333` |
| 14 | `lemma` | [esymmAlgHomMonomial_add](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/esymmalghommonomial-add--086dbba0b75b6d3ee1196362.md) | 172 | `result-track:086dbba0b75b6d3ee1196362626195868e4c7fb487527d14194cfe0fe452f7da` |
| 15 | `lemma` | [esymmAlgHom_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/esymmalghom-zero--4fd4fa9832f386bc52036e64.md) | 176 | `result-track:4fd4fa9832f386bc52036e642d90eb3f41fbbd68d6211cd055a0555a4caa5f9a` |
| 16 | `lemma` | [supDegree_monic_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/supdegree-monic-esymm--85cc1dd5319cc806bd07bc74.md) | 179 | `result-track:85cc1dd5319cc806bd07bc7452b9f27904409cea77ca901660dec05128fec870` |
| 17 | `lemma` | [supDegree_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/supdegree-esymm--744632eef772077b381e56c2.md) | 204 | `result-track:744632eef772077b381e56c26b053507cacc4328c42a4e82c520e0e348803dc3` |
| 18 | `lemma` | [monic_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/monic-esymm--072d4f9cec730b3c8452e92e.md) | 211 | `result-track:072d4f9cec730b3c8452e92e3752a6413c9d4a49438da795c8de7194f4dca5d1` |
| 19 | `lemma` | [leadingCoeff_esymmAlgHomMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/leadingcoeff-esymmalghommonomial--82bbd349ec8bee856df97894.md) | 220 | `result-track:82bbd349ec8bee856df97894bf9b48e5c2c7ebc814c833f51c93cae0b246de5f` |
| 20 | `lemma` | [supDegree_esymmAlgHomMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/supdegree-esymmalghommonomial--2b2631a1bd25d2564071785e.md) | 230 | `result-track:2b2631a1bd25d2564071785ea61aa3ab88aab76c671f1cfd4faa389a928d98c6` |
| 21 | `lemma` | [IsSymmetric.antitone_supDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/issymmetric-antitone-supdegree--9c53e91ce69d603e7868a75b.md) | 247 | `result-track:9c53e91ce69d603e7868a75bb20ca646d461303f9fae963e303602201b8a597b` |
| 22 | `lemma` | [esymmAlgHom_fin_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/esymmalghom-fin-injective--c63ca64db3833fc223ab3b57.md) | 277 | `result-track:c63ca64db3833fc223ab3b57e522a36ae3770bd39c06f29e7436377c2d5076fb` |
| 23 | `lemma` | [esymmAlgHom_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/esymmalghom-injective--cfdf41eb58bd94a7f10e4445.md) | 293 | `result-track:cfdf41eb58bd94a7f10e44457d80bfce7c9d9d7b86f7360841038f6b85897b43` |
| 24 | `lemma` | [esymmAlgHom_fin_bijective](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/esymmalghom-fin-bijective--72f9c5b1444ca5642a732358.md) | 298 | `result-track:72f9c5b1444ca5642a73235806d960c82de79b3a272d9c344f5f9516959c3c0d` |
| 25 | `lemma` | [esymmAlgHom_fin_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/esymmalghom-fin-surjective--a3421bd47bdd52b276680be2.md) | 321 | `result-track:a3421bd47bdd52b276680be23c5c996c71822e4510b31165c5ad5bd89d70e702` |
| 26 | `lemma` | [esymmAlgHom_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/esymmalghom-surjective--becfad222d369c578a58d6f5.md) | 336 | `result-track:becfad222d369c578a58d6f579aa6cba810eb6c5dbb0be57ba20b72c03e9c21b` |
| 27 | `def` | [esymmAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/declarations/esymmalgequiv--45f21f684225d63231397e3d.md) | 343 | `declaration-track:45f21f684225d63231397e3d1254c0c3960ab41fd3acbcfe05c41226af434a14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
