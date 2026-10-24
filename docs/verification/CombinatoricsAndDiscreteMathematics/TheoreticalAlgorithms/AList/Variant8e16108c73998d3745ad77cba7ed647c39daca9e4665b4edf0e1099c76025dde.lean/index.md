# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AList.Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e82a8b6a4aa7751f6ffcfbccd4279c202dac8349",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e82a8b6a4aa7751f6ffcfbccd4279c202dac8349`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.AList` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toAList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde.lean/declarations/toalist--27183b28c3955602d13e2122.md) | 29 | `declaration-track:27183b28c3955602d13e21228c17524bdad16ef8fa138cd66a9a13c41a64dda9` |
| 2 | `theorem` | [toAList_keys_toFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde.lean/declarations/toalist-keys-tofinset--b5d5e7f37b2ab00aab228e72.md) | 41 | `result-track:b5d5e7f37b2ab00aab228e72d3ba537eaa5390e29d581111e4ca4cf7ba113eec` |
| 3 | `theorem` | [mem_toAlist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde.lean/declarations/mem-toalist--4107a32e07d96a605b7f067e.md) | 48 | `result-track:4107a32e07d96a605b7f067e93cb3574fe3636670daf7ce23c55cd276bf693a5` |
| 4 | `def` | [lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde.lean/declarations/lookupfinsupp--c893c26d6e2002038bac5158.md) | 62 | `declaration-track:c893c26d6e2002038bac5158fcd0934a7e7ba000e142afd724ca33677f5b4042` |
| 5 | `theorem` | [lookupFinsupp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde.lean/declarations/lookupfinsupp-apply--4973f1b40ea401532b420d16.md) | 77 | `result-track:4973f1b40ea401532b420d1661fd41822ad478cf31f6bfbdd85bd1e304b2d6e0` |
| 6 | `theorem` | [lookupFinsupp_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde.lean/declarations/lookupfinsupp-support--b3c0d7694b9c388e1993af79.md) | 84 | `result-track:b3c0d7694b9c388e1993af799e73a81572577ba024bbf1333dd9bb2a6c2000b0` |
| 7 | `theorem` | [lookupFinsupp_eq_iff_of_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde.lean/declarations/lookupfinsupp-eq-iff-of-ne-zero--89f8eeb06e44c16d99ba0cf9.md) | 92 | `result-track:89f8eeb06e44c16d99ba0cf939bd307a0227074faa388a0244fd6f355c2d9405` |
| 8 | `theorem` | [lookupFinsupp_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde.lean/declarations/lookupfinsupp-eq-zero-iff--37a6d0f1c0227ab99abd3836.md) | 98 | `result-track:37a6d0f1c0227ab99abd38363d07056b346f2efcf84d03265e456efdb1282768` |
| 9 | `theorem` | [empty_lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde.lean/declarations/empty-lookupfinsupp--f91aabafae2b10ee47ced47e.md) | 105 | `result-track:f91aabafae2b10ee47ced47e02e9f2b6ffa044a7ba5e3992cafc03c61c5584cc` |
| 10 | `theorem` | [insert_lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde.lean/declarations/insert-lookupfinsupp--a0a61d99aafa27460d7839d5.md) | 112 | `result-track:a0a61d99aafa27460d7839d5b322f6526cef0ff5b2ba709bdb8e72edca52e9db` |
| 11 | `theorem` | [singleton_lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde.lean/declarations/singleton-lookupfinsupp--93c74138b0f631ef69b7fedb.md) | 119 | `result-track:93c74138b0f631ef69b7fedbe2f152adb18f8b29bfda11ba3dba6bb5c903a153` |
| 12 | `theorem` | [_root_.Finsupp.toAList_lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde.lean/declarations/root-finsupp-toalist-lookupfinsupp--79a9f49631c366b6969a5801.md) | 127 | `result-track:79a9f49631c366b6969a5801de8aed59f02eda28f4cf0029be106fcad968a389` |
| 13 | `theorem` | [lookupFinsupp_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde.lean/declarations/lookupfinsupp-surjective--a8176994a77fc0a0c80bc08a.md) | 138 | `result-track:a8176994a77fc0a0c80bc08a835625365070f08034fa10637ca27e04042e13b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
