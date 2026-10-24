# Verification target: GRWTSK.Algebra.NeZero.Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95799222a3a9b238e23c0f7425d257c6ff830ec0",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/index.md) · [Full source](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95799222a3a9b238e23c0f7425d257c6ff830ec0`.

Source path: `GRWTSK/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Init.ZeroOne` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Algebra.Order` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NeZero](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/declarations/nezero--12950df7f38c55c8e81df9a7.md) | 34 | `declaration-track:12950df7f38c55c8e81df9a7088028cae8eeb9997241b0047eecc1965affd337` |
| 2 | `theorem` | [NeZero.ne](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/declarations/nezero-ne--859ad7d77afc7c68c39fc7da.md) | 39 | `result-track:859ad7d77afc7c68c39fc7da7786b9ec3c62ce5efceb64aea17522346807a1c2` |
| 3 | `theorem` | [NeZero.ne'](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/declarations/nezero-ne--143e2cd5de0930d21bf97587.md) | 43 | `result-track:143e2cd5de0930d21bf97587548752fd327941df82f67bca67108e2873d8f824` |
| 4 | `theorem` | [neZero_iff](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/declarations/nezero-iff--c31cbc74f9147225e943f3c5.md) | 47 | `result-track:c31cbc74f9147225e943f3c5080ee35276e9dc46b7eb03358c85da79ad09ab96` |
| 5 | `theorem` | [not_neZero](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/declarations/not-nezero--7b9db00ad007ede81cc16393.md) | 51 | `result-track:7b9db00ad007ede81cc16393962d9dfd473621906245d11fbbdf3f38345ff634` |
| 6 | `theorem` | [eq_zero_or_neZero](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/declarations/eq-zero-or-nezero--24a684ea9a088dfffad83e93.md) | 54 | `result-track:24a684ea9a088dfffad83e930acd9b3dabb51d36bf83a8e5358bb97274458e84` |
| 7 | `lemma` | [zero_ne_one](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/declarations/zero-ne-one--e2cb9d8f0875c2b202e17cf2.md) | 61 | `result-track:e2cb9d8f0875c2b202e17cf2c22b01c30f8d6218f460e10e7c8569b999bd3e45` |
| 8 | `lemma` | [one_ne_zero](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/declarations/one-ne-zero--56414b5388acda929caad45e.md) | 64 | `result-track:56414b5388acda929caad45ea25fe3fa586041268a6556190f23dc3c8e379580` |
| 9 | `lemma` | [ne_zero_of_eq_one](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/declarations/ne-zero-of-eq-one--f90a70b5cbeb701ddcdc32c5.md) | 67 | `result-track:f90a70b5cbeb701ddcdc32c586311baf1ebaea4e59ddbf7a25ca72cde677f2c1` |
| 10 | `lemma` | [two_ne_zero](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/declarations/two-ne-zero--850c65e07fa62db1f99774fe.md) | 71 | `result-track:850c65e07fa62db1f99774fe252147f44846b83e1ed824bda6a122606ec00636` |
| 11 | `lemma` | [three_ne_zero](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/declarations/three-ne-zero--444d075b4692f99196f9f577.md) | 75 | `result-track:444d075b4692f99196f9f5776ef69d4c324590a89d4dcdce4209cc593db2c026` |
| 12 | `lemma` | [four_ne_zero](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/declarations/four-ne-zero--c122a73e5deb83cb7acb6440.md) | 79 | `result-track:c122a73e5deb83cb7acb6440327ab586312b6eda169e7c9f6fb05a2381b4ee7c` |
| 13 | `lemma` | [zero_ne_one'](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/declarations/zero-ne-one--3aa8ddc4e139a5ec31b0bb02.md) | 84 | `result-track:3aa8ddc4e139a5ec31b0bb025c28bbf2870077ba6780d5f4cbec679b3f389c53` |
| 14 | `lemma` | [one_ne_zero'](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/declarations/one-ne-zero--68096748edfdd9b6be7a1d5f.md) | 87 | `result-track:68096748edfdd9b6be7a1d5fe97fc20faf468b0b5d586e85e8aa6a1886782c6e` |
| 15 | `lemma` | [two_ne_zero'](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/declarations/two-ne-zero--ddbb9931c27cc261b0542c4c.md) | 90 | `result-track:ddbb9931c27cc261b0542c4c48fef2fc71f1ecaaa0801b6b28e4686c3740ae95` |
| 16 | `lemma` | [three_ne_zero'](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/declarations/three-ne-zero--e37b139d8a5cbd79d6dc9559.md) | 93 | `result-track:e37b139d8a5cbd79d6dc955984e9aeabaee5f2607380e5f89eada3233cb4d6da` |
| 17 | `lemma` | [four_ne_zero'](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/declarations/four-ne-zero--72bf658820847bea558238f5.md) | 96 | `result-track:72bf658820847bea558238f525127d6ca629df8c4b07fff728edda6a2d4def13` |
| 18 | `instance` | [succ](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/declarations/succ--c7fb1f3a40d6dc6eabd9fadb.md) | 105 | `declaration-track:c7fb1f3a40d6dc6eabd9fadbcdd58598127251d293c54040e8029f99fc5444eb` |
| 19 | `theorem` | [of_pos](../../../../mathematics/Algebra/NeZero/Variant28fb7e572c9f9dead66095b70df38e58b40abaf0a8cd85fad82fb1b4f1f7ea6f.lean/declarations/of-pos--4bdcc988e3e0625fc7ef6865.md) | 107 | `result-track:4bdcc988e3e0625fc7ef6865d8ee5e952f9ffdc658a66bc5577b85df394781bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
