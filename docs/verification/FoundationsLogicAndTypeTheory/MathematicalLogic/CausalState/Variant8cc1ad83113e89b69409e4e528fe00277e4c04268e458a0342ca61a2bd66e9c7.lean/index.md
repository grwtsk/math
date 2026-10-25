# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CausalState.Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c75d0fbf4468355ea9c3ea0a184e6715006ade7b",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c75d0fbf4468355ea9c3ea0a184e6715006ade7b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.ObservableRecursion` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Quot` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CausalEquivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/causalequivalent--0160ebedf558daad9253d06b.md) | 34 | `declaration-track:0160ebedf558daad9253d06b1452ebcd64df9f5bcd1b7e3dd11cafdb02fdb6f0` |
| 2 | `theorem` | [causalEquivalent_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/causalequivalent-refl--cee68c525763ee5d86456091.md) | 41 | `result-track:cee68c525763ee5d86456091e6f1548eda06d1c32a1e76fc79c40f32001c47d5` |
| 3 | `theorem` | [causalEquivalent_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/causalequivalent-symm--8e434acb62dd2c58fa82d4e7.md) | 48 | `result-track:8e434acb62dd2c58fa82d4e765c18446a5b991bd3b51f358c34d4c5274e684e0` |
| 4 | `theorem` | [causalEquivalent_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/causalequivalent-trans--24acd66e4a96d87a9dcbaaa9.md) | 56 | `result-track:24acd66e4a96d87a9dcbaaa94920dc549feabc200599eae42661f0c76fce5f4c` |
| 5 | `def` | [causalSetoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/causalsetoid--b9f7bc2c5d8907469e9f6824.md) | 66 | `declaration-track:b9f7bc2c5d8907469e9f6824986f6954a860e483bfac3b9621623abf14dd8acd` |
| 6 | `def` | [CausalState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/causalstate--a8cc5f24b586409f4c10850a.md) | 76 | `declaration-track:a8cc5f24b586409f4c10850a42ab4465c93f805ea9628ba679101130557932a2` |
| 7 | `def` | [toCausal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/tocausal--93021a15ae4d14d197cda6e1.md) | 81 | `declaration-track:93021a15ae4d14d197cda6e1b2fdec614dd708e98d4e7c4d6f2cf0e0295c42f3` |
| 8 | `theorem` | [toCausal_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/tocausal-surjective--dc32a7c5545ae2d401e7cba1.md) | 87 | `result-track:dc32a7c5545ae2d401e7cba1c8409a8c0f0a067521af0f9e6d7b916f69247385` |
| 9 | `theorem` | [toCausal_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/tocausal-eq-iff--7f13e2052521c8617d631d35.md) | 96 | `result-track:7f13e2052521c8617d631d35113c46020a91392cd523994c56d0d234b044dc47` |
| 10 | `theorem` | [causalEquivalent_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/causalequivalent-step--68a081a86b7bfc3d18030436.md) | 108 | `result-track:68a081a86b7bfc3d1803043662dbb632cc93d51fe6c7f46b624e4d9acbfeeed3` |
| 11 | `def` | [causalStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/causalstep--6781be703a8dacab8b0452fb.md) | 118 | `declaration-track:6781be703a8dacab8b0452fbf6abab52efc3f0b5c568c5bdd249c54b30aecc88` |
| 12 | `theorem` | [causalStep_toCausal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/causalstep-tocausal--744f684c296e8e3bc63a8001.md) | 126 | `result-track:744f684c296e8e3bc63a800120db13ec806466eef7b8ab996bd83147fc93fc23` |
| 13 | `def` | [runCausal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/runcausal--954c86b5332e04e48736617b.md) | 135 | `declaration-track:954c86b5332e04e48736617b98d57dfe5b8b1b70762f4b8baeced671383cbb15` |
| 14 | `theorem` | [runCausal_toCausal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/runcausal-tocausal--d0f873b8dab20cce754d7b1f.md) | 144 | `result-track:d0f873b8dab20cce754d7b1f3beeb05fc1fb0d34f24f23a659b2b6dfa51fea74` |
| 15 | `theorem` | [causalEquivalent_observe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/causalequivalent-observe--302b0f90866aedea4e79b1f9.md) | 157 | `result-track:302b0f90866aedea4e79b1f9c0ebd4b211076bc0c87aa2061f42067a5f9db1d1` |
| 16 | `def` | [causalObserve](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/causalobserve--a2fa077f087916a9a05fe6c3.md) | 166 | `declaration-track:a2fa077f087916a9a05fe6c3aa0e1f0d942c90eb10e47a06871a1e991f1706c9` |
| 17 | `theorem` | [causalObserve_toCausal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/causalobserve-tocausal--27d34cc3bb5b8e77c8d2b976.md) | 174 | `result-track:27d34cc3bb5b8e77c8d2b976ff40f88967cadacaabccc306e1cea63fc5d1b41c` |
| 18 | `theorem` | [causalObserve_runCausal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/causalobserve-runcausal--14d9b1ed5d134fda4005c80b.md) | 182 | `result-track:14d9b1ed5d134fda4005c80bca649605b211546f5897b58417a5033fe0aeb193` |
| 19 | `abbrev` | [Behavior](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/behavior--83b4bb1cb20da855e5554b4d.md) | 192 | `declaration-track:83b4bb1cb20da855e5554b4d6ecd2d2adb45c6037bbd8cab71deeb2a0977a0f0` |
| 20 | `def` | [behavior](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/behavior--a878f959f7f53cdf837f4038.md) | 197 | `declaration-track:a878f959f7f53cdf837f4038156579c9cd958cd4ffb22aed9ee910b1fa9689d7` |
| 21 | `theorem` | [causalEquivalent_iff_behavior_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/causalequivalent-iff-behavior-eq--8d160c14f5d12552a92d1a9f.md) | 203 | `result-track:8d160c14f5d12552a92d1a9f6726adf52bca2de66ab4d9514dbae4d0f257831e` |
| 22 | `def` | [BehaviorImage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/behaviorimage--54278bea7e1f51ac2f246f90.md) | 215 | `declaration-track:54278bea7e1f51ac2f246f90df5a59c1c55b9dff12cbcbd86a5dbde07f980621` |
| 23 | `def` | [causalStateEquivBehaviorImage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/declarations/causalstateequivbehaviorimage--db060b6eb6ac39c1f64745f3.md) | 220 | `declaration-track:db060b6eb6ac39c1f64745f3a73dd69010396cf4e594c7c1bc98fd50d9b332bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
