# Verification target: GRWTSK.Analysis.Operator.HolomorphicMultiplierArea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f6b98dd105a5d8265111243d4d66188ef5fbd72",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/HolomorphicMultiplierArea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f6b98dd105a5d8265111243d4d66188ef5fbd72`.

Source path: `GRWTSK/Analysis/Operator/HolomorphicMultiplierArea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/HolomorphicMultiplierArea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicAreaMean`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Operator.HolomorphicMultiplierCircleMixture`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Map` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Restrict` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [areaMeasure](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/areameasure--f5aa79caeeb887a6e6d8fc78.md) | 47 | `declaration-track:f5aa79caeeb887a6e6d8fc781f94632ff95b75e45effb36de257779025a45cb7` |
| 2 | `theorem` | [areaMeasure_map](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/areameasure-map--aac1124b7f2c7edddc4dd083.md) | 51 | `result-track:aac1124b7f2c7edddc4dd083a8001886d5561e645dd6a4c6ac48aa3d7f5e63c0` |
| 3 | `theorem` | [areaMeasure_univ](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/areameasure-univ--065de2b0413c86ef6671a118.md) | 56 | `result-track:065de2b0413c86ef6671a1186392e70bceaa2588f8cff9ecacdbea8ed5408796` |
| 4 | `theorem` | [areaMeasure_singleton](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/areameasure-singleton--2b529e1d0fac165f5164db04.md) | 61 | `result-track:2b529e1d0fac165f5164db04b328e8410232921dc1c69ec9d2ecf3f10dbfca25` |
| 5 | `theorem` | [lintegral_areaMeasure](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/lintegral-areameasure--f30eb381f013b57c0ce514e3.md) | 67 | `result-track:f30eb381f013b57c0ce514e311d55f5d167547f71a3dcb287d49eca9d1d6fdd3` |
| 6 | `theorem` | [energy_area_eq](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/energy-area-eq--857d7ae83c4173df23ea82c6.md) | 75 | `result-track:857d7ae83c4173df23ea82c6d73d6cbd1a57a07048eb18bc3e9b1d72545a94b6` |
| 7 | `theorem` | [window_integral_le_energy](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/window-integral-le-energy--691b6ef25ef6bb07bae233d7.md) | 87 | `result-track:691b6ef25ef6bb07bae233d72e77eb940e476dd2990a0b6abf0eafc118f60032` |
| 8 | `theorem` | [window_energy_bound](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/window-energy-bound--a3f5b7986e3e1e1a13986253.md) | 101 | `result-track:a3f5b7986e3e1e1a139862532386ff0d1d4b6d0b74380aa7e649a1e77eae6288` |
| 9 | `theorem` | [value_zero_of_energy_zero](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/value-zero-of-energy-zero--90500ca7cad734eb3fc6f7c5.md) | 109 | `result-track:90500ca7cad734eb3fc6f7c57c89100b0fbd2d07798f8cf704d97c5d0994ed41` |
| 10 | `theorem` | [ae_value_eq](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/ae-value-eq--30d07474de92ea5ce8628a24.md) | 123 | `result-track:30d07474de92ea5ce8628a24cf02125a1e79d7f0382fcfccb27fcab1da82d2fc` |
| 11 | `theorem` | [aeEqual_area_iff](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/aeequal-area-iff--88a9d9b5ffa062d4f4ae5d6e.md) | 139 | `result-track:88a9d9b5ffa062d4f4ae5d6ee3cf7010f4d9eb27151315543d60db3f360ee8d2` |
| 12 | `def` | [value](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/value--9d1a38348694a5300b5e3dd2.md) | 149 | `declaration-track:9d1a38348694a5300b5e3dd29c82b8906d21e240beea0555a1806f9f10c3c5c0` |
| 13 | `theorem` | [value_classOf](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/value-classof--dd2da5b9851acc108c6e4475.md) | 154 | `result-track:dd2da5b9851acc108c6e4475e56dc8c2252303d2ad5d302a27da0a29c71017a6` |
| 14 | `theorem` | [value_sq_bound](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/value-sq-bound--e86fa724ffbf3bb90dd5fe8b.md) | 160 | `result-track:e86fa724ffbf3bb90dd5fe8be3760f0dec89d20f991900b7ea1ca2a7fe6e7b9e` |
| 15 | `theorem` | [value_norm_bound](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/value-norm-bound--a15ee6ba93e94f089cb733e2.md) | 170 | `result-track:a15ee6ba93e94f089cb733e28a56ced806453b02b894f87cdec400ba13ebe10d` |
| 16 | `def` | [functional](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/functional--aa7306e94d366d4ed68b8acf.md) | 186 | `declaration-track:aa7306e94d366d4ed68b8acf2e24bd2181c56a0f165ba4cbc63bcf0f2d51df6f` |
| 17 | `theorem` | [functional_classOf](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/functional-classof--c9b4b42d6abaeb4d0287001d.md) | 201 | `result-track:c9b4b42d6abaeb4d0287001d12b98f9fb93c6b53462d6e962cb52b24cac9d8f6` |
| 18 | `theorem` | [functional_norm_le](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/functional-norm-le--cbb53faae8ddce4edc4ee6a3.md) | 206 | `result-track:cbb53faae8ddce4edc4ee6a3824b2aa93a7ee85b83591bcd0ecbd4fcbda263d3` |
| 19 | `theorem` | [functional_congr](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/functional-congr--af15f05952c73c79935de91c.md) | 212 | `result-track:af15f05952c73c79935de91c7907a838f75eaf9a0da6ab46df1d57b28638660c` |
| 20 | `def` | [pointPort](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/pointport--9daccdd3b808d88af317528b.md) | 220 | `declaration-track:9daccdd3b808d88af317528b7ea3a356ceee52b11e7924de19e1385e80476d05` |
| 21 | `def` | [finiteAreaPointPort](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/finiteareapointport--d3fe234fa86657a4b821c1cc.md) | 233 | `declaration-track:d3fe234fa86657a4b821c1cc0497e0947bddeb9d529d5ef3338821f3725620e3` |
| 22 | `def` | [finiteAreaPointPortAt](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/finiteareapointportat--5a5a180ccea622d9529ec7d1.md) | 241 | `declaration-track:5a5a180ccea622d9529ec7d12bb912ddd9a618915c46f554d983a3ed363ec06e` |
| 23 | `theorem` | [area_representation_norm](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/area-representation-norm--fb6a6de799cd247114a5f85f.md) | 248 | `result-track:fb6a6de799cd247114a5f85ff6105261baf800d366d5b6c9bff99dd92e909666` |
| 24 | `def` | [areaRepresentation](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/arearepresentation--a31ecacebe1716a9ac983e6a.md) | 255 | `declaration-track:a31ecacebe1716a9ac983e6addfe8e0224275c3dee3f9eab078294a32eaafa79` |
| 25 | `theorem` | [areaRepresentation_apply](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/arearepresentation-apply--c4bdc63393aad4cac0f136dd.md) | 263 | `result-track:c4bdc63393aad4cac0f136dd84f73c0ca7b82bb8e1af254544a63628b32ce0d5` |
| 26 | `theorem` | [area_representation_closed](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/area-representation-closed--e9ce2f970b14561159668ad4.md) | 269 | `result-track:e9ce2f970b14561159668ad4941595b0ba07f651c8bfd2f1cce789d5f47426de` |
| 27 | `theorem` | [no_positiveAtom](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/no-positiveatom--d27498d69de9bc0cda9dcc37.md) | 276 | `result-track:d27498d69de9bc0cda9dcc3786eaaaefc5be379546d4a3899631bdb6d7b41450` |
| 28 | `theorem` | [unit_not_finite_of_infinite_area](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/unit-not-finite-of-infinite-area--4876d14ed2cf5577912f713b.md) | 286 | `result-track:4876d14ed2cf5577912f713b880b8db88971495838268bc7d8c1ebdd7cfd8872` |
| 29 | `theorem` | [disk_finite_area](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/disk-finite-area--20fbfaeb5354bb616676c126.md) | 298 | `result-track:20fbfaeb5354bb616676c126c250d9b638802bf79bcc4fe8a3962ecd0d65bd60` |
| 30 | `theorem` | [disk_area_norming](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/disk-area-norming--dfda0f518120c0d4906a33af.md) | 305 | `result-track:dfda0f518120c0d4906a33afdf468162b05cb095728219aa639402a98585627c` |
| 31 | `def` | [spike](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/spike--89529c203764450b40691ee2.md) | 315 | `declaration-track:89529c203764450b40691ee29672d8868bf1b7c2baf7de1c4bdeb014112ef035` |
| 32 | `theorem` | [spike_center](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/spike-center--13b893bf79cb4fe671212cb6.md) | 319 | `result-track:13b893bf79cb4fe671212cb6bc6c5fbb7b4665327e9f3f969de39a06d896280a` |
| 33 | `theorem` | [spike_ae_zero](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/spike-ae-zero--d0205872cd2190b12ed2c1d3.md) | 321 | `result-track:d0205872cd2190b12ed2c1d35e8a5be57264b061bb0bf9fe8c8643b77c1240cb` |
| 34 | `theorem` | [spike_not_holomorphic](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/declarations/spike-not-holomorphic--1db56aba65f3b32381d0128b.md) | 329 | `result-track:1db56aba65f3b32381d0128b0690160fa39b4a3d1a498084813abb1a96aa20cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
