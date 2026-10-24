# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceBoundaryArithmetic.Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59ec5915b8dfee9c21e64d40e8e2eff231e0241c",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59ec5915b8dfee9c21e64d40e8e2eff231e0241c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceBoundaryLayer` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PoleFrontierInvariance` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryDistance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/boundarydistance--2b8c9490f1f9ed08b74f5d80.md) | 41 | `declaration-track:2b8c9490f1f9ed08b74f5d80e9b1fe98db999c02ed4b70a64a997c413b3286bf` |
| 2 | `def` | [fullBoundaryPairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/fullboundarypairing--dd670e9dd9b7ec59a3bf9b2a.md) | 44 | `declaration-track:dd670e9dd9b7ec59a3bf9b2ab33b880a43bbc486a670284d7a4a7e191ff3d796` |
| 3 | `def` | [lowerBoundaryPairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/lowerboundarypairing--e17f0af92f63d5fb8be83c32.md) | 51 | `declaration-track:e17f0af92f63d5fb8be83c3293e3a8275a02920b28f5ac1666515771cdce40a2` |
| 4 | `def` | [finiteBoundaryMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/finiteboundarymeasure--e605022f2fa80c10ed620edd.md) | 58 | `declaration-track:e605022f2fa80c10ed620edd8ce3694bcab5ec6299fe94f86bcbac264ccbc30d` |
| 5 | `def` | [fullBoundaryMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/fullboundarymeasure--f8213d7f6180bcd4060df023.md) | 63 | `declaration-track:f8213d7f6180bcd4060df0231ac04a2e0dfd6c30bafe27cf9a8b5b23bf73e137` |
| 6 | `def` | [lowerBoundaryMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/lowerboundarymeasure--e42fcd6d598c9b427d5add5c.md) | 66 | `declaration-track:e42fcd6d598c9b427d5add5c45bd2419e14fed20e2e19dd0326244d1f1dcd281` |
| 7 | `theorem` | [finite_boundary_measure_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/finite-boundary-measure-integrable--7c31d53f387b90139dc72651.md) | 70 | `result-track:7c31d53f387b90139dc72651aca1cd50ec3dee5ded4d464e6fff2fe72fc72809` |
| 8 | `theorem` | [finite_boundary_measure_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/finite-boundary-measure-integral--c41bcb7eee9b8622027ec410.md) | 78 | `result-track:c41bcb7eee9b8622027ec410ebaba0d6b9ea0ead2b5a9f8f27c02d58c34287e3` |
| 9 | `theorem` | [finite_boundary_measure_integral_scaled](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/finite-boundary-measure-integral-scaled--64eecd6d4a2d9323f036d8e7.md) | 93 | `result-track:64eecd6d4a2d9323f036d8e73a9a6924aa22d1815a6890abd13448e71f281b39` |
| 10 | `theorem` | [finite_boundary_measure_closed_step](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/finite-boundary-measure-closed-step--409a416795557e9274963e1d.md) | 104 | `result-track:409a416795557e9274963e1d4faf73941698b3992abcd37a6c28dec961d21b82` |
| 11 | `theorem` | [full_boundary_pairing_eq_measure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/full-boundary-pairing-eq-measure--8c9604a9d8f59657d2c565ad.md) | 112 | `result-track:8c9604a9d8f59657d2c565ade27b7dda471aa9d3a9faf196f77ac968fc282800` |
| 12 | `theorem` | [lower_boundary_pairing_eq_measure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/lower-boundary-pairing-eq-measure--49c01e0c03f7e31df42fa590.md) | 124 | `result-track:49c01e0c03f7e31df42fa5902fc1ea2e52eeab0880c81a89a090e4b842877c96` |
| 13 | `theorem` | [boundary_distance_eq_log_cutoff_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/boundary-distance-eq-log-cutoff-ratio--1dc8488a6a007709c2b91bed.md) | 136 | `result-track:1dc8488a6a007709c2b91bed0cc2793e720a7c31d73a6949c22dda9d2b9c19f5` |
| 14 | `theorem` | [boundary_distance_pos_of_mem_primeIndices](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/boundary-distance-pos-of-mem-primeindices--e6699b3250122abbfeaaafaa.md) | 143 | `result-track:e6699b3250122abbfeaaafaa88869434183937d747c6c8bd63e190bef6cb8af4` |
| 15 | `theorem` | [boundary_distance_lt_two_mul_of_mem_primeIndices](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/boundary-distance-lt-two-mul-of-mem-primeindices--b428f20475af0748094ea3e4.md) | 153 | `result-track:b428f20475af0748094ea3e442fd838ef02396c66d5997dee86fb70a327101a9` |
| 16 | `theorem` | [boundary_distance_le_cutoff_sub_log_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/boundary-distance-le-cutoff-sub-log-two--c6c552dc6cc5989be9a622d1.md) | 161 | `result-track:c6c552dc6cc5989be9a622d1f72dd1126b238cf434fd53e0b9231dc401f63f06` |
| 17 | `theorem` | [lower_power_boundary_distance_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/lower-power-boundary-distance-bounds--da35615c32a38e9cfdb902fe.md) | 171 | `result-track:da35615c32a38e9cfdb902febc0d26907e2d4d9ee5d80a9dea231f286df66156` |
| 18 | `theorem` | [boundary_distance_prime_power](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/boundary-distance-prime-power--e13928051b700cc906b248c7.md) | 180 | `result-track:e13928051b700cc906b248c7a461c506e0ffa719f8e60a247521d89bc61dfa05` |
| 19 | `theorem` | [boundary_distance_prime](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/boundary-distance-prime--a567fa38ac07e5e69e8a3729.md) | 185 | `result-track:a567fa38ac07e5e69e8a372981d82f0ea6b9ee94775e3a1d27ae4b782f1fa7de` |
| 20 | `theorem` | [boundary_distance_prime_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/boundary-distance-prime-square--6cb87c75b1c85c1ae92a77eb.md) | 189 | `result-track:6cb87c75b1c85c1ae92a77eb1c81c837bb1c096b7b7f3578a0611e53d22fb787` |
| 21 | `theorem` | [correlation_at_log_eq_boundary](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/correlation-at-log-eq-boundary--73eb4b370d14fb0722f5686b.md) | 194 | `result-track:73eb4b370d14fb0722f5686b124408486bf07f6da8f34f612d2edd6ac24ebe8b` |
| 22 | `theorem` | [reciprocal_sqrt_eq_boundary_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/reciprocal-sqrt-eq-boundary-exp--e0ed6d647da21920c37190e2.md) | 203 | `result-track:e0ed6d647da21920c37190e2a2e0c1a479306703bff5c4eae1d6b89406be4480` |
| 23 | `theorem` | [weighted_atom_boundary](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/weighted-atom-boundary--23bd1fc9c7b7bc8fe22c00be.md) | 213 | `result-track:23bd1fc9c7b7bc8fe22c00be6a0cb459552ef6ec982ae474dc46c725f9a94d4a` |
| 24 | `theorem` | [prime_power_contribution_boundary_coordinate_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/prime-power-contribution-boundary-coordinate-exact--399f8c07f62dba3489c269e1.md) | 225 | `result-track:399f8c07f62dba3489c269e1a453b3c72aa126d91c9d4352a86d8b22b0a0e946` |
| 25 | `theorem` | [lower_power_contribution_boundary_coordinate_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/lower-power-contribution-boundary-coordinate-exact--0b4d1e15b53d3ab545716656.md) | 238 | `result-track:0b4d1e15b53d3ab545716656949ecc7db5456da66bff920560df0e644fa6b2c3` |
| 26 | `theorem` | [boundary_continuum_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/boundary-continuum-integrable--e1c7817a5d52e3ed9b9a3119.md) | 253 | `result-track:e1c7817a5d52e3ed9b9a311916a95aebad1bb818c2e548d566a0844008542f3b` |
| 27 | `theorem` | [source_continuum_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/source-continuum-integrable--852877ebb3b4f410ed369d0b.md) | 262 | `result-track:852877ebb3b4f410ed369d0b315f6f94c83a7a76f7ba32986932b4e83f05c138` |
| 28 | `theorem` | [continuum_boundary_coordinate_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/continuum-boundary-coordinate-exact--3342ec7eae05d977f1085ab4.md) | 270 | `result-track:3342ec7eae05d977f1085ab425322ca07eef7a9de11c62dba0042686f21be63e` |
| 29 | `theorem` | [discrepancy_boundary_coordinate_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/discrepancy-boundary-coordinate-exact--b3ec4ecc040819adb910c42f.md) | 291 | `result-track:b3ec4ecc040819adb910c42f601dacbdb745ebfe08440ae61fb72e0d620914e5` |
| 30 | `theorem` | [full_discrepancy_boundary_coordinate_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/full-discrepancy-boundary-coordinate-exact--390d91f85385a74c501303f3.md) | 305 | `result-track:390d91f85385a74c501303f376f41ff3ae0c137598cd7a647d463280b05e2f58` |
| 31 | `theorem` | [full_boundary_pairing_scaled_difference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/full-boundary-pairing-scaled-difference--195a59049f829fad9b7125df.md) | 322 | `result-track:195a59049f829fad9b7125dfee3a2abdc5e02868c69e243e649a922d43807bd2` |
| 32 | `theorem` | [full_boundary_pairing_eq_lower_add_scaled_higher](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/full-boundary-pairing-eq-lower-add-scaled-higher--51df11242cc9d4bece771341.md) | 332 | `result-track:51df11242cc9d4bece77134152142b8d4fabf84067e7081b18817f4de991758b` |
| 33 | `theorem` | [full_boundary_pairing_difference_abs_le_scaled](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/full-boundary-pairing-difference-abs-le-scaled--cba4e4cee7594d11be5d314d.md) | 347 | `result-track:cba4e4cee7594d11be5d314d285a735bb1eecb15d798db837f25c97acbae52ff` |
| 34 | `theorem` | [full_boundary_pairing_scaled_difference_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/declarations/full-boundary-pairing-scaled-difference-abs-le--8db240a5807aca4484846950.md) | 355 | `result-track:8db240a5807aca44848469501ccc4e787269fc7ed60a40782310e2336282b09a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
