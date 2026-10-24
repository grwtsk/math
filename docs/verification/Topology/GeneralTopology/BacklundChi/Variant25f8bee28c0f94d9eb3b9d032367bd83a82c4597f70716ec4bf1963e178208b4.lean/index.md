# Verification target: GRWTSK.Topology.GeneralTopology.BacklundChi.Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07d5bcacede31f7967ba4ba5a412b8f32dd72556",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07d5bcacede31f7967ba4ba5a412b8f32dd72556`.

Source path: `GRWTSK/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.LGrowth` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.RvMChiDefs` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reZeroSetL](../../../../../mathematics/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/declarations/rezerosetl--069089f3ccc89545811390fc.md) | 36 | `declaration-track:069089f3ccc89545811390fc89dd0b408ce24ddb43c622e15b61886c769f5c3f` |
| 2 | `lemma` | [hasDerivAt_LFunction_horizontal](../../../../../mathematics/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/declarations/hasderivat-lfunction-horizontal--86a4c3ed18b620c969a7c7e3.md) | 54 | `result-track:86a4c3ed18b620c969a7c7e3c840d114a15ab6b5d95e72520d482355fe95516f` |
| 3 | `lemma` | [continuous_LFunction_horizontal](../../../../../mathematics/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/declarations/continuous-lfunction-horizontal--8cfe785285844cbce1dc32e2.md) | 63 | `result-track:8cfe785285844cbce1dc32e25c53aaea3c81f58c712397605ae9fa3d6598c589` |
| 4 | `lemma` | [continuous_deriv_LFunction_horizontal](../../../../../mathematics/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/declarations/continuous-deriv-lfunction-horizontal--1262ecf5cc0b4116e79752b8.md) | 67 | `result-track:1262ecf5cc0b4116e79752b8e1b955e12581a330c6f0616fcd45fb1751de7682` |
| 5 | `lemma` | [continuousOn_logDeriv_horizontal](../../../../../mathematics/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/declarations/continuouson-logderiv-horizontal--a539693192807cb2870f99ce.md) | 74 | `result-track:a539693192807cb2870f99ce6080e3f9379e56d9420ff043b984ab3d8cc5aba3` |
| 6 | `lemma` | [intervalIntegrable_logDeriv_horizontal](../../../../../mathematics/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/declarations/intervalintegrable-logderiv-horizontal--49bb70ed95e714b5f0d36a69.md) | 83 | `result-track:49bb70ed95e714b5f0d36a694225c682ef20352e625e8719445020f93b48cbcf` |
| 7 | `lemma` | [im_integral_le_two_pi](../../../../../mathematics/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/declarations/im-integral-le-two-pi--c870fbdac683d23848910787.md) | 91 | `result-track:c870fbdac683d238489107874254c5a3b6a6bcf990a1743ba31f84ca70c3c849` |
| 8 | `lemma` | [im_integral_logDeriv_le_aux](../../../../../mathematics/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/declarations/im-integral-logderiv-le-aux--7a98d1b24713ef7062c22fa2.md) | 174 | `result-track:7a98d1b24713ef7062c22fa2ead8ea99ec9780e7569288cf93ce391923ee0215` |
| 9 | `theorem` | [im_integral_logDeriv_le](../../../../../mathematics/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/declarations/im-integral-logderiv-le--340e2b02e6b3f3e2de487943.md) | 254 | `result-track:340e2b02e6b3f3e2de487943002f6a4bae9e89346242c5aa3011b4b1cdca7d7c` |
| 10 | `lemma` | [LFunction_ne_zero_on_segment](../../../../../mathematics/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/declarations/lfunction-ne-zero-on-segment--a0a014d6a1454f2f74ab61c7.md) | 275 | `result-track:a0a014d6a1454f2f74ab61c72e5981aa2df615456cbef42de49d7b5becd630dd` |
| 11 | `theorem` | [backlund_horizontalChi_of_count](../../../../../mathematics/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/declarations/backlund-horizontalchi-of-count--a769771686bbbf5f0c7f4bbf.md) | 285 | `result-track:a769771686bbbf5f0c7f4bbf2b1bbd1692365d0221d95e801ca620f4f9c1a6a9` |
| 12 | `lemma` | [re_LFunction_two_pos](../../../../../mathematics/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/declarations/re-lfunction-two-pos--b2a457cb02ade871ca9beaee.md) | 308 | `result-track:b2a457cb02ade871ca9beaee8648167a35561cf4204af7d97c24883152725d62` |
| 13 | `lemma` | [hasDerivAt_log_LFunction_two](../../../../../mathematics/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/declarations/hasderivat-log-lfunction-two--7e084492f0c2363b2f163365.md) | 317 | `result-track:7e084492f0c2363b2f163365846c20d8d27880aea7f008b19aa46ea589d277f6` |
| 14 | `lemma` | [continuous_logDeriv_LFunction_two](../../../../../mathematics/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/declarations/continuous-logderiv-lfunction-two--95795a378d3a31ba6500ab8d.md) | 337 | `result-track:95795a378d3a31ba6500ab8d71aab18079d33598bb2a71f5f446e960b0527a57` |
| 15 | `theorem` | [vertical_twoChi](../../../../../mathematics/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/declarations/vertical-twochi--1612fe57643617675021e458.md) | 354 | `result-track:1612fe57643617675021e458a959167da51ef774bee011b19b8874bc559d45a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
