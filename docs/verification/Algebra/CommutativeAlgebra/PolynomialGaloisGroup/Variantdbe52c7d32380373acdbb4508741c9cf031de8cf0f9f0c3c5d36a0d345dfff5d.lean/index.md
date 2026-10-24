# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PolynomialGaloisGroup.Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1688d4383f6337c54520d0b343870d96a7f7172e",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1688d4383f6337c54520d0b343870d96a7f7172e`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Polynomial` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Gal](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/gal--d9b68be3c67dcc9db0777528.md) | 63 | `declaration-track:d9b68be3c67dcc9db0777528e4c1461ad54cc325749557b5efcd29f4a3d426a3` |
| 2 | `instance` | [instGroup](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/instgroup--d22c83240c0ecb45342aa69c.md) | 71 | `declaration-track:d22c83240c0ecb45342aa69c0f525f730694e186cddc056d531eb2e18d2feb11` |
| 3 | `instance` | [instFintype](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/instfintype--e66482547e9481d12e302567.md) | 73 | `declaration-track:e66482547e9481d12e3025670f7fe601a87a430ccffc639c8ebdbf1c567f4058` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/instance--ac473d7919a08a2757ba7984.md) | 76 | `declaration-track:ac473d7919a08a2757ba79847351dac27d03208b10d1a7f395495ff0ed0dd40f` |
| 5 | `instance` | [applyMulSemiringAction](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/applymulsemiringaction--a60758bc5f8183bfc630648c.md) | 80 | `declaration-track:a60758bc5f8183bfc630648cb55545eb4022543387dfe3cfb9daa292b9879e94` |
| 6 | `theorem` | [ext](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/ext--efcfaded3cb9015f140f3676.md) | 85 | `result-track:efcfaded3cb9015f140f3676aaf235503cb40eb48aca70a392e4d682b7b9db40` |
| 7 | `def` | [uniqueGalOfSplits](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/uniquegalofsplits--b853bb0d9ade24d3b4d4f4a8.md) | 94 | `declaration-track:b853bb0d9ade24d3b4d4f4a8d3773481cfdc8f2f4efc49d93617eac9b72353d5` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/instance--904339f4ebba38c14ead16da.md) | 104 | `declaration-track:904339f4ebba38c14ead16da8aabcb394b179a907664a8f76fb9e432f50bb8c6` |
| 9 | `instance` | [uniqueGalZero](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/uniquegalzero--ac129b9e88443e4934cca278.md) | 107 | `declaration-track:ac129b9e88443e4934cca2789d58aed53275f612d8f583559a1f48367d8bfb14` |
| 10 | `instance` | [uniqueGalOne](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/uniquegalone--ee7d077ef55be6f892e3067c.md) | 111 | `declaration-track:ee7d077ef55be6f892e3067c4e14225667b0dab9d20d284b04b0a46e6f0a7307` |
| 11 | `instance` | [uniqueGalC](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/uniquegalc--ddaf78c485b11d52b6a9712e.md) | 115 | `declaration-track:ddaf78c485b11d52b6a9712ef56eb521b23cf6dfd18b51251102325727c6d391` |
| 12 | `instance` | [uniqueGalX](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/uniquegalx--b1584aa12b8171a2446d8a8f.md) | 120 | `declaration-track:b1584aa12b8171a2446d8a8f8fbe9aded084609e257726bb5d8adc5a6b2cdcfc` |
| 13 | `instance` | [uniqueGalXSubC](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/uniquegalxsubc--2ef263cf55747c4cb87294ce.md) | 125 | `declaration-track:2ef263cf55747c4cb87294ce71b82e634867ffc11a64fad41fe0632c5202f742` |
| 14 | `instance` | [uniqueGalXPow](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/uniquegalxpow--292b934a75e248c62829fb40.md) | 130 | `declaration-track:292b934a75e248c62829fb400e39a3bfe1043ab91b8b7c5791ea93216cc7be16` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/instance--67d2f4a7976a874877be8341.md) | 135 | `declaration-track:67d2f4a7976a874877be8341fad85a6eb472172216eb12b6239420c17ebf47a9` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/instance--507dda350357fc8f3d643950.md) | 138 | `declaration-track:507dda350357fc8f3d643950b6424fd2148402db5dbb6366eef55afb7d6f6d2a` |
| 17 | `def` | [restrict](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/restrict--05faa8162ecd1ef0e125f230.md) | 149 | `declaration-track:05faa8162ecd1ef0e125f23017743cd2b579b71ac2b0ff9e74ea921cd6feb720` |
| 18 | `theorem` | [restrict_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/restrict-surjective--8f03e171106c1a46d9b3ac79.md) | 153 | `result-track:8f03e171106c1a46d9b3ac79ac66ff0dfbd4e4d3c4508da7f12f107e68076c6c` |
| 19 | `def` | [mapRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/maproots--cb630d151f65cc6176cedd05.md) | 162 | `declaration-track:cb630d151f65cc6176cedd05078837c8797160c0749a3a18bcec8ad185dbd654` |
| 20 | `theorem` | [mapRoots_bijective](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/maproots-bijective--90534287c7ce1c24c3952482.md) | 166 | `result-track:90534287c7ce1c24c3952482a6fe3ae53a5d7b1d4cb9870ffdd21d2a03dc37c0` |
| 21 | `def` | [rootsEquivRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/rootsequivroots--f7797b5e56add9ffa272f850.md) | 183 | `declaration-track:f7797b5e56add9ffa272f85036d8bcaf47920c75c471b121574221fd7e2e52d4` |
| 22 | `instance` | [galActionAux](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/galactionaux--06cab44855a2c4479ce12002.md) | 187 | `declaration-track:06cab44855a2c4479ce12002bdc09572522de44ba8e78c158e29c39c76bb39ba` |
| 23 | `instance` | [smul](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/smul--b3e9855ac4d7574f0863dfd6.md) | 194 | `declaration-track:b3e9855ac4d7574f0863dfd68757a3914cf6fb6c34bd7ad5b93b3c069b0813d8` |
| 24 | `theorem` | [smul_def](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/smul-def--f51afdfceeb52eee70b4b0c5.md) | 198 | `result-track:f51afdfceeb52eee70b4b0c58fd538767926d1083119f91ed7de7ff204664ff7` |
| 25 | `instance` | [galAction](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/galaction--d72e006763cc2ae7f28a957d.md) | 203 | `declaration-track:d72e006763cc2ae7f28a957dfc0a1966dd6103042301673cbcbc143157a7d6e4` |
| 26 | `theorem` | [restrict_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/restrict-smul--d9275f4cda4e918f806ef518.md) | 213 | `result-track:d9275f4cda4e918f806ef518e74b2666a5c84f371d2d0f4614b869870e5572dd` |
| 27 | `def` | [galActionHom](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/galactionhom--867064d6adcc01a043c4a3f9.md) | 225 | `declaration-track:867064d6adcc01a043c4a3f97ef6b436ee139331cf17f16afa2084c949a7aae0` |
| 28 | `theorem` | [galActionHom_restrict](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/galactionhom-restrict--16c45f2bc6ad8a364dfe4ac7.md) | 229 | `result-track:16c45f2bc6ad8a364dfe4ac70302effa3bc478861a5ba9e1c84042712d54e0f6` |
| 29 | `theorem` | [galActionHom_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/galactionhom-injective--a88e78067deee08a261ea7a7.md) | 235 | `result-track:a88e78067deee08a261ea7a7831cf9204f730ebe2a5f32876d08f2c6cb86fbc5` |
| 30 | `def` | [restrictDvd](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/restrictdvd--8d67f469b7232a6ed52e3b6c.md) | 254 | `declaration-track:8d67f469b7232a6ed52e3b6cf0cedd43d391a0f66bcf3408e1d01cf5a59a817a` |
| 31 | `theorem` | [restrictDvd_def](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/restrictdvd-def--dae6d2cdbe72fe4d2e720686.md) | 262 | `result-track:dae6d2cdbe72fe4d2e720686d8271685808a48d7cb1bc4055570c3cbf2382d2d` |
| 32 | `theorem` | [restrictDvd_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/restrictdvd-surjective--e01abd311bf67adf2f4a4d2c.md) | 274 | `result-track:e01abd311bf67adf2f4a4d2c8b5892af0073198c5fc0d54088fe575a051bccdb` |
| 33 | `def` | [restrictProd](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/restrictprod--6c123c0e9dfaa992034118c1.md) | 286 | `declaration-track:6c123c0e9dfaa992034118c190f482124024dbbf7400d3ff39bdcf99779cd712` |
| 34 | `theorem` | [restrictProd_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/restrictprod-injective--c2913483d29b83c9b60363d2.md) | 291 | `result-track:c2913483d29b83c9b60363d2d970906aeb92baff5e17aacbede879ddfbf857e4` |
| 35 | `theorem` | [mul_splits_in_splittingField_of_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/mul-splits-in-splittingfield-of-mul--11afc8bb3b354ab6227ad7da.md) | 325 | `result-track:11afc8bb3b354ab6227ad7da009339d4c3086e27bfd369a83365025161d5d64e` |
| 36 | `theorem` | [splits_in_splittingField_of_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/splits-in-splittingfield-of-comp--9562e587763f2fcf22fa0849.md) | 344 | `result-track:9562e587763f2fcf22fa084925997baa06c94c517d4d1b9b39d41538e31f8ad3` |
| 37 | `def` | [restrictComp](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/restrictcomp--64c16c2a2bf0d3676c82a7c6.md) | 390 | `declaration-track:64c16c2a2bf0d3676c82a7c692d0c86102844c69f4b5aab9a99bb9ce9cd4c3b9` |
| 38 | `theorem` | [restrictComp_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/restrictcomp-surjective--865083f752a57312a2c812f9.md) | 396 | `result-track:865083f752a57312a2c812f97246ab4194b1fc2dfc1db70395baf60a8d5076e3` |
| 39 | `theorem` | [card_of_separable](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/card-of-separable--bce57045d6513c28d1ff7ed7.md) | 410 | `result-track:bce57045d6513c28d1ff7ed74fa5d1e46397b898007a63ceeb5980839e68f7de` |
| 40 | `theorem` | [prime_degree_dvd_card](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/prime-degree-dvd-card--bae9924fe2464b9541f9990b.md) | 415 | `result-track:bae9924fe2464b9541f9990bf360ce1224c07b05fb8434d1f7f9262715b5ce91` |
| 41 | `theorem` | [splits_ℚ_ℂ](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/splits--fec77f916a0ce63e577b1ace.md) | 438 | `result-track:fec77f916a0ce63e577b1ace457de8f82241634a79e8d7372b7f34e839f76a19` |
| 42 | `theorem` | [card_complex_roots_eq_card_real_add_card_not_gal_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/card-complex-roots-eq-card-real-add-card-not-gal-inv--8ca41dcf3440dcee10f3b9ea.md) | 446 | `result-track:8ca41dcf3440dcee10f3b9eaeede39d1fea3369e19085053655c89b61f986391` |
| 43 | `theorem` | [galActionHom_bijective_of_prime_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/galactionhom-bijective-of-prime-degree--90937f696ba804d62b561f2e.md) | 500 | `result-track:90937f696ba804d62b561f2e9f78a6a2b3bae78f184e354aec525ce21e3d77cd` |
| 44 | `theorem` | [galActionHom_bijective_of_prime_degree'](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/declarations/galactionhom-bijective-of-prime-degree--90fe317ca107c08f883a510e.md) | 530 | `result-track:90fe317ca107c08f883a510e26518414149910609c3b19b58f085df5e6f57bc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
