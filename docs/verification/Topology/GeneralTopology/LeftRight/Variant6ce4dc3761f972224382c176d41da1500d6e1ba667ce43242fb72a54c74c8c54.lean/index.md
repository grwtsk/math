# Verification target: GRWTSK.Topology.GeneralTopology.LeftRight.Variant6ce4dc3761f972224382c176d41da1500d6e1ba667ce43242fb72a54c74c8c54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04ebb944a582b02b8dd886169e9968573ee3dcba",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LeftRight/Variant6ce4dc3761f972224382c176d41da1500d6e1ba667ce43242fb72a54c74c8c54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant6ce4dc3761f972224382c176d41da1500d6e1ba667ce43242fb72a54c74c8c54.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant6ce4dc3761f972224382c176d41da1500d6e1ba667ce43242fb72a54c74c8c54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04ebb944a582b02b8dd886169e9968573ee3dcba`.

Source path: `GRWTSK/Topology/GeneralTopology/LeftRight/Variant6ce4dc3761f972224382c176d41da1500d6e1ba667ce43242fb72a54c74c8c54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LeftRight/Variant6ce4dc3761f972224382c176d41da1500d6e1ba667ce43242fb72a54c74c8c54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousOn` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuousWithinAt_Ioi_iff_Ici](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant6ce4dc3761f972224382c176d41da1500d6e1ba667ce43242fb72a54c74c8c54.lean/declarations/continuouswithinat-ioi-iff-ici--43be3fbda4669e3c0f1ca9b5.md) | 34 | `result-track:43be3fbda4669e3c0f1ca9b5411b877e7151dbbb44405eb925ccacd790b49d77` |
| 2 | `theorem` | [continuousWithinAt_Iio_iff_Iic](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant6ce4dc3761f972224382c176d41da1500d6e1ba667ce43242fb72a54c74c8c54.lean/declarations/continuouswithinat-iio-iff-iic--876d1f43bbb19c3aa8ab17fc.md) | 39 | `result-track:876d1f43bbb19c3aa8ab17fcc1f6d28bcd1d5d1923f99fb83a33055759013a4e` |
| 3 | `theorem` | [nhds_left'_le_nhds_ne](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant6ce4dc3761f972224382c176d41da1500d6e1ba667ce43242fb72a54c74c8c54.lean/declarations/nhds-left-le-nhds-ne--6cd0a72aff8498a512742b59.md) | 44 | `result-track:6cd0a72aff8498a512742b59b6d7324328e2bf52eff8f1e2a4e507a447636501` |
| 4 | `theorem` | [nhds_right'_le_nhds_ne](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant6ce4dc3761f972224382c176d41da1500d6e1ba667ce43242fb72a54c74c8c54.lean/declarations/nhds-right-le-nhds-ne--de2000dbba3f5e9579167fbe.md) | 48 | `result-track:de2000dbba3f5e9579167fbe1e30050babec9e4580f99b517930b5cc110e688e` |
| 5 | `theorem` | [nhds_left_sup_nhds_right](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant6ce4dc3761f972224382c176d41da1500d6e1ba667ce43242fb72a54c74c8c54.lean/declarations/nhds-left-sup-nhds-right--f0ad6624434f452e8e6eec3e.md) | 58 | `result-track:f0ad6624434f452e8e6eec3e110590661b15040df0f9630bb288b2453732bcd7` |
| 6 | `theorem` | [nhds_left'_sup_nhds_right](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant6ce4dc3761f972224382c176d41da1500d6e1ba667ce43242fb72a54c74c8c54.lean/declarations/nhds-left-sup-nhds-right--45621429e77ecc9d41059078.md) | 62 | `result-track:45621429e77ecc9d4105907899df8ff94e947bd13d3d220df0051f817e4ae441` |
| 7 | `theorem` | [nhds_left_sup_nhds_right'](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant6ce4dc3761f972224382c176d41da1500d6e1ba667ce43242fb72a54c74c8c54.lean/declarations/nhds-left-sup-nhds-right--88ce65f7f04726814aa23a70.md) | 66 | `result-track:88ce65f7f04726814aa23a70766872b9e9b99bf9228ed7d7d8a8996869104f6d` |
| 8 | `theorem` | [nhds_left'_sup_nhds_right'](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant6ce4dc3761f972224382c176d41da1500d6e1ba667ce43242fb72a54c74c8c54.lean/declarations/nhds-left-sup-nhds-right--0ecd44e0a5c42c908f17ec9d.md) | 70 | `result-track:0ecd44e0a5c42c908f17ec9ddfa906f1732d4a5c1acc3618dee94676a373e973` |
| 9 | `theorem` | [continuousAt_iff_continuous_left_right](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant6ce4dc3761f972224382c176d41da1500d6e1ba667ce43242fb72a54c74c8c54.lean/declarations/continuousat-iff-continuous-left-right--17a2b6c33efb48ac3ea7f68e.md) | 74 | `result-track:17a2b6c33efb48ac3ea7f68e1694bc76ddc0b3da014ab149e3f8794e445f5bde` |
| 10 | `theorem` | [continuousAt_iff_continuous_left'_right'](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant6ce4dc3761f972224382c176d41da1500d6e1ba667ce43242fb72a54c74c8c54.lean/declarations/continuousat-iff-continuous-left-right--9278ef541716b7f6938d76cb.md) | 79 | `result-track:9278ef541716b7f6938d76cb17decbc9adc9b01c623aad36dbbe26e56c12adb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
