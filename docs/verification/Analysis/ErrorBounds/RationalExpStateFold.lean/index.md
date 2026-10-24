# Verification target: GRWTSK.Analysis.ErrorBounds.RationalExpStateFold

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c5383337b65dfcb0405314dd27e7a675c0da873",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/RationalExpStateFold.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c5383337b65dfcb0405314dd27e7a675c0da873`.

Source path: `GRWTSK/Analysis/ErrorBounds/RationalExpStateFold.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/RationalExpStateFold.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.BigOperators.IndexedStateFold`](../../../../mathematics/Algebra/BigOperators/IndexedStateFold.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.RationalPowerValue`](../../../../mathematics/Analysis/ErrorBounds/RationalPowerValue.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TaylorState](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/declarations/taylorstate--47d550bc5c1271474916eee5.md) | 25 | `declaration-track:47d550bc5c1271474916eee52cfda5089124801f8c4e42c7eb8a3d9b79c37d42` |
| 2 | `def` | [taylorStep](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/declarations/taylorstep--d4dc0078a29c07688bf0bfe5.md) | 27 | `declaration-track:d4dc0078a29c07688bf0bfe5f796e4fa8ce2c3a43e370d7716af61e6328ac08f` |
| 3 | `def` | [taylorSpec](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/declarations/taylorspec--2743f0c2b1910a1fc0333f5d.md) | 31 | `declaration-track:2743f0c2b1910a1fc0333f5d168c3b1743d6e919ee2bb0f641d92dba501ce0e8` |
| 4 | `theorem` | [taylorStep_spec](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/declarations/taylorstep-spec--a452ef3f32005a25fb71055a.md) | 34 | `result-track:a452ef3f32005a25fb71055a496a86dfb1dae309f7af1df37f8c29d14bc52eea` |
| 5 | `def` | [taylor](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/declarations/taylor--fe2431cb2529dc92ec3be014.md) | 39 | `declaration-track:fe2431cb2529dc92ec3be014046dabdf82a0def4a5957f88922b30cd4727d0df` |
| 6 | `theorem` | [taylor_eq](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/declarations/taylor-eq--9ad3660862136efa570622b8.md) | 43 | `result-track:9ad3660862136efa570622b89d2e371ebb12a12f852348df1e04cd0de208218c` |
| 7 | `def` | [squareStep](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/declarations/squarestep--c58ea3c7cf2fbb730c8b743d.md) | 50 | `declaration-track:c58ea3c7cf2fbb730c8b743df231ef2437b0969cd89ba596ef87aaf593f615e3` |
| 8 | `def` | [initial](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/declarations/initial--6e5ec53f797a528a1b9026cd.md) | 55 | `declaration-track:6e5ec53f797a528a1b9026cd5f8d4383cbd1c76ce3739ac660b5cb29d6d1a7dd` |
| 9 | `def` | [squareSpec](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/declarations/squarespec--d6268e19459d13b6cad53ca0.md) | 61 | `declaration-track:d6268e19459d13b6cad53ca0433fd593ba71eae495e567e973a497c526adf5e3` |
| 10 | `theorem` | [initial_eq](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/declarations/initial-eq--f0771a344587c72993992f0e.md) | 69 | `result-track:f0771a344587c72993992f0e146d96c175db011a6fbb60369f6c9e30fda92ba1` |
| 11 | `theorem` | [squareStep_spec](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/declarations/squarestep-spec--6b351f8a4259a1c2a36d6c1e.md) | 74 | `result-track:6b351f8a4259a1c2a36d6c1e3fc83679456ea931cbc9e595fc1355c6fd4cca46` |
| 12 | `def` | [exponential](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/declarations/exponential--852cf109a512e401db1b716b.md) | 80 | `declaration-track:852cf109a512e401db1b716b334a47c3152470a561e16a6f40fd8802ace6b900` |
| 13 | `theorem` | [outward_congr](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/declarations/outward-congr--af58e16e85d5b264e34a3225.md) | 84 | `result-track:af58e16e85d5b264e34a32252eca4729543c007b9fb35be942480b1e5b528b53` |
| 14 | `theorem` | [exponential_eq](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/declarations/exponential-eq--57776caeee58640488cafc2c.md) | 96 | `result-track:57776caeee58640488cafc2c7866020669ef170cd1973afb8f12ec4ac111ffd9` |
| 15 | `def` | [withLog](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/declarations/withlog--1ef76445990c9112aad15f1c.md) | 114 | `declaration-track:1ef76445990c9112aad15f1c27c664eee63067f4a7e803e1c00f8d6fcb3888e0` |
| 16 | `def` | [powerValue](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/declarations/powervalue--7a6cb6d1c3fddeb0ddfeeac8.md) | 119 | `declaration-track:7a6cb6d1c3fddeb0ddfeeac872c36b06748e565c81d9b395601a4b7874e08a6a` |
| 17 | `theorem` | [powerValue_eq](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/declarations/powervalue-eq--4062ab8de670aa009351cbb4.md) | 123 | `result-track:4062ab8de670aa009351cbb4228f5b8a3504fc0a73591e4fcab796a77b5167e6` |
| 18 | `theorem` | [powerValue_sound](../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/declarations/powervalue-sound--2fee877b2d0e93c531220cfb.md) | 131 | `result-track:2fee877b2d0e93c531220cfbf625b1c26b0221e04d9cab018d84705e7a9a9380` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
