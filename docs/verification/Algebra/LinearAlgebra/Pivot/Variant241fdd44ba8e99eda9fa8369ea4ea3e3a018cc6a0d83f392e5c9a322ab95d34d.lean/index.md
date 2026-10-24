# Verification target: GRWTSK.Algebra.LinearAlgebra.Pivot.Variant241fdd44ba8e99eda9fa8369ea4ea3e3a018cc6a0d83f392e5c9a322ab95d34d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6455c3de5bbd240ec7b5e287769b14b07d67aee",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pivot/Variant241fdd44ba8e99eda9fa8369ea4ea3e3a018cc6a0d83f392e5c9a322ab95d34d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pivot/Variant241fdd44ba8e99eda9fa8369ea4ea3e3a018cc6a0d83f392e5c9a322ab95d34d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pivot/Variant241fdd44ba8e99eda9fa8369ea4ea3e3a018cc6a0d83f392e5c9a322ab95d34d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6455c3de5bbd240ec7b5e287769b14b07d67aee`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pivot/Variant241fdd44ba8e99eda9fa8369ea4ea3e3a018cc6a0d83f392e5c9a322ab95d34d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pivot/Variant241fdd44ba8e99eda9fa8369ea4ea3e3a018cc6a0d83f392e5c9a322ab95d34d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Linear.Matrix` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PivotPosition](../../../../../mathematics/Algebra/LinearAlgebra/Pivot/Variant241fdd44ba8e99eda9fa8369ea4ea3e3a018cc6a0d83f392e5c9a322ab95d34d.lean/declarations/pivotposition--e15b6ff02c4207819d33e0c1.md) | 19 | `declaration-track:e15b6ff02c4207819d33e0c149f4f1896209d3138551781dd72f943243532665` |
| 2 | `structure` | [PivotCertificate](../../../../../mathematics/Algebra/LinearAlgebra/Pivot/Variant241fdd44ba8e99eda9fa8369ea4ea3e3a018cc6a0d83f392e5c9a322ab95d34d.lean/declarations/pivotcertificate--e4919fc19c3e643b212b819b.md) | 24 | `declaration-track:e4919fc19c3e643b212b819bac7af5fae97dfd76617938f755df037873295300` |
| 3 | `theorem` | [pivot_nonzero](../../../../../mathematics/Algebra/LinearAlgebra/Pivot/Variant241fdd44ba8e99eda9fa8369ea4ea3e3a018cc6a0d83f392e5c9a322ab95d34d.lean/declarations/pivot-nonzero--5c9a04fa0a6c314f9e22abd5.md) | 32 | `result-track:5c9a04fa0a6c314f9e22abd5dfc88148e601dd88b5ebebdeebaffe7cffea6c2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
