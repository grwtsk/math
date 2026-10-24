# Verification target: GRWTSK.Topology.CofilteredLimit.Variant45b8f2ff299103a2ce3d05ac6e6ea524be5fb2721b33bbccb43d3b5391cf30bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f508ce01951c7f87ce82a3f205382670bbe695f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/CofilteredLimit/Variant45b8f2ff299103a2ce3d05ac6e6ea524be5fb2721b33bbccb43d3b5391cf30bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/CofilteredLimit/Variant45b8f2ff299103a2ce3d05ac6e6ea524be5fb2721b33bbccb43d3b5391cf30bf.lean/index.md) · [Full source](../../../../mathematics/Topology/CofilteredLimit/Variant45b8f2ff299103a2ce3d05ac6e6ea524be5fb2721b33bbccb43d3b5391cf30bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f508ce01951c7f87ce82a3f205382670bbe695f`.

Source path: `GRWTSK/Topology/CofilteredLimit/Variant45b8f2ff299103a2ce3d05ac6e6ea524be5fb2721b33bbccb43d3b5391cf30bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/CofilteredLimit/Variant45b8f2ff299103a2ce3d05ac6e6ea524be5fb2721b33bbccb43d3b5391cf30bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Profinite.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.DiscreteQuotient` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Cofiltered` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Konig` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_isClopen_of_cofiltered](../../../../mathematics/Topology/CofilteredLimit/Variant45b8f2ff299103a2ce3d05ac6e6ea524be5fb2721b33bbccb43d3b5391cf30bf.lean/declarations/exists-isclopen-of-cofiltered--c477b0a8f26b8679a40a19f7.md) | 36 | `result-track:c477b0a8f26b8679a40a19f7032bacd9cb3db363093db2eee463d0f83639acfe` |
| 2 | `theorem` | [exists_locallyConstant_fin_two](../../../../mathematics/Topology/CofilteredLimit/Variant45b8f2ff299103a2ce3d05ac6e6ea524be5fb2721b33bbccb43d3b5391cf30bf.lean/declarations/exists-locallyconstant-fin-two--717ec10d15a439179419a44f.md) | 107 | `result-track:717ec10d15a439179419a44f846159524e24620ec4d7211512382d34ce30008a` |
| 3 | `theorem` | [exists_locallyConstant_finite_aux](../../../../mathematics/Topology/CofilteredLimit/Variant45b8f2ff299103a2ce3d05ac6e6ea524be5fb2721b33bbccb43d3b5391cf30bf.lean/declarations/exists-locallyconstant-finite-aux--310b789abed434581633ebad.md) | 120 | `result-track:310b789abed434581633ebad3aa0e801309c6802052ad98d0a26023b110b5992` |
| 4 | `theorem` | [exists_locallyConstant_finite_nonempty](../../../../mathematics/Topology/CofilteredLimit/Variant45b8f2ff299103a2ce3d05ac6e6ea524be5fb2721b33bbccb43d3b5391cf30bf.lean/declarations/exists-locallyconstant-finite-nonempty--410076972d94d1e7b5a9c02d.md) | 153 | `result-track:410076972d94d1e7b5a9c02d9edd3e459d131ae67f5e8d7882d32481f42e6fe9` |
| 5 | `theorem` | [exists_locallyConstant](../../../../mathematics/Topology/CofilteredLimit/Variant45b8f2ff299103a2ce3d05ac6e6ea524be5fb2721b33bbccb43d3b5391cf30bf.lean/declarations/exists-locallyconstant--82ce275a9d5e60dcb3caddc3.md) | 187 | `result-track:82ce275a9d5e60dcb3caddc32f313bca6c1795a4e9aede30bfdcb4adf1ba723f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
