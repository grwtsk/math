# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.SumTwoSquares.Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0840e85e4988f189c10963f04c95e0188ce74254",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0840e85e4988f189c10963f04c95e0188ce74254`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Zsqrtd.QuadraticReciprocity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Nat.Prime.sq_add_sq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean/declarations/nat-prime-sq-add-sq--a0dd9de0ff824813a7984b0e.md) | 32 | `result-track:a0dd9de0ff824813a7984b0ed56dc97b413df2b086d8640155b1ac41b09b9980` |
| 2 | `theorem` | [sq_add_sq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean/declarations/sq-add-sq-mul--5ea6dca09e67d7ae9bd9bf14.md) | 49 | `result-track:5ea6dca09e67d7ae9bd9bf14d10b66bd8434df6d7d09a044397316dbb03dd84e` |
| 3 | `theorem` | [Nat.sq_add_sq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean/declarations/nat-sq-add-sq-mul--e3fecbf3a9bce50ba511eb70.md) | 55 | `result-track:e3fecbf3a9bce50ba511eb70f50f5ed05ade80e398d2a31b9640231ceb990014` |
| 4 | `theorem` | [ZMod.isSquare_neg_one_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean/declarations/zmod-issquare-neg-one-of-dvd--66d2f478bb500d088fb02529.md) | 76 | `result-track:66d2f478bb500d088fb025290ed9bd050614c2f47e28133d0d9601c512a135af` |
| 5 | `theorem` | [ZMod.isSquare_neg_one_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean/declarations/zmod-issquare-neg-one-mul--74d808c413fb2483cf311c09.md) | 85 | `result-track:74d808c413fb2483cf311c09a990e16ef5e89c2a76d6e83f8234f8644f3ecd03` |
| 6 | `theorem` | [Nat.Prime.mod_four_ne_three_of_dvd_isSquare_neg_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean/declarations/nat-prime-mod-four-ne-three-of-dvd-issquare-neg-one--da76bd93498fcd434bd0ce46.md) | 97 | `result-track:da76bd93498fcd434bd0ce46abcf0d5b92a0ea29a390fc588f642f4e4531beb9` |
| 7 | `theorem` | [ZMod.isSquare_neg_one_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean/declarations/zmod-issquare-neg-one-iff--4209e9ff30bd2b56547ea46d.md) | 107 | `result-track:4209e9ff30bd2b56547ea46dda30057f08ca7922343fa96a1e96004e3239b59e` |
| 8 | `theorem` | [ZMod.isSquare_neg_one_iff'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean/declarations/zmod-issquare-neg-one-iff--b821e8b5b882bf69299832dc.md) | 124 | `result-track:b821e8b5b882bf69299832dc04c26b0fcafebaa6dd4f868686a398f9db04323d` |
| 9 | `theorem` | [Nat.eq_sq_add_sq_of_isSquare_mod_neg_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean/declarations/nat-eq-sq-add-sq-of-issquare-mod-neg-one--781a1665c6a67aee888b987e.md) | 146 | `result-track:781a1665c6a67aee888b987ebb74616262e82d74cac51ecf1fbaa78af5842bb1` |
| 10 | `theorem` | [ZMod.isSquare_neg_one_of_eq_sq_add_sq_of_isCoprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean/declarations/zmod-issquare-neg-one-of-eq-sq-add-sq-of-iscoprime--6d3daeea6721d571e56508a7.md) | 160 | `result-track:6d3daeea6721d571e56508a7aea23ae91522ee800561ffef918404dbe060bed8` |
| 11 | `theorem` | [ZMod.isSquare_neg_one_of_eq_sq_add_sq_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean/declarations/zmod-issquare-neg-one-of-eq-sq-add-sq-of-coprime--844aa3d596ae86277973620d.md) | 176 | `result-track:844aa3d596ae86277973620de2474378fceae36672b5c0562a300c8bee445af7` |
| 12 | `theorem` | [Nat.eq_sq_add_sq_iff_eq_sq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean/declarations/nat-eq-sq-add-sq-iff-eq-sq-mul--76ee4a672232c34cfd60b896.md) | 184 | `result-track:76ee4a672232c34cfd60b89672ec7f15f2ecbf79a9d9d32690cb99f2830398b3` |
| 13 | `theorem` | [Nat.eq_sq_add_sq_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean/declarations/nat-eq-sq-add-sq-iff--355f0f8e781c0bd5f74a66e2.md) | 213 | `result-track:355f0f8e781c0bd5f74a66e286e59a49d163362b71352cddbda86aeb208788e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
