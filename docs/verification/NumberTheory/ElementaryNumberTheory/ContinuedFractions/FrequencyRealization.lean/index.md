# Verification target: GRWTSK.NumberTheory.ContinuedFractions.FrequencyRealization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9dfe868ea52027095f1c600ae0983ff6f22db1b4",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ContinuedFractions/FrequencyRealization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9dfe868ea52027095f1c600ae0983ff6f22db1b4`.

Source path: `GRWTSK/NumberTheory/ContinuedFractions/FrequencyRealization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ContinuedFractions/FrequencyRealization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Algebra.ContinuedFractions.Computation.ApproximationCorollaries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Compact` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real.Lemmas` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteTail](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/finitetail--bb30effbaa2ed2c3b4d513c0.md) | 30 | `declaration-track:bb30effbaa2ed2c3b4d513c008c6004b32aa8500c762ba07eaca7c10c87caa59` |
| 2 | `theorem` | [finiteTail_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/finitetail-zero--559127d0d98ae31c0ec7bd35.md) | 34 | `result-track:559127d0d98ae31c0ec7bd35a76b579f643322f0d03d6d5fdfa42bb492434b28` |
| 3 | `theorem` | [finiteTail_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/finitetail-succ--647684873a8d0316e97e3d69.md) | 36 | `result-track:647684873a8d0316e97e3d69f49ae6bf0345689b0a05ecd261b96fe989903056` |
| 4 | `theorem` | [finiteTail_bounds](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/finitetail-bounds--09807b63ce026bdfddec5a99.md) | 40 | `result-track:09807b63ce026bdfddec5a99032ef249e28b947943bba485453994c0be99ece9` |
| 5 | `def` | [tailBox](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/tailbox--8fa8202e2c0c9c35e4183c9a.md) | 55 | `declaration-track:8fa8202e2c0c9c35e4183c9a5bfd6fb016c6c898aa5ce485d7d2ad0b2a79571a` |
| 6 | `def` | [prefixSet](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/prefixset--b8a75d083a4a1b9058807233.md) | 59 | `declaration-track:b8a75d083a4a1b9058807233607a813403b5cd43a1d01d312f55620d54d894fb` |
| 7 | `theorem` | [tailBox_compact](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/tailbox-compact--ac69e08a042024d9cff633a3.md) | 63 | `result-track:ac69e08a042024d9cff633a359d0b641632f40a36c92bfdc85b2e3b4166ac8b6` |
| 8 | `theorem` | [tailBox_closed](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/tailbox-closed--a60db504b0b398e4d69e1713.md) | 67 | `result-track:a60db504b0b398e4d69e1713886a7b7f059b348e05ca1b74dc1addbed22d1082` |
| 9 | `theorem` | [prefixSet_closed](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/prefixset-closed--4492ff8b1473f5c142952205.md) | 71 | `result-track:4492ff8b1473f5c1429522057647a00a3bdd98de07aab1d616589747f3b58673` |
| 10 | `theorem` | [prefixSet_succ_subset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/prefixset-succ-subset--e06ad4e6d423b899e3cd7690.md) | 85 | `result-track:e06ad4e6d423b899e3cd7690aa72273fc18f6365fcbf9673dcf929c10f94d35f` |
| 11 | `def` | [finiteWitness](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/finitewitness--8534e91fee8cf7c14d70b2ea.md) | 91 | `declaration-track:8534e91fee8cf7c14d70b2ea9095fca1b1a3c6a05455f1e84e28a29c2c3d95ee` |
| 12 | `theorem` | [finiteWitness_mem_box](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/finitewitness-mem-box--acec992113f9c2e99d7197b5.md) | 94 | `result-track:acec992113f9c2e99d7197b550a723276968e4e78324d5ed060da88c838448c5` |
| 13 | `theorem` | [finiteWitness_recurrence](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/finitewitness-recurrence--b4d4edeb79c1773f84af106b.md) | 101 | `result-track:b4d4edeb79c1773f84af106b691238742ce10d90323af8659552c4093d741a3b` |
| 14 | `theorem` | [prefixSet_nonempty](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/prefixset-nonempty--5c1db05db66a790c558bc541.md) | 108 | `result-track:5c1db05db66a790c558bc541d847a7cd2a4f540cd3fcc225add204b9e7587d7b` |
| 15 | `theorem` | [prefixSet_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/prefixset-zero--008370abf2a82f1ad01aacf2.md) | 120 | `result-track:008370abf2a82f1ad01aacf21de274c1d1fe39e57eb776cfca2293d6e021c71b` |
| 16 | `theorem` | [exists_complete_quotients](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/exists-complete-quotients--7fba1bc3e819e139cd909dd4.md) | 125 | `result-track:7fba1bc3e819e139cd909dd4291c41445d04bb233739451669e5123ab32057c5` |
| 17 | `theorem` | [complete_quotient_recurrence](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/complete-quotient-recurrence--31c151d4538ef7c23f4e96ae.md) | 135 | `result-track:31c151d4538ef7c23f4e96ae7a91757fb42af3e9594466cbaef7552b52451fd5` |
| 18 | `theorem` | [complete_quotient_bounds](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/complete-quotient-bounds--a117657fc00c2a6e32f0e0b9.md) | 146 | `result-track:a117657fc00c2a6e32f0e0b9bbf7c0acecb33f4bfc34bfc184891bde30eecc3a` |
| 19 | `theorem` | [complete_quotient_floor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/complete-quotient-floor--ee4b80568724b783dd465e38.md) | 162 | `result-track:ee4b80568724b783dd465e3801bd41a26b54647c79c35703e5b685bc47f73349` |
| 20 | `theorem` | [complete_quotient_fract](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/complete-quotient-fract--4adc807f8bdd582b37e15e60.md) | 171 | `result-track:4adc807f8bdd582b37e15e6018a9e491ecf96942d73338682682eb008b5a0340` |
| 21 | `theorem` | [complete_quotient_pair](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/complete-quotient-pair--5d6a6758e134ce54a0c089fb.md) | 180 | `result-track:5d6a6758e134ce54a0c089fb463aa819edc4ce5b2bd693ddb3b35187a358385c` |
| 22 | `theorem` | [complete_quotient_stream](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/complete-quotient-stream--689d6d3d300379347ac0dc31.md) | 188 | `result-track:689d6d3d300379347ac0dc3199cc680031c7c1e4e282e729a69a83924e6ae3dc` |
| 23 | `theorem` | [reciprocal_frequency_bounds](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/reciprocal-frequency-bounds--34f41292dfc0af828219f53b.md) | 202 | `result-track:34f41292dfc0af828219f53bdb3c8a38554e97711ea927d107f246a4e7dd30e1` |
| 24 | `theorem` | [reciprocal_frequency_realization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/reciprocal-frequency-realization--5dffb0daa7a85c6d54b34045.md) | 212 | `result-track:5dffb0daa7a85c6d54b34045305690c28bf68efa83248dec9ab0f4255735adf5` |
| 25 | `theorem` | [exists_frequency_realization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/exists-frequency-realization--5fdc07e4827c091efd562756.md) | 232 | `result-track:5fdc07e4827c091efd562756499d4e84126d3e84aca773fc8135fe55370cc6a5` |
| 26 | `theorem` | [frequency_realization_unique](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/frequency-realization-unique--1e18a963d786b464174517ac.md) | 240 | `result-track:1e18a963d786b464174517ac43d409ff8e43bd8860958f61d1e7b298f8ead12a` |
| 27 | `def` | [realizedFrequency](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/realizedfrequency--c1dbeca6ed05664057450c69.md) | 249 | `declaration-track:c1dbeca6ed05664057450c69527b24a0f1fa365dff0252832a66557cbf70c60f` |
| 28 | `theorem` | [realizedFrequency_bounds](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/realizedfrequency-bounds--aaba45871a20d44a39dfdddb.md) | 253 | `result-track:aaba45871a20d44a39dfdddb9a95ac2cb2884217a3aa881c4fc4bf0a3a595021` |
| 29 | `theorem` | [realizedFrequency_realization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/realizedfrequency-realization--c5412a827836cad20b4d2fb9.md) | 259 | `result-track:c5412a827836cad20b4d2fb9cc896fa1ff057c97e84a4955f4567179102ff038` |
| 30 | `theorem` | [realizedFrequency_irrational](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/realizedfrequency-irrational--94e1d17bcd00e6a18c653393.md) | 264 | `result-track:94e1d17bcd00e6a18c653393286ca23e9d070052abe633d9c6b0ada00ed4b9c3` |
| 31 | `theorem` | [realizedFrequency_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/realizedfrequency-eq--d40123c3d79c2c920dfd7c2b.md) | 269 | `result-track:d40123c3d79c2c920dfd7c2b04577188ea769d6f720f8549bd80296a8bfccc61` |
| 32 | `theorem` | [realizedFrequency_convergence](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/realizedfrequency-convergence--0d5c762953662d2feaf0191c.md) | 274 | `result-track:0d5c762953662d2feaf0191c5f1771f1691e322fd691c35240a5097eee05f21d` |
| 33 | `def` | [frequencyExponent](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/frequencyexponent--aa830c6c12baf5062abfa15f.md) | 286 | `declaration-track:aa830c6c12baf5062abfa15f72e1d5805088915f2c63c8603cd94b72207744fe` |
| 34 | `theorem` | [native_denominator_readback](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/native-denominator-readback--bbf51bc5c2109939c9104dee.md) | 290 | `result-track:bbf51bc5c2109939c9104dee60c066b41bd30b3d4640b2dc314e8641c112ea5e` |
| 35 | `theorem` | [frequencyExponent_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/frequencyexponent-eq--0e34ce3a5088537d2004f5dc.md) | 299 | `result-track:0e34ce3a5088537d2004f5dcb904b5055ee4346c85b3ccd7d088fb6cbb835961` |
| 36 | `theorem` | [source_frequency_exists](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/source-frequency-exists--974b438d5af0eec2c21596f7.md) | 308 | `result-track:974b438d5af0eec2c21596f77204b9ae14b45fed27acadba15d490a8148c057d` |
| 37 | `theorem` | [allOnes_frequency_exists](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/allones-frequency-exists--dfb35296c0f4421d6e6e1343.md) | 314 | `result-track:dfb35296c0f4421d6e6e1343b48db1c4512774ed9a231be4fa58c508a13e77ac` |
| 38 | `theorem` | [spike_frequency_exists](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/spike-frequency-exists--8f47a7b38a37146049e7fbf7.md) | 324 | `result-track:8f47a7b38a37146049e7fbf7ad4d339ba65b576656c2e02e5362634571299021` |
| 39 | `theorem` | [selected_spike_frequency_exists](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/selected-spike-frequency-exists--0c004a5ce1cb401dfd4225f1.md) | 339 | `result-track:0c004a5ce1cb401dfd4225f11084d2c5d46cf44bb152277e03466f08940ac930` |
| 40 | `theorem` | [prescribed_finite_exponent_exists](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/prescribed-finite-exponent-exists--71d05e6b39dc1a6070c7f134.md) | 348 | `result-track:71d05e6b39dc1a6070c7f1342cca009df799dd94f18bf5935f902041c8bb2b20` |
| 41 | `theorem` | [infinite_exponent_exists](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/declarations/infinite-exponent-exists--2a18eecc48461008c8e9a7a5.md) | 356 | `result-track:2a18eecc48461008c8e9a7a52f46e5ae85360b43a0e9e12cbff2f8b1fd595a4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
