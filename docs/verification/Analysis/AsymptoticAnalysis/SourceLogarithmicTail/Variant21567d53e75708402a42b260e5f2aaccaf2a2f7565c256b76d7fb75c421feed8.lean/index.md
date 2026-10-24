# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SourceLogarithmicTail.Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37b488abc557994755ad6487f27e1e41985cccb1",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37b488abc557994755ad6487f27e1e41985cccb1`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LogarithmicTail` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logarithmicConstant](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/logarithmicconstant--6e685a758e6720eb77d2d03c.md) | 23 | `declaration-track:6e685a758e6720eb77d2d03c0243efeb53b6b94ab4d83e761fc9721d24367911` |
| 2 | `theorem` | [logarithmicConstant_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/logarithmicconstant-pos--2eaf3bc4f1ba85b0507f04d4.md) | 25 | `result-track:2eaf3bc4f1ba85b0507f04d473a19975289917e3daba0bcdc4764dcb7aa8e432` |
| 3 | `theorem` | [normalized_sixth_majorant](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/normalized-sixth-majorant--456eb9e6a1a396563672c720.md) | 33 | `result-track:456eb9e6a1a396563672c720c38d484a49dcb572f371faa2f1f21fe84ac682db` |
| 4 | `theorem` | [actual_norm_square_tail_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/actual-norm-square-tail-bound--b09c71466eb8a023d4864db9.md) | 54 | `result-track:b09c71466eb8a023d4864db93d00656ac08a12a7ad5e2ade88974daca4564676` |
| 5 | `theorem` | [actual_tail_error_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/actual-tail-error-bound--85533887377306073f99d3e2.md) | 74 | `result-track:85533887377306073f99d3e2da6740d064275f583f03c589c01d161bd22bd6f7` |
| 6 | `theorem` | [actual_im_square_tail_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/actual-im-square-tail-bound--708a4d4a551bb184114636e1.md) | 82 | `result-track:708a4d4a551bb184114636e1cc494816c849b123c65264aa4c02be34526bd00a` |
| 7 | `def` | [fifthHeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/fifthheight--c151cb838215e03ee3e614c3.md) | 100 | `declaration-track:c151cb838215e03ee3e614c3b9c98842d85ba3db674012b57736a0e01f0867a8` |
| 8 | `def` | [baseRadius](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/baseradius--2532a78343c742a9b200e0b2.md) | 102 | `declaration-track:2532a78343c742a9b200e0b2d0349cb3ad15e99bba18a6a595ee801cdfe0e63f` |
| 9 | `theorem` | [fifthHeight_admissible](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/fifthheight-admissible--28a13f57d8c1789b366404fd.md) | 104 | `result-track:28a13f57d8c1789b366404fdfc7b8574da86e058fe4a4c341cc8300cad17b18e` |
| 10 | `theorem` | [fifthHeight_budget](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/fifthheight-budget--dc33cf8a3a9606e83069647a.md) | 114 | `result-track:dc33cf8a3a9606e83069647a1cf4e9e8ae4787589abe5376faa7f1531299e7d4` |
| 11 | `theorem` | [fifthHeight_error_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/fifthheight-error-bound--a58ee3e09d8dc3f63ca4e747.md) | 128 | `result-track:a58ee3e09d8dc3f63ca4e74711cab6abece4074e283d5bebd0fbcd0e4eeeec12` |
| 12 | `theorem` | [fifthHeight_uniform](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/fifthheight-uniform--418b9a51d180f7c7441e7c34.md) | 137 | `result-track:418b9a51d180f7c7441e7c34f837eb3f2cc89d018af3fc4f89d1f925dd472e85` |
| 13 | `theorem` | [fifthHeight_tendsto_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/fifthheight-tendsto-zero--f64e35752fc134ea0c51daa9.md) | 146 | `result-track:f64e35752fc134ea0c51daa914889fc56e47e549490f94feee15b80bac15e499` |
| 14 | `theorem` | [fifthHeight_sup_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/fifthheight-sup-bound--bf782c62ae630465f20ab5c8.md) | 154 | `result-track:bf782c62ae630465f20ab5c8f43fc4ea5bead748dd3fe08954c9fa16fefc415a` |
| 15 | `theorem` | [coordinate_squares_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/coordinate-squares-summable--9c99b2929228ff96e41fdf4a.md) | 164 | `result-track:9c99b2929228ff96e41fdf4a30c0f23fc0fae5077fb769ada604c187469d192d` |
| 16 | `theorem` | [signed_square_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/signed-square-tsum--2c1b3957a5bdf9e0f249c292.md) | 175 | `result-track:2c1b3957a5bdf9e0f249c29206bcd28ec81bf13b64de342b907bcebf3acf8a88` |
| 17 | `def` | [realSquareMass](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/realsquaremass--1e525583ccb90849653bc6a2.md) | 186 | `declaration-track:1e525583ccb90849653bc6a24111cdbd4211b0c40e34fa22cd939cca104d86b0` |
| 18 | `def` | [imaginarySquareMass](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/imaginarysquaremass--89fbe08bcaf80826c176cc26.md) | 190 | `declaration-track:89fbe08bcaf80826c176cc26d44fe9a31270ca12cc6ef8165710617c51f828c1` |
| 19 | `def` | [signedFull](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/signedfull--1b84ab9e41352f456029faef.md) | 193 | `declaration-track:1b84ab9e41352f456029faef465c9ce417968e59744a5b4a46965c6fb597e3bc` |
| 20 | `def` | [signedHead](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/signedhead--9494b648369b69e5f733875c.md) | 196 | `declaration-track:9494b648369b69e5f733875c1cc04931f3805b0cd040220cdcacbd83dd6df3d7` |
| 21 | `theorem` | [coordinate_masses_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/coordinate-masses-summable--62a7832c4181dfa9c05a1d69.md) | 200 | `result-track:62a7832c4181dfa9c05a1d69e125062f1f7dc1e73c09c73bd8be8ce277eca03b` |
| 22 | `theorem` | [signedFull_eq_negative_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/signedfull-eq-negative-re--8ca4daddeded5679313bc527.md) | 205 | `result-track:8ca4daddeded5679313bc527d63a173c7dc858b6d20280e6ac7fc2e4cb78d6dd` |
| 23 | `theorem` | [signedHead_eq_negative_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/signedhead-eq-negative-re--2752421e5bed1f241d946786.md) | 212 | `result-track:2752421e5bed1f241d946786b23d5b5dda979028a7e98bd3a4514b972efcdead` |
| 24 | `theorem` | [signed_partition](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/signed-partition--ad48d095e2bf2aad31b3ea1b.md) | 218 | `result-track:ad48d095e2bf2aad31b3ea1bb00b648a305f293e384b75e3997d72eb6e01e4db` |
| 25 | `theorem` | [signed_truncation_error](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/signed-truncation-error--0252a650ac46c244fafdb46f.md) | 224 | `result-track:0252a650ac46c244fafdb46fdadf6db8787b6ce6abd9bc948890593225ceed1f` |
| 26 | `theorem` | [fifthHeight_signed_error](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/fifthheight-signed-error--529540293d9f384332ae5067.md) | 230 | `result-track:529540293d9f384332ae506760d314a5b4b432b2422dcc63684a8a4fd81a8261` |
| 27 | `theorem` | [head_upper_transfers](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/head-upper-transfers--cc037c19d23758e5240189c1.md) | 236 | `result-track:cc037c19d23758e5240189c14bb24dcfeff02b564568af67f3a21682b7a4df43` |
| 28 | `theorem` | [full_upper_transfers](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/declarations/full-upper-transfers--15aae8a1a067605f338787b9.md) | 247 | `result-track:15aae8a1a067605f338787b947616d68a9f78c1bc440255e5ae43cc8428f5607` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
