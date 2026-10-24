# Verification target: GRWTSK.LinearAlgebra.LinearMap.ReedSolomonRefinement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47590da95970d55ac5e2b49a24660ff0611083ec",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47590da95970d55ac5e2b49a24660ff0611083ec`.

Source path: `GRWTSK/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Code](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/declarations/code--8094b60230422ba1b29d9649.md) | 33 | `declaration-track:8094b60230422ba1b29d964986d1aa672ab2c0695a844525f6f1e38693167c92` |
| 2 | `structure` | [QuadraticEvaluationCode](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/declarations/quadraticevaluationcode--ec87d72a69525cb976673839.md) | 44 | `declaration-track:ec87d72a69525cb97667383953214a9d78b1ec4cf73c4881cb872e30f8774687` |
| 3 | `def` | [QuadraticEvaluationCode.toCode](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/declarations/quadraticevaluationcode-tocode--4ace4a35793ec23f0130cc7a.md) | 54 | `declaration-track:4ace4a35793ec23f0130cc7ab3a7939251840c27139c93d74526e2517772de4c` |
| 4 | `structure` | [AuditRecord](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/declarations/auditrecord--b08e0f3aa0e0ced1ec09a27b.md) | 65 | `declaration-track:b08e0f3aa0e0ced1ec09a27bdfd059e3eca69975f7b98e9181545609d36b7c98` |
| 5 | `structure` | [Observation](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/declarations/observation--b3805ec61538ba881fbf7918.md) | 72 | `declaration-track:b3805ec61538ba881fbf79184bb5e028d474529bd341387646a05a723c75c682` |
| 6 | `def` | [CoverageCertificate](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/declarations/coveragecertificate--59e3ed88b72efc1867e01a24.md) | 77 | `declaration-track:59e3ed88b72efc1867e01a24fff9816dbd23bba27ce6c2e2676102878c5461b8` |
| 7 | `theorem` | [Code.decode_encode_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/declarations/code-decode-encode-apply--c53f47418fd3d76d922a02ef.md) | 91 | `result-track:c53f47418fd3d76d922a02efb57e76dd1e37d5a2d4ab59dd15cf95b49411035c` |
| 8 | `def` | [transport](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/declarations/transport--186e464f682df5f1c843b7b2.md) | 96 | `declaration-track:186e464f682df5f1c843b7b269123fcf00fed4843a4e0e8d86966b1ff0ba4156` |
| 9 | `theorem` | [transport_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/declarations/transport-apply--2de7e53fbb2b43aaa6d08c30.md) | 100 | `result-track:2de7e53fbb2b43aaa6d08c303528f4ff7260402a6371738e0bec6c7bbd23d749` |
| 10 | `theorem` | [decode_transport_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/declarations/decode-transport-apply--e991baa6fc1b31390c6acab5.md) | 105 | `result-track:e991baa6fc1b31390c6acab553ede970e619508bb21238522dc882d2f7891eb5` |
| 11 | `theorem` | [transport_encode_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/declarations/transport-encode-apply--6d383c37219d642ad194906d.md) | 110 | `result-track:6d383c37219d642ad194906d7eacb0a5c6a8a33414dc4ec0bd104180a5fe0f89` |
| 12 | `theorem` | [transport_comp](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/declarations/transport-comp--70cbf479a0af0eeeb1b9da4e.md) | 115 | `result-track:70cbf479a0af0eeeb1b9da4e487f8ee750f1914b8f0c5cc2f1dc08866ca2728b` |
| 13 | `theorem` | [encode_aggregate](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/declarations/encode-aggregate--d6b62b4d5bc620b000ee6012.md) | 122 | `result-track:d6b62b4d5bc620b000ee6012e5feb4963018340c791b0b9b7bdec10e18a72cbe` |
| 14 | `theorem` | [codeword_error_invisible](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/declarations/codeword-error-invisible--236da31d94f8ea6bccd18765.md) | 132 | `result-track:236da31d94f8ea6bccd187655e7eb448a61bf87b253514d2f80af56716a10636` |
| 15 | `theorem` | [reconstruction_identity](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/declarations/reconstruction-identity--c16d2180e134ca6643b213c6.md) | 139 | `result-track:c16d2180e134ca6643b213c6123b4f0d624a08dc0640e73efc2b3a2d0b286c03` |
| 16 | `theorem` | [source_error_bound](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/declarations/source-error-bound--3d08fc32a341278b199f0fbc.md) | 160 | `result-track:3d08fc32a341278b199f0fbc5c8b61913928a3fc1b10e4ce29aad6a19eb1db2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
