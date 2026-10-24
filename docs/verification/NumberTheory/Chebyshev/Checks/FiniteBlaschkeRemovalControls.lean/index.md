# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.FiniteBlaschkeRemovalControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b07cb5fdaa8804a415a11ee8370bed403e8919c6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/FiniteBlaschkeRemovalControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteBlaschkeRemovalControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteBlaschkeRemovalControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b07cb5fdaa8804a415a11ee8370bed403e8919c6`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/FiniteBlaschkeRemovalControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/FiniteBlaschkeRemovalControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.JensenCentralLogDerivative`](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenCentralLogDerivative.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [double_zero_factorization](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteBlaschkeRemovalControls.lean/declarations/double-zero-factorization--f69e183e219f3d56f845a3d7.md) | 23 | `result-track:f69e183e219f3d56f845a3d70902acc00f7964b5b2dfa3e670f2d78407b64b69` |
| 2 | `theorem` | [double_zero_center_value](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteBlaschkeRemovalControls.lean/declarations/double-zero-center-value--7e60902d800efcec4c82c9fc.md) | 31 | `result-track:7e60902d800efcec4c82c9fc45a810b9e4726281701dc2c96c579ce2f41c5c3b` |
| 3 | `theorem` | [raw_double_quotient_center](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteBlaschkeRemovalControls.lean/declarations/raw-double-quotient-center--aa82156a806ffd1e353be55f.md) | 34 | `result-track:aa82156a806ffd1e353be55f27faa3be7a573229baab5ffb5405aac4d31013d2` |
| 4 | `theorem` | [raw_center_not_extension](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteBlaschkeRemovalControls.lean/declarations/raw-center-not-extension--f56a42fa064725b46ddb2724.md) | 37 | `result-track:f56a42fa064725b46ddb2724c427f623257536d72f83cabb404680a4f69e98de` |
| 5 | `theorem` | [under_removed_center](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteBlaschkeRemovalControls.lean/declarations/under-removed-center--2d2baef17af1f3a24253c08b.md) | 43 | `result-track:2d2baef17af1f3a24253c08b481acd8ed66987b20822504fbdb74b10b1007fc0` |
| 6 | `theorem` | [omitted_inner_root](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteBlaschkeRemovalControls.lean/declarations/omitted-inner-root--57281d4e927a289769d1ff81.md) | 46 | `result-track:57281d4e927a289769d1ff811b59b5c8bd0fb76829a9330acc7909e81b4148a3` |
| 7 | `theorem` | [retained_outer_root](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteBlaschkeRemovalControls.lean/declarations/retained-outer-root--9249009dfa10e61701ca8c3c.md) | 49 | `result-track:9249009dfa10e61701ca8c3c4f080df64db1bc3b2466982e728e024e242f93aa` |
| 8 | `theorem` | [same_height_distinct_locations](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteBlaschkeRemovalControls.lean/declarations/same-height-distinct-locations--1c8321b5ddf9eb3de2d47113.md) | 54 | `result-track:1c8321b5ddf9eb3de2d47113ee6969ad2a4cebc61e66763a4a4b502e59ee0b1c` |
| 9 | `theorem` | [repeated_location_not_injective](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteBlaschkeRemovalControls.lean/declarations/repeated-location-not-injective--c07f7c48425e42d0c62f6793.md) | 58 | `result-track:c07f7c48425e42d0c62f679357c08f243c687cc7c4da3c16dafc07ad70d63395` |
| 10 | `theorem` | [negative_strip_not_central](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteBlaschkeRemovalControls.lean/declarations/negative-strip-not-central--ca409a51e0db97c5e7adbea7.md) | 65 | `result-track:ca409a51e0db97c5e7adbea78df453d6a198cbe08f147ef60f4270f872a5c206` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
