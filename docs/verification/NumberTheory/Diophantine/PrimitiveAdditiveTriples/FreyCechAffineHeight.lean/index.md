# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechAffineHeight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca6125fb40ad765b2c5061f856974228c7a5b6b9",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca6125fb40ad765b2c5061f856974228c7a5b6b9`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Height.RationalVectorAffineHeight`](../../../../../mathematics/NumberTheory/Height/RationalVectorAffineHeight.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechArchimedeanNorm`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechArchimedeanNorm.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [slotsNonempty](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/slotsnonempty--81c71dbcc86a6d8b5a79ffed.md) | 24 | `declaration-track:81c71dbcc86a6d8b5a79ffed41e70d6f8e5f2522c6b3b3acecba34abb23c8baf` |
| 2 | `def` | [sourceHeight](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/sourceheight--f3a297e9bc6945517ee368c4.md) | 28 | `declaration-track:f3a297e9bc6945517ee368c4ddc191d8414e243db845eddac3627b4b8eda7a25` |
| 3 | `def` | [targetHeight](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/targetheight--f76cee68575bd4982027a903.md) | 30 | `declaration-track:f76cee68575bd4982027a9033a206dca4c7df42c5c7b71756ad80fab67dc9a99` |
| 4 | `theorem` | [denominator_forward](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/denominator-forward--82a5dd954fa56e9dc8a3aabd.md) | 33 | `result-track:82a5dd954fa56e9dc8a3aabd96623fe80c9227240d81e8b64e489896fef61ce9` |
| 5 | `theorem` | [column_dvd_clearing](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/column-dvd-clearing--6a45d3637876460c1d9a4c54.md) | 51 | `result-track:6a45d3637876460c1d9a4c544d406f0f25d6c52b400d520585879e1e605f3a73` |
| 6 | `theorem` | [denominator_inverse](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/denominator-inverse--d81a137f53d70de1b71e97c1.md) | 63 | `result-track:d81a137f53d70de1b71e97c13b78fdeac93dfd5563746bd7235e596e2d2d0e32` |
| 7 | `theorem` | [forwardFactor_one_le](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/forwardfactor-one-le--ec613690dfa51157be2ef792.md) | 82 | `result-track:ec613690dfa51157be2ef792e65ac9c7155570149fb864a422c23843a031c7ce` |
| 8 | `theorem` | [forward_height](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/forward-height--65321c8232cb566061c681e5.md) | 91 | `result-track:65321c8232cb566061c681e5b95bdbc832bfdb09b8af47fc56e0d82e84222c78` |
| 9 | `theorem` | [inverse_height](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/inverse-height--bcc6a040c7eae727c9616354.md) | 98 | `result-track:bcc6a040c7eae727c96163547e87b7b68b7c578802b8709789cfdf5a9751f6a5` |
| 10 | `theorem` | [height_comparison](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/height-comparison--3e1303f4e4db944763d6628b.md) | 109 | `result-track:3e1303f4e4db944763d6628b0ecb7505bf24c26dd5039a04b904e295638b105d` |
| 11 | `theorem` | [log_forward_height](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/log-forward-height--71fe2f055b3ef7495336897d.md) | 117 | `result-track:71fe2f055b3ef7495336897d3f4a0ab6f5d90f2c2d657bf497afd75038fa4aad` |
| 12 | `theorem` | [log_inverse_height](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/log-inverse-height--8c76cd78321aed86f6d80b46.md) | 126 | `result-track:8c76cd78321aed86f6d80b4619ec3c130c792479fd97aec15928718be0371171` |
| 13 | `theorem` | [forward_ones_height](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/forward-ones-height--41678d5d838b424f89b62a86.md) | 137 | `result-track:41678d5d838b424f89b62a865bdaf809db97d0b1f754754528dd844317a9a619` |
| 14 | `def` | [heightProbe](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/heightprobe--f7f22d5b71708835a7211e39.md) | 153 | `declaration-track:f7f22d5b71708835a7211e39a8e02000b7d2ad95c69787eee6841f49a6203df3` |
| 15 | `theorem` | [heightProbe_data](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/heightprobe-data--0bb17819d8a5207281dc93bb.md) | 155 | `result-track:0bb17819d8a5207281dc93bb8f363e651fc7f4394f6a95cc36f81f10e59f9519` |
| 16 | `theorem` | [three_four_common](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/three-four-common--19710a6cff0f2108f3bf0079.md) | 169 | `result-track:19710a6cff0f2108f3bf0079944bb2f6468f5eba2101d0cd07597f81fc5de2e0` |
| 17 | `theorem` | [inverse_probe_denominator](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/inverse-probe-denominator--2e4ddc3dabc9af3434f6cb9c.md) | 183 | `result-track:2e4ddc3dabc9af3434f6cb9ca0055660f687e4465cbd29c4a09ea2c091e4e2ef` |
| 18 | `theorem` | [inverse_probe_height](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/inverse-probe-height--32c66bcee01739243968abed.md) | 207 | `result-track:32c66bcee01739243968abedcf237b8bd401c9b1f0d16fd4fdeaa8ce70444a5b` |
| 19 | `theorem` | [forward_height_bound_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/forward-height-bound-iff--08cedf2d9158031fe736f0c5.md) | 218 | `result-track:08cedf2d9158031fe736f0c5b4f673c5503a9a981aacd6d3113bf2abe3c08683` |
| 20 | `theorem` | [inverse_height_bound_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechAffineHeight.lean/declarations/inverse-height-bound-iff--37f8fa40e181154ca6ac537c.md) | 227 | `result-track:37f8fa40e181154ca6ac537c04a95fae974651b1505084a4767b18a1b76547cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
