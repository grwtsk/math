# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.MirrorCountingRectangle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3b6d30ef143df89911644364df10c075b7387e1",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3b6d30ef143df89911644364df10c075b7387e1`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleContour`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleContour.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointCountNormalization`](../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointCountNormalization.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [interior](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/declarations/interior--9ffe6abdebdfef3fe7c42e6d.md) | 27 | `declaration-track:9ffe6abdebdfef3fe7c42e6d2c2299ddd9cd46da485433f3f39e733c00004b24` |
| 2 | `def` | [vertices](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/declarations/vertices--3f865c95c28e1ba10c7fddec.md) | 32 | `declaration-track:3f865c95c28e1ba10c7fddec1ea3cd0c7cabf51c150c4be96984bdb9348aabcf` |
| 3 | `theorem` | [vertices_closed](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/declarations/vertices-closed--379f5e957393426978484e35.md) | 36 | `result-track:379f5e957393426978484e350f4aa3360be3e3f0f47c411fdf8e29609288cd0d` |
| 4 | `def` | [head](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/declarations/head--9019a3e6ec7b0d3c35ae222a.md) | 43 | `declaration-track:9019a3e6ec7b0d3c35ae222a8766ab00bc4adf4fc8a7733daeb603c1bbfb0c7d` |
| 5 | `def` | [count](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/declarations/count--68d4dac57eb26013cb7be479.md) | 45 | `declaration-track:68d4dac57eb26013cb7be479e69ab27656e35ac9b98aa80712f3ca32b10b968c` |
| 6 | `theorem` | [mem_head_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/declarations/mem-head-iff--7241da5afac4f8f3ece66a2f.md) | 47 | `result-track:7241da5afac4f8f3ece66a2f85cf3690667abb782965334f584259d1a2536af5` |
| 7 | `theorem` | [card_le_count](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/declarations/card-le-count--df397ab24dc7a0d6375d947b.md) | 58 | `result-track:df397ab24dc7a0d6375d947b56ffe1107081d8c35316598231785fe76911bbaa` |
| 8 | `def` | [rightRepresentative](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/declarations/rightrepresentative--b54d4f5f40790da7d799c249.md) | 64 | `declaration-track:b54d4f5f40790da7d799c249269375a42f80c9cd335215bdf574ea2f5b400a1d` |
| 9 | `theorem` | [representative_im](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/declarations/representative-im--8705aebe4d60a43964fe84ba.md) | 67 | `result-track:8705aebe4d60a43964fe84bafbea7a51dd25a6dda498eab74e116fea33569d0d` |
| 10 | `theorem` | [representative_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/declarations/representative-re--f522b57f7b96cab44e0eed2f.md) | 71 | `result-track:f522b57f7b96cab44e0eed2fe36e17574535a5f5585fb9a9dd9da1af023ed8cc` |
| 11 | `theorem` | [representative_in_head](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/declarations/representative-in-head--d48ab4a5727c19b4d5a92906.md) | 82 | `result-track:d48ab4a5727c19b4d5a92906aa3aa49d0705e2084c1f3712c559289a1a87e3c7` |
| 12 | `theorem` | [eq_of_representative_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/declarations/eq-of-representative-eq--c2a40d0291980e9d6b77b164.md) | 93 | `result-track:c2a40d0291980e9d6b77b16433e0e42639ec26b8ec8502d6d56813fce1ff6827` |
| 13 | `theorem` | [unique_of_count_le_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/declarations/unique-of-count-le-one--964c57064e011f55f5502111.md) | 106 | `result-track:964c57064e011f55f55021119a5f2583b932603bc8d5f90aa52b94eb6b970307` |
| 14 | `theorem` | [complete_pair_of_regional_upper](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/declarations/complete-pair-of-regional-upper--9312f96ce4b87628a4b4eab3.md) | 126 | `result-track:9312f96ce4b87628a4b4eab3505454f3651ef6463ea7abdc2777f50285c6c167` |
| 15 | `theorem` | [bounded_line_of_regional_upper](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/declarations/bounded-line-of-regional-upper--782cbff665b5b4530e138332.md) | 167 | `result-track:782cbff665b5b4530e138332d7cb083c7803a31fca90bce5fdc63495e2f4512a` |
| 16 | `theorem` | [positive_real_nonzero](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/declarations/positive-real-nonzero--652361569a0af919acd7d588.md) | 181 | `result-track:652361569a0af919acd7d5888da1c95dc8653331ba59c5639559fda760fba9f5` |
| 17 | `theorem` | [right_halfplane_nonzero](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/declarations/right-halfplane-nonzero--856816f58a78cb980c4f3f23.md) | 188 | `result-track:856816f58a78cb980c4f3f234f801952eddc1fc3fcd5e5147b2526ceb07b377a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
