# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SuccPred.Variant697d3a96ddf46f2d507e12eb9d95d64ac35ad3eea264b7b210c72f709697d654

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce6efab5658cc53d2293b18be103b7f959549206",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant697d3a96ddf46f2d507e12eb9d95d64ac35ad3eea264b7b210c72f709697d654.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant697d3a96ddf46f2d507e12eb9d95d64ac35ad3eea264b7b210c72f709697d654.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant697d3a96ddf46f2d507e12eb9d95d64ac35ad3eea264b7b210c72f709697d654.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce6efab5658cc53d2293b18be103b7f959549206`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant697d3a96ddf46f2d507e12eb9d95d64ac35ad3eea264b7b210c72f709697d654.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant697d3a96ddf46f2d507e12eb9d95d64ac35ad3eea264b7b210c72f709697d654.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Fin.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant697d3a96ddf46f2d507e12eb9d95d64ac35ad3eea264b7b210c72f709697d654.lean/declarations/instance--77bb7dee1057ee43a2dba02c.md) | 21 | `declaration-track:77bb7dee1057ee43a2dba02c601705c9597df2d2a95993121d778f6c93305b03` |
| 2 | `lemma` | [orderSucc_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant697d3a96ddf46f2d507e12eb9d95d64ac35ad3eea264b7b210c72f709697d654.lean/declarations/ordersucc-eq--ebf95983044a4746f9e2b23b.md) | 32 | `result-track:ebf95983044a4746f9e2b23bf35fbf0330774f91b481ca548ecc45742cc01a1b` |
| 3 | `lemma` | [orderSucc_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant697d3a96ddf46f2d507e12eb9d95d64ac35ad3eea264b7b210c72f709697d654.lean/declarations/ordersucc-apply--00862f912334d06b15bddf18.md) | 35 | `result-track:00862f912334d06b15bddf18569e4de7896f29542b374c93fac0308eb518a366` |
| 4 | `lemma` | [orderSucc_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant697d3a96ddf46f2d507e12eb9d95d64ac35ad3eea264b7b210c72f709697d654.lean/declarations/ordersucc-last--8ee702c240005dc026a76939.md) | 39 | `result-track:8ee702c240005dc026a76939c4bb928d6f3714f6d88a535d6775bfe8a0f9e66f` |
| 5 | `lemma` | [orderSucc_castSucc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant697d3a96ddf46f2d507e12eb9d95d64ac35ad3eea264b7b210c72f709697d654.lean/declarations/ordersucc-castsucc--434541b4c4f2554580074dc5.md) | 44 | `result-track:434541b4c4f2554580074dc5a4c1913419e7bf7487752a050b31826a6753a9b8` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant697d3a96ddf46f2d507e12eb9d95d64ac35ad3eea264b7b210c72f709697d654.lean/declarations/instance--4204742a8006d97308d95fb1.md) | 51 | `declaration-track:4204742a8006d97308d95fb1cbf6eccffd199f5e06fe8e573fcd1a5c8ee32925` |
| 7 | `lemma` | [orderPred_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant697d3a96ddf46f2d507e12eb9d95d64ac35ad3eea264b7b210c72f709697d654.lean/declarations/orderpred-eq--90c0aca482cd6f2ec554a628.md) | 63 | `result-track:90c0aca482cd6f2ec554a6281fcf222cec5fc97f9cc19848d6b30cbf0309f3b9` |
| 8 | `lemma` | [orderPred_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant697d3a96ddf46f2d507e12eb9d95d64ac35ad3eea264b7b210c72f709697d654.lean/declarations/orderpred-apply--3be197a915b6e13b11b47979.md) | 66 | `result-track:3be197a915b6e13b11b479795eb41e349a637908a3db9a075b76b234a8705dad` |
| 9 | `lemma` | [orderPred_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant697d3a96ddf46f2d507e12eb9d95d64ac35ad3eea264b7b210c72f709697d654.lean/declarations/orderpred-zero--f7734617c8ae96418df0b580.md) | 70 | `result-track:f7734617c8ae96418df0b5806d39ba22cc9d8ecac0833327adc140c73784a38b` |
| 10 | `lemma` | [orderPred_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant697d3a96ddf46f2d507e12eb9d95d64ac35ad3eea264b7b210c72f709697d654.lean/declarations/orderpred-succ--8c319182ec3c6600ed420cd1.md) | 75 | `result-track:8c319182ec3c6600ed420cd134341aba2eb0a34233695302f76e4c14b8394abd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
