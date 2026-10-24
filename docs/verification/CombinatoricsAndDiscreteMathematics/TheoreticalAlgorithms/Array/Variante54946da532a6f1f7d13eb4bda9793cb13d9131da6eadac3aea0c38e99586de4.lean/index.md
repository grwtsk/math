# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f817ccab6242775cd0725cc0cb271a1ee34aa86c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f817ccab6242775cd0725cc0cb271a1ee34aa86c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.TakeDrop` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Array.iterM_eq_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4.lean/declarations/array-iterm-eq-iterfromidxm--695de73b77ba9371121f7875.md) | 30 | `result-track:695de73b77ba9371121f7875c924d20922d11138523cd6416a85ee6b56700566` |
| 2 | `theorem` | [Array.step_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4.lean/declarations/array-step-iterfromidxm--a48565ea3a9e141186226de2.md) | 34 | `result-track:a48565ea3a9e141186226de2c21a9a39e23b6c4107ff1726fc3212c503609269` |
| 3 | `theorem` | [Array.step_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4.lean/declarations/array-step-iterm--f9d434e63e2f7699f5b69cdd.md) | 44 | `result-track:f9d434e63e2f7699f5b69cddae1defe10f398bfac3545a34b7905750f0609e40` |
| 4 | `theorem` | [Std.Iterators.Types.ArrayIterator.stepAsHetT_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4.lean/declarations/std-iterators-types-arrayiterator-stepashett-iterfromidxm--b57827a9e7f074a04489380e.md) | 56 | `result-track:b57827a9e7f074a04489380efeb2c0f8ac3f638385041bcb81e630e658c0882d` |
| 5 | `theorem` | [Array.iterFromIdxM_equiv_iterM_drop_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4.lean/declarations/array-iterfromidxm-equiv-iterm-drop-tolist--2b004bfc066715470b616c11.md) | 87 | `result-track:2b004bfc066715470b616c11407aafe125babb5d15f366093ddaafa1cd556d94` |
| 6 | `theorem` | [Array.iterM_equiv_iterM_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4.lean/declarations/array-iterm-equiv-iterm-tolist--89867549a1aa7d49b97f678f.md) | 122 | `result-track:89867549a1aa7d49b97f678f33c9ce656daa49a7d694083d060851c21a6a332d` |
| 7 | `theorem` | [Array.toList_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4.lean/declarations/array-tolist-iterfromidxm--9e47abdb00819e5211530d2d.md) | 131 | `result-track:9e47abdb00819e5211530d2dff788d4f1c7c3a8efd6f79c90bde5cbc6b65c062` |
| 8 | `theorem` | [Array.toList_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4.lean/declarations/array-tolist-iterm--4831d55d45a53bbfe9445700.md) | 137 | `result-track:4831d55d45a53bbfe9445700b0eebe5019ec101e3e256b908145e9808bba48b6` |
| 9 | `theorem` | [Array.toArray_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4.lean/declarations/array-toarray-iterfromidxm--f736b294b8670fc19b38d213.md) | 142 | `result-track:f736b294b8670fc19b38d2138921732c04ee599c01d612d0240bde517b4b3fa3` |
| 10 | `theorem` | [Array.toArray_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4.lean/declarations/array-toarray-iterm--2b380feb67036f155ac690b8.md) | 149 | `result-track:2b380feb67036f155ac690b875d1d38e95a1122f52cc48910d09e308e34b2099` |
| 11 | `theorem` | [Array.toListRev_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4.lean/declarations/array-tolistrev-iterfromidxm--b46576ff88c83c7e7a98f410.md) | 154 | `result-track:b46576ff88c83c7e7a98f41051369e9a49143204c2f15d334458e486b3892b9a` |
| 12 | `theorem` | [Array.toListRev_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4.lean/declarations/array-tolistrev-iterm--e6cec836c6144307ffeb233a.md) | 159 | `result-track:e6cec836c6144307ffeb233a4a4a02ee5c712ccd75b167622c917bff844bc159` |
| 13 | `theorem` | [Array.length_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4.lean/declarations/array-length-iterfromidxm--1e5ea649b43eaffc9b4a96b0.md) | 164 | `result-track:1e5ea649b43eaffc9b4a96b06ccb3d9fb6a45132da0593719257ffa1d0aac742` |
| 14 | `theorem` | [Array.length_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4.lean/declarations/array-length-iterm--0757d4948f730a93ce3a4af1.md) | 169 | `result-track:0757d4948f730a93ce3a4af1945ef5f5c02250da4e14e20a20f89fb77ac79cb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
