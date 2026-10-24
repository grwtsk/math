# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.MellinEqDirichlet.Variantf60c07b6609da152e5ea8be8f06a27da7aa36e00ce5fe737c1fa285f556241d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a23c30ad74e718e34e9fe79edeae6aa8af845d90",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantf60c07b6609da152e5ea8be8f06a27da7aa36e00ce5fe737c1fa285f556241d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantf60c07b6609da152e5ea8be8f06a27da7aa36e00ce5fe737c1fa285f556241d2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantf60c07b6609da152e5ea8be8f06a27da7aa36e00ce5fe737c1fa285f556241d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a23c30ad74e718e34e9fe79edeae6aa8af845d90`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantf60c07b6609da152e5ea8be8f06a27da7aa36e00ce5fe737c1fa285f556241d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantf60c07b6609da152e5ea8be8f06a27da7aa36e00ce5fe737c1fa285f556241d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasSum_mellin](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantf60c07b6609da152e5ea8be8f06a27da7aa36e00ce5fe737c1fa285f556241d2.lean/declarations/hassum-mellin--17cb9de3c5af608bd42b97c9.md) | 24 | `result-track:17cb9de3c5af608bd42b97c9db651a74a8256ded9228747edba39f733935149d` |
| 2 | `lemma` | [hasSum_mellin_pi_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantf60c07b6609da152e5ea8be8f06a27da7aa36e00ce5fe737c1fa285f556241d2.lean/declarations/hassum-mellin-pi-mul--c8c8fd456fe636b3d703ae2e.md) | 70 | `result-track:c8c8fd456fe636b3d703ae2ebbebb3bbb9b5b7bb2f768df9bbb8c3f8ba7b8db6` |
| 3 | `lemma` | [hasSum_mellin_pi_mul₀](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantf60c07b6609da152e5ea8be8f06a27da7aa36e00ce5fe737c1fa285f556241d2.lean/declarations/hassum-mellin-pi-mul--facfa916dfafa50b1692e904.md) | 91 | `result-track:facfa916dfafa50b1692e9048ddab5ab85d5d974fc02e4099be1ad9e7d36e75d` |
| 4 | `lemma` | [hasSum_mellin_pi_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantf60c07b6609da152e5ea8be8f06a27da7aa36e00ce5fe737c1fa285f556241d2.lean/declarations/hassum-mellin-pi-mul-sq--efcd422fd207f9fea4640889.md) | 118 | `result-track:efcd422fd207f9fea4640889b26591d2382a5fa0c9a3a02aae7dadcbce696027` |
| 5 | `lemma` | [hasSum_mellin_pi_mul_sq'](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantf60c07b6609da152e5ea8be8f06a27da7aa36e00ce5fe737c1fa285f556241d2.lean/declarations/hassum-mellin-pi-mul-sq--644b3f53f0e5122e8726990b.md) | 134 | `result-track:644b3f53f0e5122e8726990bfeab52473f052de143608cdf749056c9c3961ea6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
