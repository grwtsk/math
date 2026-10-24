# Verification target: GRWTSK.Analysis.Operator.FramedLiftModes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65c1978e9f760b6097398a7ac3d2788438350b72",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/FramedLiftModes.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/FramedLiftModes.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/FramedLiftModes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65c1978e9f760b6097398a7ac3d2788438350b72`.

Source path: `GRWTSK/Analysis/Operator/FramedLiftModes.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/FramedLiftModes.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.KTheory.FormalKK`](../../../../mathematics/Algebra/KTheory/FormalKK.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.LinearAlgebra.FramedFiberPort`](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Variance](../../../../mathematics/Analysis/OperatorTheory/FramedLiftModes.lean/declarations/variance--d6add889e0fa21cd769682cf.md) | 12 | `declaration-track:d6add889e0fa21cd769682cf394c23194f2078475578eeb0f47122504142a29a` |
| 2 | `inductive` | [LiftMode](../../../../mathematics/Analysis/OperatorTheory/FramedLiftModes.lean/declarations/liftmode--ec26d801a8ecf12438fee297.md) | 19 | `declaration-track:ec26d801a8ecf12438fee29710a969aa9c7d8e9ef0c687b332de8e966edca26b` |
| 3 | `structure` | [LiftProfile](../../../../mathematics/Analysis/OperatorTheory/FramedLiftModes.lean/declarations/liftprofile--dc5abff64188d1513f52edbe.md) | 28 | `declaration-track:dc5abff64188d1513f52edbed694f4dd8b722839dda38307f988bbc6ca3f5c4f` |
| 4 | `structure` | [FrameConjugationLift](../../../../mathematics/Analysis/OperatorTheory/FramedLiftModes.lean/declarations/frameconjugationlift--6f4ae56e2b05cd19e1f7d417.md) | 46 | `declaration-track:6f4ae56e2b05cd19e1f7d4174959b1e0dd99034454ebacabc3d27b5e47497173` |
| 5 | `def` | [targetOperator](../../../../mathematics/Analysis/OperatorTheory/FramedLiftModes.lean/declarations/targetoperator--f1a5da535559a699c2033ba8.md) | 55 | `declaration-track:f1a5da535559a699c2033ba89ea17fa42588d68beaa3e9b94cc65c25ad99aff2` |
| 6 | `theorem` | [intertwines](../../../../mathematics/Analysis/OperatorTheory/FramedLiftModes.lean/declarations/intertwines--9ed7e58e41cad28577266e8d.md) | 61 | `result-track:9ed7e58e41cad28577266e8d79d93b030c5428f9206d15e512b935a38823dc3f` |
| 7 | `structure` | [CompressionExtension](../../../../mathematics/Analysis/OperatorTheory/FramedLiftModes.lean/declarations/compressionextension--229c85f7695ff3854ece971c.md) | 70 | `declaration-track:229c85f7695ff3854ece971c3cf84ce6afa9b564db3b3013b2e8c3183efdcff5` |
| 8 | `def` | [lostComplement](../../../../mathematics/Analysis/OperatorTheory/FramedLiftModes.lean/declarations/lostcomplement--5d27165137de469e9d4909ff.md) | 80 | `declaration-track:5d27165137de469e9d4909fffda82d38458216950e4dd4e2a1d796c9ea8cd648` |
| 9 | `theorem` | [project_include_apply](../../../../mathematics/Analysis/OperatorTheory/FramedLiftModes.lean/declarations/project-include-apply--e2942414fcc42d1e5a0be83f.md) | 85 | `result-track:e2942414fcc42d1e5a0be83f30d62fe25f49eb6a04cac609e5fadc85a788f1c9` |
| 10 | `theorem` | [lostComplement_include](../../../../mathematics/Analysis/OperatorTheory/FramedLiftModes.lean/declarations/lostcomplement-include--d66e43e9cd8ba6c5c45b1684.md) | 92 | `result-track:d66e43e9cd8ba6c5c45b16846b6c04a9e21afaa268afbc37337f8756d909693f` |
| 11 | `theorem` | [project_lostComplement](../../../../mathematics/Analysis/OperatorTheory/FramedLiftModes.lean/declarations/project-lostcomplement--4309c5d8a5b0f394a042a89b.md) | 98 | `result-track:4309c5d8a5b0f394a042a89be540230f893d2b4dc95eda91541b6ec1a939f8a0` |
| 12 | `structure` | [ChainIntertwinerLift](../../../../mathematics/Analysis/OperatorTheory/FramedLiftModes.lean/declarations/chainintertwinerlift--553c8413b61512b1357db315.md) | 118 | `declaration-track:553c8413b61512b1357db315b9f7bf8dd2fc662e071c168ac41d1b50bf8929f4` |
| 13 | `structure` | [BivariantOperatorLift](../../../../mathematics/Analysis/OperatorTheory/FramedLiftModes.lean/declarations/bivariantoperatorlift--dd840ceb673c84e32a588072.md) | 139 | `declaration-track:dd840ceb673c84e32a5880729fe9abad89a6c833881617ab041993ac03e176f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
