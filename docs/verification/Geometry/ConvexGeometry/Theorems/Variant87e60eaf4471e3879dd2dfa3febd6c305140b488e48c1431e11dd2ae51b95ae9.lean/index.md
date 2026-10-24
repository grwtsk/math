# Verification target: GRWTSK.Geometry.ConvexGeometry.Theorems.Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e71bc63e14fde5c59dba00d69060e50df51365f",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e71bc63e14fde5c59dba00d69060e50df51365f`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kakeya.Gauge.Measurement` — import line 1; external provider; requires a separately pinned dependency.
- `Think.Kakeya.Gauge.GammaMeasure` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gauge_nonnegative](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/gauge-nonnegative--40b50941c23c0b658ba98c9e.md) | 35 | `result-track:40b50941c23c0b658ba98c9ef8b46dc00f2e0077e0aca58859ce0cdb7d30d9a8` |
| 2 | `theorem` | [gauge_complement_symmetric](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/gauge-complement-symmetric--e4d82a1a0c28e719b73fab58.md) | 38 | `result-track:e4d82a1a0c28e719b73fab58f7a0883748384e849cd8a0002db744e412e900e0` |
| 3 | `theorem` | [gauge_energy_nonnegative](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/gauge-energy-nonnegative--887d8a9ccaa0d2245d803df4.md) | 41 | `result-track:887d8a9ccaa0d2245d803df453d9c36373f15926a99c32b846497007f05c67b1` |
| 4 | `theorem` | [bounded_error_contains_measurement](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/bounded-error-contains-measurement--f455b30c104921cb78dfd121.md) | 44 | `result-track:f455b30c104921cb78dfd121bd2bd7f53e826594e48e50e617c9e6cd2b011f24` |
| 5 | `theorem` | [exact_eq_implies_k_equal](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/exact-eq-implies-k-equal--ee5d58be399ffee66052525d.md) | 47 | `result-track:ee5d58be399ffee66052525d4758d360bf4db09af231b1a16ca63c612105453f` |
| 6 | `def` | [measured_bounds_transport_exact_eq_to_k](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/measured-bounds-transport-exact-eq-to-k--6e10a2e7e10271d9080df2be.md) | 58 | `declaration-track:6e10a2e7e10271d9080df2bea84562f6c17566e0d85f3d6d919583109d31d838` |
| 7 | `theorem` | [k_residue_heat_nonnegative](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/k-residue-heat-nonnegative--4e754f6df044fb9930e0371d.md) | 61 | `result-track:4e754f6df044fb9930e0371d6acd1e998bc43fdb5340f18031ffb445c9e0c770` |
| 8 | `def` | [k_equal_iff_zero_residue](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/k-equal-iff-zero-residue--e5458a0e14f84baef99d5a35.md) | 69 | `declaration-track:e5458a0e14f84baef99d5a351d11ce2f857d930f0c2fd6bbce7495f07861ff10` |
| 9 | `def` | [complement_maps_lower_to_upper](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/complement-maps-lower-to-upper--a21dac9718facd26e967aa61.md) | 72 | `declaration-track:a21dac9718facd26e967aa6141c45f5facbdc3bb0c54cbdb04d703097db8093d` |
| 10 | `def` | [wedge_k_precise_iff_zero_residue](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/wedge-k-precise-iff-zero-residue--f2d67b134f47c3bbfbae6f41.md) | 75 | `declaration-track:f2d67b134f47c3bbfbae6f4190b11c11bc4c9cc6368f9a580cdfe5fb351f6596` |
| 11 | `theorem` | [bool_and_zero_left](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/bool-and-zero-left--a3ebe76b16537f5f76d9fceb.md) | 78 | `result-track:a3ebe76b16537f5f76d9fceba6560267d1bd7750c6d713bb14de89ee3b1ce334` |
| 12 | `theorem` | [bool_and_zero_right](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/bool-and-zero-right--2a663aa5c14208984ba460e9.md) | 81 | `result-track:2a663aa5c14208984ba460e9420471d1530604c062c28a2c3a9244eee02f232b` |
| 13 | `theorem` | [bool_and_one_one](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/bool-and-one-one--6d6dbda01f126cf5f33cd878.md) | 84 | `result-track:6d6dbda01f126cf5f33cd878f2ce31227f872037b0afb47b70b55acd6e148ad3` |
| 14 | `def` | [boundary_k_precise_iff_zero_residue](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/boundary-k-precise-iff-zero-residue--4366d7e06bc73e60eb52926f.md) | 87 | `declaration-track:4366d7e06bc73e60eb52926fb0e44422d21c9b7d500fe5825e790743881c39f7` |
| 15 | `def` | [boundary_member_k_iff_zero_residue_from_norm_one](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/boundary-member-k-iff-zero-residue-from-norm-one--23f90a17dcab757690a8b942.md) | 90 | `declaration-track:23f90a17dcab757690a8b9427e30a266447d754368c1be9628df34ad73232d7f` |
| 16 | `theorem` | [bool_xor_same_false](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/bool-xor-same-false--38680350e203afc6f4fa6daf.md) | 93 | `result-track:38680350e203afc6f4fa6daf40e7b2dce9ca0b81a36e08c66c21c60a8741e104` |
| 17 | `theorem` | [bool_xor_different_true](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/bool-xor-different-true--04a680e0b2d50d0f27e9d3f1.md) | 96 | `result-track:04a680e0b2d50d0f27e9d3f1422772db77150e4101b4c6a54d46a04c5add196a` |
| 18 | `theorem` | [complement_preserves_bit_boundary](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/complement-preserves-bit-boundary--dfa584764dd739660e964359.md) | 99 | `result-track:dfa584764dd739660e964359df26a49f5b9d661710df03d3c5206dc624374083` |
| 19 | `theorem` | [partial_two_variation_table_0110](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/partial-two-variation-table-0110--4c8b813b0baf5fa804162fce.md) | 102 | `result-track:4c8b813b0baf5fa804162fced637717460b48f26818672db0c1b17cad2ed54ee` |
| 20 | `theorem` | [partial_two_xor_table_0110](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/partial-two-xor-table-0110--9eeb6dc9c0ad7fe6832165a7.md) | 105 | `result-track:9eeb6dc9c0ad7fe6832165a78ae2a286bad856e10eebf24053a7d04c8b6540e7` |
| 21 | `theorem` | [variation_boundary_zero_iff_all_equal](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/variation-boundary-zero-iff-all-equal--7f6c548f8c3ab428eddff14c.md) | 108 | `result-track:7f6c548f8c3ab428eddff14cacf1bce58da4e2f1506ab4e3dc66ddc359da02b3` |
| 22 | `theorem` | [xor_boundary_is_parity](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/xor-boundary-is-parity--599c5335536ebe00ceba94c3.md) | 111 | `result-track:599c5335536ebe00ceba94c3e8f60dc551c123eda2c4bb45bd89bea41de864f0` |
| 23 | `theorem` | [completion_agreement_resolves_boundary](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/completion-agreement-resolves-boundary--b7eca7c0123aa9ecb05c3945.md) | 114 | `result-track:b7eca7c0123aa9ecb05c3945b316ab2992ea64d629dd7b1007f73a0c13490ce4` |
| 24 | `theorem` | [canonK_idempotent](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/canonk-idempotent--d558fd6a124896471423165b.md) | 117 | `result-track:d558fd6a124896471423165bd57e42f4c766842ab9c707105d737a60ce2aa792` |
| 25 | `theorem` | [canonical_encoding_roundtrip](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/canonical-encoding-roundtrip--4ee9baf1b387913bab735d8e.md) | 120 | `result-track:4ee9baf1b387913bab735d8e4a23f6939466d3f1389787c0abe2588e55e94e6f` |
| 26 | `theorem` | [raw_to_qk_not_injective](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/raw-to-qk-not-injective--087e5abb89fc906d160e4e04.md) | 123 | `result-track:087e5abb89fc906d160e4e0473e503d2bcb3647c1e7c5a98760230c8ab178c7e` |
| 27 | `theorem` | [canonical_state_bijection](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/canonical-state-bijection--65b66acfd406ecc15dfe12db.md) | 126 | `result-track:65b66acfd406ecc15dfe12db27b2fc39b0429765afacdcb18df53f3c4a9e3d70` |
| 28 | `def` | [l1_boundary_k_iff_zero_residue](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/l1-boundary-k-iff-zero-residue--154fc4e3be6053af4b790dd8.md) | 129 | `declaration-track:154fc4e3be6053af4b790dd822e4548aa1a2c2f953cea4ee7d56f5501c8d57f7` |
| 29 | `theorem` | [cross_polytope_vertex_count](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/cross-polytope-vertex-count--f4f31bcdf146789d38a815af.md) | 132 | `result-track:f4f31bcdf146789d38a815af772cdcf461957366fec9af983815fb1c007e7d04` |
| 30 | `theorem` | [cross_polytope_strut_count](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/cross-polytope-strut-count--dd10ca428038fa868424494a.md) | 135 | `result-track:dd10ca428038fa868424494aae94f4f6e99458b8b2a32fcc965a19b414d00e84` |
| 31 | `theorem` | [cross_polytope_facet_count](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/cross-polytope-facet-count--5bcc299c283340e5e7c7bcf3.md) | 138 | `result-track:5bcc299c283340e5e7c7bcf31c8d81d040d02c70ea7212405ee5e63f0b97dc48` |
| 32 | `theorem` | [gamma_unit_ball_volume_normalization](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/gamma-unit-ball-volume-normalization--86c2fecc4960bbc460876ae7.md) | 141 | `result-track:86c2fecc4960bbc460876ae7c6573f27b6a272302e30701f33b252f44a36fa5e` |
| 33 | `theorem` | [gamma_unit_sphere_area_normalization](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/gamma-unit-sphere-area-normalization--8d24af2d2386c13f92dc8f2c.md) | 144 | `result-track:8d24af2d2386c13f92dc8f2c796521e5dff7658f29718e1bac3bce5d5b42eb6b` |
| 34 | `theorem` | [k_equal_symmetric](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/k-equal-symmetric--0c2b55615f14e259588fb5c3.md) | 147 | `result-track:0c2b55615f14e259588fb5c30c18d6896a4cb1ae97261d225f36323c0d2f216b` |
| 35 | `theorem` | [lower_upper_complement_symmetric](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/lower-upper-complement-symmetric--15b73eada560cad39680fe44.md) | 150 | `result-track:15b73eada560cad39680fe44c6c22088aa9049d55e1e14bc9c0d38037ad3d66f` |
| 36 | `theorem` | [lower_upper_disjoint_of_eps_lt_half](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/lower-upper-disjoint-of-eps-lt-half--79d16ebbaaa3dfdab48e4e6a.md) | 153 | `result-track:79d16ebbaaa3dfdab48e4e6a060ce6a3a82d6502a35b0a29edb5fb2847fd21f9` |
| 37 | `theorem` | [grey_disjoint_from_lower_of_eps_lt_quarter](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/grey-disjoint-from-lower-of-eps-lt-quarter--641265b87e9cf269c6a7d18b.md) | 156 | `result-track:641265b87e9cf269c6a7d18b81cba870de67f0333b866a96c0bc1eb35e483480` |
| 38 | `theorem` | [grey_disjoint_from_upper_of_eps_lt_quarter](../../../../../mathematics/Geometry/ConvexGeometry/Theorems/Variant87e60eaf4471e3879dd2dfa3febd6c305140b488e48c1431e11dd2ae51b95ae9.lean/declarations/grey-disjoint-from-upper-of-eps-lt-quarter--ac6f6f4c26367384289745fa.md) | 159 | `result-track:ac6f6f4c26367384289745facc6ef2c85186ade603a2eba85c1fb9020a5d781e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
