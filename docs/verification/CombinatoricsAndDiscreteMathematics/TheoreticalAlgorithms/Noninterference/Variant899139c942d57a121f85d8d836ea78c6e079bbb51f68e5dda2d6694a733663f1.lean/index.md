# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Noninterference.Variant899139c942d57a121f85d8d836ea78c6e079bbb51f68e5dda2d6694a733663f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df2f8bbc6876e1200601fe07d2f9f5211f0ca0b4",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Noninterference/Variant899139c942d57a121f85d8d836ea78c6e079bbb51f68e5dda2d6694a733663f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Noninterference/Variant899139c942d57a121f85d8d836ea78c6e079bbb51f68e5dda2d6694a733663f1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Noninterference/Variant899139c942d57a121f85d8d836ea78c6e079bbb51f68e5dda2d6694a733663f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df2f8bbc6876e1200601fe07d2f9f5211f0ca0b4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Noninterference/Variant899139c942d57a121f85d8d836ea78c6e079bbb51f68e5dda2d6694a733663f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Noninterference/Variant899139c942d57a121f85d8d836ea78c6e079bbb51f68e5dda2d6694a733663f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Stability.Propagation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AuthorityEffect](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Noninterference/Variant899139c942d57a121f85d8d836ea78c6e079bbb51f68e5dda2d6694a733663f1.lean/declarations/authorityeffect--ee296741dfa732987b305dde.md) | 15 | `declaration-track:ee296741dfa732987b305dde81a2671e6e1315c21106b2f157421235905f89a3` |
| 2 | `inductive` | [AnalyticalArtifactKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Noninterference/Variant899139c942d57a121f85d8d836ea78c6e079bbb51f68e5dda2d6694a733663f1.lean/declarations/analyticalartifactkind--9361b1ef8354631ddcd0bbfe.md) | 21 | `declaration-track:9361b1ef8354631ddcd0bbfe30dd5d4052994fa3bc637aa96b84aa5a3a1de766` |
| 3 | `def` | [AnalyticalArtifactKind.authorityEffect](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Noninterference/Variant899139c942d57a121f85d8d836ea78c6e079bbb51f68e5dda2d6694a733663f1.lean/declarations/analyticalartifactkind-authorityeffect--48e4ac595a123f662dd5a029.md) | 29 | `declaration-track:48e4ac595a123f662dd5a029106c07d360d6b85532edae63f7470225d9619786` |
| 4 | `theorem` | [stability_metrics_cannot_construct_authority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Noninterference/Variant899139c942d57a121f85d8d836ea78c6e079bbb51f68e5dda2d6694a733663f1.lean/declarations/stability-metrics-cannot-construct-authority--c357ee9a0e3a4c6c18549a2d.md) | 33 | `result-track:c357ee9a0e3a4c6c18549a2d8911516148621cb999411b0ca7502b60459756e7` |
| 5 | `inductive` | [AdmissionState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Noninterference/Variant899139c942d57a121f85d8d836ea78c6e079bbb51f68e5dda2d6694a733663f1.lean/declarations/admissionstate--efa9ff44fcb72b7cca316e32.md) | 38 | `declaration-track:efa9ff44fcb72b7cca316e329c74c95f6348a8292e6fcff229aadc277f4df13c` |
| 6 | `def` | [AdmissionState.mayCommit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Noninterference/Variant899139c942d57a121f85d8d836ea78c6e079bbb51f68e5dda2d6694a733663f1.lean/declarations/admissionstate-maycommit--92cfb5a94586312fc09c7bad.md) | 43 | `declaration-track:92cfb5a94586312fc09c7bad4fd27d3f424c9a83b03da6be27aafd88c06818e4` |
| 7 | `theorem` | [owner_admission_is_necessary_for_commit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Noninterference/Variant899139c942d57a121f85d8d836ea78c6e079bbb51f68e5dda2d6694a733663f1.lean/declarations/owner-admission-is-necessary-for-commit--0ccbd9186fa79b09dbdfb4e3.md) | 47 | `result-track:0ccbd9186fa79b09dbdfb4e307ccc1d8935a63696e2df6521971080b04f64998` |
| 8 | `structure` | [TraversalHistory](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Noninterference/Variant899139c942d57a121f85d8d836ea78c6e079bbb51f68e5dda2d6694a733663f1.lean/declarations/traversalhistory--df375bba285909412bd82246.md) | 55 | `declaration-track:df375bba285909412bd82246f869e7d5887b7260a349c38ba13b048ea19d054f` |
| 9 | `structure` | [RepairedSuccessor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Noninterference/Variant899139c942d57a121f85d8d836ea78c6e079bbb51f68e5dda2d6694a733663f1.lean/declarations/repairedsuccessor--b56e2d0d122b0fd6f284ae90.md) | 58 | `declaration-track:b56e2d0d122b0fd6f284ae90e0c8d062adb4d53fa2cf57731329971f64d4a7f6` |
| 10 | `theorem` | [repaired_successor_preserves_historical_failure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Noninterference/Variant899139c942d57a121f85d8d836ea78c6e079bbb51f68e5dda2d6694a733663f1.lean/declarations/repaired-successor-preserves-historical-failure--4783bf91cf471abb89b9a10f.md) | 65 | `result-track:4783bf91cf471abb89b9a10f1caf1f06a53f04d90359c874342e8f35672989b4` |
| 11 | `theorem` | [analytical_forecast_has_no_theorem_or_commit_effect](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Noninterference/Variant899139c942d57a121f85d8d836ea78c6e079bbb51f68e5dda2d6694a733663f1.lean/declarations/analytical-forecast-has-no-theorem-or-commit-effect--912c8857b9d25f3e85d35f75.md) | 73 | `result-track:912c8857b9d25f3e85d35f75c2ca146437d14f934ffcd15c5dd775c1979623c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
