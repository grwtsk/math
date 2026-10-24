# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearMap.Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c2d49f15c1165e401fe672f0975a43f02a3f9e4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c2d49f15c1165e401fe672f0975a43f02a3f9e4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Projective` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.DivisionRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.FreeAndStrongRankCondition` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [rank](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean/declarations/rank--be30af3881ce65e441d34851.md) | 42 | `declaration-track:be30af3881ce65e441d348512d0cb5f5a0eb4716bfd8430c5022095750e7818e` |
| 2 | `theorem` | [rank_le_range](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean/declarations/rank-le-range--fb4f993dccb03a3e88867428.md) | 45 | `result-track:fb4f993dccb03a3e88867428f50f5bfde30eaf76ab1f2e81a4427f791e5f756b` |
| 3 | `theorem` | [rank_le_domain](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean/declarations/rank-le-domain--26ddce4c46a18505e36450b3.md) | 48 | `result-track:26ddce4c46a18505e36450b3e0160c426f264d66895f2aa0448c2d3b9d567328` |
| 4 | `theorem` | [rank_zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean/declarations/rank-zero--63934bea2abc67cd01e7a9bb.md) | 52 | `result-track:63934bea2abc67cd01e7a9bbdac5f3f9fbdf1eef4be250b9ce4c6e4dd7abe34b` |
| 5 | `theorem` | [rank_comp_le_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean/declarations/rank-comp-le-left--3ace3856da150e5e3359d534.md) | 57 | `result-track:3ace3856da150e5e3359d53434034c94b301852d0ccc614a5c9ea8c94b0ed838` |
| 6 | `theorem` | [lift_rank_comp_le_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean/declarations/lift-rank-comp-le-right--6987bfe25ed7f7a24252c692.md) | 62 | `result-track:6987bfe25ed7f7a24252c692c8344a45c9d2c53642e4a92f8e5667272e6c16ba` |
| 7 | `theorem` | [lift_rank_comp_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean/declarations/lift-rank-comp-le--2f9b8bd64cc90c6ee39b4752.md) | 67 | `result-track:2f9b8bd64cc90c6ee39b4752e52c676fb397a728a155980487c1e8af90f0f856` |
| 8 | `theorem` | [rank_comp_le_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean/declarations/rank-comp-le-right--91e9ed2b8f3404ff926cdb4d.md) | 74 | `result-track:91e9ed2b8f3404ff926cdb4dec758257ee4f5268c39afb70f8787d79610b0c89` |
| 9 | `theorem` | [rank_comp_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean/declarations/rank-comp-le--b43251df1c687c4689d8c40d.md) | 80 | `result-track:b43251df1c687c4689d8c40de2a56ea211e676a9bf5cd203b4e4e11c51a45845` |
| 10 | `theorem` | [rank_add_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean/declarations/rank-add-le--e301c7bcf0bcc725a4724a8f.md) | 91 | `result-track:e301c7bcf0bcc725a4724a8fdba83083acf4a07229353bbd8a1fbb6ceadfc1a2` |
| 11 | `theorem` | [rank_finset_sum_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean/declarations/rank-finset-sum-le--0dcce1daa5b9ef5c0e08ab90.md) | 100 | `result-track:0dcce1daa5b9ef5c0e08ab9077b2bbb710106e702ad59c60570799ce9ddb97b3` |
| 12 | `theorem` | [le_rank_iff_exists_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean/declarations/le-rank-iff-exists-linearindependent--ebf291750904b65d21af37d8.md) | 105 | `result-track:ebf291750904b65d21af37d84da27476044a7599ba422957796869f1dcc403f6` |
| 13 | `theorem` | [le_rank_iff_exists_linearIndependent_finset](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean/declarations/le-rank-iff-exists-linearindependent-finset--dee1144c3eac6bdff9c982f8.md) | 126 | `result-track:dee1144c3eac6bdff9c982f8a7feb2142a53a5827f333ebd24b5478341160a38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
