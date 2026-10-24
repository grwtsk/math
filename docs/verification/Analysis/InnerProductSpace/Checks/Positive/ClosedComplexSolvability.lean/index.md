# Verification target: GRWTSK.Analysis.InnerProductSpace.Checks.Positive.ClosedComplexSolvability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c25a19c08edad5e0b6caca613f3defb2faad4e6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/Checks/Positive/ClosedComplexSolvability.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/ClosedComplexSolvability.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/ClosedComplexSolvability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c25a19c08edad5e0b6caca613f3defb2faad4e6`.

Source path: `GRWTSK/Analysis/InnerProductSpace/Checks/Positive/ClosedComplexSolvability.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/Checks/Positive/ClosedComplexSolvability.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.ClosedComplexSolvability`](../../../../../../mathematics/Analysis/InnerProductSpace/ClosedComplexSolvability.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/ClosedComplexSolvability.lean/declarations/example--89013564fe637573d9bbdf7c.md) | 22 | `declaration-track:89013564fe637573d9bbdf7c6a036c3ed85e64eb24dd865f2721e76ef7e6c2d5` |
| 2 | `def` | [identityOp](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/ClosedComplexSolvability.lean/declarations/identityop--80aeaa3640376b004533d950.md) | 32 | `declaration-track:80aeaa3640376b004533d95050dac0da9f9ed30dcdb4581398ebcd5ae8210e4d` |
| 3 | `theorem` | [identity_dense](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/ClosedComplexSolvability.lean/declarations/identity-dense--0ed9fef7c29201ea719fd293.md) | 35 | `result-track:0ed9fef7c29201ea719fd2934b607960ea73cde829fd60263806bca663d9ec70` |
| 4 | `theorem` | [identity_closed](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/ClosedComplexSolvability.lean/declarations/identity-closed--2a537de56d1ab5efdb88c21e.md) | 39 | `result-track:2a537de56d1ab5efdb88c21e15b4c2920abf42fd3c9c2711cb70c4a85b28bfe8` |
| 5 | `theorem` | [zero_closed](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/ClosedComplexSolvability.lean/declarations/zero-closed--2c4234383f873a4207b50f53.md) | 53 | `result-track:2c4234383f873a4207b50f53536968891cc00ba2fd07471ab3f3f1785a8994dc` |
| 6 | `theorem` | [identity_adjoint_apply](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/ClosedComplexSolvability.lean/declarations/identity-adjoint-apply--426aa09bbac94fcfebf8225e.md) | 67 | `result-track:426aa09bbac94fcfebf8225e8c86965cbf03e5497828c3d3272cfaac91f285e0` |
| 7 | `theorem` | [identity_zero_complex](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/ClosedComplexSolvability.lean/declarations/identity-zero-complex--317a41783f6ebeae96cf5b72.md) | 73 | `result-track:317a41783f6ebeae96cf5b72a15e041640dcd457fae3d266e153de264d5de759` |
| 8 | `theorem` | [identity_estimate](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/ClosedComplexSolvability.lean/declarations/identity-estimate--c12233748e26d30bf090589d.md) | 78 | `result-track:c12233748e26d30bf090589dbcfe0fa3f501192d37cef344dfec83a924290322` |
| 9 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Positive/ClosedComplexSolvability.lean/declarations/example--dc959692ee0c9764bdf95256.md) | 86 | `declaration-track:dc959692ee0c9764bdf95256c6af2da8ebec40f022cbe87b55f6c8265c214f31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
