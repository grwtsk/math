# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PolarCoord.Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d97b2c8f2de125fda46237e7a714ffcb93bbd04",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d97b2c8f2de125fda46237e7a714ffcb93bbd04`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.Jacobian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Complex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polarCoord](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/polarcoord--1c4c82c47ebe08f00b759823.md) | 38 | `declaration-track:1c4c82c47ebe08f00b7598232ff8be721041d9d5301b15ada8fbe090c8774e5c` |
| 2 | `theorem` | [continuous_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/continuous-polarcoord-symm--4411df55c1513768e646cbac.md) | 97 | `result-track:4411df55c1513768e646cbac9732b35885a701207bf909bb309147322f00757d` |
| 3 | `def` | [fderivPolarCoordSymm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/fderivpolarcoordsymm--eb3fa164a0b3cf53244c57cd.md) | 102 | `declaration-track:eb3fa164a0b3cf53244c57cda0cb9e2042f441cec81709ab944ac780faa0baac` |
| 4 | `theorem` | [hasFDerivAt_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/hasfderivat-polarcoord-symm--8fcf691a73f53780f6bbab08.md) | 106 | `result-track:8fcf691a73f53780f6bbab0870d557c2ad1de5449bb08432e4d32eee21f7b1c5` |
| 5 | `theorem` | [det_fderivPolarCoordSymm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/det-fderivpolarcoordsymm--224a1f8ee768c90e2096daf4.md) | 115 | `result-track:224a1f8ee768c90e2096daf412b4b113704bf11d23301585e62b47992be62326` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/instance--3029cddc59de4e255aed91b2.md) | 124 | `declaration-track:3029cddc59de4e255aed91b293a86db560f1d7679766a4ae8442e2b5ee3625d5` |
| 7 | `theorem` | [polarCoord_source_ae_eq_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/polarcoord-source-ae-eq-univ--472144d85ad095bce6ad1140.md) | 127 | `result-track:472144d85ad095bce6ad11401005b924f33e30a9b67dd29ee725e34fc0ebeed5` |
| 8 | `theorem` | [integral_comp_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/integral-comp-polarcoord-symm--50db5082d742ad08d8810d5c.md) | 142 | `result-track:50db5082d742ad08d8810d5c24969729f6e3077cbe177642bcdc68094cc043db` |
| 9 | `theorem` | [lintegral_comp_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/lintegral-comp-polarcoord-symm--01896b3880312cabb3464036.md) | 159 | `result-track:01896b3880312cabb3464036ac5f54286ad4cb38ef405d6ee80c7bd265a37bbf` |
| 10 | `def` | [polarCoord](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/polarcoord--833518015d81a8631f48f1d8.md) | 186 | `declaration-track:833518015d81a8631f48f1d8d4299ee41572e5ca0046ce121dd4684d05e861ed` |
| 11 | `theorem` | [polarCoord_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/polarcoord-apply--62ccbc57576d9ae858aa217b.md) | 189 | `result-track:62ccbc57576d9ae858aa217bef5c8b6f946a9de48eda38eb0f734dd43c464644` |
| 12 | `theorem` | [polarCoord_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/polarcoord-source--8803348f967504d455b2da9d.md) | 194 | `result-track:8803348f967504d455b2da9de50563b47c84aa07ce0124a1aaff351bfc5b9bb7` |
| 13 | `theorem` | [polarCoord_target](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/polarcoord-target--f35eccf4a465a5a4df22ea82.md) | 196 | `result-track:f35eccf4a465a5a4df22ea82e9cef6bfd85ec6f7021e39f817e12a7432912899` |
| 14 | `theorem` | [polarCoord_symm_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/polarcoord-symm-apply--584db0c6605bdba963457b24.md) | 200 | `result-track:584db0c6605bdba963457b2409da171d13af40af400cd180b29dcf54c99a50cf` |
| 15 | `theorem` | [measurableEquivRealProd_symm_polarCoord_symm_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/measurableequivrealprod-symm-polarcoord-symm-apply--3e3f0372c0ca2ad5b4c4f8bb.md) | 204 | `result-track:3e3f0372c0ca2ad5b4c4f8bb07fa3e06132a908a6041202c88136da5d0eacc38` |
| 16 | `theorem` | [norm_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/norm-polarcoord-symm--e8d07c3727d8f5b41dc0f402.md) | 207 | `result-track:e8d07c3727d8f5b41dc0f402380297addeb511de6a3a20e47fcb887c76ab5069` |
| 17 | `theorem` | [integral_comp_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/integral-comp-polarcoord-symm--49df9ba7e626bd93780bb6af.md) | 212 | `result-track:49df9ba7e626bd93780bb6af5143f8c387cf21766ff4178c58dc07127563f40b` |
| 18 | `theorem` | [lintegral_comp_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/lintegral-comp-polarcoord-symm--0c1b7b4de3d13bfa0d41960b.md) | 219 | `result-track:0c1b7b4de3d13bfa0d41960be621bb3ed46b841333e7edf31653682ac8e40172` |
| 19 | `def` | [fderivPiPolarCoordSymm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/fderivpipolarcoordsymm--8d6ec141618cf33d834bf05a.md) | 236 | `declaration-track:8d6ec141618cf33d834bf05ab7daaf23e210b9aea64b53c6b7bb08d970523cef` |
| 20 | `theorem` | [injOn_pi_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/injon-pi-polarcoord-symm--a4cff5e77fda76a68d5a20c2.md) | 239 | `result-track:a4cff5e77fda76a68d5a20c2b312fe9b6f865be5abc95a400dd7578d2228de1c` |
| 21 | `theorem` | [abs_fst_of_mem_pi_polarCoord_target](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/abs-fst-of-mem-pi-polarcoord-target--90e8ba0056c99d1a07f262dd.md) | 244 | `result-track:90e8ba0056c99d1a07f262dda4db1c0f5ef5c87d6c98422570b6a1bb0a4f14dc` |
| 22 | `theorem` | [hasFDerivAt_pi_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/hasfderivat-pi-polarcoord-symm--a6ad9cfa2ccaf026a732e133.md) | 251 | `result-track:a6ad9cfa2ccaf026a732e133dc730e2a8c8b7113451ecf3d105ff46326dd3b99` |
| 23 | `theorem` | [det_fderivPiPolarCoordSymm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/det-fderivpipolarcoordsymm--31d352be97a1c885dc26a32e.md) | 256 | `result-track:31d352be97a1c885dc26a32ea329281b7eaad00ad9c1470f727e5b3a844fd481` |
| 24 | `theorem` | [pi_polarCoord_symm_target_ae_eq_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/pi-polarcoord-symm-target-ae-eq-univ--dc0e33eed6c4d02df01d2d94.md) | 260 | `result-track:dc0e33eed6c4d02df01d2d94c0fce7cec494c8d53131050fb6b9e327c1ca2b4b` |
| 25 | `theorem` | [measurableSet_pi_polarCoord_target](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/measurableset-pi-polarcoord-target--15a1d19d09eac2c8263c0e4c.md) | 266 | `result-track:15a1d19d09eac2c8263c0e4c96dba36d2b980ecc1fd011bf79fd39041836a741` |
| 26 | `theorem` | [integral_comp_pi_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/integral-comp-pi-polarcoord-symm--f57baecb427d1be53b696244.md) | 270 | `result-track:f57baecb427d1be53b69624418e7c8a756b84d8f03cd436390dcebf3bd5ca8a7` |
| 27 | `theorem` | [Complex.integral_comp_pi_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/complex-integral-comp-pi-polarcoord-symm--bd75b64d2d72a071e5d6f89f.md) | 281 | `result-track:bd75b64d2d72a071e5d6f89f9fa9067c0ffec82c41a7e6089a09d3106bac2ad8` |
| 28 | `theorem` | [lintegral_comp_pi_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/lintegral-comp-pi-polarcoord-symm--d30bd92b6db161bb98a6014e.md) | 290 | `result-track:d30bd92b6db161bb98a6014e09a4210da3ee9e606ec8c7e07ed6c9d38dc90bab` |
| 29 | `theorem` | [Complex.lintegral_comp_pi_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/declarations/complex-lintegral-comp-pi-polarcoord-symm--48332f2966974bceeec0207d.md) | 302 | `result-track:48332f2966974bceeec0207d42959c1e9e556029c1ff2126b5543fefe4d98fbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
