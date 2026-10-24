# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Scheduler.Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7de18ce0250a2bd10a4cec0e7db55f0ea43a393c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7de18ce0250a2bd10a4cec0e7db55f0ea43a393c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kernel.Checked` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DirectionAnchor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/declarations/directionanchor--3ace7eef1d04a989fff8f2d8.md) | 15 | `declaration-track:3ace7eef1d04a989fff8f2d8a2319434d8cf9ccabd5ec3963162d74d05d7db23` |
| 2 | `structure` | [Context](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/declarations/context--cba36c2f8983d2ae45227040.md) | 21 | `declaration-track:cba36c2f8983d2ae45227040fce32b33ca928e925794835c0bb8393bd1b85de3` |
| 3 | `def` | [admissibilityGuard](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/declarations/admissibilityguard--e3a522310f4f01c7734c9ad9.md) | 39 | `declaration-track:e3a522310f4f01c7734c9ad964ec0574eb96766178d57d011a26f51c4da0bc35` |
| 4 | `def` | [guardWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/declarations/guardwitness--eb2020faf76ae0622f48a36c.md) | 43 | `declaration-track:eb2020faf76ae0622f48a36cc5489d727ed69842e270ae0c185b07c8d44d2153` |
| 5 | `theorem` | [guardWitness_isProved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/declarations/guardwitness-isproved--7b4f5b3e3dc870833b890f8f.md) | 47 | `result-track:7b4f5b3e3dc870833b890f8f4711f57ea9e6d8fb1ff02e1d5793f12bf0c99ecb` |
| 6 | `inductive` | [SchedulerClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/declarations/schedulerclass--560ff2dc147177712225f4e7.md) | 52 | `declaration-track:560ff2dc147177712225f4e7adc506aa10a15ca9a04c1844b64ab9dcf26c9e87` |
| 7 | `inductive` | [Atom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/declarations/atom--d991bda13b190f6a846f40de.md) | 63 | `declaration-track:d991bda13b190f6a846f40de48342f392f470bf72c4dc847f76ece6dae0f36cd` |
| 8 | `def` | [Atom.id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/declarations/atom-id--8e12386b6b90d548c1ef453b.md) | 76 | `declaration-track:8e12386b6b90d548c1ef453bd0461bee68661cfcc182fad4c73dbe16b4cfd922` |
| 9 | `def` | [Atom.claim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/declarations/atom-claim--9e11bdadabbbfd1b8ae22d09.md) | 88 | `declaration-track:9e11bdadabbbfd1b8ae22d096f5da7692fd6853f2047b1830914cb911062736f` |
| 10 | `def` | [atomResidue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/declarations/atomresidue--93585abfdff274de13f5eb3b.md) | 103 | `declaration-track:93585abfdff274de13f5eb3b853ac8751db717068584da32fd68cce34c90cc33` |
| 11 | `def` | [allAtoms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/declarations/allatoms--6e750db8faa60f1bf2f16125.md) | 121 | `declaration-track:6e750db8faa60f1bf2f16125f79ae62867dc67f936590f9e6cc1e2f1e795819e` |
| 12 | `def` | [schedulerResidues](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/declarations/schedulerresidues--34a2ac340441e3c2016d0de9.md) | 134 | `declaration-track:34a2ac340441e3c2016d0de92b794c407037d2a0a0f65f26891521170db3a024` |
| 13 | `def` | [continuumOverclaim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/declarations/continuumoverclaim--d5595b3ccad584989d0b3165.md) | 137 | `declaration-track:d5595b3ccad584989d0b316569c5e4d93fcd48d28a29584f973bb5d4cba1f444` |
| 14 | `def` | [continuumOverclaimWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/declarations/continuumoverclaimwitness--9550c6fcbac5352e3c8e486b.md) | 140 | `declaration-track:9550c6fcbac5352e3c8e486baa18ba0321a424e885d186d2becc9b521ceb2351` |
| 15 | `theorem` | [continuumOverclaimWitness_hasResidue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/declarations/continuumoverclaimwitness-hasresidue--b71cb6ddff006e4dbcab5e81.md) | 144 | `result-track:b71cb6ddff006e4dbcab5e816c1c55cfc3ecf0f2123e4b121aadbecff0d8a4a0` |
| 16 | `theorem` | [schedulerResidue_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/declarations/schedulerresidue-count--e32e9888d435d162a5f9f77b.md) | 148 | `result-track:e32e9888d435d162a5f9f77b95e569a365aef2bba7b84155e06304324fcf369a` |
| 17 | `theorem` | [schedulerResidues_targets_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/declarations/schedulerresidues-targets-correct--746d681e43425e471b78830c.md) | 152 | `result-track:746d681e43425e471b78830ca24760050339e5d4082234f95139f64d5711e22e` |
| 18 | `theorem` | [allAtoms_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/declarations/allatoms-nodup--a6b21e41bc06639e356bd33e.md) | 160 | `result-track:a6b21e41bc06639e356bd33e5be3b14af26af80678dcd26648be6170fe10b9b6` |
| 19 | `theorem` | [atomId_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scheduler/Variante55025890a9319e10ec7720dfd39b90e8072a86a8caa92fd1ddeac5f3407ba69.lean/declarations/atomid-injective--862c22ed0319f980d146f268.md) | 164 | `result-track:862c22ed0319f980d146f268f1fc7a9299accd8d49de3b81fce21668e89ae428` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
