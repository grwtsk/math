# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFourTermWitness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee0c19d3b626d8905bbbbc493376edbb8674c88f",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee0c19d3b626d8905bbbbc493376edbb8674c88f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPowerTaylor`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Normed.Module.Convex` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/center--477c7b2275300a31e9483f6d.md) | 31 | `declaration-track:477c7b2275300a31e9483f6d40bd5c8246f0e89b95303f7c7e859947735d46e1` |
| 2 | `lemma` | [center_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/center-norm-le--83d411fe49f37aa6b4fab205.md) | 33 | `result-track:83d411fe49f37aa6b4fab205c1cd7ee597f3552e5895946c83f48461203aeb6a` |
| 3 | `lemma` | [center_sub_one_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/center-sub-one-norm-le--6971e98965ccab4418cf7437.md) | 36 | `result-track:6971e98965ccab4418cf7437aa74468cd3744bb6e51fd0e7feccc4b84ec01e94` |
| 4 | `lemma` | [norm_le_of_coordinate_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/norm-le-of-coordinate-sum--f4d6b0b99fb490eb96f9f280.md) | 40 | `result-track:f4d6b0b99fb490eb96f9f280c20baacf0e437437384354e12c34bc5bfa2e0d88` |
| 5 | `lemma` | [log_three_halves_enclosed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/log-three-halves-enclosed--552b7bb247cdf06a426cc52c.md) | 46 | `result-track:552b7bb247cdf06a426cc52c46beb7474eb1fde41f8f0ea6271a8fa227c7786e` |
| 6 | `lemma` | [log_three_enclosed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/log-three-enclosed--38f10fdd443d4f8a53ee0f7e.md) | 53 | `result-track:38f10fdd443d4f8a53ee0f7e821e483b385ee4bf27d6c6e92cdc16599c174acd` |
| 7 | `lemma` | [log_four_enclosed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/log-four-enclosed--1e55ecccd359a96580b5064e.md) | 69 | `result-track:1e55ecccd359a96580b5064e6d032bd2133df278affa2c3fe89c2992c0d9d244` |
| 8 | `lemma` | [rounded_negative_power](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/rounded-negative-power--e9ed396e5ca56d341529805a.md) | 76 | `result-track:e9ed396e5ca56d341529805a8952d32b4818e408bebb3cf4aa5f17171c22ce85` |
| 9 | `def` | [value](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/value--118c807be1644d58a7dfc408.md) | 104 | `declaration-track:118c807be1644d58a7dfc40811d2d6fa29a015635788499d191b7a25ce47504c` |
| 10 | `lemma` | [power_two_enclosed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/power-two-enclosed--7a2c2b3f17d21bcd3544e7b2.md) | 114 | `result-track:7a2c2b3f17d21bcd3544e7b2ccdfb26557ad5c2557137c193978e093ebbabd4c` |
| 11 | `lemma` | [power_three_enclosed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/power-three-enclosed--cff076c9a73ba4b09d5050b2.md) | 124 | `result-track:cff076c9a73ba4b09d5050b2e5d1ae7de413c9c2e1b55b11e0a235cc029aa3aa` |
| 12 | `lemma` | [power_four_enclosed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/power-four-enclosed--7cbecbdf6b51a44bda08ad33.md) | 134 | `result-track:7cbecbdf6b51a44bda08ad337b7e4bb9864d3ae5e9ec8f849c8d1b665f2b2889` |
| 13 | `lemma` | [all_four_enclosed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/all-four-enclosed--7bb5380f27e30f98ca659909.md) | 143 | `result-track:7bb5380f27e30f98ca659909a390901d88b5515440b49f7d3fbaa0e4b27d9693` |
| 14 | `def` | [enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/enclosure--cbf5b9af4c1c32c4dfac6c4a.md) | 155 | `declaration-track:cbf5b9af4c1c32c4dfac6c4ae00fbc6fc2b54ec766be01709d9f1c8df3b9e7fa` |
| 15 | `lemma` | [indices_four](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/indices-four--6e5ed827650e9c93a86a5787.md) | 171 | `result-track:6e5ed827650e9c93a86a57878e492bf07decc0ef44737fb62694888832c2fefa` |
| 16 | `lemma` | [sample_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/sample-eq--05ecfd6da095e017dbb4ef2d.md) | 173 | `result-track:05ecfd6da095e017dbb4ef2df57c8737626cbfcb10d39dfb22a4dced401e366e` |
| 17 | `lemma` | [sample_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/sample-lower--cf2b310b45199fedc6e74c62.md) | 178 | `result-track:cf2b310b45199fedc6e74c62ec8203c625a69d647407b592f926015db5af51a1` |
| 18 | `lemma` | [tail_factor_four](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/tail-factor-four--93acfb6b3d7108f7d979e0b9.md) | 183 | `result-track:93acfb6b3d7108f7d979e0b9c4f85ebe5a3b64acf5d0004b04a27c6141859d88` |
| 19 | `lemma` | [source_error_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/source-error-le--49cf0f6d002ab8bf77e904fc.md) | 186 | `result-track:49cf0f6d002ab8bf77e904fc375712252e10f0b6547bb4d866a873a5e6059ea9` |
| 20 | `lemma` | [source_enclosed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/source-enclosed--b92c3f16d14f8efbd83bf3e4.md) | 192 | `result-track:b92c3f16d14f8efbd83bf3e40db1857aaf0e0d4ea1d8669fd75de9b5542f1e11` |
| 21 | `def` | [disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/disk--3828ff2455610d555821955d.md) | 199 | `declaration-track:3828ff2455610d555821955debfc835469f71df1a41b8f7f64392bb4773434e5` |
| 22 | `lemma` | [disk_radius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/disk-radius--8804a3a81ac5b0636527e7ac.md) | 201 | `result-track:8804a3a81ac5b0636527e7ac9eac55c287e9bc1ace721c8733a696d37382f2ef` |
| 23 | `lemma` | [disk_real_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/disk-real-lower--ccda4d32ade44421cf9f206a.md) | 204 | `result-track:ccda4d32ade44421cf9f206aa5de2541de6579c1f788b2974f9ea9daf0453d1e` |
| 24 | `lemma` | [disk_norm_le_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/disk-norm-le-one--7a53470282bbc30f343fbd8c.md) | 210 | `result-track:7a53470282bbc30f343fbd8cce703382401564d7edcd6c699569dc8e9ae04cc9` |
| 25 | `lemma` | [derivative_bound_on_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/derivative-bound-on-disk--74d04feb66a83b776ba04a1d.md) | 217 | `result-track:74d04feb66a83b776ba04a1d26f57ef329c629d273d2f91fd3d02a627b819fc9` |
| 26 | `def` | [patch](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/patch--5ec1352d354ab9ea78722672.md) | 225 | `declaration-track:5ec1352d354ab9ea7872267249cd784ca46f9dadf1dc6680da0041bc067abd6c` |
| 27 | `theorem` | [norm_lower_on_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/norm-lower-on-disk--94e0984f5131b7916d0f53e1.md) | 237 | `result-track:94e0984f5131b7916d0f53e11682f5f53a647ab47234ddaf3445183e6183c26f` |
| 28 | `theorem` | [poleNormalized_nonzero_on_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/polenormalized-nonzero-on-disk--bfdd73d9bfc7d9cc18f551a6.md) | 244 | `result-track:bfdd73d9bfc7d9cc18f551a6d05adf3b1c12843d8660875d01194ebbc4ce8c82` |
| 29 | `def` | [cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/cover--8c5607564ae6636e8e250841.md) | 248 | `declaration-track:8c5607564ae6636e8e250841893e0da2d849cdbc3375cbf5a6139f06138ed9b8` |
| 30 | `theorem` | [noTargetZero_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/notargetzero-disk--f6db0d381c634f33397e1c3b.md) | 255 | `result-track:f6db0d381c634f33397e1c3b94c9790f0122420a4d8e15cf55e83655e8badd6e` |
| 31 | `theorem` | [disk_above_old_seed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/declarations/disk-above-old-seed--ec8c3e90b7b2d88f608c8466.md) | 260 | `result-track:ec8c3e90b7b2d88f608c84665d7a03ee7a0fbdf341a3163569417ae79e5a38cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
