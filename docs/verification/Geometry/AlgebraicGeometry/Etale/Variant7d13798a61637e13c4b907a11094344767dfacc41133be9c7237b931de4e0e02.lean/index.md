# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Etale.Variant7d13798a61637e13c4b907a11094344767dfacc41133be9c7237b931de4e0e02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2e4f20037871a2af72312ac48712a0351e85007",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Etale/Variant7d13798a61637e13c4b907a11094344767dfacc41133be9c7237b931de4e0e02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Etale/Variant7d13798a61637e13c4b907a11094344767dfacc41133be9c7237b931de4e0e02.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Etale/Variant7d13798a61637e13c4b907a11094344767dfacc41133be9c7237b931de4e0e02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2e4f20037871a2af72312ac48712a0351e85007`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Etale/Variant7d13798a61637e13c4b907a11094344767dfacc41133be9c7237b931de4e0e02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Etale/Variant7d13798a61637e13c4b907a11094344767dfacc41133be9c7237b931de4e0e02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Etale` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.PullbackCarrier` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Sites.BigZariski` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Sites.Small` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [etalePretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Etale/Variant7d13798a61637e13c4b907a11094344767dfacc41133be9c7237b931de4e0e02.lean/declarations/etalepretopology--8bbd2454952f251b3fa41527.md) | 35 | `declaration-track:8bbd2454952f251b3fa41527033226f6013656a9f5d6dd31e343e153599d2d1b` |
| 2 | `abbrev` | [etaleTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Etale/Variant7d13798a61637e13c4b907a11094344767dfacc41133be9c7237b931de4e0e02.lean/declarations/etaletopology--a69e914cce3b004e956d7028.md) | 39 | `declaration-track:a69e914cce3b004e956d7028727a8e99997fdf3508fd9eec8832ca20ea2afb6c` |
| 3 | `lemma` | [zariskiTopology_le_etaleTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Etale/Variant7d13798a61637e13c4b907a11094344767dfacc41133be9c7237b931de4e0e02.lean/declarations/zariskitopology-le-etaletopology--6858020a7c264672f80a77ec.md) | 42 | `result-track:6858020a7c264672f80a77ece576f515759d16fdbc62f982cf876014148aaee9` |
| 4 | `def` | [smallEtaleTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Etale/Variant7d13798a61637e13c4b907a11094344767dfacc41133be9c7237b931de4e0e02.lean/declarations/smalletaletopology--8e49a67eb1c72933934c82a6.md) | 49 | `declaration-track:8e49a67eb1c72933934c82a6ee46e0f19490f02d20973a1c32eff9dc2b7bd3e7` |
| 5 | `def` | [smallEtalePretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Etale/Variant7d13798a61637e13c4b907a11094344767dfacc41133be9c7237b931de4e0e02.lean/declarations/smalletalepretopology--e3a8dedaa52c9786a26de1a7.md) | 53 | `declaration-track:e3a8dedaa52c9786a26de1a7a79ba8291b84130a715ca003028d2a4efb125331` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
