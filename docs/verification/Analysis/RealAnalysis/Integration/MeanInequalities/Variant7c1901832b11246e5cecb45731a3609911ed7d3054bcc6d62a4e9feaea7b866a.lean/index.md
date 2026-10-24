# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MeanInequalities.Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c018b986246e2a0f21c5aa9a354844ec14d7f5cf",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c018b986246e2a0f21c5aa9a354844ec14d7f5cf`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Lebesgue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MeanInequalities` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MeanInequalitiesPow` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.SpecialFunctions.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/declarations/macro-rules--f6ea9575179a020d9ae3e3f2.md) | 55 | `declaration-track:f6ea9575179a020d9ae3e3f2d6f705eaa708665b7319a36ee064da358895b491` |
| 2 | `theorem` | [lintegral_mul_le_one_of_lintegral_rpow_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/declarations/lintegral-mul-le-one-of-lintegral-rpow-eq-one--089937ef47936a84f20fd818.md) | 61 | `result-track:089937ef47936a84f20fd8181c6b24bc0f0e25497b148af01c2ab260cb0811fb` |
| 3 | `def` | [funMulInvSnorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/declarations/funmulinvsnorm--4ee8ed2d55eab1079b897c8d.md) | 78 | `declaration-track:4ee8ed2d55eab1079b897c8d111535d8be050bd1bfaf5be890fda4812ab80dd7` |
| 4 | `theorem` | [fun_eq_funMulInvSnorm_mul_snorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/declarations/fun-eq-funmulinvsnorm-mul-snorm--34d8e78fea9c508ffbe0c8f2.md) | 82 | `result-track:34d8e78fea9c508ffbe0c8f2a822a3d08d6d89e4f188e97c9aef41467014636c` |
| 5 | `theorem` | [funMulInvSnorm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/declarations/funmulinvsnorm-rpow--820ec5619fc443ffb781db1c.md) | 88 | `result-track:820ec5619fc443ffb781db1c8a5c8c6fe1dae58f99a37541913b1c15fcc671fc` |
| 6 | `theorem` | [lintegral_rpow_funMulInvSnorm_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/declarations/lintegral-rpow-funmulinvsnorm-eq-one--e69fcc82eeae1c541d47f054.md) | 96 | `result-track:e69fcc82eeae1c541d47f054d01771592704215e4c758c262fae95c81fd1c228` |
| 7 | `theorem` | [lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/declarations/lintegral-mul-le-lp-mul-lq-of-ne-zero-of-ne-top--b3f6209662f1862c022683e9.md) | 105 | `result-track:b3f6209662f1862c022683e9292a07d021975257841f53daef7b371f84f33fd0` |
| 8 | `theorem` | [ae_eq_zero_of_lintegral_rpow_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/declarations/ae-eq-zero-of-lintegral-rpow-eq-zero--7814e270e8dc5714b0e049e6.md) | 128 | `result-track:7814e270e8dc5714b0e049e676ae47796287b4adaf7ea5ef0f977302c5b76031` |
| 9 | `theorem` | [lintegral_mul_eq_zero_of_lintegral_rpow_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/declarations/lintegral-mul-eq-zero-of-lintegral-rpow-eq-zero--6f0ed1d007dc881c1bf9edb7.md) | 137 | `result-track:6f0ed1d007dc881c1bf9edb729c49f813fbe98f7e80726b3b149f3fba45e37c7` |
| 10 | `theorem` | [lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_eq_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/declarations/lintegral-mul-le-lp-mul-lq-of-ne-zero-of-eq-top--271abe8065d8a3aff998e109.md) | 147 | `result-track:271abe8065d8a3aff998e10928ed10a8caaafacc86e700c9272052eae983536d` |
| 11 | `theorem` | [lintegral_mul_le_Lp_mul_Lq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/declarations/lintegral-mul-le-lp-mul-lq--a6d456910947266568058573.md) | 159 | `result-track:a6d456910947266568058573c126500d7b124484e0c35f4c1d7b3f0671b9061c` |
| 12 | `theorem` | [lintegral_rpow_add_lt_top_of_lintegral_rpow_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/declarations/lintegral-rpow-add-lt-top-of-lintegral-rpow-lt-top--b0a0ae04b181945691be5ec5.md) | 178 | `result-track:b0a0ae04b181945691be5ec537273eb0ff3cb080964c26d50d21be1bfe708d6e` |
| 13 | `theorem` | [lintegral_Lp_mul_le_Lq_mul_Lr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/declarations/lintegral-lp-mul-le-lq-mul-lr--896c497d1ba30701d59401e2.md) | 216 | `result-track:896c497d1ba30701d59401e2564437352ab67aade7a17109ac5a4ec0fbe06ed5` |
| 14 | `theorem` | [lintegral_mul_rpow_le_lintegral_rpow_mul_lintegral_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/declarations/lintegral-mul-rpow-le-lintegral-rpow-mul-lintegral-rpow--f1bee3c528cc98390b7ecabb.md) | 254 | `result-track:f1bee3c528cc98390b7ecabbeff3a985f46e6b5d4b22d57256603057184c3b88` |
| 15 | `theorem` | [lintegral_rpow_add_le_add_snorm_mul_lintegral_rpow_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/declarations/lintegral-rpow-add-le-add-snorm-mul-lintegral-rpow-add--bc8232c292f7a3996ab70c7c.md) | 274 | `result-track:bc8232c292f7a3996ab70c7c75f958a2c80da96110b345c1482ca7017de4ff19` |
| 16 | `theorem` | [lintegral_Lp_add_le_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/declarations/lintegral-lp-add-le-aux--e4da788523403c3cd12c39b2.md) | 312 | `result-track:e4da788523403c3cd12c39b232b2815998b3c5d6dd506d9feca456f753b2bf3c` |
| 17 | `theorem` | [lintegral_Lp_add_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/declarations/lintegral-lp-add-le--02eda59f5d25536fc21d17da.md) | 346 | `result-track:02eda59f5d25536fc21d17daceb0afdd1a4fa3d73e66a6dd9ea20b64b07f8096` |
| 18 | `theorem` | [lintegral_Lp_add_le_of_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/declarations/lintegral-lp-add-le-of-le-one--32173d3a9aeb338e451c9d8d.md) | 377 | `result-track:32173d3a9aeb338e451c9d8d10d51293fa719c64f09cab53efbf668f34a2171e` |
| 19 | `theorem` | [NNReal.lintegral_mul_le_Lp_mul_Lq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/declarations/nnreal-lintegral-mul-le-lp-mul-lq--f065ddac1406da80ed674b48.md) | 399 | `result-track:f065ddac1406da80ed674b48686e70084772b709b76206e057cc6e656183d0e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
