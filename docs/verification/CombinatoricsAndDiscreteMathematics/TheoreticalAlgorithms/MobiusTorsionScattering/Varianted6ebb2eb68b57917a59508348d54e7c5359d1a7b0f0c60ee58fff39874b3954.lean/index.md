# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MobiusTorsionScattering.Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8262d7ed220ba0aa1a2cab36b61e4fe244783f64",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8262d7ed220ba0aa1a2cab36b61e4fe244783f64`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TorsionStratification](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/torsionstratification--60f36f83d087de0243012008.md) | 18 | `declaration-track:60f36f83d087de024301200800bf7b0ab897628e59b37ba49fbeed040b68b37d` |
| 2 | `theorem` | [all_torsion_iff_exists_exact_divisor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/all-torsion-iff-exists-exact-divisor--cdc709d86e567d883bd9686d.md) | 36 | `result-track:cdc709d86e567d883bd9686d10b39d3b891a0f5a62c16e579d676978d0e4f2bf` |
| 3 | `theorem` | [exact_torsion_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/exact-torsion-disjoint--8cf791226c88f3e415d93f00.md) | 56 | `result-track:8cf791226c88f3e415d93f008f77ab43fcd2f6df40f745f6f208d320aa182cb5` |
| 4 | `theorem` | [all_torsion_membership_law](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/all-torsion-membership-law--2941604f6a8f4a70e1587143.md) | 68 | `result-track:2941604f6a8f4a70e1587143c149fa4ecb3b6d07f95a3549e39708afcbc96b30` |
| 5 | `theorem` | [exact_torsion_membership_law](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/exact-torsion-membership-law--5bc18d61fbab822982a2badd.md) | 74 | `result-track:5bc18d61fbab822982a2badd439eb2f9ea3e627e97f13473924a3c3b6a2baf50` |
| 6 | `theorem` | [identity_in_all_positive_torsion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/identity-in-all-positive-torsion--a7e50bea416e738547a03bfc.md) | 81 | `result-track:a7e50bea416e738547a03bfcae348421cc48225a90e5b24d5c047eb261a7a993` |
| 7 | `theorem` | [identity_in_exact_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/identity-in-exact-one--27389ba13b3d332d678e6404.md) | 89 | `result-track:27389ba13b3d332d678e6404b648cacf1aaea520eb566a978780055582ec6f65` |
| 8 | `theorem` | [identity_not_in_exact_ne_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/identity-not-in-exact-ne-one--fd2ff0f4ba12f247714e444a.md) | 96 | `result-track:fd2ff0f4ba12f247714e444aa7587b01318ff7fc85382340231467ca7d71c0b5` |
| 9 | `structure` | [MobiusExactProjector](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/mobiusexactprojector--866ce5601275e6087662179e.md) | 111 | `declaration-track:866ce5601275e6087662179e901d1d2a3affbd6da014e923fddbb284c6c85e66` |
| 10 | `theorem` | [mobius_projector_is_exact_order_indicator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/mobius-projector-is-exact-order-indicator--f0e01555042cad5ad326c313.md) | 124 | `result-track:f0e01555042cad5ad326c3132b50cbf405ee9a613605f56d671c175934df7405` |
| 11 | `theorem` | [mobius_projectors_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/mobius-projectors-disjoint--48a2b804b9326ce7d07993d8.md) | 140 | `result-track:48a2b804b9326ce7d07993d88178098738f0542589819d358ec18b105c19d01b` |
| 12 | `theorem` | [projected_identity_exact_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/projected-identity-exact-one--d6dee0c7286ba5641204b910.md) | 152 | `result-track:d6dee0c7286ba5641204b9108c6fef492f6a8a2735df8678b2823aa883374e0d` |
| 13 | `theorem` | [projected_identity_not_exact_ne_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/projected-identity-not-exact-ne-one--3531649dde41a94bf8527775.md) | 160 | `result-track:3531649dde41a94bf8527775ddec5f4893fd5572ab13638ef9427d81a3ceae0c` |
| 14 | `structure` | [CharacterScatterSurface](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/characterscattersurface--0aaf02dcb97a74065c59573d.md) | 175 | `declaration-track:0aaf02dcb97a74065c59573deb6059ea17444870836a808a861d6eede83f7a22` |
| 15 | `theorem` | [scatter_restricts_to_projected_exact_carrier](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/scatter-restricts-to-projected-exact-carrier--5384874b29c5639eeb97a53a.md) | 195 | `result-track:5384874b29c5639eeb97a53a56da4828a0737d1886b6fef81487451b4b278b75` |
| 16 | `theorem` | [exact_carrier_membership_iff_exact_torsion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/exact-carrier-membership-iff-exact-torsion--e6e5c7e87597c1f491b97f51.md) | 203 | `result-track:e6e5c7e87597c1f491b97f514fa0a910ccf0439731b5b01ac67e628ad9ee9557` |
| 17 | `inductive` | [RealEllipticComponentType](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/realellipticcomponenttype--00c1089685b8d01fbf633314.md) | 221 | `declaration-track:00c1089685b8d01fbf633314a199b6b6589b665bbb90e8e1d2da4309d97195d1` |
| 18 | `structure` | [RealEllipticTorsionCountSurface](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/realelliptictorsioncountsurface--60af60567f4ca97e0bf9652e.md) | 229 | `declaration-track:60af60567f4ca97e0bf9652e900c10d4f6e98dbe5f9cd73d69b70eb2122b733f` |
| 19 | `def` | [connectedRealEllipticTorsionCountSurface](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/connectedrealelliptictorsioncountsurface--d96119b2b0ec281d43bd93d9.md) | 242 | `declaration-track:d96119b2b0ec281d43bd93d9c902cfffe5d583207f67d822d04d3729d27ba685` |
| 20 | `def` | [twoComponentRealEllipticTorsionCountSurface](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/twocomponentrealelliptictorsioncountsurface--dad43c7706fd556f4790fa9f.md) | 258 | `declaration-track:dad43c7706fd556f4790fa9fbf6b9d89b706081c41ceb5d22740c6462e250eb0` |
| 21 | `theorem` | [connected_surface_all_torsion_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/connected-surface-all-torsion-count--657d94f241c0518b9908139f.md) | 274 | `result-track:657d94f241c0518b9908139fd2ee4590e458b36d932432422c10c13e3c1937de` |
| 22 | `theorem` | [two_component_surface_all_torsion_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/two-component-surface-all-torsion-count--63e13a8c275774b007e86f4f.md) | 279 | `result-track:63e13a8c275774b007e86f4f19d38ac3c98210d1fb3a1c7b85e579cc271a4a75` |
| 23 | `theorem` | [connected_surface_has_mobius_inversion_law](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/connected-surface-has-mobius-inversion-law--48699aa3ec9658c4bed7a5c6.md) | 285 | `result-track:48699aa3ec9658c4bed7a5c696cda8cfc7d1c9e10008252a9320287191061f47` |
| 24 | `theorem` | [connected_surface_has_character_scattering_law](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/connected-surface-has-character-scattering-law--edde6b85a5068ffd3d05089c.md) | 289 | `result-track:edde6b85a5068ffd3d05089cbbfeea0d49dda2ff6cd1b1024abf214691c84430` |
| 25 | `theorem` | [connected_surface_has_affine_quotient_law](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/connected-surface-has-affine-quotient-law--37352e8092347f952e51c28e.md) | 293 | `result-track:37352e8092347f952e51c28e7bec4a88ce0487d637ead720e2a1ff0ed00d305e` |
| 26 | `theorem` | [two_component_surface_has_mobius_inversion_law](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/two-component-surface-has-mobius-inversion-law--505888adecb973c5d1f8dec6.md) | 297 | `result-track:505888adecb973c5d1f8dec63e024935f92afc2ebf47a7571dbddf5596d1fca3` |
| 27 | `theorem` | [two_component_surface_has_character_scattering_law](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/two-component-surface-has-character-scattering-law--ae9832a7f0b1eb776226d6c2.md) | 301 | `result-track:ae9832a7f0b1eb776226d6c28b442bccb9b08843e3bb0700fc495f058a0eebaa` |
| 28 | `theorem` | [two_component_surface_has_affine_quotient_law](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/declarations/two-component-surface-has-affine-quotient-law--5a530bc05aa038532e3d0611.md) | 305 | `result-track:5a530bc05aa038532e3d061137b4c76d44f5a77db60f10806105acfcbd9d3020` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
