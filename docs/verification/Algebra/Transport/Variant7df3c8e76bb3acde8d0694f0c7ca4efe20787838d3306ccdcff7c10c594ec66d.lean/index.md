# Verification target: GRWTSK.Algebra.Transport.Variant7df3c8e76bb3acde8d0694f0c7ca4efe20787838d3306ccdcff7c10c594ec66d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "102639780828c2f9ef6f0d89d305fe85f7ec0777",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Transport/Variant7df3c8e76bb3acde8d0694f0c7ca4efe20787838d3306ccdcff7c10c594ec66d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Transport/Variant7df3c8e76bb3acde8d0694f0c7ca4efe20787838d3306ccdcff7c10c594ec66d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Transport/Variant7df3c8e76bb3acde8d0694f0c7ca4efe20787838d3306ccdcff7c10c594ec66d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `102639780828c2f9ef6f0d89d305fe85f7ec0777`.

Source path: `GRWTSK/Algebra/Transport/Variant7df3c8e76bb3acde8d0694f0c7ca4efe20787838d3306ccdcff7c10c594ec66d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Transport/Variant7df3c8e76bb3acde8d0694f0c7ca4efe20787838d3306ccdcff7c10c594ec66d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FilesystemHomology.EditComplex` — import line 1; external provider; requires a separately pinned dependency.
- `FilesystemDynamics.FirstReturn` — import line 2; external provider; requires a separately pinned dependency.
- `DAF.Homology.HomologicalLift` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toHomologicalLift](../../../../mathematics/Algebra/Transport/Variant7df3c8e76bb3acde8d0694f0c7ca4efe20787838d3306ccdcff7c10c594ec66d.lean/declarations/tohomologicallift--e2f07769b03d3343c8b28c3a.md) | 48 | `declaration-track:e2f07769b03d3343c8b28c3ae4dcc72e86292001eb85e4ff7730b5dc22701e5e` |
| 2 | `def` | [filesystemFirstReturn_induces_homologyIso](../../../../mathematics/Algebra/Transport/Variant7df3c8e76bb3acde8d0694f0c7ca4efe20787838d3306ccdcff7c10c594ec66d.lean/declarations/filesystemfirstreturn-induces-homologyiso--ba3ef7659963edfbd3fa3ae6.md) | 64 | `declaration-track:ba3ef7659963edfbd3fa3ae69a13ebcbf7704876d8d2e79f57bd1dc612191e7d` |
| 3 | `theorem` | [filesystemFirstReturn_preserves_torsion](../../../../mathematics/Algebra/Transport/Variant7df3c8e76bb3acde8d0694f0c7ca4efe20787838d3306ccdcff7c10c594ec66d.lean/declarations/filesystemfirstreturn-preserves-torsion--9d76baa2569cbb0d6dd2ec9d.md) | 82 | `result-track:9d76baa2569cbb0d6dd2ec9df8e77088a6d0ddf851be22420b23a59e539c1d19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
