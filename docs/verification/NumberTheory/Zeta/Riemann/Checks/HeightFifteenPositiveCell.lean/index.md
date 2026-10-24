# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenPositiveCell

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7b8c664e17800ee0a97d07b62eca0189f0c2135",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenPositiveCell.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenPositiveCell.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenPositiveCell.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7b8c664e17800ee0a97d07b62eca0189f0c2135`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenPositiveCell.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/HeightFifteenPositiveCell.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.BigOperators.CheckedChunkComposition`](../../../../../../mathematics/Algebra/BigOperators/CheckedChunkComposition.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectSixteenthClosure`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectSixteenthClosure.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cell272](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenPositiveCell.lean/declarations/cell272--84849afa85e29ffe3ee08ef5.md) | 24 | `result-track:84849afa85e29ffe3ee08ef57a53be3f14f9d55b230e7ef55c94802774ba65ba` |
| 2 | `theorem` | [cell273](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenPositiveCell.lean/declarations/cell273--c6158cb9bf8f5bf6f31c6547.md) | 25 | `result-track:c6158cb9bf8f5bf6f31c6547838d7c9b203ca04f0ae72e9c8caa1ccd88d84e57` |
| 3 | `theorem` | [cell274](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenPositiveCell.lean/declarations/cell274--d2110ef5e21a752b0d43bb95.md) | 26 | `result-track:d2110ef5e21a752b0d43bb955fe7e3e28d34c31ede5e089bfbd920ff08e9264c` |
| 4 | `theorem` | [cell275](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenPositiveCell.lean/declarations/cell275--649720de50dda106d5a4908e.md) | 27 | `result-track:649720de50dda106d5a4908e61a3e95d29e0aded3c420fdfa621a2b8549a5de7` |
| 5 | `theorem` | [left_pair](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenPositiveCell.lean/declarations/left-pair--45deaf502ed88acceae6429b.md) | 29 | `result-track:45deaf502ed88acceae6429b20ca57f368c5424a6c4e0a1fd7c2dad37989cee8` |
| 6 | `theorem` | [right_pair](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenPositiveCell.lean/declarations/right-pair--a2359bef4b42ca8c63b5e694.md) | 32 | `result-track:a2359bef4b42ca8c63b5e694aa8f39470c46318a5ad1965887c7e44a068ff83e` |
| 7 | `theorem` | [positive_four](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenPositiveCell.lean/declarations/positive-four--612c6306e690fe168c5685d0.md) | 35 | `result-track:612c6306e690fe168c5685d08e10948e7522f37ef0a6e5a5e46100005c2e16bc` |
| 8 | `theorem` | [cell275_test](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenPositiveCell.lean/declarations/cell275-test--e9ff48a103ecdf088984334b.md) | 38 | `result-track:e9ff48a103ecdf088984334bf3e4682d5c25351bfcc1bcb4db5ff8d84bdee328` |
| 9 | `theorem` | [cell275_term](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenPositiveCell.lean/declarations/cell275-term--d61475a839b49e7af266e504.md) | 42 | `result-track:d61475a839b49e7af266e504d1a49ed21dbb43263c5247c3137d6ae9a4dce9a2` |
| 10 | `theorem` | [original_success](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenPositiveCell.lean/declarations/original-success--fecd4467ebd6861bc86a520f.md) | 46 | `result-track:fecd4467ebd6861bc86a520feb414c42dfead647ef49f6510d8d3d01d7a767a1` |
| 11 | `theorem` | [regional_count_one](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenPositiveCell.lean/declarations/regional-count-one--552e202c190002645d9387ec.md) | 49 | `result-track:552e202c190002645d9387ec02789ace65fe1847e8eaf7e08a20e79940ad2f41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
