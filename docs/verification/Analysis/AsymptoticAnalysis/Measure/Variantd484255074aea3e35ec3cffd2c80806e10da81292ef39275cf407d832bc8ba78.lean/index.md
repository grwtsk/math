# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Measure.Variantd484255074aea3e35ec3cffd2c80806e10da81292ef39275cf407d832bc8ba78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbfb674f40a1998cfd800b068e8acaeeed619107",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Measure/Variantd484255074aea3e35ec3cffd2c80806e10da81292ef39275cf407d832bc8ba78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variantd484255074aea3e35ec3cffd2c80806e10da81292ef39275cf407d832bc8ba78.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variantd484255074aea3e35ec3cffd2c80806e10da81292ef39275cf407d832bc8ba78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbfb674f40a1998cfd800b068e8acaeeed619107`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Measure/Variantd484255074aea3e35ec3cffd2c80806e10da81292ef39275cf407d832bc8ba78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Measure/Variantd484255074aea3e35ec3cffd2c80806e10da81292ef39275cf407d832bc8ba78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Liouville.Residual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Liouville.LiouvilleWith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variantd484255074aea3e35ec3cffd2c80806e10da81292ef39275cf407d832bc8ba78.lean/declarations/macro-rules--7e8b8b2d5d27d1216e5ce674.md) | 34 | `declaration-track:7e8b8b2d5d27d1216e5ce674cfa3586878c234ebdf6edf64f1bcf5408602205a` |
| 2 | `theorem` | [setOf_liouvilleWith_subset_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variantd484255074aea3e35ec3cffd2c80806e10da81292ef39275cf407d832bc8ba78.lean/declarations/setof-liouvillewith-subset-aux--7e86717d2219007f9dd10905.md) | 36 | `result-track:7e86717d2219007f9dd1090532ec1fc0db4530c4d2a84409056fe78f83e4a45c` |
| 3 | `theorem` | [volume_iUnion_setOf_liouvilleWith](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variantd484255074aea3e35ec3cffd2c80806e10da81292ef39275cf407d832bc8ba78.lean/declarations/volume-iunion-setof-liouvillewith--f8e29556a851497e82f4ba5b.md) | 79 | `result-track:f8e29556a851497e82f4ba5b23cc78ec01971736b35ff0152cc69fe7a7cea81d` |
| 4 | `theorem` | [ae_not_liouvilleWith](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variantd484255074aea3e35ec3cffd2c80806e10da81292ef39275cf407d832bc8ba78.lean/declarations/ae-not-liouvillewith--f39ab9e0595689e67aafcacc.md) | 111 | `result-track:f39ab9e0595689e67aafcacca3da07a7c8e532187e23a13682c3209d169e0605` |
| 5 | `theorem` | [ae_not_liouville](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variantd484255074aea3e35ec3cffd2c80806e10da81292ef39275cf407d832bc8ba78.lean/declarations/ae-not-liouville--4a899a498b844c389bb53263.md) | 116 | `result-track:4a899a498b844c389bb532630a92a9e601702851aea28973b541a4f3d2c7c1bf` |
| 6 | `theorem` | [volume_setOf_liouville](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variantd484255074aea3e35ec3cffd2c80806e10da81292ef39275cf407d832bc8ba78.lean/declarations/volume-setof-liouville--3536ae161d77ca4ea30690f0.md) | 122 | `result-track:3536ae161d77ca4ea30690f0f6a3df26bd9082aefc8c67a43d4d7855e539acee` |
| 7 | `theorem` | [Real.disjoint_residual_ae](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variantd484255074aea3e35ec3cffd2c80806e10da81292ef39275cf407d832bc8ba78.lean/declarations/real-disjoint-residual-ae--8281294947c21b1817103d16.md) | 128 | `result-track:8281294947c21b1817103d1676670490e123e6c0fa1f6f849bb97bd3bcfaa6c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
