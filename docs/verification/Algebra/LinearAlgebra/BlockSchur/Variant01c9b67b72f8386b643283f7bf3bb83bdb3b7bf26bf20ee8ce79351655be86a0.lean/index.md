# Verification target: GRWTSK.Algebra.LinearAlgebra.BlockSchur.Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e3a925096fa96218ea733b93317bda5281efd31",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e3a925096fa96218ea733b93317bda5281efd31`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ScalarSchur` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [provenanceInclusion](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean/declarations/provenanceinclusion--70a339d2a09492b73d80a85f.md) | 29 | `declaration-track:70a339d2a09492b73d80a85f509659410749f0a945edcd8697317f6992a44e5d` |
| 2 | `def` | [autonomousInclusion](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean/declarations/autonomousinclusion--89f3932a7fb1af6827a74d02.md) | 37 | `declaration-track:89f3932a7fb1af6827a74d0247ff08c5de0df0e8239aea297e54fd2c20289dbb` |
| 3 | `theorem` | [provenanceInclusion_apply](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean/declarations/provenanceinclusion-apply--e6ac2a84254c20b46a72cb44.md) | 45 | `result-track:e6ac2a84254c20b46a72cb44720694422f366bacbf648f0be9005048bd7b0f69` |
| 4 | `theorem` | [autonomousInclusion_apply](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean/declarations/autonomousinclusion-apply--3465fc8e2f2bce78066ef853.md) | 50 | `result-track:3465fc8e2f2bce78066ef853cf26bf2c210ebc2c57ed844086a375dff29cda53` |
| 5 | `structure` | [BlockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean/declarations/blockschursolver--11a3cd48e4517b88475d8692.md) | 58 | `declaration-track:11a3cd48e4517b88475d86927535d8070a7931119a98a7896518d1bc37dcce8e` |
| 6 | `def` | [project](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean/declarations/project--e94dd6994ae6306c206fe2e3.md) | 71 | `declaration-track:e94dd6994ae6306c206fe2e36dae3ad9ae8b714218e73ccf7e1aeacc2a2ebfae` |
| 7 | `theorem` | [project_apply](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean/declarations/project-apply--0517ef7224fd541002adcb28.md) | 79 | `result-track:0517ef7224fd541002adcb2868769af7b20403211ae6533e26c1aa8a9e7c0506` |
| 8 | `theorem` | [project_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean/declarations/project-idempotent--89305060e5e4ba8e04d8b697.md) | 84 | `result-track:89305060e5e4ba8e04d8b6975327ec461ddc6a48760b099c12f34f3b0b495854` |
| 9 | `theorem` | [project_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean/declarations/project-orthogonal--e30adb61837d7ad1ef7f7aa8.md) | 89 | `result-track:e30adb61837d7ad1ef7f7aa8341217147d882e6d40f01903e3b608d6293e7487` |
| 10 | `def` | [projector](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean/declarations/projector--0d593d125ed5717c6136ec9f.md) | 98 | `declaration-track:0d593d125ed5717c6136ec9f22b1bbd31a6a9f010fcdd97e877d10b0bbdcea4a` |
| 11 | `theorem` | [project_autonomous](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean/declarations/project-autonomous--7a1b9afa214eda915007dd0d.md) | 103 | `result-track:7a1b9afa214eda915007dd0d9a99bf3e1d8478d3ce9d7200adb04179cd0ec0c7` |
| 12 | `theorem` | [residual_autonomous](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean/declarations/residual-autonomous--12288686823b77fe4050aaaa.md) | 107 | `result-track:12288686823b77fe4050aaaa2f5a53fcdeae7f4abcb7310da90089640dc3a79a` |
| 13 | `def` | [schurForm](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean/declarations/schurform--a3a31d3658f612316244e685.md) | 115 | `declaration-track:a3a31d3658f612316244e685d9e1fefd2454cb2f00fee2020b9fe6e5b875813b` |
| 14 | `theorem` | [schurForm_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean/declarations/schurform-nonnegative--202952fc8d76b352bf47ef3a.md) | 119 | `result-track:202952fc8d76b352bf47ef3a6515cb962a3410b15175226f86f4e4addd395e69` |
| 15 | `theorem` | [schurForm_eq_sub](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean/declarations/schurform-eq-sub--ed9d918bcb93d36b127178f0.md) | 125 | `result-track:ed9d918bcb93d36b127178f07a112f3c98421239046c579429e8fe8c777355e2` |
| 16 | `theorem` | [schur_diagonal_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean/declarations/schur-diagonal-nonnegative--8d6a001040601caf59196a5d.md) | 137 | `result-track:8d6a001040601caf59196a5d66f529f73343eb7584850a2e4d84d6a406517ce9` |
| 17 | `theorem` | [autonomous_energy_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant01c9b67b72f8386b643283f7bf3bb83bdb3b7bf26bf20ee8ce79351655be86a0.lean/declarations/autonomous-energy-decomposition--37ba0f314642b18a5372dcf0.md) | 147 | `result-track:37ba0f314642b18a5372dcf0f03c838a3c21176e9160984f3d25643b3c9ad25c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
