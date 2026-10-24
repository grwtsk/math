# Verification target: GRWTSK.Algebra.UniversalAlgebra.Field.Variantb1d05382bcd496d149447cbcfc81f13d7bb35b057cf8d861b3fd3d51b854455d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45c017b636ddc81a372bdc6e54419d958509909d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Field/Variantb1d05382bcd496d149447cbcfc81f13d7bb35b057cf8d861b3fd3d51b854455d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variantb1d05382bcd496d149447cbcfc81f13d7bb35b057cf8d861b3fd3d51b854455d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variantb1d05382bcd496d149447cbcfc81f13d7bb35b057cf8d861b3fd3d51b854455d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45c017b636ddc81a372bdc6e54419d958509909d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Field/Variantb1d05382bcd496d149447cbcfc81f13d7bb35b057cf8d861b3fd3d51b854455d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Field/Variantb1d05382bcd496d149447cbcfc81f13d7bb35b057cf8d861b3fd3d51b854455d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cast_inv_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variantb1d05382bcd496d149447cbcfc81f13d7bb35b057cf8d861b3fd3d51b854455d.lean/declarations/cast-inv-le-one--f7b669ee91b41c634e7c12a6.md) | 31 | `result-track:f7b669ee91b41c634e7c12a632bc2c1b74b19f7f20397c86cecc4ba089a678f3` |
| 2 | `theorem` | [cast_div_le](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variantb1d05382bcd496d149447cbcfc81f13d7bb35b057cf8d861b3fd3d51b854455d.lean/declarations/cast-div-le--5ca830aaedcb24638f8a025d.md) | 36 | `result-track:5ca830aaedcb24638f8a025dc9c2968d45049e4535fd6181c568554a7c92e395` |
| 3 | `theorem` | [inv_pos_of_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variantb1d05382bcd496d149447cbcfc81f13d7bb35b057cf8d861b3fd3d51b854455d.lean/declarations/inv-pos-of-nat--128314f00d8bb1a67ec5b3b8.md) | 43 | `result-track:128314f00d8bb1a67ec5b3b80cd5b62dc82af9daecb236c64dfa4b02d6b40d6b` |
| 4 | `theorem` | [one_div_pos_of_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variantb1d05382bcd496d149447cbcfc81f13d7bb35b057cf8d861b3fd3d51b854455d.lean/declarations/one-div-pos-of-nat--51f564c5f0bbb1d25cd23229.md) | 46 | `result-track:51f564c5f0bbb1d25cd2322906611d18d45f8ab773582a304d2723f4d43012eb` |
| 5 | `theorem` | [one_div_le_one_div](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variantb1d05382bcd496d149447cbcfc81f13d7bb35b057cf8d861b3fd3d51b854455d.lean/declarations/one-div-le-one-div--85960e66333b9d9263e9da0d.md) | 50 | `result-track:85960e66333b9d9263e9da0d0e6efb7cf8e417cb4528bc3a82f42136b7e2e5a5` |
| 6 | `theorem` | [one_div_lt_one_div](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variantb1d05382bcd496d149447cbcfc81f13d7bb35b057cf8d861b3fd3d51b854455d.lean/declarations/one-div-lt-one-div--f64f1390c3d535608f8ba0f1.md) | 55 | `result-track:f64f1390c3d535608f8ba0f13d3fc1871f6e98a6ff11acec69f1ce8048ca16f3` |
| 7 | `theorem` | [one_div_cast_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variantb1d05382bcd496d149447cbcfc81f13d7bb35b057cf8d861b3fd3d51b854455d.lean/declarations/one-div-cast-pos--603e977ba63ab274b7df7da7.md) | 60 | `result-track:603e977ba63ab274b7df7da7d3dac9ae6452895f1aa2e5541d62e3ab7aa682c6` |
| 8 | `theorem` | [one_div_cast_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variantb1d05382bcd496d149447cbcfc81f13d7bb35b057cf8d861b3fd3d51b854455d.lean/declarations/one-div-cast-nonneg--bb7a5fd253797c4fcf04ed39.md) | 63 | `result-track:bb7a5fd253797c4fcf04ed3921fa5c2ba22329337f041dac240c812f3841a4db` |
| 9 | `theorem` | [one_div_cast_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variantb1d05382bcd496d149447cbcfc81f13d7bb35b057cf8d861b3fd3d51b854455d.lean/declarations/one-div-cast-ne-zero--74ae75ddb7a617287a35f1be.md) | 65 | `result-track:74ae75ddb7a617287a35f1bedbdabfe1ed39ffb9fa8e9ae4d39f47d9b3d686f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
