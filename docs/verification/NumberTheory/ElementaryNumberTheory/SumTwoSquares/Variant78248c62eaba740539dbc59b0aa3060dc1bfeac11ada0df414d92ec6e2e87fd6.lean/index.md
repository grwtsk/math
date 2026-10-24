# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.SumTwoSquares.Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "318ce78a15cbdaca25ff320139f47d4ed6da294b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `318ce78a15cbdaca25ff320139f47d4ed6da294b`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Squarefree` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Zsqrtd.QuadraticReciprocity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicVal.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Nat.Prime.sq_add_sq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean/declarations/nat-prime-sq-add-sq--22a912b46cacb048f0b60fcf.md) | 39 | `result-track:22a912b46cacb048f0b60fcffe0851c53e516016f7e67aeeaf6de7b11f647fd1` |
| 2 | `theorem` | [sq_add_sq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean/declarations/sq-add-sq-mul--aeebce4ea9d1614f12f4906d.md) | 55 | `result-track:aeebce4ea9d1614f12f4906dec02ecb7d17776692355d83734c2063c091f2304` |
| 3 | `theorem` | [Nat.sq_add_sq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean/declarations/nat-sq-add-sq-mul--963dfec90b66de00fa9f71f3.md) | 60 | `result-track:963dfec90b66de00fa9f71f36c11260fe81f392b1d44c303c6fd92d15da3fdac` |
| 4 | `theorem` | [ZMod.isSquare_neg_one_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean/declarations/zmod-issquare-neg-one-of-dvd--88d165396fbb6067a925397a.md) | 80 | `result-track:88d165396fbb6067a925397a86e8c6d7a5a539397e48bdaad1448d426a9c6b4c` |
| 5 | `theorem` | [ZMod.isSquare_neg_one_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean/declarations/zmod-issquare-neg-one-mul--c957f4764df4988e19d8dba3.md) | 88 | `result-track:c957f4764df4988e19d8dba3ae9e15201cbf6927b6831150aef0a40006e6ce8f` |
| 6 | `theorem` | [Nat.Prime.mod_four_ne_three_of_dvd_isSquare_neg_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean/declarations/nat-prime-mod-four-ne-three-of-dvd-issquare-neg-one--5fe6666cd0be2226a913b6d0.md) | 99 | `result-track:5fe6666cd0be2226a913b6d0184cad1856045cc241fa3983dd73b28dbc85bac7` |
| 7 | `theorem` | [ZMod.isSquare_neg_one_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean/declarations/zmod-issquare-neg-one-iff--4dba1214bdc354ee05e8af14.md) | 108 | `result-track:4dba1214bdc354ee05e8af14912134660d7441798d8bf30b802d5860dbdf97ee` |
| 8 | `theorem` | [ZMod.isSquare_neg_one_iff'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean/declarations/zmod-issquare-neg-one-iff--7238124309d9a153b2e41dea.md) | 125 | `result-track:7238124309d9a153b2e41deaf4a39690e6ff6ce3c44a985c36229ebecd9cf7e3` |
| 9 | `theorem` | [Nat.eq_sq_add_sq_of_isSquare_mod_neg_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean/declarations/nat-eq-sq-add-sq-of-issquare-mod-neg-one--6c5901122198341bc090ab42.md) | 146 | `result-track:6c5901122198341bc090ab425e59c0842bf7ee264726b6a05b58be3f4ef6f6a2` |
| 10 | `theorem` | [ZMod.isSquare_neg_one_of_eq_sq_add_sq_of_isCoprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean/declarations/zmod-issquare-neg-one-of-eq-sq-add-sq-of-iscoprime--c0c7c33456224f3ec1a4b112.md) | 160 | `result-track:c0c7c33456224f3ec1a4b1123afbaa777f5f5a42f71550e7a3916888954e1697` |
| 11 | `theorem` | [ZMod.isSquare_neg_one_of_eq_sq_add_sq_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean/declarations/zmod-issquare-neg-one-of-eq-sq-add-sq-of-coprime--26c54bfaa306c264095b1f1c.md) | 175 | `result-track:26c54bfaa306c264095b1f1c9691997a0d9bc1803972ac04e1831667cbcff619` |
| 12 | `theorem` | [Nat.eq_sq_add_sq_iff_eq_sq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean/declarations/nat-eq-sq-add-sq-iff-eq-sq-mul--a918e7e7adf62dcc3008e0ab.md) | 182 | `result-track:a918e7e7adf62dcc3008e0ab3d03ad3a69a8f0bc974cc8eae06925f76e9f2a7e` |
| 13 | `theorem` | [Nat.eq_sq_add_sq_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant78248c62eaba740539dbc59b0aa3060dc1bfeac11ada0df414d92ec6e2e87fd6.lean/declarations/nat-eq-sq-add-sq-iff--18e887bfe887ce677bfd8e08.md) | 210 | `result-track:18e887bfe887ce677bfd8e08d38a12adbbbef0f29eeec17db09b23f9a1f8b165` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
