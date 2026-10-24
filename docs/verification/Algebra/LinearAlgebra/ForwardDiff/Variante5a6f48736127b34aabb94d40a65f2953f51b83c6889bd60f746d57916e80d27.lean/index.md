# Verification target: GRWTSK.Algebra.LinearAlgebra.ForwardDiff.Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d25a6c90cf7939cc79f753aa2873941595775563",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d25a6c90cf7939cc79f753aa2873941595775563`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.AddChar` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.LinearMap` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fwdDiff](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/fwddiff--03d89abf2302b0643488a8a6.md) | 38 | `declaration-track:03d89abf2302b0643488a8a612defbeb13221e9fc15a4b88097b976c765d960a` |
| 2 | `lemma` | [fwdDiff_add](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/fwddiff-add--6a7773045a12b8d231ac7e2d.md) | 44 | `result-track:6a7773045a12b8d231ac7e2d264d54dbc2ef59a84eacf60bcc42bee761b12355` |
| 3 | `lemma` | [fwdDiff_const](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/fwddiff-const--c635ac10b6a560965e62fc7d.md) | 48 | `result-track:c635ac10b6a560965e62fc7d396e68939a58a0a7b6d55480296f8d28160b0b01` |
| 4 | `lemma` | [fwdDiff_smul](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/fwddiff-smul--c8ebce89868791220efa06ed.md) | 53 | `result-track:c8ebce89868791220efa06ed5889f338ffe9642dcfcdb6a9f6addecb5602f17b` |
| 5 | `lemma` | [fwdDiff_const_smul](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/fwddiff-const-smul--a422169145b141caf4119288.md) | 61 | `result-track:a422169145b141caf4119288b7972ee6ed8952bf1b82cef78f2d6ac86a9f20a3` |
| 6 | `lemma` | [fwdDiff_smul_const](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/fwddiff-smul-const--48554684f43521ee5f665835.md) | 65 | `result-track:48554684f43521ee5f6658359a081c4e5ad423a44714f08924837c5556f8fd06` |
| 7 | `def` | [fwdDiffₗ](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/fwddiff--c6c4866f870d9b9e7fae3800.md) | 86 | `declaration-track:c6c4866f870d9b9e7fae380036c3d4c60457ef0e2dfb7020c4ad07356844fce9` |
| 8 | `lemma` | [coe_fwdDiffₗ](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/coe-fwddiff--38b5884595aa4c01989ad123.md) | 91 | `result-track:38b5884595aa4c01989ad123753287835d5bb7fa94f518104d81ca6e39c953cc` |
| 9 | `lemma` | [coe_fwdDiffₗ_pow](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/coe-fwddiff-pow--7dd99232d53b7d7064d87e79.md) | 93 | `result-track:7dd99232d53b7d7064d87e7956f446a51244613fc349079cb3f17cc269e406d8` |
| 10 | `def` | [shiftₗ](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/shift--61b014cbf40acad6873a720a.md) | 98 | `declaration-track:61b014cbf40acad6873a720aa9fa92cc94c254ff3d00e9fc9615f7fcf6f64dc7` |
| 11 | `lemma` | [shiftₗ_apply](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/shift-apply--781da9cf165a74e130fc9d76.md) | 100 | `result-track:781da9cf165a74e130fc9d76628c67afe99ad136f940a319d4c02e2a963a64b5` |
| 12 | `lemma` | [shiftₗ_pow_apply](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/shift-pow-apply--da7d2db921aa1323221d3681.md) | 102 | `result-track:da7d2db921aa1323221d36819e731b7bf7e5b8afdc39ec4582312f0fcaea5d81` |
| 13 | `lemma` | [fwdDiff_finset_sum](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/fwddiff-finset-sum--d84a46f1f9b2732533a38bb4.md) | 111 | `result-track:d84a46f1f9b2732533a38bb4377ddac1f511d5092c21de5c787f55810b28ea77` |
| 14 | `lemma` | [fwdDiff_iter_add](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/fwddiff-iter-add--7b71348b8c9c2b58421cbf04.md) | 115 | `result-track:7b71348b8c9c2b58421cbf04742001f4888c5118154f54039d818dad849a38a2` |
| 15 | `lemma` | [fwdDiff_iter_const_smul](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/fwddiff-iter-const-smul--c87ba3e12562873ab8c352b4.md) | 119 | `result-track:c87ba3e12562873ab8c352b46a1a83da46e4ec954d7dbc031736b751daabf13b` |
| 16 | `lemma` | [fwdDiff_iter_finset_sum](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/fwddiff-iter-finset-sum--31c3e9c79015055fb16c0d11.md) | 125 | `result-track:31c3e9c79015055fb16c0d11e60d6d78388a369ca07bdec31501f8ddc84cec45` |
| 17 | `theorem` | [fwdDiff_iter_eq_sum_shift](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/fwddiff-iter-eq-sum-shift--8049ad45a36d7b35f58e984f.md) | 135 | `result-track:8049ad45a36d7b35f58e984fde1892b3bf38cecb7a364cf601e101c8d66bd72f` |
| 18 | `theorem` | [shift_eq_sum_fwdDiff_iter](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/shift-eq-sum-fwddiff-iter--9f81ac62a725286e5bbab24e.md) | 155 | `result-track:9f81ac62a725286e5bbab24e85ff1447c63acc6a8d1d78b7516117ebf683ae39` |
| 19 | `lemma` | [fwdDiff_choose](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/fwddiff-choose--0fe8fb813f7bf6ec66885ed1.md) | 166 | `result-track:0fe8fb813f7bf6ec66885ed18065da6777f141c91bd3741e2f6431f20d207b2b` |
| 20 | `lemma` | [fwdDiff_iter_choose](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/fwddiff-iter-choose--c646c2f59033d79d5e9b0c30.md) | 170 | `result-track:c646c2f59033d79d5e9b0c307f54291ff0bd925e32ecdc12579af74c0b2cc6b4` |
| 21 | `lemma` | [fwdDiff_iter_choose_zero](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/fwddiff-iter-choose-zero--c05934593429a862e413762f.md) | 176 | `result-track:c05934593429a862e413762fe9fc2eb9ff9a13d824809aa9f54f9ebd9485e17d` |
| 22 | `lemma` | [fwdDiff_addChar_eq](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variante5a6f48736127b34aabb94d40a65f2953f51b83c6889bd60f746d57916e80d27.lean/declarations/fwddiff-addchar-eq--b3de41d8eaa2db438edb2491.md) | 189 | `result-track:b3de41d8eaa2db438edb249164aea9e4e6e26bc12227122ee98febeb1ff323aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
