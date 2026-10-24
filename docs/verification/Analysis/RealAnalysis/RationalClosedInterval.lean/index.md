# Verification target: GRWTSK.Analysis.Real.RationalClosedInterval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61f114ac2b3c974fe72ef56ccaca54fa1f1e1122",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Real/RationalClosedInterval.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/RealAnalysis/RationalClosedInterval.lean/index.md) · [Full source](../../../../mathematics/Analysis/RealAnalysis/RationalClosedInterval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61f114ac2b3c974fe72ef56ccaca54fa1f1e1122`.

Source path: `GRWTSK/Analysis/Real/RationalClosedInterval.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/real/RationalClosedInterval.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Interval](../../../../mathematics/Analysis/RealAnalysis/RationalClosedInterval.lean/declarations/interval--520fe9007c39ed2d18453446.md) | 27 | `declaration-track:520fe9007c39ed2d1845344604573423bb9dc8ca785a51c1e1b879b5622bd1f2` |
| 2 | `def` | [Contains](../../../../mathematics/Analysis/RealAnalysis/RationalClosedInterval.lean/declarations/contains--fb722beaca8d36ab747ca524.md) | 36 | `declaration-track:fb722beaca8d36ab747ca5248896e69b3c933657a70cfb5b7bb5cc9f430902e4` |
| 3 | `def` | [width](../../../../mathematics/Analysis/RealAnalysis/RationalClosedInterval.lean/declarations/width--dd3b3c8f5a9dbd4638f7b0b9.md) | 40 | `declaration-track:dd3b3c8f5a9dbd4638f7b0b9081d69767e132b7610c8e35d04bee2c8b82b4e22` |
| 4 | `theorem` | [width_nonneg](../../../../mathematics/Analysis/RealAnalysis/RationalClosedInterval.lean/declarations/width-nonneg--6fa36e5d0c4f9f317c893a29.md) | 44 | `result-track:6fa36e5d0c4f9f317c893a299558946c8274f6d7f944637fb5f1f26d0b94b6ff` |
| 5 | `theorem` | [cast_width](../../../../mathematics/Analysis/RealAnalysis/RationalClosedInterval.lean/declarations/cast-width--fbf8a6aca8afb4a7a1142d7f.md) | 49 | `result-track:fbf8a6aca8afb4a7a1142d7fc640c59d99b806ff483c362112bad0c4b500315a` |
| 6 | `def` | [singleton](../../../../mathematics/Analysis/RealAnalysis/RationalClosedInterval.lean/declarations/singleton--b5c75a3594bb8697a336af48.md) | 55 | `declaration-track:b5c75a3594bb8697a336af4842099b583677a22eff6fe61bd6b9a7cf857715ba` |
| 7 | `theorem` | [singleton_width](../../../../mathematics/Analysis/RealAnalysis/RationalClosedInterval.lean/declarations/singleton-width--90522cdc51e9c974a7d8b0e0.md) | 60 | `result-track:90522cdc51e9c974a7d8b0e0adf44d326a56109789a75358afed88b56bd7c7da` |
| 8 | `theorem` | [singleton_contains](../../../../mathematics/Analysis/RealAnalysis/RationalClosedInterval.lean/declarations/singleton-contains--b67ef73ece9925737d656aa8.md) | 65 | `result-track:b67ef73ece9925737d656aa8fdcbb4557ad2d9b6513953724e062d9653493728` |
| 9 | `def` | [add](../../../../mathematics/Analysis/RealAnalysis/RationalClosedInterval.lean/declarations/add--5635bf5540016ea9e2dc9954.md) | 70 | `declaration-track:5635bf5540016ea9e2dc9954607f62253e7b9c06fc14526d7349d3e7dc1789c4` |
| 10 | `theorem` | [contains_add](../../../../mathematics/Analysis/RealAnalysis/RationalClosedInterval.lean/declarations/contains-add--0196346c8c310af569e953dc.md) | 76 | `result-track:0196346c8c310af569e953dc854be2d74c040a39d00ce8845f0d48c4aec7ba9e` |
| 11 | `theorem` | [add_width](../../../../mathematics/Analysis/RealAnalysis/RationalClosedInterval.lean/declarations/add-width--ed82c1146b251ebd9f2abf54.md) | 88 | `result-track:ed82c1146b251ebd9f2abf54d11081a1b895399d8ae5176cd8997e1be130bf2f` |
| 12 | `theorem` | [narrow_does_not_imply_contains_fixture](../../../../mathematics/Analysis/RealAnalysis/RationalClosedInterval.lean/declarations/narrow-does-not-imply-contains-fixture--009287d4cb44ee79f132c532.md) | 95 | `result-track:009287d4cb44ee79f132c5329d48d17f46b036956eb152aa9e80bbcb8f997237` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
