# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.SumTwoSquares.Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a00b526b78c60cabdec3570501b6aaf21f665caa",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a00b526b78c60cabdec3570501b6aaf21f665caa`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Zsqrtd.QuadraticReciprocity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Nat.Prime.sq_add_sq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/declarations/nat-prime-sq-add-sq--9944bd2b87186911b4cd2891.md) | 40 | `result-track:9944bd2b87186911b4cd28910901f97f38bd1db7e6e924be9b0cf3ef54b546bb` |
| 2 | `theorem` | [sq_add_sq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/declarations/sq-add-sq-mul--5fcd016d149250588b3dcdb0.md) | 57 | `result-track:5fcd016d149250588b3dcdb089538126167101e0575eeb073dfcba2ec1e27826` |
| 3 | `theorem` | [Nat.sq_add_sq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/declarations/nat-sq-add-sq-mul--570d5ac37dab579f8f6bd1a5.md) | 63 | `result-track:570d5ac37dab579f8f6bd1a5bcf8d34bb5221161f8f09f1260780e0710687a20` |
| 4 | `theorem` | [ZMod.isSquare_neg_one_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/declarations/zmod-issquare-neg-one-of-dvd--9a86c8f416868161dc66622e.md) | 84 | `result-track:9a86c8f416868161dc66622e20c3ea01877864640fdd80eb08fafd66f2d8e923` |
| 5 | `theorem` | [ZMod.isSquare_neg_one_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/declarations/zmod-issquare-neg-one-mul--9c14e3a5f5f3800c18838408.md) | 93 | `result-track:9c14e3a5f5f3800c188384088d07a90da893b6ce9ac456116c4ea5561e6a4df2` |
| 6 | `theorem` | [Nat.Prime.mod_four_ne_three_of_dvd_isSquare_neg_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/declarations/nat-prime-mod-four-ne-three-of-dvd-issquare-neg-one--5d2926025535e30100871d8a.md) | 105 | `result-track:5d2926025535e30100871d8aa52d4febfa8ebc64e83d2e16596405aed953798f` |
| 7 | `theorem` | [ZMod.isSquare_neg_one_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/declarations/zmod-issquare-neg-one-iff--ee01a9fbcb7befb0bc4bfa7d.md) | 115 | `result-track:ee01a9fbcb7befb0bc4bfa7ddee1a6acc1391abfbe1518bf0076a75b68990323` |
| 8 | `theorem` | [ZMod.isSquare_neg_one_iff'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/declarations/zmod-issquare-neg-one-iff--25d3f922fea4609b5c975117.md) | 132 | `result-track:25d3f922fea4609b5c975117fe3b3efe5dd0fc27e8616ea0d49c558c36a43cfb` |
| 9 | `theorem` | [Nat.eq_sq_add_sq_of_isSquare_mod_neg_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/declarations/nat-eq-sq-add-sq-of-issquare-mod-neg-one--1ac41271996853f41f6fd3f2.md) | 154 | `result-track:1ac41271996853f41f6fd3f23e7993b6b77781a6a50b607cd1852245286383f7` |
| 10 | `theorem` | [ZMod.isSquare_neg_one_of_eq_sq_add_sq_of_isCoprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/declarations/zmod-issquare-neg-one-of-eq-sq-add-sq-of-iscoprime--15aa3a88ade492afae4592f2.md) | 168 | `result-track:15aa3a88ade492afae4592f2e5a9e32fbee7b5cf6b00aabba76b03368a61bed4` |
| 11 | `theorem` | [ZMod.isSquare_neg_one_of_eq_sq_add_sq_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/declarations/zmod-issquare-neg-one-of-eq-sq-add-sq-of-coprime--689577282d2e5c24a8fe50fb.md) | 184 | `result-track:689577282d2e5c24a8fe50fb85b73f9962ae3fd36c865220d945cd0407155dcb` |
| 12 | `theorem` | [Nat.eq_sq_add_sq_iff_eq_sq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/declarations/nat-eq-sq-add-sq-iff-eq-sq-mul--46921c0d2bdf78c5ce38d5df.md) | 192 | `result-track:46921c0d2bdf78c5ce38d5df48234af2c34d7477ae9d5668ce24d3e04fdc1bee` |
| 13 | `theorem` | [Nat.eq_sq_add_sq_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/declarations/nat-eq-sq-add-sq-iff--8df9097221063ab2bc102e81.md) | 221 | `result-track:8df9097221063ab2bc102e811f4182be6084b01643b1ae63978f9b8075953c5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
