# Verification target: GRWTSK.Algebra.GroupTheory.Units.Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09fbea9af5e8bc524f045eef71791806ad099736",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09fbea9af5e8bc524f045eef71791806ad099736`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Semiconj.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [units_inv_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean/declarations/units-inv-right--7000ed0b6d3594c254160d26.md) | 45 | `result-track:7000ed0b6d3594c254160d26e8030a76c71352195340e36052640cbda2fd829c` |
| 2 | `theorem` | [units_inv_right_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean/declarations/units-inv-right-iff--3f22f4dc6d0cc947b8cdff8d.md) | 51 | `result-track:3f22f4dc6d0cc947b8cdff8dc190d244a1f83c6a556b020eb3781204b3b6a4b4` |
| 3 | `theorem` | [units_inv_symm_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean/declarations/units-inv-symm-left--dd6849603deeb39891fc99f1.md) | 57 | `result-track:dd6849603deeb39891fc99f1ab2cdbb10914bafbfc24d02667b2a2f2f111f0db` |
| 4 | `theorem` | [units_inv_symm_left_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean/declarations/units-inv-symm-left-iff--7870f0c2beb1846b01020b66.md) | 63 | `result-track:7870f0c2beb1846b01020b6603dcd6e3793cdc97d680b0b5a84481eec2a45615` |
| 5 | `theorem` | [units_val](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean/declarations/units-val--77e24c0f1cefffe480832402.md) | 67 | `result-track:77e24c0f1cefffe480832402b7d3f8ee5a79c917667b8186950f58d75ac96e84` |
| 6 | `theorem` | [units_of_val](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean/declarations/units-of-val--39789eb6e8e9e84c1506cf3a.md) | 71 | `result-track:39789eb6e8e9e84c1506cf3a6c4b6371e1fc99f56746b6d73d3d2238b42e2c6a` |
| 7 | `theorem` | [units_val_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean/declarations/units-val-iff--3f1055752f172bd62f11b429.md) | 75 | `result-track:3f1055752f172bd62f11b4293b295d64e942a64a434a6b32557ca201125bce39` |
| 8 | `lemma` | [units_zpow_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean/declarations/units-zpow-right--9d5d0653108d9c60d5e9669c.md) | 79 | `result-track:9d5d0653108d9c60d5e9669c684908d3cac33379db5c2f6c80a6620aa03c10eb` |
| 9 | `lemma` | [mk_semiconjBy](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean/declarations/mk-semiconjby--1734e14a102929f6732e963e.md) | 92 | `result-track:1734e14a102929f6732e963ecd36ca7250d5bb95a21d5d710165b96449b00581` |
| 10 | `lemma` | [conj_pow](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean/declarations/conj-pow--f010b39091b02109cb8bbb4d.md) | 95 | `result-track:f010b39091b02109cb8bbb4dbd1fe743eeb548390f9816530623cfb956a16a1f` |
| 11 | `lemma` | [conj_pow'](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean/declarations/conj-pow--3aad9a77e1d9bc803f8bb03b.md) | 99 | `result-track:3aad9a77e1d9bc803f8bb03b1a84efe0f6bc1023ed6be4954a324001528b08ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
