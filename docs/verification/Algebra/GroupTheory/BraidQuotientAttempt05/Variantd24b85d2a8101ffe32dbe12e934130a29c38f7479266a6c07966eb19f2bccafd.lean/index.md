# Verification target: GRWTSK.Algebra.GroupTheory.BraidQuotientAttempt05.Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "668345986739a2f4df06c651dee5ba6fdc05eb85",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `668345986739a2f4df06c651dee5ba6fdc05eb85`.

Source path: `GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.PresentedGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Centralizer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braidRelator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/braidrelator--f33940ea0945d2e96c3a7478.md) | 23 | `declaration-track:f33940ea0945d2e96c3a747881efd98a5f14281b78d63f05521b0376e4318449` |
| 2 | `def` | [braidRelations](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/braidrelations--e9b68bc0cd56465db81f62ad.md) | 27 | `declaration-track:e9b68bc0cd56465db81f62ad64e57e7398e629fccb20abc983ed9c3fb1a107aa` |
| 3 | `abbrev` | [B3](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/b3--f3bfd454bd1fe4856cce417d.md) | 29 | `declaration-track:f3bfd454bd1fe4856cce417d30a9c40f10c64ec70fdd8f6368223dbf770bf791` |
| 4 | `def` | [sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/sigma1--496782847b124ba69810a53d.md) | 31 | `declaration-track:496782847b124ba69810a53d63d38543f82538391cb43e1cfe4e1aedcb8515e5` |
| 5 | `def` | [sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/sigma2--c9aa20fc73a6e9f1ea40c9dd.md) | 33 | `declaration-track:c9aa20fc73a6e9f1ea40c9ddbc39214831de7dc1862eb0fbd5e5ed9193886f7d` |
| 6 | `theorem` | [braid_relation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/braid-relation--b663d5265aa477583dde0f12.md) | 35 | `result-track:b663d5265aa477583dde0f128141b601dc125069335378e2979e1d140b607b35` |
| 7 | `def` | [halfTwist](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/halftwist--119aeade24876b18cb24f19e.md) | 44 | `declaration-track:119aeade24876b18cb24f19e24879015789763ef65c72c9b3d120ce5708f123b` |
| 8 | `def` | [fullTwist](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/fulltwist--168ef9e5cd51fe0a33b59b1e.md) | 47 | `declaration-track:168ef9e5cd51fe0a33b59b1ef061ea8110a829314b42417dc08f69d7f3765d8f` |
| 9 | `theorem` | [halfTwist_swap_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/halftwist-swap-sigma1--cc771142496140e9ba203980.md) | 49 | `result-track:cc771142496140e9ba203980ab1af6fe007cc93ba53bdb06c178b71c93386d81` |
| 10 | `theorem` | [halfTwist_swap_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/halftwist-swap-sigma2--7e790821d9edcc4fb26000dd.md) | 56 | `result-track:7e790821d9edcc4fb26000dd3e56c572f4556b0673e0e059567a699bdd89c213` |
| 11 | `theorem` | [halfTwist_sq](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/halftwist-sq--94feb200dc2eb525be57b2dc.md) | 64 | `result-track:94feb200dc2eb525be57b2dc06a2b7867cb6a48b63605de86c2c2419e7b4bf33` |
| 12 | `theorem` | [fullTwist_commute_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/fulltwist-commute-sigma1--f33447d0cd057df3fefde0dd.md) | 73 | `result-track:f33447d0cd057df3fefde0dd0959064e569b1afe18f4c77ce5ff0150ebbd1bbe` |
| 13 | `theorem` | [fullTwist_commute_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/fulltwist-commute-sigma2--3634c679ba37a6fd98490d17.md) | 82 | `result-track:3634c679ba37a6fd98490d1745f3967dc738c4e583df62e4b6d503ac627cb1dc` |
| 14 | `theorem` | [fullTwist_central](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/fulltwist-central--f437bc5787d43a1b5f83b98f.md) | 91 | `result-track:f437bc5787d43a1b5f83b98f6c2726d652300556a7a1faf7d3a500c72046a04b` |
| 15 | `def` | [upperGenerator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/uppergenerator--8d7342ce6113a1a068b99f94.md) | 100 | `declaration-track:8d7342ce6113a1a068b99f948dfa41e57460c4d899185f1d68d2f3c56cc4ae6a` |
| 16 | `def` | [lowerGenerator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/lowergenerator--f2630ed3935657077aee9097.md) | 103 | `declaration-track:f2630ed3935657077aee90979c1ddbce54ba5c8eb3c96a0641857b700004b966` |
| 17 | `theorem` | [matrix_braid_relation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/matrix-braid-relation--508e3ffb4172a512b5ec0101.md) | 106 | `result-track:508e3ffb4172a512b5ec0101bb853cc8826c46d4dec2c45273f264633b42ed5e` |
| 18 | `def` | [generatorMatrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/generatormatrix--02e6c45346530c43405df993.md) | 116 | `declaration-track:02e6c45346530c43405df993c59bba16c4f9c8d4acd4a7554ff08fb73fccdb1c` |
| 19 | `theorem` | [matrix_relator_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/matrix-relator-identity--13b8b02dacf2168b08804257.md) | 118 | `result-track:13b8b02dacf2168b088042570dde2f80e56f422f8ae6c2355389a097330cfe16` |
| 20 | `def` | [matrixRepresentation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/matrixrepresentation--62dcac7acefc31887cdc0f92.md) | 128 | `declaration-track:62dcac7acefc31887cdc0f925ffc6a0ac43257243814f7e17037173be3a5892d` |
| 21 | `theorem` | [matrixRepresentation_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/matrixrepresentation-sigma1--c377562df3dc4a2b4a814a59.md) | 131 | `result-track:c377562df3dc4a2b4a814a59eff7e8f473cee7d21aaf00c35a9cc901ebdc578b` |
| 22 | `theorem` | [matrixRepresentation_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/matrixrepresentation-sigma2--efe01adceac542e7a0bd43d6.md) | 134 | `result-track:efe01adceac542e7a0bd43d6b6a2699f1c1cddabc18fe256bd76be165b4edec7` |
| 23 | `def` | [generatorExponent](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/generatorexponent--a00ae6f4a9d2e05f42de8cea.md) | 138 | `declaration-track:a00ae6f4a9d2e05f42de8cea38b3636b88ffd0aacfe0a46220af7fef0f9a1afd` |
| 24 | `theorem` | [exponent_relator_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/exponent-relator-identity--6feea1546299637f9adc5ccd.md) | 140 | `result-track:6feea1546299637f9adc5ccdc38da6922b7a8c7f3f3fccc5f6e0ca466eff20fc` |
| 25 | `def` | [exponentHom](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/exponenthom--38a61cd3565b3159e9277407.md) | 148 | `declaration-track:38a61cd3565b3159e92774077388cbd0ff81cf99f2e2aad3aa79b0bf4ed7b0e7` |
| 26 | `theorem` | [exponentHom_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/exponenthom-sigma1--fc9ea0b58cb14c631b8d3ed1.md) | 151 | `result-track:fc9ea0b58cb14c631b8d3ed17c5176bd4adb0ef62466eb90e0f745011aea6846` |
| 27 | `theorem` | [exponentHom_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/exponenthom-sigma2--6fc6da1d7bea42ced48828f5.md) | 154 | `result-track:6fc6da1d7bea42ced48828f5eb836c829d1e21e0fc9950777a369a62eebad02f` |
| 28 | `def` | [lostBraid](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/lostbraid--f70f618f056340ceb2c74640.md) | 158 | `declaration-track:f70f618f056340ceb2c74640699dc641670c47819454267c8ed09cdf57a174d0` |
| 29 | `theorem` | [lostBraid_eq_fullTwist_square](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/lostbraid-eq-fulltwist-square--41569629a200759f7f3cfbfc.md) | 160 | `result-track:41569629a200759f7f3cfbfc634a3f117f211ec050b197563608f1eaf74468b5` |
| 30 | `theorem` | [lostBraid_central](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/lostbraid-central--93ae075fc07664f1ba2d1c13.md) | 164 | `result-track:93ae075fc07664f1ba2d1c13e28618d1c13c8886f1c23a2585e141ed9b20021e` |
| 31 | `theorem` | [generator_product_matrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/generator-product-matrix--b34b2d0c925070917883493b.md) | 173 | `result-track:b34b2d0c925070917883493b0502537fb6c50e167b83f3ad3fd7b2abafefd6ee` |
| 32 | `theorem` | [generator_product_sixth](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/generator-product-sixth--b77d4c00dda469e436c77b10.md) | 181 | `result-track:b77d4c00dda469e436c77b10418d4bf1db80a8d3591bbd92c570f68ccc91253e` |
| 33 | `theorem` | [lostBraid_matrix_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/lostbraid-matrix-identity--033d9d745999f5ecd0b52b9d.md) | 189 | `result-track:033d9d745999f5ecd0b52b9d003b3dfd8b866b22c7b9b7a697599809b37ee543` |
| 34 | `theorem` | [lostBraid_exponent](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/lostbraid-exponent--17b3267f9fc9de178f320af9.md) | 193 | `result-track:17b3267f9fc9de178f320af9ccca21659f4009de7287ccbc5da01a6d190931b0` |
| 35 | `theorem` | [lostBraid_ne_one](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/lostbraid-ne-one--0c28f6a2fe8bddb67ad93b8a.md) | 196 | `result-track:0c28f6a2fe8bddb67ad93b8aeb7527a28a06717d6d7abfbc4530862d28fb526a` |
| 36 | `theorem` | [matrixRepresentation_not_injective](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/matrixrepresentation-not-injective--8357f5a8ca14307d6ec03b22.md) | 202 | `result-track:8357f5a8ca14307d6ec03b22018cdc22ca09bf9ebc4983870ebb8ecbbc92fd67` |
| 37 | `def` | [FactorsThrough](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/factorsthrough--319a656ea00d7172b5538a3a.md) | 207 | `declaration-track:319a656ea00d7172b5538a3a2fd42ce2b525723fc7d8304ceff5efcecf77af73` |
| 38 | `theorem` | [factored_kernel_blindness](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/factored-kernel-blindness--b703eb07f37b097b44248b10.md) | 210 | `result-track:b703eb07f37b097b44248b10fc1a8f21cc662562c8fef78ad06c3dfefccabaf2` |
| 39 | `theorem` | [factored_lostBraid_blindness](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/factored-lostbraid-blindness--3528f3cba93c521a0276e489.md) | 216 | `result-track:3528f3cba93c521a0276e489fbf72043a85895a666a9c9314e31290d74d342c5` |
| 40 | `theorem` | [factored_not_injective](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/declarations/factored-not-injective--0ba3389575f2c004c3801315.md) | 220 | `result-track:0ba3389575f2c004c3801315083e7d01f5261f7b25838a857e2d68a2166c59b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
