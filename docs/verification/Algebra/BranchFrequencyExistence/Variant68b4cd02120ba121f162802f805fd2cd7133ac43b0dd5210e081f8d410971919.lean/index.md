# Verification target: GRWTSK.Algebra.BranchFrequencyExistence.Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f6a74dd8c263025232fa84edb01076723628332",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/index.md) · [Full source](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f6a74dd8c263025232fa84edb01076723628332`.

Source path: `GRWTSK/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.BranchSequenceRealization` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.Computation.ApproximationCorollaries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Compact` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real.Lemmas` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteTail](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/finitetail--bcbbaa2e8af02e9c59f63404.md) | 30 | `declaration-track:bcbbaa2e8af02e9c59f634049469e98071d71e97294b13c1d5c347561a26ffc2` |
| 2 | `theorem` | [finiteTail_bounds](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/finitetail-bounds--463f4bbc9f06f68c623e187c.md) | 35 | `result-track:463f4bbc9f06f68c623e187c818fc0aff1181120389166368d7654ef65765213` |
| 3 | `def` | [tailBox](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/tailbox--e09ff06f7b70c8e02aa679a5.md) | 50 | `declaration-track:e09ff06f7b70c8e02aa679a5d511362ebcd5c38df13e1aec2a537fc94f9cba4d` |
| 4 | `def` | [prefixSet](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/prefixset--49919b4ce1cc592a754f1489.md) | 54 | `declaration-track:49919b4ce1cc592a754f1489d264072adf05fa800347f5ba3d6cadc1793d9eda` |
| 5 | `theorem` | [tailBox_compact](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/tailbox-compact--b4516e0022caa78bebe9317a.md) | 58 | `result-track:b4516e0022caa78bebe9317ac3e66da9ebde54eb3d0395a6557918d37fed23ff` |
| 6 | `theorem` | [tailBox_closed](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/tailbox-closed--4e52c44c51892313de33636b.md) | 62 | `result-track:4e52c44c51892313de33636be67ab4ea0ca4f885e9c0a8356a544c89a7a7d122` |
| 7 | `theorem` | [prefixSet_closed](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/prefixset-closed--034a10a2e2f5fdf83e01f883.md) | 66 | `result-track:034a10a2e2f5fdf83e01f883b34d7056563f9ddab92c00aeed98643b3d84fcde` |
| 8 | `theorem` | [prefixSet_succ_subset](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/prefixset-succ-subset--229dcdfbadc2c89b05d055b0.md) | 80 | `result-track:229dcdfbadc2c89b05d055b0adaf3e7ab2351031c85aee147c862cca7c60cf47` |
| 9 | `def` | [finiteWitness](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/finitewitness--b2f1c493fc41216a9582fb51.md) | 86 | `declaration-track:b2f1c493fc41216a9582fb51e89cbb479b0a49ae042c5710a238fa2bf541191b` |
| 10 | `theorem` | [finiteWitness_mem_box](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/finitewitness-mem-box--1740719cfa71ee128d3f06e6.md) | 89 | `result-track:1740719cfa71ee128d3f06e613bad036fbe58312f14f79f1f31c427138bedd90` |
| 11 | `theorem` | [finiteWitness_recurrence](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/finitewitness-recurrence--b142caeb2b4e0c5fea517dcd.md) | 96 | `result-track:b142caeb2b4e0c5fea517dcdfdb1ecfe86f3c6c6504f983b30a37f2f6f12a5c8` |
| 12 | `theorem` | [prefixSet_nonempty](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/prefixset-nonempty--00474acb9f779aa14243ec2e.md) | 103 | `result-track:00474acb9f779aa14243ec2ee557cadebb7d9356b45b1ff93549bcea068e2c2b` |
| 13 | `theorem` | [prefixSet_zero](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/prefixset-zero--d6d6bd0ffcadf95e9db27379.md) | 115 | `result-track:d6d6bd0ffcadf95e9db273796c80596279a97ac319f91ac6dd496bc40ead5efe` |
| 14 | `theorem` | [exists_complete_quotients](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/exists-complete-quotients--e1eddbf45e7dbec65342c176.md) | 120 | `result-track:e1eddbf45e7dbec65342c17608f6992a430a81aac305c1e0bdf2f9987c32c3cf` |
| 15 | `theorem` | [complete_quotient_recurrence](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/complete-quotient-recurrence--93607e374fe2ec8cb398b6cf.md) | 130 | `result-track:93607e374fe2ec8cb398b6cf94958b2c5ac54fa59de4ed25f8ba8f2e06ff025f` |
| 16 | `theorem` | [complete_quotient_bounds](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/complete-quotient-bounds--64030bd77e65a8ac9929fa0f.md) | 141 | `result-track:64030bd77e65a8ac9929fa0f236171f34225087eab970eeefab703a8a619d8f2` |
| 17 | `theorem` | [complete_quotient_floor](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/complete-quotient-floor--08bdc875e085cf24a4bfec56.md) | 157 | `result-track:08bdc875e085cf24a4bfec56a3e3688d0e7f3f1cefdb7db171182f3713f46a9b` |
| 18 | `theorem` | [complete_quotient_fract](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/complete-quotient-fract--41a742857bef029b8c1abdeb.md) | 166 | `result-track:41a742857bef029b8c1abdebc785b84fd7366c70f6dc78caa257209a0281f51e` |
| 19 | `theorem` | [complete_quotient_pair](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/complete-quotient-pair--f487de64a9bc454429458378.md) | 175 | `result-track:f487de64a9bc454429458378d945abfb8967c709a14f4860f520ca32d10498d3` |
| 20 | `theorem` | [complete_quotient_stream](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/complete-quotient-stream--a31333838f7f40d1049cc103.md) | 183 | `result-track:a31333838f7f40d1049cc1032e0fcba9e4332eb9d7ff54e16cac4c6a4eaee597` |
| 21 | `theorem` | [reciprocal_frequency_bounds](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/reciprocal-frequency-bounds--016eea3a3e6ba800c2a09c2d.md) | 197 | `result-track:016eea3a3e6ba800c2a09c2d2b62549bcf6294b54adc3f096763bffe3012ac6e` |
| 22 | `theorem` | [reciprocal_frequency_realization](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/reciprocal-frequency-realization--11c59feb96f9505294dee7bc.md) | 207 | `result-track:11c59feb96f9505294dee7bced7a9c5cb7237fdf46edf7b5a4c8a5c8eebefb67` |
| 23 | `theorem` | [exists_frequency_realization](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/exists-frequency-realization--5aa79cc810c0b64acdc9e818.md) | 227 | `result-track:5aa79cc810c0b64acdc9e818d05739c1cd44f639076b046634c34292a7d79ead` |
| 24 | `theorem` | [frequency_realization_unique](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/frequency-realization-unique--194c6e71677b955403ab3cce.md) | 235 | `result-track:194c6e71677b955403ab3cce181845e53405a4a1ded679a0848f6b0e1d2d8b81` |
| 25 | `def` | [realizedFrequency](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/realizedfrequency--c42407ccbdec41bdf13c40e7.md) | 244 | `declaration-track:c42407ccbdec41bdf13c40e774872b03a61536a84f3f0571cfa8dc88e2c2cacd` |
| 26 | `theorem` | [realizedFrequency_bounds](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/realizedfrequency-bounds--e1442809f0774877d034dab9.md) | 248 | `result-track:e1442809f0774877d034dab98b21e3ef5f7875d2cf92faa0256ce18080568852` |
| 27 | `theorem` | [realizedFrequency_realization](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/realizedfrequency-realization--9b9e16ea1a74018109bafeaa.md) | 254 | `result-track:9b9e16ea1a74018109bafeaab4c629750b3f256777d02e7e39e74391dca4442a` |
| 28 | `theorem` | [realizedFrequency_irrational](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/realizedfrequency-irrational--d5a2d9a134647482001222e5.md) | 259 | `result-track:d5a2d9a134647482001222e5ac0ced340a329ae65f0eb3729e96924a4c934956` |
| 29 | `theorem` | [realizedFrequency_eq](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/realizedfrequency-eq--b800b5750f639a91c613ea5c.md) | 264 | `result-track:b800b5750f639a91c613ea5c91bc54860ecc9272b82f4bd0af008379da7b4d75` |
| 30 | `theorem` | [realizedFrequency_convergence](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/realizedfrequency-convergence--181104f43d045dd53bb74183.md) | 269 | `result-track:181104f43d045dd53bb741831cf7821d9893f7f65040c499acd6e63bd6bb4c37` |
| 31 | `def` | [frequencyExponent](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/frequencyexponent--883a9e5cb59b8a44680d3841.md) | 281 | `declaration-track:883a9e5cb59b8a44680d38410942d8153fdf4acc2aeb6e00cfbe7870ee49e9b3` |
| 32 | `theorem` | [native_denominator_readback](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/native-denominator-readback--d7739bc6780eb87b1d34882a.md) | 285 | `result-track:d7739bc6780eb87b1d34882a28385ac14eba6945f396c6ea73e918a8bc6f63ed` |
| 33 | `theorem` | [frequencyExponent_eq](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/frequencyexponent-eq--2004af8f904a6b34d91ca939.md) | 294 | `result-track:2004af8f904a6b34d91ca939d12e2c23c267895ec1c4e6dd509fa2f175c0748a` |
| 34 | `theorem` | [source_frequency_exists](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/source-frequency-exists--d1c5f364625b1fabec411a25.md) | 303 | `result-track:d1c5f364625b1fabec411a257449fd4a8747e31c63707f7c37b3ef1989ba57d3` |
| 35 | `theorem` | [allOnes_frequency_exists](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/allones-frequency-exists--9033d16176c58171de966eea.md) | 309 | `result-track:9033d16176c58171de966eea7555ee8e03a9dc69f69cfe8c0519b3ae7d813ace` |
| 36 | `theorem` | [spike_frequency_exists](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/spike-frequency-exists--7586fb64c89aeb69da09f98e.md) | 319 | `result-track:7586fb64c89aeb69da09f98eff4916adbab233b9d53e9c3d886298a4187e350d` |
| 37 | `theorem` | [selected_spike_frequency_exists](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/selected-spike-frequency-exists--7b6b82b1f167da481d00e08e.md) | 334 | `result-track:7b6b82b1f167da481d00e08e4d55de4822299c19888f8f1432daa0bd92f9dde8` |
| 38 | `theorem` | [prescribed_finite_exponent_exists](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/prescribed-finite-exponent-exists--a85175e1dd873c9fde4acdd9.md) | 343 | `result-track:a85175e1dd873c9fde4acdd9b9132e7a87eea343a153bea0784a36007873a9c3` |
| 39 | `theorem` | [infinite_exponent_exists](../../../../mathematics/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/declarations/infinite-exponent-exists--e54ac2f596f00a42e311eecc.md) | 351 | `result-track:e54ac2f596f00a42e311eecc9cdd7ec64f3f00bc46b5a51d9eca17b1b946cd49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
