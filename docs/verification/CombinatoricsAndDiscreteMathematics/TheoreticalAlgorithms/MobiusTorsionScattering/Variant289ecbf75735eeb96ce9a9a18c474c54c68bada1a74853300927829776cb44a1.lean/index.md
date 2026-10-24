# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MobiusTorsionScattering.Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c80fcd4787a9067b613e67f4e547cfb53cd049e3",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c80fcd4787a9067b613e67f4e547cfb53cd049e3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TorsionStratification](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/torsionstratification--eff85849c434b78fdb377086.md) | 26 | `declaration-track:eff85849c434b78fdb377086793bd45d47421210bfcfe0c0012d42ed30c67ce9` |
| 2 | `theorem` | [all_torsion_iff_exists_exact_divisor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/all-torsion-iff-exists-exact-divisor--9a6a2e8913c2fe6d883f2b9a.md) | 44 | `result-track:9a6a2e8913c2fe6d883f2b9a67e2c010e0c09a3a4bd3aa4059928f3356342ffd` |
| 3 | `theorem` | [exact_torsion_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/exact-torsion-disjoint--4beec58adb5aaf2a6bafd481.md) | 64 | `result-track:4beec58adb5aaf2a6bafd481ccf19144738296d3e1be4b1c920d81c3b7695f98` |
| 4 | `theorem` | [all_torsion_membership_law](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/all-torsion-membership-law--5b4c66ad86d9ae147a83b43a.md) | 76 | `result-track:5b4c66ad86d9ae147a83b43a07d2539f4510dc5907ef19aebb6f37bc972d0a95` |
| 5 | `theorem` | [exact_torsion_membership_law](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/exact-torsion-membership-law--5b3975b6366626d14b3805fa.md) | 82 | `result-track:5b3975b6366626d14b3805faaf36380615a2a454d8bbf6dcbc1a0e63e73ee400` |
| 6 | `theorem` | [identity_in_all_positive_torsion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/identity-in-all-positive-torsion--25bba4e9e2153df2bba2ea65.md) | 89 | `result-track:25bba4e9e2153df2bba2ea651fc0b13fe7e3b6e1af69ebf621937257e8c9739e` |
| 7 | `theorem` | [identity_in_exact_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/identity-in-exact-one--c19f5a15a4cf369a6dc2f656.md) | 97 | `result-track:c19f5a15a4cf369a6dc2f656b02c88393ef39603055ca2a40ec492efdfac3787` |
| 8 | `theorem` | [identity_not_in_exact_ne_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/identity-not-in-exact-ne-one--ae6d5048cf23ee2836c3da28.md) | 104 | `result-track:ae6d5048cf23ee2836c3da2869126d9afe8ed6c9a97d0f3940b1573407a3d433` |
| 9 | `structure` | [MobiusExactProjector](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/mobiusexactprojector--f2c2b3f40e69ad8871e482ac.md) | 119 | `declaration-track:f2c2b3f40e69ad8871e482ac661d169caec229dbc2ea5278dac41d1bbf5ed392` |
| 10 | `theorem` | [mobius_projector_is_exact_order_indicator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/mobius-projector-is-exact-order-indicator--dacf4758a60402e05ca7ddaa.md) | 132 | `result-track:dacf4758a60402e05ca7ddaa7ed25eeaad69784e09ad221e3da1378ce1e0c1ea` |
| 11 | `theorem` | [mobius_projectors_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/mobius-projectors-disjoint--61963d43528cd860520752df.md) | 148 | `result-track:61963d43528cd860520752dfbb30a4643cf1d73af47ca5916f377656e97f10fd` |
| 12 | `theorem` | [projected_identity_exact_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/projected-identity-exact-one--84ffa06dc5414fc664a4c910.md) | 160 | `result-track:84ffa06dc5414fc664a4c9106668149bb817cb66b5cdad650ab8a4a095b69a0d` |
| 13 | `theorem` | [projected_identity_not_exact_ne_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/projected-identity-not-exact-ne-one--9f31b9571d89846f25e14b78.md) | 168 | `result-track:9f31b9571d89846f25e14b78b4f8e5fadd01cab4081534957259294d07beb5b8` |
| 14 | `structure` | [CharacterScatterSurface](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/characterscattersurface--9103199408a3b53a07dfbe99.md) | 183 | `declaration-track:9103199408a3b53a07dfbe99bac73fe0b0bb0e6a45ec5e9635be91dbe966ae13` |
| 15 | `theorem` | [scatter_restricts_to_projected_exact_carrier](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/scatter-restricts-to-projected-exact-carrier--aa1647c6c2f8b081f3b1fb25.md) | 203 | `result-track:aa1647c6c2f8b081f3b1fb2578a3c8ca9a61ca0a2468b8689e8faa70a292910e` |
| 16 | `theorem` | [exact_carrier_membership_iff_exact_torsion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/exact-carrier-membership-iff-exact-torsion--3ddaed34aef285a24d55c18a.md) | 211 | `result-track:3ddaed34aef285a24d55c18ae3fd1ea7ef742cc9b2c934e9541501b4264a404c` |
| 17 | `inductive` | [RealEllipticComponentType](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/realellipticcomponenttype--756ac51348929ec05e8d638d.md) | 229 | `declaration-track:756ac51348929ec05e8d638d2281feaadbec33e62581a96434154904e2d132a4` |
| 18 | `structure` | [RealEllipticTorsionCountSurface](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/realelliptictorsioncountsurface--dd8b4ad2eab4b256713244a9.md) | 237 | `declaration-track:dd8b4ad2eab4b256713244a92ac7755c2f455f28ff4ee8e2801dd73e48c6cd1e` |
| 19 | `def` | [connectedRealEllipticTorsionCountSurface](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/connectedrealelliptictorsioncountsurface--76b4fe878c405d21c7db626e.md) | 250 | `declaration-track:76b4fe878c405d21c7db626eb7437b0ec3825e8f504786180c5c88633f7e3be5` |
| 20 | `def` | [twoComponentRealEllipticTorsionCountSurface](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/twocomponentrealelliptictorsioncountsurface--40e4d40d74c963fd4fd384d5.md) | 266 | `declaration-track:40e4d40d74c963fd4fd384d5e892b9c66325cf814ba40c0b6fb9ea4b8b57da54` |
| 21 | `theorem` | [connected_surface_all_torsion_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/connected-surface-all-torsion-count--a3598a40392e69bbbc608c13.md) | 282 | `result-track:a3598a40392e69bbbc608c13c163383f856f0349ceb6304db9de7ea38304624b` |
| 22 | `theorem` | [two_component_surface_all_torsion_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/two-component-surface-all-torsion-count--858b64163e7b747319afd0e4.md) | 287 | `result-track:858b64163e7b747319afd0e43b2b8373c15bfc79cb3c844e596da8fbd0f45a95` |
| 23 | `theorem` | [connected_surface_has_mobius_inversion_law](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/connected-surface-has-mobius-inversion-law--5f3676069583bc0db20a827e.md) | 293 | `result-track:5f3676069583bc0db20a827e8bbb70fabe5d06ed2721e7272d9d01168722f030` |
| 24 | `theorem` | [connected_surface_has_character_scattering_law](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/connected-surface-has-character-scattering-law--1ad83fa725a1ce331b1e5008.md) | 297 | `result-track:1ad83fa725a1ce331b1e5008dd38f074b76cf69a9f8265fde0d07d2d09394b75` |
| 25 | `theorem` | [connected_surface_has_affine_quotient_law](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/connected-surface-has-affine-quotient-law--960f8ae9364360ec32118969.md) | 301 | `result-track:960f8ae9364360ec321189696edb30689159e3c987a4997d63ed62462d0d9afb` |
| 26 | `theorem` | [two_component_surface_has_mobius_inversion_law](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/two-component-surface-has-mobius-inversion-law--2382e3d844e741b80cdac220.md) | 305 | `result-track:2382e3d844e741b80cdac220e8e305858547d368ac62779146ddfde3993397bf` |
| 27 | `theorem` | [two_component_surface_has_character_scattering_law](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/two-component-surface-has-character-scattering-law--676d9410d435f7929a2cfd66.md) | 309 | `result-track:676d9410d435f7929a2cfd667e5774696785131d5fb93a87781908d6c8dff1f8` |
| 28 | `theorem` | [two_component_surface_has_affine_quotient_law](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Variant289ecbf75735eeb96ce9a9a18c474c54c68bada1a74853300927829776cb44a1.lean/declarations/two-component-surface-has-affine-quotient-law--44c9a294bae6fc5023b29aa3.md) | 313 | `result-track:44c9a294bae6fc5023b29aa3dc6ac02af7844788ff6e01f96519a767976add65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
