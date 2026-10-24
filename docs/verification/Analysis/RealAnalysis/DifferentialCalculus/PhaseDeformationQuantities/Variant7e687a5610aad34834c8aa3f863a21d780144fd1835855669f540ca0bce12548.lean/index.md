# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PhaseDeformationQuantities.Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "072bd8093642a9de5f3c5c7fc16e025d0ce95e0e",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `072bd8093642a9de5f3c5c7fc16e025d0ce95e0e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimeSquareEstimate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [has_deriv_at_chi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/has-deriv-at-chi--7cbb4df0311823e5cebe6894.md) | 37 | `result-track:7cbb4df0311823e5cebe689435213b36c29e4c1b2bf61ebbd820f54344775213` |
| 2 | `theorem` | [deriv_chi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/deriv-chi--524b4b5dc5459665d628af91.md) | 46 | `result-track:524b4b5dc5459665d628af91c94907f49330c5cdc08cdd374e46b8b71abf0d9e` |
| 3 | `theorem` | [deriv_chi_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/deriv-chi-zero--c5a0cda2ddcbb0c76bfe381d.md) | 51 | `result-track:c5a0cda2ddcbb0c76bfe381dc383305fbf3389a8d50500ccc2f4b741728fd847` |
| 4 | `theorem` | [deriv_chi_nat_pow_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/deriv-chi-nat-pow-zero--46fad2e458f34143999bebf9.md) | 56 | `result-track:46fad2e458f34143999bebf9ca7e41a8f960c5101adcbfa6b9df00bf077540d2` |
| 5 | `theorem` | [second_deriv_chi_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/second-deriv-chi-zero--cf8c8e64a3fce7e3a4308d88.md) | 63 | `result-track:cf8c8e64a3fce7e3a4308d888fccc268c35090801dd7c4c24dfe693432c85db8` |
| 6 | `def` | [phaseTrace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/phasetrace--cba33e82a2da8e729ef7a4ed.md) | 78 | `declaration-track:cba33e82a2da8e729ef7a4edd3234be5662d5a9cb6397990a13c2b7bfd2cff90` |
| 7 | `def` | [phaseDiscriminant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/phasediscriminant--0ace504cff1a54722703d4ef.md) | 81 | `declaration-track:0ace504cff1a54722703d4ef9be1d0e01cd5f3974a42149134b2a30584cabc04` |
| 8 | `theorem` | [phase_discriminant_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/phase-discriminant-eq--673742a836a37d73046dddb5.md) | 83 | `result-track:673742a836a37d73046dddb5cb9df260a05bdf5c2d94c7a902e7836161e527ee` |
| 9 | `theorem` | [deriv_phase_trace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/deriv-phase-trace--c27a7b232f9ba244405a90bb.md) | 88 | `result-track:c27a7b232f9ba244405a90bbea30dc43b86c2665fed2dcc01914c370e5b1bd99` |
| 10 | `theorem` | [second_deriv_phase_trace_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/second-deriv-phase-trace-zero--69c1f5b4171112a109d38060.md) | 98 | `result-track:69c1f5b4171112a109d380604362839548a4007b63ee741f8db0e6f044e9aecf` |
| 11 | `theorem` | [deriv_phase_discriminant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/deriv-phase-discriminant--0d81029efbba9d97c44ff46e.md) | 109 | `result-track:0d81029efbba9d97c44ff46e43bbd2447453475ac31b7789e9936e773eca83f4` |
| 12 | `theorem` | [second_deriv_phase_discriminant_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/second-deriv-phase-discriminant-zero--bb57478e4aecd9df25201022.md) | 121 | `result-track:bb57478e4aecd9df25201022596582f303472d35a95409d44a0d8205c6fee835` |
| 13 | `theorem` | [single_defect_square_eq_neg_discriminant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/single-defect-square-eq-neg-discriminant--4902f76b492406cdaf904f6a.md) | 143 | `result-track:4902f76b492406cdaf904f6a5b1b663c86daaf3490629298cfb58e217961bf46` |
| 14 | `theorem` | [phase_discriminant_square](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/phase-discriminant-square--844c8de8592a1d76e6607039.md) | 151 | `result-track:844c8de8592a1d76e66070398f3a48a1410092ffdf2de1b71b4a56ffe425952b` |
| 15 | `theorem` | [prime_square_defect_eq_neg_discriminant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/prime-square-defect-eq-neg-discriminant--e8bbc87b8bc092b41519a8f4.md) | 160 | `result-track:e8bbc87b8bc092b41519a8f403c830117572977a68bf8da54386d5a757316484` |
| 16 | `def` | [singleDefectDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/singledefectderivative--a1ff4ec6d811d478c5413c7c.md) | 166 | `declaration-track:a1ff4ec6d811d478c5413c7cdfc93e80e46ac7676ae2b36de5ae1117a72a0519` |
| 17 | `theorem` | [has_deriv_at_single_defect](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/has-deriv-at-single-defect--434c854bc484860261e9df26.md) | 169 | `result-track:434c854bc484860261e9df26646d19dd15d062027c4100c93918fb381e982a26` |
| 18 | `theorem` | [has_deriv_at_single_defect_derivative_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/has-deriv-at-single-defect-derivative-zero--d67fcbd15e1dcaf3c18a90b9.md) | 180 | `result-track:d67fcbd15e1dcaf3c18a90b97e785aca9930e8e7cf99eba7b8b4c63ce62169d4` |
| 19 | `theorem` | [second_deriv_single_defect_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/second-deriv-single-defect-zero--8d6c1a13cced04d6a11c8b50.md) | 188 | `result-track:8d6c1a13cced04d6a11c8b501db76054801b671fcdac1462b68aa844ddf3de2b` |
| 20 | `def` | [finiteDefectDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/finitedefectderivative--efd533b98bdfda6120546941.md) | 197 | `declaration-track:efd533b98bdfda6120546941a905f7022c881973012c6f0ba76615911dd4c970` |
| 21 | `theorem` | [has_deriv_at_phase_defect](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/has-deriv-at-phase-defect--3485547ce1ae1e68095b1bb1.md) | 200 | `result-track:3485547ce1ae1e68095b1bb167b9c85f4e76e6fc8fc46a7ee5d2b05b3a0a6eda` |
| 22 | `theorem` | [second_deriv_phase_defect_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/second-deriv-phase-defect-zero--90dd144973fde3542af6e3af.md) | 205 | `result-track:90dd144973fde3542af6e3af3aa59fadfbdaf543b44e54f56df7b63f294ccd87` |
| 23 | `theorem` | [sqrt_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/sqrt-pow--8c64cb5f4b2712290750f6ff.md) | 220 | `result-track:8c64cb5f4b2712290750f6ffbce6932e79b62c717b7f041474a0d55a7b421a05` |
| 24 | `theorem` | [prime_weight_prime_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/prime-weight-prime-pow--7a3dd51f527d96ab365da9d0.md) | 227 | `result-track:7a3dd51f527d96ab365da9d0c96ae1aae2bdedaecfd74779930172a8fb9b9722` |
| 25 | `theorem` | [weighted_curvature_prime_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/weighted-curvature-prime-pow--1a99cb7738ee157b874676ff.md) | 234 | `result-track:1a99cb7738ee157b874676ffef9d2a05b7fe36be4703ad9a7a6ade864335582a` |
| 26 | `theorem` | [von_mangoldt_prime_square_ne_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/von-mangoldt-prime-square-ne-log--21879a5586a414d0b880d828.md) | 241 | `result-track:21879a5586a414d0b880d828e4f2d8a16e7708f96956d587a7d331e81718d7f2` |
| 27 | `def` | [primeSquareCosinePacket](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/primesquarecosinepacket--4fb89d6634daa72f4b463756.md) | 251 | `declaration-track:4fb89d6634daa72f4b463756d7710dabcde752a1acf34bd2e2178b92e4137e30` |
| 28 | `def` | [cutoffPrimeSquareCosinePacket](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/cutoffprimesquarecosinepacket--53e4bdf20395dece256d9594.md) | 256 | `declaration-track:53e4bdf20395dece256d9594d2a8f6ff7e1d44f2fa4fad9baaaee2699ee99d6e` |
| 29 | `theorem` | [cutoff_prime_square_cosine_packet_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/cutoff-prime-square-cosine-packet-eq--2f05b3f09e000cb43c59996d.md) | 262 | `result-track:2f05b3f09e000cb43c59996d349f63b8124b2f2c500e8676c7adb6b63c5b3b1c` |
| 30 | `theorem` | [prime_square_cosine_packet_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/prime-square-cosine-packet-eq--39bcf6ba5cfc48ff6b5bc1cc.md) | 267 | `result-track:39bcf6ba5cfc48ff6b5bc1cc9aabc1918ced21c57b7c5f5200d51489fce43245` |
| 31 | `theorem` | [prime_square_cosine_packet_zero_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/prime-square-cosine-packet-zero-pos--3b0554e0b1b0722a708d8def.md) | 278 | `result-track:3b0554e0b1b0722a708d8def67e733dc124787236dfe2c8d5e7adfd8b29cbb12` |
| 32 | `theorem` | [prime_square_cosine_packet_half_turn_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/prime-square-cosine-packet-half-turn-neg--22ad5857d137fdeab17e5cfc.md) | 287 | `result-track:22ad5857d137fdeab17e5cfc36b193c88f7de56d19aab6d9052d9af65ec17da0` |
| 33 | `theorem` | [signed_prime_square_cosine_packet_eq_discriminant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/signed-prime-square-cosine-packet-eq-discriminant--94b209c4bc09a8565b79492d.md) | 303 | `result-track:94b209c4bc09a8565b79492d54942102f0145a587a5f1891c41ae790daf16ff6` |
| 34 | `theorem` | [second_deriv_prime_square_defect_packet_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/second-deriv-prime-square-defect-packet-zero--0b0f5d9c751a71c8c3a0699b.md) | 312 | `result-track:0b0f5d9c751a71c8c3a0699b577cb0b87064b147b1bbb34c3d1b002a4e77f3b9` |
| 35 | `theorem` | [prime_mem_lower_power_inventory](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/prime-mem-lower-power-inventory--6ce0524d6f0b3b8c5b5c5928.md) | 334 | `result-track:6ce0524d6f0b3b8c5b5c59288a43ec87f4e144d6f93a0543472b1b4e789b89a5` |
| 36 | `theorem` | [prime_square_mem_lower_power_inventory](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/prime-square-mem-lower-power-inventory--bc552aa7b93396f29b237644.md) | 340 | `result-track:bc552aa7b93396f29b2376447517796a2f32980e6d149b3f549dacc910e9454b` |
| 37 | `theorem` | [actual_cutoff_prime_two_packet_zero_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/actual-cutoff-prime-two-packet-zero-pos--a7316fddd8dd04cd89cec8ce.md) | 348 | `result-track:a7316fddd8dd04cd89cec8ce85fcc37068b959fa8224f2b7f8b28650db67d031` |
| 38 | `theorem` | [not_all_prime_square_cosine_packet_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/not-all-prime-square-cosine-packet-nonpos--cf3721be1fac733771848f77.md) | 362 | `result-track:cf3721be1fac733771848f77c88895bbbed8863a9527837f1182ed12889d00b6` |
| 39 | `theorem` | [not_all_prime_square_cosine_packet_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/declarations/not-all-prime-square-cosine-packet-nonneg--3b1d631520a62d06201dd352.md) | 368 | `result-track:3b1d631520a62d06201dd3528cae4e3191b249b1e0f32fa71b7bd70aade19013` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
