# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ba5497bfae010ec99ebd23fcac1724cff8e94a0",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ba5497bfae010ec99ebd23fcac1724cff8e94a0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.SimultaneousProofPortfolio`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PortFiberLocalToGlobal`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicSectionRing`](../../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicEvaluationSpectrum`](../../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationSpectrum.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Topology.Algebra.PrimeSpectrumPort`](../../../../../mathematics/Topology/Algebra/PrimeSpectrumPort.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.AffineSpecPort`](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpecPort.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.AffineStructureSheafPort`](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineStructureSheafPort.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.AnalyticAffineBridge`](../../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineBridge.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OpenObligations](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/openobligations--a6224c0826203ede73cefc88.md) | 19 | `declaration-track:a6224c0826203ede73cefc88405d85ffdd329ce229a876b0f1e67c5b464f2b06` |
| 2 | `def` | [holomorphicSectionRingClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/holomorphicsectionringclaim--8da9bcb15eef6f71633b9aea.md) | 25 | `declaration-track:8da9bcb15eef6f71633b9aea696a55c80d708cc9a4b3ae31dc9b8da1d108037b` |
| 3 | `theorem` | [holomorphicSectionRingClaim_proof](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/holomorphicsectionringclaim-proof--e5113d828c5ec91af6353cf6.md) | 31 | `result-track:e5113d828c5ec91af6353cf69c068befca2f9f48ee6922364ef2432761cb45f7` |
| 4 | `def` | [holomorphicEvaluationSpectrumClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/holomorphicevaluationspectrumclaim--b721574657812df61ce4a671.md) | 35 | `declaration-track:b721574657812df61ce4a67160d0659779ec4821b63196035329efe215fc8ac4` |
| 5 | `theorem` | [holomorphicEvaluationSpectrumClaim_proof](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/holomorphicevaluationspectrumclaim-proof--12b30c8dd6d665178ecd0412.md) | 40 | `result-track:12b30c8dd6d665178ecd04122e3c755538ca8c6ef3d06a19339a2482da022e8e` |
| 6 | `def` | [analyticAffineBridgeClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/analyticaffinebridgeclaim--b6a7175fe6a0452c8c75351a.md) | 46 | `declaration-track:b6a7175fe6a0452c8c75351ac273fd0a705cd4e2a3fb6f1c6c6caada3dd0a2bb` |
| 7 | `theorem` | [analyticAffineBridgeClaim_proof](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/analyticaffinebridgeclaim-proof--351a77a4b29a41a43f4bb182.md) | 59 | `result-track:351a77a4b29a41a43f4bb182b1a4058bf19965a6c85ff8599df0fa97aca7cc26` |
| 8 | `def` | [primeSpectrumTopologyClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/primespectrumtopologyclaim--e3c6f1a75ef7585dde9e9e5c.md) | 63 | `declaration-track:e3c6f1a75ef7585dde9e9e5c227ecc9181c8b8d05598f379fdf1a2f56d9b9c7c` |
| 9 | `theorem` | [primeSpectrumTopologyClaim_proof](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/primespectrumtopologyclaim-proof--5bf29c88d752eb7f81a41dfa.md) | 69 | `result-track:5bf29c88d752eb7f81a41dfa104a3777d3d74f2bc38253c85763f0ef6c1fd5c4` |
| 10 | `def` | [affineSchemeClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/affineschemeclaim--ccbbc1c14222d85267d3ffcb.md) | 73 | `declaration-track:ccbbc1c14222d85267d3ffcb37d95d4c8c787c69965f3b12d9139787d56305ca` |
| 11 | `theorem` | [affineSchemeClaim_proof](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/affineschemeclaim-proof--4a97bae45ea7bf9ac9d7a5ae.md) | 79 | `result-track:4a97bae45ea7bf9ac9d7a5ae1fb783facb8f0838befc8fa0fa92c63ae48594ae` |
| 12 | `def` | [affineGlobalSectionsClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/affineglobalsectionsclaim--3e12ff8bb00ad07ae832430f.md) | 84 | `declaration-track:3e12ff8bb00ad07ae832430fffd096ef9d916d5e31d7e579a0123981bb42c455` |
| 13 | `theorem` | [affineGlobalSectionsClaim_proof](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/affineglobalsectionsclaim-proof--ece0f2057ee84b3685ba0eca.md) | 93 | `result-track:ece0f2057ee84b3685ba0eca49450174264aba29c3a0ec18c2aff5fbe78af7ea` |
| 14 | `def` | [affineStalkLocalityClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/affinestalklocalityclaim--025a64699b2d063a0b40e310.md) | 97 | `declaration-track:025a64699b2d063a0b40e3101ed834f026f1a0f904c727304a0386eddd38c291` |
| 15 | `theorem` | [affineStalkLocalityClaim_proof](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/affinestalklocalityclaim-proof--85dadbd4fa5b41c7ba042e7b.md) | 105 | `result-track:85dadbd4fa5b41c7ba042e7bee5fd0f629ddac6dc110e2fd627027f04f100f4d` |
| 16 | `inductive` | [LocalIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/localindex--a55f9b2f461e4921fda2ecd5.md) | 112 | `declaration-track:a55f9b2f461e4921fda2ecd5e23279a86c41de95c9a370fe5ef48b68532eb330` |
| 17 | `def` | [LocalClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/localclaim--dce216597138871985b2b9a4.md) | 129 | `declaration-track:dce216597138871985b2b9a4648862f1096bcf52626f01c2f41695b73d0f556b` |
| 18 | `def` | [localPortfolio](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/localportfolio--ed666b3e4b6e2baa53fc3d11.md) | 145 | `declaration-track:ed666b3e4b6e2baa53fc3d11e262b2b6bb9e75d4d1c4788c721eeec0bd1fb62b` |
| 19 | `def` | [architecture](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/architecture--66c784db11032ab4ec0d35e5.md) | 166 | `declaration-track:66c784db11032ab4ec0d35e5e5afb48e877ff286ab7741c04a29ccf54c0e1043` |
| 20 | `theorem` | [restriction_available](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/restriction-available--f66e4f5a4abbc0e0576c9768.md) | 174 | `result-track:f66e4f5a4abbc0e0576c9768d4397d49983e70aba5d69f8f89ee75198e3ec403` |
| 21 | `theorem` | [holomorphic_section_ring_available](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/holomorphic-section-ring-available--8b99d9ef40099e0084271222.md) | 179 | `result-track:8b99d9ef40099e00842712228c63bbc1e94b71b262ab46ffa16cc72212f1949c` |
| 22 | `theorem` | [holomorphic_evaluation_spectrum_available](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/holomorphic-evaluation-spectrum-available--f9ae1c8334fb70e260529a56.md) | 184 | `result-track:f9ae1c8334fb70e260529a565f769b2e1cbfc4e626d3b15278c37a2a449f20ef` |
| 23 | `theorem` | [analytic_affine_bridge_available](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/analytic-affine-bridge-available--8947cb842b16053b1fe4aeae.md) | 189 | `result-track:8947cb842b16053b1fe4aeaecd5865a67d3d3f03f7437227f32a09a6f56b743b` |
| 24 | `theorem` | [prime_spectrum_topology_available](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/prime-spectrum-topology-available--9d8b4d396de2de79dc857524.md) | 194 | `result-track:9d8b4d396de2de79dc85752462083f917183980ee40eaa7c488ed3b788690e0a` |
| 25 | `theorem` | [affine_scheme_available](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/affine-scheme-available--21d2145f667a1c14360c4a84.md) | 199 | `result-track:21d2145f667a1c14360c4a84c6488e8ed70173ebc8d83e3e3c3b8f9f2426f150` |
| 26 | `theorem` | [affine_global_sections_available](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/affine-global-sections-available--bcea4cd0c109864a228ff5f4.md) | 204 | `result-track:bcea4cd0c109864a228ff5f407a9e56470ba6c20f84daae0e544dfdca51d9034` |
| 27 | `theorem` | [affine_stalk_locality_available](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/affine-stalk-locality-available--a1c25dde95e0050f4efeb691.md) | 209 | `result-track:a1c25dde95e0050f4efeb691aec3cbc3342dcef0c84fd064259e1800ae9cc5b4` |
| 28 | `theorem` | [gluing_available](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/gluing-available--4a592712f5c3b6626df12bb1.md) | 214 | `result-track:4a592712f5c3b6626df12bb1b3a1ce626712472a3006eb63831c627b0efb7006` |
| 29 | `def` | [withArithmeticDisposition](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/witharithmeticdisposition--19c7185ca4e6ebd665602d39.md) | 219 | `declaration-track:19c7185ca4e6ebd665602d39274c2367d522f01259c552565ea867137ce2eed8` |
| 30 | `def` | [withSourceComparisonDisposition](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/withsourcecomparisondisposition--7bc4b57943c43851e3567115.md) | 226 | `declaration-track:7bc4b57943c43851e3567115a040e31ad1ee294cd524f8ee5fdd8eb98e145bf9` |
| 31 | `theorem` | [other_branch_survives_rejected_arithmetic](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/other-branch-survives-rejected-arithmetic--3a9d7f063725e69577507eb9.md) | 233 | `result-track:3a9d7f063725e69577507eb99c2d3527ddff76eb36dc3116521aaddd13ab7f58` |
| 32 | `theorem` | [restriction_survives_rejected_arithmetic](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/restriction-survives-rejected-arithmetic--131cc0fd7c53198250ab34f7.md) | 242 | `result-track:131cc0fd7c53198250ab34f7d94f6a72323eb793f14d35e97fca2a1a36a21f0b` |
| 33 | `theorem` | [holomorphic_ring_survives_rejected_arithmetic](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/holomorphic-ring-survives-rejected-arithmetic--249e294729673220eb12eb7c.md) | 250 | `result-track:249e294729673220eb12eb7cce3ef2af326dad98198f92a3f38d86e4750583cc` |
| 34 | `theorem` | [evaluation_spectrum_survives_rejected_arithmetic](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/evaluation-spectrum-survives-rejected-arithmetic--e50c645c6fa8b58b13f87631.md) | 258 | `result-track:e50c645c6fa8b58b13f8763194980e2a87a19be68ca7760d7d6136710a01d0ac` |
| 35 | `theorem` | [analytic_affine_bridge_survives_rejected_arithmetic](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/analytic-affine-bridge-survives-rejected-arithmetic--ea2dcad2b239defdb05d6f4c.md) | 266 | `result-track:ea2dcad2b239defdb05d6f4c675c91cbcc415397106a85160df9f3c9111bb4e2` |
| 36 | `theorem` | [prime_spectrum_survives_rejected_arithmetic](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/prime-spectrum-survives-rejected-arithmetic--ed619c7dbd16409af490948f.md) | 274 | `result-track:ed619c7dbd16409af490948fbe66ccdf642518e1a914fe4724f3fd45cac69b58` |
| 37 | `theorem` | [affine_scheme_survives_rejected_arithmetic](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/affine-scheme-survives-rejected-arithmetic--1278d2e724530999cf23fba2.md) | 282 | `result-track:1278d2e724530999cf23fba26a7d110c90f9a71b34349c1db1e2edfd6daecc1d` |
| 38 | `theorem` | [affine_global_sections_survives_rejected_arithmetic](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/affine-global-sections-survives-rejected-arithmetic--8688d93cdfd82d8900807cce.md) | 290 | `result-track:8688d93cdfd82d8900807cce331e98f3c7873a64744a54003d3d34a266a9148c` |
| 39 | `theorem` | [affine_stalk_survives_rejected_arithmetic](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/affine-stalk-survives-rejected-arithmetic--79c08f18291215a9e6970708.md) | 298 | `result-track:79c08f18291215a9e6970708a2ea25cb1d39bc35462163ef66c1d2706e1a4333` |
| 40 | `theorem` | [source_comparison_update_preserves_target](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/source-comparison-update-preserves-target--3d8c296ff0cb4008aea14c31.md) | 306 | `result-track:3d8c296ff0cb4008aea14c3163f6974611b42b079e26b96c1ddaddbcebd5b8fe` |
| 41 | `theorem` | [local_survives_hypothetical_rh_refutation](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/local-survives-hypothetical-rh-refutation--d592977270b0c4f330b9f1d9.md) | 312 | `result-track:d592977270b0c4f330b9f1d921fdb4376f44684db81abde67e8893dd2cd3f5e1` |
| 42 | `theorem` | [local_survives_hypothetical_rh_proof](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/declarations/local-survives-hypothetical-rh-proof--d740f6eccfd0debc144263f4.md) | 319 | `result-track:d740f6eccfd0debc144263f4b035aa67bc06824f202093794e0816979d7916db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
