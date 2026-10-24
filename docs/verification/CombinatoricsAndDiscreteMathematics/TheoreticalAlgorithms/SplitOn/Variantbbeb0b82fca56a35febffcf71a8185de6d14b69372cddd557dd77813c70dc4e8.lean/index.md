# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SplitOn.Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4c019f693ca37f42aabe12edb058711814f142c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4c019f693ca37f42aabe12edb058711814f142c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [splitOn_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean/declarations/spliton-nil--3973f1fdf49955e6d88b553b.md) | 25 | `result-track:3973f1fdf49955e6d88b553b3976d10ffe44b29a99371742cbead0d590fc64a0` |
| 2 | `theorem` | [splitOnP_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean/declarations/splitonp-nil--004ca9db2a9bd5567d882864.md) | 29 | `result-track:004ca9db2a9bd5567d8828640413309520edf708cd4869ebfa156cf7cebedc4c` |
| 3 | `theorem` | [splitOnP.go_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean/declarations/splitonp-go-ne-nil--950753c5ee6a55008a752613.md) | 32 | `result-track:950753c5ee6a55008a75261342e2b427b7a118182a7b99851e835f628e210866` |
| 4 | `theorem` | [splitOnP.go_acc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean/declarations/splitonp-go-acc--d353387f98c32a7a74120da1.md) | 35 | `result-track:d353387f98c32a7a74120da17727faf7c9f38480b37f3637c6544a00c93d5027` |
| 5 | `theorem` | [splitOnP_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean/declarations/splitonp-ne-nil--e9ff3ddfe698ce287eb3bd59.md) | 45 | `result-track:e9ff3ddfe698ce287eb3bd5943e5169ff10c5b4cf1adc44cbc0f75b0e0915323` |
| 6 | `theorem` | [splitOnP_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean/declarations/splitonp-cons--af10a978b5bac220b524e84a.md) | 48 | `result-track:af10a978b5bac220b524e84a157ff207fe8387e644bf1d7ee3e07ce49865f8d2` |
| 7 | `theorem` | [splitOnP_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean/declarations/splitonp-spec--84b43a09e2785ce3a863721d.md) | 55 | `result-track:84b43a09e2785ce3a863721d2bdd93009013bc84eddf7327560820e47886c05d` |
| 8 | `theorem` | [splitOnP_eq_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean/declarations/splitonp-eq-single--f595696839eaf144bfe481dc.md) | 75 | `result-track:f595696839eaf144bfe481dc44356b3689353619d98f198b2892923e39c94055` |
| 9 | `theorem` | [splitOnP_first](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean/declarations/splitonp-first--3b926e8ec2cdcad05e1c62da.md) | 84 | `result-track:3b926e8ec2cdcad05e1c62dafdb75c2ab56d4a216c35f980e91371b579ffeffc` |
| 10 | `theorem` | [intercalate_splitOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean/declarations/intercalate-spliton--5d0fb2f016447ecbb09a7ccd.md) | 91 | `result-track:5d0fb2f016447ecbb09a7ccd89597a1ab57c1e12a30c5f5f324df521006c6f36` |
| 11 | `theorem` | [splitOn_intercalate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean/declarations/spliton-intercalate--5dd60e48da92eaebe6b4bdae.md) | 105 | `result-track:5dd60e48da92eaebe6b4bdaeb8bc090d4ecbfabb6588f67de5fbddb4fe4d7187` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
