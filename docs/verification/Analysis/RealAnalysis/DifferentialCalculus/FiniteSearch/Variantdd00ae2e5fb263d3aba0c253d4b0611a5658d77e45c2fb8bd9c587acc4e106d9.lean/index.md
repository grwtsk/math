# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteSearch.Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d152e686d66d62088ddb803d9f44020e7c3973a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d152e686d66d62088ddb803d9f44020e7c3973a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteFeasibleSet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/finitefeasibleset--2a2779ff7870de0a620d57d8.md) | 14 | `declaration-track:2a2779ff7870de0a620d57d8acb226174ce492c4d69c27ad594cb2753335498a` |
| 2 | `structure` | [FiniteMinimumCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/finiteminimumcertificate--fa1fd3ad0e9f88e4ff6bb840.md) | 21 | `declaration-track:fa1fd3ad0e9f88e4ff6bb8401f401622bdd76d2171f0c12ac8c36f0b11ecb8a3` |
| 3 | `structure` | [StableMinimizerClassCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/stableminimizerclasscertificate--300497ba63a127160d58426c.md) | 27 | `declaration-track:300497ba63a127160d58426c20d32a7f8abea07fbdf36ef504e4c8128bc52ce0` |
| 4 | `structure` | [FiniteSearchWitnessCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/finitesearchwitnesscertificate--5c78b147ea07efa7da1b12c9.md) | 33 | `declaration-track:5c78b147ea07efa7da1b12c9d0106916f311ca0937a3e53d693f114a30b43b95` |
| 5 | `structure` | [FiniteEnergyGapCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/finiteenergygapcertificate--5e4e4606bdf3c4bcefb947ab.md) | 39 | `declaration-track:5e4e4606bdf3c4bcefb947ab628e1168a2991775dec86fee2ba611f9aaec882c` |
| 6 | `structure` | [FiniteWFCProjectionCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/finitewfcprojectioncertificate--980eeb19974853bb9ec2ff5d.md) | 47 | `declaration-track:980eeb19974853bb9ec2ff5d8f7b050c684ea534b49f7f7730187423be75e13a` |
| 7 | `structure` | [FiniteBoundaryCheckerCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/finiteboundarycheckercertificate--278fe5075f87e05d32d67a84.md) | 53 | `declaration-track:278fe5075f87e05d32d67a846ac75a44146a5c1ac2fdd5a9b7dc4a364de997f4` |
| 8 | `structure` | [FiniteResidueWitnessCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/finiteresiduewitnesscertificate--a735351e77c949b37ec75812.md) | 59 | `declaration-track:a735351e77c949b37ec75812b29fca6c2707b0e8a57af1099b17802024b51937` |
| 9 | `structure` | [PrismaticShadowFiniteCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/prismaticshadowfinitecertificate--9d57aeb97fe00af818156479.md) | 65 | `declaration-track:9d57aeb97fe00af818156479100fdf8338d1cf2897828bf9b517e4b1ec8e1656` |
| 10 | `def` | [PrismaticShadowFiniteCertificate.sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/prismaticshadowfinitecertificate-sound--0a8646fc4d8d6421af13496d.md) | 74 | `declaration-track:0a8646fc4d8d6421af13496d5f152b1380e686bdf73bf6056d99d08a0c29cccf` |
| 11 | `theorem` | [finite_nonempty_feasible_set_minimum_exists](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/finite-nonempty-feasible-set-minimum-exists--30998f7cf56161041a203693.md) | 84 | `result-track:30998f7cf56161041a2036938d9be90303b8c5366f60036c612ef94dc89ffaa2` |
| 12 | `theorem` | [finite_one_class_minimizer_stable_class_exists](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/finite-one-class-minimizer-stable-class-exists--6d34c127beb884a41ed48238.md) | 89 | `result-track:6d34c127beb884a41ed48238c876327201e8ee65ac11d77e05bf0d2ef5a51230` |
| 13 | `theorem` | [finite_search_certificate_minimum_energy_witness](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/finite-search-certificate-minimum-energy-witness--1f50e0a86feb641ef0dd46bc.md) | 94 | `result-track:1f50e0a86feb641ef0dd46bc963afe5b267516e8a629064cb4116a9dde055e15` |
| 14 | `theorem` | [finite_class_separation_energy_gap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/finite-class-separation-energy-gap--65b31a0557251d262abfd172.md) | 99 | `result-track:65b31a0557251d262abfd172f2d4439f0243eb2c57446221e672fa86726dd37c` |
| 15 | `theorem` | [finite_wfc_projection_preserves_feasibility](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/finite-wfc-projection-preserves-feasibility--a6fc32fd732006e6d2624f0d.md) | 104 | `result-track:a6fc32fd732006e6d2624f0d0942ea634350d970f8395bbcbe02df832cf254d0` |
| 16 | `theorem` | [finite_boundary_checker_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/finite-boundary-checker-zero--9a87bb36f63aa4e48dde4100.md) | 109 | `result-track:9a87bb36f63aa4e48dde41000f12495c24313df5b8bcda1793e1394a0381f424` |
| 17 | `theorem` | [finite_residue_table_all_witnessed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/finite-residue-table-all-witnessed--7ea852e7b239a4fc0b345039.md) | 114 | `result-track:7ea852e7b239a4fc0b345039bf252301f78616fa82322873f3ea11a632014892` |
| 18 | `theorem` | [prismatic_shadow_finite_certificate_sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/prismatic-shadow-finite-certificate-sound--fe35ad77cac5b2d8157170d3.md) | 119 | `result-track:fe35ad77cac5b2d8157170d3de9ca54154e1bad9172c63aee787f38bb5a09961` |
| 19 | `theorem` | [prismatic_shadow_finite_through_boundary_calculus](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/prismatic-shadow-finite-through-boundary-calculus--0d003ca138105cf88843e323.md) | 131 | `result-track:0d003ca138105cf88843e323878ae1f759787eb3477d733ce61589bdf7b2c0a4` |
| 20 | `def` | [FiniteSearchPayloadOwnsCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/finitesearchpayloadownscertificate--c3fb709d73a5839e2ef8f38a.md) | 137 | `declaration-track:c3fb709d73a5839e2ef8f38a24fb6abdd4967d04055a924a2b3fdb4d3cbb0396` |
| 21 | `theorem` | [finite_search_payload_authority_attempt_fails](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteSearch/Variantdd00ae2e5fb263d3aba0c253d4b0611a5658d77e45c2fb8bd9c587acc4e106d9.lean/declarations/finite-search-payload-authority-attempt-fails--57e5e4526d5876a1eaec99c5.md) | 142 | `result-track:57e5e4526d5876a1eaec99c5a170b9ba381fb9c97b49ff61e5f7b2b57264568c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
