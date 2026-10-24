# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ValuedCSP.Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b7ab9ea17aac393963b7bc2b1a7a576b0ad5b76",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b7ab9ea17aac393963b7bc2b1a7a576b0ad5b76`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Multiset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Notation` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ValuedCSP](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/declarations/valuedcsp--9118d8e812944e8924d9a588.md) | 48 | `declaration-track:9118d8e812944e8924d9a588ab6dce34a11674ca15b819a213f05bd795733953` |
| 2 | `structure` | [ValuedCSP.Term](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/declarations/valuedcsp-term--af4660f9080dfc4cc1c8806c.md) | 54 | `declaration-track:af4660f9080dfc4cc1c8806ce82275e04d8db1ec2fdf5fefda0492d19c277d68` |
| 3 | `def` | [ValuedCSP.Term.evalSolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/declarations/valuedcsp-term-evalsolution--c0fd3defdf91ae9ff4775975.md) | 65 | `declaration-track:c0fd3defdf91ae9ff4775975a4b37f11ece6834eb6f706f4d375445c84379c36` |
| 4 | `abbrev` | [ValuedCSP.Instance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/declarations/valuedcsp-instance--b24389aff839e0e6d2e89585.md) | 70 | `declaration-track:b24389aff839e0e6d2e895850b6f31ee0621dbce9727721f4202bfc6041a5f3f` |
| 5 | `def` | [ValuedCSP.Instance.evalSolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/declarations/valuedcsp-instance-evalsolution--cc587c42fd867734594a7d8a.md) | 74 | `declaration-track:cc587c42fd867734594a7d8ab017c69de24b4700449fe90e8cd8fe4e7688ba6e` |
| 6 | `def` | [ValuedCSP.Instance.IsOptimumSolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/declarations/valuedcsp-instance-isoptimumsolution--a0e4ead2a079d0c99f15ce1f.md) | 79 | `declaration-track:a0e4ead2a079d0c99f15ce1ff70594507357b49a5f6709593e80ac8807b585e8` |
| 7 | `def` | [Function.HasMaxCutPropertyAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/declarations/function-hasmaxcutpropertyat--1a5c4b2753d62bde6227594b.md) | 85 | `declaration-track:1a5c4b2753d62bde6227594bd0b378594f5ec92ef621e83201feff50c8df7dee` |
| 8 | `def` | [Function.HasMaxCutProperty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/declarations/function-hasmaxcutproperty--d093d2442dc847a0391d1606.md) | 90 | `declaration-track:d093d2442dc847a0391d160643496e4ba01e651f98160ab9286b0bef16e60b15` |
| 9 | `abbrev` | [FractionalOperation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/declarations/fractionaloperation--0f5b3db4c8202f3ccbb39f48.md) | 94 | `declaration-track:0f5b3db4c8202f3ccbb39f48743239e45f7c55c932fe36623ef9f9c43b8f7fca` |
| 10 | `def` | [FractionalOperation.size](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/declarations/fractionaloperation-size--9660df0e77ded22d72f6f08d.md) | 101 | `declaration-track:9660df0e77ded22d72f6f08d7d119eefa6e08d03105ee9b21ea7b25244f6c09c` |
| 11 | `def` | [FractionalOperation.IsValid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/declarations/fractionaloperation-isvalid--26248ab4876dd51bddd35ce8.md) | 104 | `declaration-track:26248ab4876dd51bddd35ce88615bf2a5601a21a247a7e3d6c61e6cec511137e` |
| 12 | `lemma` | [FractionalOperation.IsValid.contains](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/declarations/fractionaloperation-isvalid-contains--fe88fd2b99f1df0b64e9a053.md) | 108 | `result-track:fe88fd2b99f1df0b64e9a0533d1a88cf13976ddf7984b7bcfb6fcf374de2b0cb` |
| 13 | `def` | [FractionalOperation.tt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/declarations/fractionaloperation-tt--3c68e8906929f7e0b720a9fd.md) | 113 | `declaration-track:3c68e8906929f7e0b720a9fde9df88d02a303905449fc9f5ddeb14922fb48267` |
| 14 | `def` | [Function.AdmitsFractional](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/declarations/function-admitsfractional--81ddbcd62bf887e3d97d0b49.md) | 118 | `declaration-track:81ddbcd62bf887e3d97d0b4957b748033a880bfc3fe2f78f34e15a7eea2f1581` |
| 15 | `def` | [FractionalOperation.IsFractionalPolymorphismFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/declarations/fractionaloperation-isfractionalpolymorphismfor--33377650d4bd1ddf218e2082.md) | 123 | `declaration-track:33377650d4bd1ddf218e2082501a986096864645a6b45f89a8ac453da045da82` |
| 16 | `def` | [FractionalOperation.IsSymmetric](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/declarations/fractionaloperation-issymmetric--ed0bc8a2e54ddcc51fcda90f.md) | 128 | `declaration-track:ed0bc8a2e54ddcc51fcda90fb5ba2bc29854703290b1c4f8eb07200d288e85a6` |
| 17 | `def` | [FractionalOperation.IsSymmetricFractionalPolymorphismFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/declarations/fractionaloperation-issymmetricfractionalpolymorphismfor--71284d8025e6d6b8ac40cad2.md) | 132 | `declaration-track:71284d8025e6d6b8ac40cad21823c1d2d865b6188737a065f716db8f6778a794` |
| 18 | `lemma` | [Function.HasMaxCutPropertyAt.rows_lt_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/declarations/function-hasmaxcutpropertyat-rows-lt-aux--97b15b6cad60735c47328271.md) | 136 | `result-track:97b15b6cad60735c4732827169e2def1187d14f1dcdf38d8fecd83c4fb395a53` |
| 19 | `lemma` | [Function.HasMaxCutProperty.forbids_commutativeFractionalPolymorphism](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ValuedCSP/Variante973d4b70a687cf158776a8074ea592355f8133335e167565b9bbcd717ddd328.lean/declarations/function-hasmaxcutproperty-forbids-commutativefractionalpolymorphism--85b904b12a06dfb7aa8a59e7.md) | 159 | `result-track:85b904b12a06dfb7aa8a59e7226895dd9d575d5a388ee190b0b51c65b00c15ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
