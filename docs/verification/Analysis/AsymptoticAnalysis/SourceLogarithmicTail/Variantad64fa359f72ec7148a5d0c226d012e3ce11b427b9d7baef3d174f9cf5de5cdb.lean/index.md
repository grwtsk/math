# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SourceLogarithmicTail.Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "218963ad0fdfaf0823a59f10a68bbb7525d91a02",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `218963ad0fdfaf0823a59f10a68bbb7525d91a02`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LogarithmicTail` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logarithmicConstant](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/logarithmicconstant--b370aa9819ae12db31938aa1.md) | 31 | `declaration-track:b370aa9819ae12db31938aa1684552791eca68a8e069c922e7b6e4434541445d` |
| 2 | `theorem` | [logarithmicConstant_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/logarithmicconstant-pos--7574bdf9fbf64dec39e0269d.md) | 33 | `result-track:7574bdf9fbf64dec39e0269df070019c5d0439c9e1147acdbfba17851797d1a7` |
| 3 | `theorem` | [normalized_sixth_majorant](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/normalized-sixth-majorant--570897f270114b45804029c8.md) | 41 | `result-track:570897f270114b45804029c8c44ea13e5938f8849cf266d52d6696c0014e9453` |
| 4 | `theorem` | [actual_norm_square_tail_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/actual-norm-square-tail-bound--1e059200bc60795b8368585f.md) | 62 | `result-track:1e059200bc60795b8368585fe31f864cfc40a0d4309391f1290bf84e93e4c077` |
| 5 | `theorem` | [actual_tail_error_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/actual-tail-error-bound--9f5adc39d1055c33fa7cd0d5.md) | 82 | `result-track:9f5adc39d1055c33fa7cd0d5126a1f480b4f60385cd5db4819b488e7690da744` |
| 6 | `theorem` | [actual_im_square_tail_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/actual-im-square-tail-bound--4502635eda8f4122963c9d2f.md) | 90 | `result-track:4502635eda8f4122963c9d2f08d1c655876bf79189cefe092f4526a84d5c7f32` |
| 7 | `def` | [fifthHeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/fifthheight--e09db362c5340d838afd9852.md) | 108 | `declaration-track:e09db362c5340d838afd9852b712bcd68506349a5ddf9af4550c7bea1892287a` |
| 8 | `def` | [baseRadius](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/baseradius--57890e26321b53f42ca71720.md) | 110 | `declaration-track:57890e26321b53f42ca717205c95ed8f6d12b434ae420e921559efc45a5330a2` |
| 9 | `theorem` | [fifthHeight_admissible](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/fifthheight-admissible--13a4982aeea707fe103f9e10.md) | 112 | `result-track:13a4982aeea707fe103f9e105f413fe74fc54593ad961e893041a079baeb8ca7` |
| 10 | `theorem` | [fifthHeight_budget](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/fifthheight-budget--097bf8b52332ac2d5d502b78.md) | 122 | `result-track:097bf8b52332ac2d5d502b78dc336499149d9a60019d7625cab7d4f6233c7046` |
| 11 | `theorem` | [fifthHeight_error_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/fifthheight-error-bound--0cf749fa5e62740c1d301f0c.md) | 136 | `result-track:0cf749fa5e62740c1d301f0cd4c7206792052abda86051610e4a4e7445910a89` |
| 12 | `theorem` | [fifthHeight_uniform](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/fifthheight-uniform--5bb3a7ead9d1fb91e92388ed.md) | 145 | `result-track:5bb3a7ead9d1fb91e92388ed9874f0226241f65a80eef14c5dfac983400489fe` |
| 13 | `theorem` | [fifthHeight_tendsto_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/fifthheight-tendsto-zero--e6b33365cf740b31db91c448.md) | 154 | `result-track:e6b33365cf740b31db91c44871c43ac1e155c54fe8bc473b045f07700fd5ed4a` |
| 14 | `theorem` | [fifthHeight_sup_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/fifthheight-sup-bound--f7e627e3a76e677590e2f874.md) | 162 | `result-track:f7e627e3a76e677590e2f874604cf307f209980167277c03f0f85a4f252c0ee5` |
| 15 | `theorem` | [coordinate_squares_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/coordinate-squares-summable--4b3f5f3336e0d2a072eb0e51.md) | 172 | `result-track:4b3f5f3336e0d2a072eb0e51016b041dcf6e6bbc25fdede017ad71b20bbf4e88` |
| 16 | `theorem` | [signed_square_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/signed-square-tsum--a695146966afbb82b97953f6.md) | 183 | `result-track:a695146966afbb82b97953f611c4773e0fa37970fc2704ab1e719060bb48797e` |
| 17 | `def` | [realSquareMass](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/realsquaremass--cf878e62a7062ea77b83b42d.md) | 194 | `declaration-track:cf878e62a7062ea77b83b42d6830624e406f188266b90255b747b83f642f0c83` |
| 18 | `def` | [imaginarySquareMass](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/imaginarysquaremass--1dd5ed86364a80d623d98e5d.md) | 198 | `declaration-track:1dd5ed86364a80d623d98e5d7e4f2f88dcc646cfa707141bde7cc8f722e93904` |
| 19 | `def` | [signedFull](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/signedfull--dbe41a9ef1723946c84978ed.md) | 201 | `declaration-track:dbe41a9ef1723946c84978ed16c9dab08c63683e9aed9d9c8fe509b5f108100b` |
| 20 | `def` | [signedHead](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/signedhead--4c2994dcf25edc0b746cc2ee.md) | 204 | `declaration-track:4c2994dcf25edc0b746cc2eed07b513d26d68590b089f4dc8253e488dcd1b73e` |
| 21 | `theorem` | [coordinate_masses_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/coordinate-masses-summable--79ef2f63fb2614ade0941b33.md) | 208 | `result-track:79ef2f63fb2614ade0941b33225e56acf0d18e5c5563254e0588b90328e7f3f6` |
| 22 | `theorem` | [signedFull_eq_negative_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/signedfull-eq-negative-re--37b2974a2eb73d1d5a6e7743.md) | 213 | `result-track:37b2974a2eb73d1d5a6e7743658d9f17b5fded04a57efec2d7323d978344b805` |
| 23 | `theorem` | [signedHead_eq_negative_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/signedhead-eq-negative-re--3a57561942d5d9881f6c008d.md) | 220 | `result-track:3a57561942d5d9881f6c008de1dc887d42a5d6bd2307f1b46daccc0ac9539bb9` |
| 24 | `theorem` | [signed_partition](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/signed-partition--fe7d4e320178e825d4b5a52e.md) | 226 | `result-track:fe7d4e320178e825d4b5a52e83a62e0aaf8b6591ff4ba3f4c7643f2e4d9eaac1` |
| 25 | `theorem` | [signed_truncation_error](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/signed-truncation-error--63be3578f35e3027b9f650d0.md) | 232 | `result-track:63be3578f35e3027b9f650d06992c65589e9926e71b1ff982a7776a8020be2eb` |
| 26 | `theorem` | [fifthHeight_signed_error](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/fifthheight-signed-error--ae94e92e9eaa54638fb852f4.md) | 238 | `result-track:ae94e92e9eaa54638fb852f41cdf3700e458e499840d3ed26a0acfbcce77e21e` |
| 27 | `theorem` | [head_upper_transfers](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/head-upper-transfers--b1ee65ac3d4ec9eb31e2e7cb.md) | 244 | `result-track:b1ee65ac3d4ec9eb31e2e7cbcca2e0e7bf5cc70b8ec60910171f5a6d69015d2f` |
| 28 | `theorem` | [full_upper_transfers](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/declarations/full-upper-transfers--8bcd99492149c27804d259a2.md) | 255 | `result-track:8bcd99492149c27804d259a2ca78e0a0e673263bc4183b884790f89cb1a97140` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
