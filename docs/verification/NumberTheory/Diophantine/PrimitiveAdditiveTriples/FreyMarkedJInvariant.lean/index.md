# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedJInvariant

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35e6cef52e446675f7f78ed25cc1ac61514df481",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35e6cef52e446675f7f78ed25cc1ac61514df481`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.UnitEquation.RationalBoundaryJInvariant`](../../../../../mathematics/NumberTheory/Diophantine/UnitEquation/RationalBoundaryJInvariant.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedBoundaryCycle`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyLocalInvariants`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/index.md) — import line 13; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shape](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/shape--9f8613a50ede6fa69084d8c1.md) | 27 | `declaration-track:9f8613a50ede6fa69084d8c1292dd8749399c6bae28b2da42bec188b2ddabd9e` |
| 2 | `def` | [sourceProduct](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/sourceproduct--986999b24d4ecb2d5708583b.md) | 29 | `declaration-track:986999b24d4ecb2d5708583b2960b52eb0d64224b7c95d3194a64706f34d950c` |
| 3 | `def` | [cancellation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/cancellation--4d70258c14b4c64fa5caeb90.md) | 32 | `declaration-track:4d70258c14b4c64fa5caeb90d2edd5c9443007a0b994f63682694ac725b33410` |
| 4 | `theorem` | [shape_coprime_product](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/shape-coprime-product--f2811fc02fc173348376a35e.md) | 34 | `result-track:f2811fc02fc173348376a35ebffdc08500ada42430d2bcb1c9a901df799da9ae` |
| 5 | `theorem` | [numerator_gcd](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/numerator-gcd--e1f9235e5b8347a035e867a8.md) | 52 | `result-track:e1f9235e5b8347a035e867a85a05c49ece795ecf3bce1ce6caaa29907342d84d` |
| 6 | `theorem` | [cancellation_dvd](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/cancellation-dvd--77c50c24c0fc3ed1ca50e019.md) | 57 | `result-track:77c50c24c0fc3ed1ca50e019b589bba3de83c223995e395cc3f3623bf961cd2d` |
| 7 | `theorem` | [cancellation_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/cancellation-pos--b8dff19f515fe0938f3c94b9.md) | 60 | `result-track:b8dff19f515fe0938f3c94b91cb7d5361dfb98d02d3951f9139437c68c3cf4b6` |
| 8 | `theorem` | [cancellation_bounds](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/cancellation-bounds--aaa386b3e4eda7738a462aa6.md) | 67 | `result-track:aaa386b3e4eda7738a462aa6912525a1a25fd608dd7892fe9dec30d7033a4dff` |
| 9 | `theorem` | [curve_c4](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/curve-c4--0ec1d7dee5af4fc0d7560e59.md) | 72 | `result-track:0ec1d7dee5af4fc0d7560e59b4806c822fe32f1fc141212b77bdc50fadd578d9` |
| 10 | `theorem` | [curve_j_mul_delta](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/curve-j-mul-delta--24af6c570a915704b58c1911.md) | 80 | `result-track:24af6c570a915704b58c1911e52b54fa124b5c8216ef18f4dae71be5d54a833e` |
| 11 | `theorem` | [curve_j](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/curve-j--3283ce7f231351317cae6d9b.md) | 90 | `result-track:3283ce7f231351317cae6d9b7e4c7f4050c129f496c269e1ffcaed009468bd47` |
| 12 | `theorem` | [source_invariant_eq_j](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/source-invariant-eq-j--b46294b105213a7a7fbad38f.md) | 103 | `result-track:b46294b105213a7a7fbad38ffec590b221e856f3e6173b5d82b561691fb7db15` |
| 13 | `theorem` | [chart_invariant_eq_j](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/chart-invariant-eq-j--51741eb14255a34a14869b5f.md) | 116 | `result-track:51741eb14255a34a14869b5f282ed16acf3ec6a96fb8f1cfc7a6d371e2a1b0e7` |
| 14 | `theorem` | [curve_j_ge_1728](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/curve-j-ge-1728--bdce0b8bd0e4428b837c3030.md) | 120 | `result-track:bdce0b8bd0e4428b837c3030e566469ab61c0ca7d58bdb2f03023f638fcc701c` |
| 15 | `theorem` | [j_denominator](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/j-denominator--a8c89898698330fbb9b17ba8.md) | 125 | `result-track:a8c89898698330fbb9b17ba839e2083a541ce74d0418bcc1c51948814bd849f2` |
| 16 | `theorem` | [j_denominator_mul](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/j-denominator-mul--5a169af3062cae5a1f1cafa7.md) | 139 | `result-track:5a169af3062cae5a1f1cafa72e11729a58fb5a7873ef03b587e0669795c5b128` |
| 17 | `def` | [jHeight](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/jheight--2d0d26e8892584db59106fd3.md) | 145 | `declaration-track:2d0d26e8892584db59106fd39457bc53f092aeaf622a74cfa15edbccb363b3ba` |
| 18 | `theorem` | [singleton_denominator](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/singleton-denominator--0f104d0b3cf561e5ce8e7337.md) | 147 | `result-track:0f104d0b3cf561e5ce8e733732a9c33c7b583585275e796ae975a186ae101222` |
| 19 | `theorem` | [jHeight_eq_den_mul](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/jheight-eq-den-mul--482d725a4dbfac220153c498.md) | 154 | `result-track:482d725a4dbfac220153c498a5a11e746c47f6dd1320aed16de41657e94ea14c` |
| 20 | `theorem` | [jHeight_times_cancellation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/jheight-times-cancellation--8a90f7e308a12b3a8b7cce5a.md) | 162 | `result-track:8a90f7e308a12b3a8b7cce5a7ef376ee26177edb95150dc0353966ee2eebc3fc` |
| 21 | `theorem` | [jHeight_shape_bounds](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/jheight-shape-bounds--6870e75f087f024477e00e19.md) | 175 | `result-track:6870e75f087f024477e00e19af06098752e4ea86dbe68edebcf66bf8b19c2fc6` |
| 22 | `theorem` | [shape_bounds](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/shape-bounds--b662e686a9d29a14cee6ce16.md) | 184 | `result-track:b662e686a9d29a14cee6ce1654a44de6f3c3b3cbb35feddaca9e782ecf4b9c13` |
| 23 | `theorem` | [jHeight_source_comparison](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/jheight-source-comparison--7a1008185696f6909df140be.md) | 195 | `result-track:7a1008185696f6909df140be50835a59d3869ba5dda1bbbe6719703bad7e0ee4` |
| 24 | `theorem` | [jHeight_observation_comparison](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedJInvariant.lean/declarations/jheight-observation-comparison--ab784bfd7ed4f67eeb1d85a7.md) | 215 | `result-track:ab784bfd7ed4f67eeb1d85a7b1b2a48ce4012e7befbece451a1684abcdac5d7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
