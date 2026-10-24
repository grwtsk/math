# Verification target: GRWTSK.Analysis.ErrorBounds.IntegerExpStateFold

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4cd1841b54069a995978b21a010c4106dc913b0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/IntegerExpStateFold.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/IntegerExpStateFold.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/IntegerExpStateFold.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4cd1841b54069a995978b21a010c4106dc913b0`.

Source path: `GRWTSK/Analysis/ErrorBounds/IntegerExpStateFold.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/IntegerExpStateFold.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.IntegerDyadicSquare`](../../../../mathematics/Analysis/ErrorBounds/IntegerDyadicSquare.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [initial](../../../../mathematics/Analysis/ErrorBounds/IntegerExpStateFold.lean/declarations/initial--2410d787a0a5b5271cd6c4b1.md) | 24 | `declaration-track:2410d787a0a5b5271cd6c4b1dc8d0fecf472a880f867652ab387a13e19f1e87c` |
| 2 | `theorem` | [initial_refines](../../../../mathematics/Analysis/ErrorBounds/IntegerExpStateFold.lean/declarations/initial-refines--f70c71569ba2f3f60245f39b.md) | 31 | `result-track:f70c71569ba2f3f60245f39b3ae6725f15902ad56e11563e26442821377b534f` |
| 3 | `theorem` | [run_refines](../../../../mathematics/Analysis/ErrorBounds/IntegerExpStateFold.lean/declarations/run-refines--fc357f9ce59f8480de6d5f7d.md) | 37 | `result-track:fc357f9ce59f8480de6d5f7df5f4b4639bedc78418c13bfff2d37060d2cebe1c` |
| 4 | `def` | [exponential](../../../../mathematics/Analysis/ErrorBounds/IntegerExpStateFold.lean/declarations/exponential--5950a441206f1aa6aa7abcbb.md) | 46 | `declaration-track:5950a441206f1aa6aa7abcbb7d61f395582a21dcdc41bd116676bcc6e90abf33` |
| 5 | `theorem` | [exponential_eq](../../../../mathematics/Analysis/ErrorBounds/IntegerExpStateFold.lean/declarations/exponential-eq--6b75d7990b7762817ad7b8b5.md) | 49 | `result-track:6b75d7990b7762817ad7b8b50f6801f1ba6d3e73b06f27fb658088d3c9336763` |
| 6 | `theorem` | [exponential_eq_reference](../../../../mathematics/Analysis/ErrorBounds/IntegerExpStateFold.lean/declarations/exponential-eq-reference--839de3dd4c033c7eecc277fa.md) | 54 | `result-track:839de3dd4c033c7eecc277fa4e3046fdcea3c73dfe98688fb830f51e9d9cbc37` |
| 7 | `def` | [withLog](../../../../mathematics/Analysis/ErrorBounds/IntegerExpStateFold.lean/declarations/withlog--9d9ae259ff6f6e43d1c11670.md) | 58 | `declaration-track:9d9ae259ff6f6e43d1c11670bf3095c0b6c562e61524448c24af4dc02294845d` |
| 8 | `def` | [powerValue](../../../../mathematics/Analysis/ErrorBounds/IntegerExpStateFold.lean/declarations/powervalue--12fe4b780e314b21a3b754c8.md) | 63 | `declaration-track:12fe4b780e314b21a3b754c83546310e39b51e5c285dd75556be14283e8e520d` |
| 9 | `theorem` | [powerValue_eq](../../../../mathematics/Analysis/ErrorBounds/IntegerExpStateFold.lean/declarations/powervalue-eq--3deedbb64e2db53535073e4d.md) | 66 | `result-track:3deedbb64e2db53535073e4d7801062c57a11dfbce9865446a0256882848fae7` |
| 10 | `theorem` | [powerValue_sound](../../../../mathematics/Analysis/ErrorBounds/IntegerExpStateFold.lean/declarations/powervalue-sound--18bd64ca078e4e8c5dde1268.md) | 72 | `result-track:18bd64ca078e4e8c5dde1268d785e598903456f756622bcd924d5bf927aacdff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
