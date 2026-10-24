# Verification target: GRWTSK.Analysis.Inequalities.CertifiedNormReturn

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d34aba727b77066481dbd3df0584b42c382b4f89",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inequalities/CertifiedNormReturn.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Inequalities/CertifiedNormReturn.lean/index.md) · [Full source](../../../../mathematics/Analysis/Inequalities/CertifiedNormReturn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d34aba727b77066481dbd3df0584b42c382b4f89`.

Source path: `GRWTSK/Analysis/Inequalities/CertifiedNormReturn.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inequalities/CertifiedNormReturn.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [strict_squared_return](../../../../mathematics/Analysis/Inequalities/CertifiedNormReturn.lean/declarations/strict-squared-return--98125d1435bd5f895d8b12e7.md) | 13 | `result-track:98125d1435bd5f895d8b12e7d43fe4e8e771bfbb5eb9d5a99069a1ae42d3376f` |
| 2 | `theorem` | [concrete_tensor_slack](../../../../mathematics/Analysis/Inequalities/CertifiedNormReturn.lean/declarations/concrete-tensor-slack--4f95709261d42fe8a94f0a2e.md) | 27 | `result-track:4f95709261d42fe8a94f0a2e92cc295c9560789b2dcdeaa946a899fc701bf025` |
| 3 | `theorem` | [tensor_source_norm_return](../../../../mathematics/Analysis/Inequalities/CertifiedNormReturn.lean/declarations/tensor-source-norm-return--8837702694e5d90199470f03.md) | 35 | `result-track:8837702694e5d90199470f032350660e452878a5c275bba50b4a40f78d21008d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
