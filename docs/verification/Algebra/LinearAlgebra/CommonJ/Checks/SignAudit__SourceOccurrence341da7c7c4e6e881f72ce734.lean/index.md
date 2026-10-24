# Verification target: GRWTSK.LinearAlgebra.CommonJ.Checks.SignAudit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdddee6b4741f94d9aeb4eb9f5cf84f6ddc20afd",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/CommonJ/Checks/SignAudit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ/Checks/SignAudit__SourceOccurrence341da7c7c4e6e881f72ce734.lean/index.md) · [Full source](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ/Checks/SignAudit__SourceOccurrence341da7c7c4e6e881f72ce734.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdddee6b4741f94d9aeb4eb9f5cf84f6ddc20afd`.

Source path: `GRWTSK/LinearAlgebra/CommonJ/Checks/SignAudit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/CommonJ/Checks/SignAudit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.CommonJ`](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/index.md) — import line 1; pinned internal source present.
- `Lean` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [generic_sign_loop_consumer](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ/Checks/SignAudit__SourceOccurrence341da7c7c4e6e881f72ce734.lean/declarations/generic-sign-loop-consumer--f1ab9f2c3971d21ad22afc76.md) | 8 | `result-track:f1ab9f2c3971d21ad22afc76ebaae0e617588511bfa392ed5df5b3b8fa623526` |
| 2 | `theorem` | [rational_reverse_consumer](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ/Checks/SignAudit__SourceOccurrence341da7c7c4e6e881f72ce734.lean/declarations/rational-reverse-consumer--7af5c295cb6e964793e9e035.md) | 14 | `result-track:7af5c295cb6e964793e9e0351e5071640288c54a9ec2f4b407c4a746b0d600d9` |
| 3 | `example` | [(anonymous)](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ/Checks/SignAudit__SourceOccurrence341da7c7c4e6e881f72ce734.lean/declarations/example--6abb3bc50b99b98dacafcbdd.md) | 18 | `declaration-track:6abb3bc50b99b98dacafcbddf7a1e93e2a0951e91d9a86952203b1122e57c304` |
| 4 | `elab` | [(anonymous)](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ/Checks/SignAudit__SourceOccurrence341da7c7c4e6e881f72ce734.lean/declarations/elab--f4999a7d590f809ac96c9d62.md) | 24 | `declaration-track:f4999a7d590f809ac96c9d62dbe46c0ef72c5e0e44791dcc966985f6269f985e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
