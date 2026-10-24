# Verification target: GRWTSK.NumberTheory.Moebius.FixedToUniformSquareModulusObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3de5460c3d45cb99fcc88ace6731008bce87c18",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/FixedToUniformSquareModulusObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/FixedToUniformSquareModulusObstruction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/FixedToUniformSquareModulusObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3de5460c3d45cb99fcc88ace6731008bce87c18`.

Source path: `GRWTSK/NumberTheory/Moebius/FixedToUniformSquareModulusObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/FixedToUniformSquareModulusObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.SquareModulusAPConjectureJunction`](../../../../mathematics/NumberTheory/Moebius/SquareModulusAPConjectureJunction.lean/index.md) — import line 15; pinned internal source present.
- `Lean.Elab.Tactic.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PointwiseExistsBound](../../../../mathematics/NumberTheory/Moebius/FixedToUniformSquareModulusObstruction.lean/declarations/pointwiseexistsbound--41ed05ab04936fa839bd90df.md) | 48 | `declaration-track:41ed05ab04936fa839bd90dfcbc9a6c51adae4f717f189b407a9acd782728353` |
| 2 | `def` | [UniformExistsBound](../../../../mathematics/NumberTheory/Moebius/FixedToUniformSquareModulusObstruction.lean/declarations/uniformexistsbound--f095faac519b9e33ef7e9749.md) | 54 | `declaration-track:f095faac519b9e33ef7e9749bbb8f8eddede4aa96dff29d551d72190523f9958` |
| 3 | `def` | [naturalDominanceRelation](../../../../mathematics/NumberTheory/Moebius/FixedToUniformSquareModulusObstruction.lean/declarations/naturaldominancerelation--9e84a2a8de6d2d06ebd881af.md) | 60 | `declaration-track:9e84a2a8de6d2d06ebd881af0d5dbcd0d3bd05ef3634cb344cd318469388d37a` |
| 4 | `theorem` | [pointwiseNaturalDominance](../../../../mathematics/NumberTheory/Moebius/FixedToUniformSquareModulusObstruction.lean/declarations/pointwisenaturaldominance--87fb3678d1e5304794eac7b1.md) | 66 | `result-track:87fb3678d1e5304794eac7b177c2d4c83acbbc2d5d7b0a3f8bff6a65f55f026a` |
| 5 | `theorem` | [not_uniformNaturalDominance](../../../../mathematics/NumberTheory/Moebius/FixedToUniformSquareModulusObstruction.lean/declarations/not-uniformnaturaldominance--a348969aba98beb1625d7c71.md) | 72 | `result-track:a348969aba98beb1625d7c71f97818c3962b048fd1843b713190fdb792a2892d` |
| 6 | `theorem` | [pointwiseExists_doesNotImply_uniformExists](../../../../mathematics/NumberTheory/Moebius/FixedToUniformSquareModulusObstruction.lean/declarations/pointwiseexists-doesnotimply-uniformexists--6a267fef9a7d993d0584dbd0.md) | 81 | `result-track:6a267fef9a7d993d0584dbd0ade16d681a6a79e806dca035966947f84cf46abf` |
| 7 | `def` | [FixedToUniformQuantifierExchangeRefutedAtScope](../../../../mathematics/NumberTheory/Moebius/FixedToUniformSquareModulusObstruction.lean/declarations/fixedtouniformquantifierexchangerefutedatscope--e276dfadabac7b8a6b647ab7.md) | 92 | `declaration-track:e276dfadabac7b8a6b647ab77c350b55664804b3a578a0ce60869ab39a60ac4a` |
| 8 | `theorem` | [fixedToUniformQuantifierExchangeRefutedAtScope](../../../../mathematics/NumberTheory/Moebius/FixedToUniformSquareModulusObstruction.lean/declarations/fixedtouniformquantifierexchangerefutedatscope--7683a8fb2d1c62fdb5dde4c5.md) | 96 | `result-track:7683a8fb2d1c62fdb5dde4c573583295f4bc39e4340d1c6632194534ef090b9b` |
| 9 | `structure` | [PointwiseToUniformBoundAdapter](../../../../mathematics/NumberTheory/Moebius/FixedToUniformSquareModulusObstruction.lean/declarations/pointwisetouniformboundadapter--8d5b467491d750280c79837b.md) | 102 | `declaration-track:8d5b467491d750280c79837b3a75874fb105d1da85f0436e81fbe31b0e990216` |
| 10 | `def` | [fixedFormVsUniformSquareModulusBoundary](../../../../mathematics/NumberTheory/Moebius/FixedToUniformSquareModulusObstruction.lean/declarations/fixedformvsuniformsquaremodulusboundary--60708d60e2c4523ea56b337d.md) | 110 | `declaration-track:60708d60e2c4523ea56b337d3dcaeec2a03ca16492f7159462296fbcfbda3548` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
