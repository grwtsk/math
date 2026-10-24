# Verification target: GRWTSK.Algebra.LinearAlgebra.Semisimple.Variant0f42cc7fba93dff72e635fe48f1c8760889bb3b1a7320c82fa883f472536ca72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd9e7b842018cb9a8539ac0cf207392cdec3dd60",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant0f42cc7fba93dff72e635fe48f1c8760889bb3b1a7320c82fa883f472536ca72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant0f42cc7fba93dff72e635fe48f1c8760889bb3b1a7320c82fa883f472536ca72.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant0f42cc7fba93dff72e635fe48f1c8760889bb3b1a7320c82fa883f472536ca72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd9e7b842018cb9a8539ac0cf207392cdec3dd60`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant0f42cc7fba93dff72e635fe48f1c8760889bb3b1a7320c82fa883f472536ca72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Semisimple/Variant0f42cc7fba93dff72e635fe48f1c8760889bb3b1a7320c82fa883f472536ca72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Semisimple` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [orthogonalComplement_mem_invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant0f42cc7fba93dff72e635fe48f1c8760889bb3b1a7320c82fa883f472536ca72.lean/declarations/orthogonalcomplement-mem-invtsubmodule--0991bef3546da7b47438293a.md) | 34 | `result-track:0991bef3546da7b47438293affbd05d0924fe9fb30bb8cce6c04125c285b67f7` |
| 2 | `theorem` | [isFinitelySemisimple](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant0f42cc7fba93dff72e635fe48f1c8760889bb3b1a7320c82fa883f472536ca72.lean/declarations/isfinitelysemisimple--fd60d70182602f9d9d1b5944.md) | 39 | `result-track:fd60d70182602f9d9d1b5944d8a2c55689e540d94972eaf76be1519e7b8d4d6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
