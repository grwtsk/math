# Verification target: GRWTSK.Algebra.LinearAlgebra.Orthogonal.Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fec94e37175c4864d0d605d7f7cb7567896b6ab",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fec94e37175c4864d0d605d7f7cb7567896b6ab`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsOrtho](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/isortho--520a62b81355e180416003b8.md) | 55 | `declaration-track:520a62b81355e180416003b88bec283d73c4a40273b54de9ae8f19aeda7cdf3a` |
| 2 | `theorem` | [isOrtho_def](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/isortho-def--438faa351242b52a8522a531.md) | 59 | `result-track:438faa351242b52a8522a5315e7d1be555267c78d3f27cc6f2bbc354237e1ada` |
| 3 | `theorem` | [isOrtho_zero_left](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/isortho-zero-left--f430221e0d89e291067a4eaa.md) | 63 | `result-track:f430221e0d89e291067a4eaa927e8c5dbde020d3c2cc0f1738d6b1dbe9ab3fc1` |
| 4 | `theorem` | [isOrtho_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/isortho-zero-right--2dcd0b64f40e1c5d7641f79d.md) | 66 | `result-track:2dcd0b64f40e1c5d7641f79d33e4030642ccad6215d2cf2e149b99967315cafd` |
| 5 | `theorem` | [ne_zero_of_not_isOrtho_self](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/ne-zero-of-not-isortho-self--4a9c8bf15c096a81cde92be7.md) | 69 | `result-track:4a9c8bf15c096a81cde92be7c41720b50bb4f786716c3f419d6f39878b5a24aa` |
| 6 | `theorem` | [IsRefl.eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/isrefl-eq-iff--bdb9bf136b419b2ffa01baa1.md) | 72 | `result-track:bdb9bf136b419b2ffa01baa1c88382c2a7a96817b1083de37b0657c6cbd7f7d0` |
| 7 | `theorem` | [IsAlt.eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/isalt-eq-iff--78be967fcc23670afe8a3005.md) | 78 | `result-track:78be967fcc23670afe8a3005afbba3f63bf5327a24c9f676a2ec3e3fe1214b6d` |
| 8 | `theorem` | [IsSymm.eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/issymm-eq-iff--84ee82268522a0942cc7d45f.md) | 84 | `result-track:84ee82268522a0942cc7d45f5f7d52129e128e58b4fe75471d9cea3a00f66e66` |
| 9 | `def` | [iIsOrtho](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/iisortho--8829cbfa0473819682e0c773.md) | 92 | `declaration-track:8829cbfa0473819682e0c773af6386df424811a6cbebae128e41e6d688bb4daa` |
| 10 | `theorem` | [iIsOrtho_def](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/iisortho-def--b5ab4381c4f3e52225c24c8f.md) | 95 | `result-track:b5ab4381c4f3e52225c24c8f63fa2eb911c758f139f83e79b8db8f455b0013c2` |
| 11 | `theorem` | [isOrtho_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/isortho-smul-left--ba679c4359039874780b05df.md) | 105 | `result-track:ba679c4359039874780b05df5285a469970232f0c360893ecf8e8808a0cf85f4` |
| 12 | `theorem` | [isOrtho_smul_right](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/isortho-smul-right--01b16dcca42b31769949b98c.md) | 113 | `result-track:01b16dcca42b31769949b98cc0af8b1bdda705e2cba739dc8ea8b75bf708aea6` |
| 13 | `theorem` | [linearIndependent_of_iIsOrtho](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/linearindependent-of-iisortho--c69f027e7533e634cb72a73b.md) | 122 | `result-track:c69f027e7533e634cb72a73bc4b62b66ebefca10258c47fe6d88e562be75f102` |
| 14 | `def` | [orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/orthogonal--59e4fd31e3f23b37cd48bf9c.md) | 145 | `declaration-track:59e4fd31e3f23b37cd48bf9cfe2079b16cfd42b5745b01f6c94de18965395f68` |
| 15 | `theorem` | [mem_orthogonal_iff](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/mem-orthogonal-iff--48c4d62ea20de32d9eb81dd3.md) | 150 | `result-track:48c4d62ea20de32d9eb81dd3673092f7b1ef5a8419abee28bc99dc49edfd37f3` |
| 16 | `lemma` | [orthogonal_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/orthogonal-bot--641fb7e1685870cebaff0986.md) | 154 | `result-track:641fb7e1685870cebaff0986bbf838ee1f9894b96e41e3a9928563acb4404d20` |
| 17 | `theorem` | [orthogonal_le](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/orthogonal-le--8f008fb8131143c768880542.md) | 156 | `result-track:8f008fb8131143c7688805425fa95dbeafa19bfe1b90a9d06c1f1e1cf180433b` |
| 18 | `theorem` | [le_orthogonal_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/le-orthogonal-orthogonal--53dffab9eb267cb1d28b09e9.md) | 158 | `result-track:53dffab9eb267cb1d28b09e9bfb4c545103352578eb730b43716eb8f26d4b153` |
| 19 | `lemma` | [orthogonal_top_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/orthogonal-top-eq-ker--1e52c3708e0437af97a53f5e.md) | 161 | `result-track:1e52c3708e0437af97a53f5e7f3877a81e03b13d8ad60316aba4cc4f47f4c2fa` |
| 20 | `lemma` | [orthogonal_top_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/orthogonal-top-eq-bot--29c296eeccd1b3f663cf88c3.md) | 165 | `result-track:29c296eeccd1b3f663cf88c3bee234b8ca6beb2659ed5b934c3e48ca61dd030b` |
| 21 | `theorem` | [span_singleton_inf_orthogonal_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/span-singleton-inf-orthogonal-eq-bot--1979a5b1a83d743e1258afe2.md) | 170 | `result-track:1979a5b1a83d743e1258afe29e56d571d21156fe24bf896a8df5d2cf80d6349e` |
| 22 | `theorem` | [orthogonal_span_singleton_eq_toLin_ker](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/orthogonal-span-singleton-eq-tolin-ker--e9b88be641ec75eac622be3e.md) | 175 | `result-track:e9b88be641ec75eac622be3e3a56ea2bdfaa7bd6a4148384073c567e6acfa04d` |
| 23 | `theorem` | [span_singleton_sup_orthogonal_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/span-singleton-sup-orthogonal-eq-top--dd6dea5cf997e6e8a49cf33e.md) | 179 | `result-track:dd6dea5cf997e6e8a49cf33e36ba591e1491ef82698158eba00c6787e25e2c1f` |
| 24 | `theorem` | [isCompl_span_singleton_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/iscompl-span-singleton-orthogonal--3830b62e9a3103dfebe7f893.md) | 185 | `result-track:3830b62e9a3103dfebe7f89344d56c9f4e6673897ed2ea984abb149d309528d0` |
| 25 | `theorem` | [nondegenerate_restrict_of_disjoint_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/nondegenerate-restrict-of-disjoint-orthogonal--b6c4deb45e24861aac7cb90e.md) | 193 | `result-track:b6c4deb45e24861aac7cb90e515ba91f7ebe67a145bac09af04dd56999be4b23` |
| 26 | `theorem` | [iIsOrtho.not_isOrtho_basis_self_of_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/iisortho-not-isortho-basis-self-of-nondegenerate--30f1a2085ddb7eebfa27846c.md) | 199 | `result-track:30f1a2085ddb7eebfa27846c999a29c870a1d3d30f3fa97e55d2864ab7629a26` |
| 27 | `theorem` | [iIsOrtho.nondegenerate_iff_not_isOrtho_basis_self](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/iisortho-nondegenerate-iff-not-isortho-basis-self--04d65dfffb0179d39b05dfdf.md) | 206 | `result-track:04d65dfffb0179d39b05dfdf106f327b397d25eba86d805e8649b8dafe8f51c4` |
| 28 | `theorem` | [toLin_restrict_ker_eq_inf_ker](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/tolin-restrict-ker-eq-inf-ker--fd92f3ffb5dafe8e4cf7c581.md) | 213 | `result-track:fd92f3ffb5dafe8e4cf7c58104d9494de42cddb26ed2c41606b3818b5df4dc72` |
| 29 | `theorem` | [toLin_restrict_ker_eq_inf_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/tolin-restrict-ker-eq-inf-orthogonal--4d6aba1a64c9bf7b9f40d4e9.md) | 223 | `result-track:4d6aba1a64c9bf7b9f40d4e9e2049146bcfe38eb3bce33520f3bad748a422553` |
| 30 | `theorem` | [toLin_restrict_range_dualCoannihilator_eq_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/tolin-restrict-range-dualcoannihilator-eq-orthogonal--fca846c4adb648036d819d39.md) | 228 | `result-track:fca846c4adb648036d819d394508463626d8175da509793d24dfb892e2002ba3` |
| 31 | `lemma` | [ker_restrict_eq_of_codisjoint](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/ker-restrict-eq-of-codisjoint--a24573c9364aab9e408f4d6f.md) | 239 | `result-track:a24573c9364aab9e408f4d6ff668fba75529cec6fdbda7fc6cde31dde2965e05` |
| 32 | `lemma` | [inf_orthogonal_self_le_ker_restrict](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/inf-orthogonal-self-le-ker-restrict--1b89f05909f547495a722283.md) | 251 | `result-track:1b89f05909f547495a72228365a6ee0a094db874b3c7abec354c5bb1942fc091` |
| 33 | `theorem` | [finrank_add_finrank_orthogonal'](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/finrank-add-finrank-orthogonal--19f0b310a1b5d6987568ee10.md) | 266 | `result-track:19f0b310a1b5d6987568ee10a745dddb961c4587221d247e71f28a362ce3b2c5` |
| 34 | `theorem` | [finrank_add_finrank_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/finrank-add-finrank-orthogonal--cb16ab7b144e52e32e0dd8af.md) | 277 | `result-track:cb16ab7b144e52e32e0dd8af26e7ffbfeff23c4ed598babb417a1e0961624031` |
| 35 | `lemma` | [finrank_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/finrank-orthogonal--7ceed0b78e2829fe9378df93.md) | 283 | `result-track:7ceed0b78e2829fe9378df93c889f0c058531c8a3a0249fe4cdbb391bb6652f2` |
| 36 | `lemma` | [orthogonal_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/orthogonal-orthogonal--95336ad5429b4841b4b3f685.md) | 289 | `result-track:95336ad5429b4841b4b3f6859ab7f08b9e57273aedf0cbde8e6a693dfe2b497f` |
| 37 | `lemma` | [isCompl_orthogonal_iff_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/iscompl-orthogonal-iff-disjoint--0e7d95a4a542ff0c02d27a62.md) | 297 | `result-track:0e7d95a4a542ff0c02d27a6252e0b27f5fb6aa12111c1cba9f43ba7db9ea56ca` |
| 38 | `theorem` | [isCompl_orthogonal_of_restrict_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/iscompl-orthogonal-of-restrict-nondegenerate--5a5a73fed26d9f28a47cbb7d.md) | 310 | `result-track:5a5a73fed26d9f28a47cbb7d2dde14e2bce8077a5cd8ed7edd5c007d1fdf2b29` |
| 39 | `theorem` | [restrict_nondegenerate_iff_isCompl_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/restrict-nondegenerate-iff-iscompl-orthogonal--b0717ef2bf033aa4fdad5075.md) | 328 | `result-track:b0717ef2bf033aa4fdad5075a8844c2cbbc46a17017bc31c9948ec64202b9ebb` |
| 40 | `lemma` | [orthogonal_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/orthogonal-eq-top-iff--07d664ff1143d53b0c17b524.md) | 333 | `result-track:07d664ff1143d53b0c17b5241c512e9d4f5cbd57689827508f24cfca2699dddf` |
| 41 | `lemma` | [eq_top_of_restrict_nondegenerate_of_orthogonal_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/eq-top-of-restrict-nondegenerate-of-orthogonal-eq-bot--d8ddc806c29a1c29df7f5e20.md) | 339 | `result-track:d8ddc806c29a1c29df7f5e2025163daa6d2d933b37cfd45716192c44eec76f3c` |
| 42 | `lemma` | [orthogonal_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/orthogonal-eq-bot-iff--1b7eb26b625c30d659cd6fd6.md) | 345 | `result-track:1b7eb26b625c30d659cd6fd6f3203631aaec41933bee95a1c4e0757ac8205430` |
| 43 | `theorem` | [restrict_nondegenerate_orthogonal_spanSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean/declarations/restrict-nondegenerate-orthogonal-spansingleton--c3023e7b276843df71e3e486.md) | 362 | `result-track:c3023e7b276843df71e3e486894cebea8cb0ef9c54191356da4b767031c30886` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
