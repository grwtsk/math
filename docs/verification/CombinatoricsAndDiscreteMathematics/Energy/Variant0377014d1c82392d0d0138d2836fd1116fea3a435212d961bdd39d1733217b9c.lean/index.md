# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Energy.Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d855865b9b80539be8a24370246033f02eb0049",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d855865b9b80539be8a24370246033f02eb0049`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Energy/Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.CochainReconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.SemiLocalDefect.Trace.Packet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [packetNormSq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c.lean/declarations/packetnormsq--be663d17c25cbff3ad635ba7.md) | 26 | `declaration-track:be663d17c25cbff3ad635ba7198a8573729e3e8e649d0cb7371ebfa2fd1db7ec` |
| 2 | `def` | [packetEnergy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c.lean/declarations/packetenergy--49a0d6bd7c2cfe874aeea505.md) | 32 | `declaration-track:49a0d6bd7c2cfe874aeea5050b6a6e8d05b1eb4ecc92be16bfa7fcc7074d7e19` |
| 3 | `def` | [weightedIncrementEnergy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c.lean/declarations/weightedincrementenergy--58f6ca512770598c7f59a1a9.md) | 44 | `declaration-track:58f6ca512770598c7f59a1a90864233ff1f0afd79e692fdabe0ef6bfb0b26d32` |
| 4 | `theorem` | [packetEnergy_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c.lean/declarations/packetenergy-nonnegative--eeb0b31ee5d85efeec2a99d8.md) | 57 | `result-track:eeb0b31ee5d85efeec2a99d883fbbb5f5957709ce3582043177151129ad0f30b` |
| 5 | `theorem` | [packetEnergy_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c.lean/declarations/packetenergy-monotone--0f4bf8ca49faa49dd8c07769.md) | 73 | `result-track:0f4bf8ca49faa49dd8c077697af367d4acf1eee32052257fe9672a4f0e69af1a` |
| 6 | `theorem` | [packetEnergy_bounded_by_packetNorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c.lean/declarations/packetenergy-bounded-by-packetnorm--6fd58ea53d0a377849cb528a.md) | 96 | `result-track:6fd58ea53d0a377849cb528a9ae243776a4f387e0a8827b542424c3cb4138a03` |
| 7 | `theorem` | [packetEnergy_increment_eq_weightedIncrement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c.lean/declarations/packetenergy-increment-eq-weightedincrement--6c5947cb1306ea67a50dc4d8.md) | 116 | `result-track:6c5947cb1306ea67a50dc4d8f71ab24c3eaeb735785c7e4b3a01f73792aa678d` |
| 8 | `def` | [packetEnergyPathSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c.lean/declarations/packetenergypathsum--e8256015051af6597cd8ce65.md) | 135 | `declaration-track:e8256015051af6597cd8ce6577a36adb1d773e2a01511f9d3ceef10c9c17ab91` |
| 9 | `theorem` | [packetEnergy_chain_telescope](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c.lean/declarations/packetenergy-chain-telescope--2f594508ef6e750047af1980.md) | 153 | `result-track:2f594508ef6e750047af1980cd42ffbf4355f1a8859f6e952fa16d521da75299` |
| 10 | `theorem` | [packetEnergy_enumeration_independent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant0377014d1c82392d0d0138d2836fd1116fea3a435212d961bdd39d1733217b9c.lean/declarations/packetenergy-enumeration-independent--46d8702345dfa49c94ebbfec.md) | 181 | `result-track:46d8702345dfa49c94ebbfecb64b7a6870c8f319dd6ebf8fd39c172c173dd3cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
