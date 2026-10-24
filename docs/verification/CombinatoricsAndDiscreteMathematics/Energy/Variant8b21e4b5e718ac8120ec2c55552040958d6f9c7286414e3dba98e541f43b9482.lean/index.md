# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Energy.Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19ff627c03a41b7f06428e34d91405f26cd701ef",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19ff627c03a41b7f06428e34d91405f26cd701ef`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Energy/Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.CochainReconstruction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.SemiLocalDefect.Trace.Packet` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [packetNormSq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482.lean/declarations/packetnormsq--61daae2e3bf1bb34e255416b.md) | 18 | `declaration-track:61daae2e3bf1bb34e255416b536867cf462a5168124395c5276771f130f00477` |
| 2 | `def` | [packetEnergy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482.lean/declarations/packetenergy--8ce825bec324b9749d8cf876.md) | 24 | `declaration-track:8ce825bec324b9749d8cf876899b3c55c12e4b6ecb5b120be615b729c5592a25` |
| 3 | `def` | [weightedIncrementEnergy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482.lean/declarations/weightedincrementenergy--142eb041af5e9887675d613b.md) | 36 | `declaration-track:142eb041af5e9887675d613b68cc5781cc3af2829d6f8b094b69ed4ffc6b943c` |
| 4 | `theorem` | [packetEnergy_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482.lean/declarations/packetenergy-nonnegative--20b3a5e3705e8c7300c7f78a.md) | 49 | `result-track:20b3a5e3705e8c7300c7f78aca196ad46e343766ede964012f37033f30417f13` |
| 5 | `theorem` | [packetEnergy_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482.lean/declarations/packetenergy-monotone--8128f16a8d7597cb64e97a79.md) | 65 | `result-track:8128f16a8d7597cb64e97a79fb864622b6873998ff739e98d291ed35efd70fd7` |
| 6 | `theorem` | [packetEnergy_bounded_by_packetNorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482.lean/declarations/packetenergy-bounded-by-packetnorm--7d12a32a09a886016278ce8c.md) | 88 | `result-track:7d12a32a09a886016278ce8c0b9b35fa3e621971b8b9cd1ca8305ff74946c651` |
| 7 | `theorem` | [packetEnergy_increment_eq_weightedIncrement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482.lean/declarations/packetenergy-increment-eq-weightedincrement--c880406efec7b51bd6b32c06.md) | 108 | `result-track:c880406efec7b51bd6b32c0673384ee24dcbb97eb052f03baf8a6ca13b07d465` |
| 8 | `def` | [packetEnergyPathSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482.lean/declarations/packetenergypathsum--56e5c6f3a9fa7d0ddd70b275.md) | 127 | `declaration-track:56e5c6f3a9fa7d0ddd70b2756d5d422b2538e5df28513789c9feddcb6be34cad` |
| 9 | `theorem` | [packetEnergy_chain_telescope](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482.lean/declarations/packetenergy-chain-telescope--91a6c3768bdfc816cd4c1cb7.md) | 145 | `result-track:91a6c3768bdfc816cd4c1cb7aba5809a9dd7a25e953cdc87efeed623021d76bb` |
| 10 | `theorem` | [packetEnergy_enumeration_independent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Energy/Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482.lean/declarations/packetenergy-enumeration-independent--0ff5210eb669fe065d69a2a0.md) | 173 | `result-track:0ff5210eb669fe065d69a2a0ce676914157b75a4981780f452acd28278c3c590` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
