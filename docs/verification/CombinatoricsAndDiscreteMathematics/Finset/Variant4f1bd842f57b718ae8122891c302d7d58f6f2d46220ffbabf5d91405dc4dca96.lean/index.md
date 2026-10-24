# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant4f1bd842f57b718ae8122891c302d7d58f6f2d46220ffbabf5d91405dc4dca96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b7d555e9f334f93ec6e21c579bde59c1fb83dd4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant4f1bd842f57b718ae8122891c302d7d58f6f2d46220ffbabf5d91405dc4dca96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4f1bd842f57b718ae8122891c302d7d58f6f2d46220ffbabf5d91405dc4dca96.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4f1bd842f57b718ae8122891c302d7d58f6f2d46220ffbabf5d91405dc4dca96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b7d555e9f334f93ec6e21c579bde59c1fb83dd4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant4f1bd842f57b718ae8122891c302d7d58f6f2d46220ffbabf5d91405dc4dca96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant4f1bd842f57b718ae8122891c302d7d58f6f2d46220ffbabf5d91405dc4dca96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Canonical` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cast_finsetSup'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4f1bd842f57b718ae8122891c302d7d58f6f2d46220ffbabf5d91405dc4dca96.lean/declarations/cast-finsetsup--bb6af90e39a0cd12a42703d1.md) | 32 | `result-track:bb6af90e39a0cd12a42703d15d22417ffabd681257ac014ec092e17c04946ef3` |
| 2 | `lemma` | [cast_finsetInf'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4f1bd842f57b718ae8122891c302d7d58f6f2d46220ffbabf5d91405dc4dca96.lean/declarations/cast-finsetinf--5667c25b6eed3fef9d718bd1.md) | 37 | `result-track:5667c25b6eed3fef9d718bd10912cc66fab653e717b0609100e5a4a87a815546` |
| 3 | `lemma` | [cast_finsetSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4f1bd842f57b718ae8122891c302d7d58f6f2d46220ffbabf5d91405dc4dca96.lean/declarations/cast-finsetsup--7889783890db04ac825dfe58.md) | 41 | `result-track:7889783890db04ac825dfe5871bdea9823ba1a85b2461dc4780a818d34599f5d` |
| 4 | `lemma` | [Finset.mul_sup₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4f1bd842f57b718ae8122891c302d7d58f6f2d46220ffbabf5d91405dc4dca96.lean/declarations/finset-mul-sup--fb9f487ac27f45cc1889ac25.md) | 54 | `result-track:fb9f487ac27f45cc1889ac25bcb1d21d6ba6b28d29b6359e0e8ea19ed3b10da5` |
| 5 | `lemma` | [Finset.sup_mul₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4f1bd842f57b718ae8122891c302d7d58f6f2d46220ffbabf5d91405dc4dca96.lean/declarations/finset-sup-mul--91f48191a18e77e73dcba3a0.md) | 62 | `result-track:91f48191a18e77e73dcba3a0c59a536136f1e42b056b7254b3569b895d167c98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
