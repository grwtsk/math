# Verification target: GRWTSK.Analysis.InnerProductSpace.Checks.Negative.JointGraphMissingDensity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19bcffe163c84b2958ec2c2f942d6598234aa80d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/Checks/Negative/JointGraphMissingDensity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/JointGraphMissingDensity.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/JointGraphMissingDensity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19bcffe163c84b2958ec2c2f942d6598234aa80d`.

Source path: `GRWTSK/Analysis/InnerProductSpace/Checks/Negative/JointGraphMissingDensity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/Checks/Negative/JointGraphMissingDensity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.JointGraphSolvability`](../../../../../../mathematics/Analysis/InnerProductSpace/JointGraphSolvability.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_dense](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/JointGraphMissingDensity.lean/declarations/zero-dense--9ca631c43be4ba87068a2dcf.md) | 20 | `result-track:9ca631c43be4ba87068a2dcf586be09a7142c98f7612cf317b99dffbb6b9cfb6` |
| 2 | `theorem` | [zero_closed](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/JointGraphMissingDensity.lean/declarations/zero-closed--a8b4e8ac6760dc9674a7c5eb.md) | 24 | `result-track:a8b4e8ac6760dc9674a7c5eb1e057f560fd2a0e906d677cf3cd37699a9e1480e` |
| 3 | `theorem` | [zero_complex](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/JointGraphMissingDensity.lean/declarations/zero-complex--82c71a7972713d46eb6146e5.md) | 38 | `result-track:82c71a7972713d46eb6146e53bde5878d79517050736b1d4036ccc0dd7bee706` |
| 4 | `theorem` | [zero_kernel_unit](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/JointGraphMissingDensity.lean/declarations/zero-kernel-unit--1846aefdcdc031d9c474341d.md) | 42 | `result-track:1846aefdcdc031d9c474341dca7a0e33ed2f680fc8b1b92f01349b299c41c1b9` |
| 5 | `theorem` | [zero_has_no_unit_solution](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/JointGraphMissingDensity.lean/declarations/zero-has-no-unit-solution--490093a8d52a91b20b6605c2.md) | 45 | `result-track:490093a8d52a91b20b6605c26de510485fa1ba35e8c77c53a072ed3f12d99b50` |
| 6 | `def` | [zeroJointPoint](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/JointGraphMissingDensity.lean/declarations/zerojointpoint--53cbc6667c559ede2961264c.md) | 50 | `declaration-track:53cbc6667c559ede2961264c8b496b551ee6eed19b8ec2bdf9b56d36b8c992c1` |
| 7 | `theorem` | [empty_core_not_dense](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/JointGraphMissingDensity.lean/declarations/empty-core-not-dense--44d34c338d9122cbdcd29390.md) | 54 | `result-track:44d34c338d9122cbdcd29390fbc5de1f81ad1db69d3e02cd46dcf57c01f2b86f` |
| 8 | `theorem` | [empty_estimate](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/JointGraphMissingDensity.lean/declarations/empty-estimate--54137d378709e5403cd1079a.md) | 60 | `result-track:54137d378709e5403cd1079a2dba129833e86493477a7e409f099511edfe2916` |
| 9 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/JointGraphMissingDensity.lean/declarations/example--b88ae529839d3025f74d9674.md) | 67 | `declaration-track:b88ae529839d3025f74d9674b3138ee844fdf9c60a99dd778188176ef308d474` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
