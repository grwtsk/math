# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ValMinAbs.Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75220e7726639638f208b1fd8186b8aaa2b97abb",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75220e7726639638f208b1fd8186b8aaa2b97abb`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean.json)

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
| 1 | `def` | [valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/valminabs--9324c659516b3f9b8efd8379.md) | 23 | `declaration-track:9324c659516b3f9b8efd8379d2608c162c48903d8b91e3d55d6bc0ddc1fb84e8` |
| 2 | `lemma` | [valMinAbs_def_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/valminabs-def-zero--06442d0b38db2ccf067f1b46.md) | 27 | `result-track:06442d0b38db2ccf067f1b466d43eafa83f2be048cab87cd24e5a717898755ab` |
| 3 | `lemma` | [valMinAbs_def_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/valminabs-def-pos--93f842dbcea48ce23fa0b806.md) | 29 | `result-track:93f842dbcea48ce23fa0b8061c9efa6428c72e248612d7a4046eae9944b7ec51` |
| 4 | `lemma` | [coe_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/coe-valminabs--e5aa5d8bf11bcf080b10907b.md) | 35 | `result-track:e5aa5d8bf11bcf080b10907b67517b0c52bf42274f72bbef010e90daff8e3354` |
| 5 | `lemma` | [injective_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/injective-valminabs--08a310de8304735340ccd61d.md) | 44 | `result-track:08a310de8304735340ccd61d1b7d01f0c841a4db1b013081c72c0bd24aa3c466` |
| 6 | `theorem` | [valMinAbs_inj](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/valminabs-inj--6e5363dc5f28c4548024624e.md) | 48 | `result-track:6e5363dc5f28c4548024624e0ecb23c94f6a4a86318505ea73da693376160901` |
| 7 | `lemma` | [valMinAbs_nonneg_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/valminabs-nonneg-iff--be811e0ae464a1aa2d8e08b9.md) | 51 | `result-track:be811e0ae464a1aa2d8e08b9aad9799993329b05bc6906a663e956092bcd89b9` |
| 8 | `lemma` | [valMinAbs_mul_two_eq_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/valminabs-mul-two-eq-iff--5e2874ef608205681e5c2607.md) | 57 | `result-track:5e2874ef608205681e5c26075b601819a6c873fcb5af9cd93524da4053e7af97` |
| 9 | `lemma` | [valMinAbs_mem_Ioc](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/valminabs-mem-ioc--c969272700bc4e0d9961c8bf.md) | 71 | `result-track:c969272700bc4e0d9961c8bf0b88c9284668920c680097439fd2c24b959e1cfd` |
| 10 | `lemma` | [valMinAbs_spec](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/valminabs-spec--20da1f4525e05904e692fbeb.md) | 78 | `result-track:20da1f4525e05904e692fbebe6cc13789f46b6add80b6e4326953c198e8bdae1` |
| 11 | `lemma` | [natAbs_valMinAbs_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/natabs-valminabs-le--d4f51a24bb4808b705058a0f.md) | 90 | `result-track:d4f51a24bb4808b705058a0fe7459a80cf26e6f39a4e48e336fed0ff51493a47` |
| 12 | `theorem` | [eq_neg_of_valMinAbs_eq_neg_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/eq-neg-of-valminabs-eq-neg-valminabs--357bc9c87521daf5a5e4bf78.md) | 99 | `result-track:357bc9c87521daf5a5e4bf7839a45a268588e8626f6731d6452afa9c595aff91` |
| 13 | `lemma` | [valMinAbs_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/valminabs-zero--e5c9f6679c474939f6deffb1.md) | 104 | `result-track:e5c9f6679c474939f6deffb1d974a1371c761005557c36ccfc0658870f77d6ce` |
| 14 | `lemma` | [valMinAbs_eq_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/valminabs-eq-zero--95a3b675ab95eada6b1183cb.md) | 109 | `result-track:95a3b675ab95eada6b1183cbc182669987d521242f625e2421a3f6980e79d851` |
| 15 | `lemma` | [natCast_natAbs_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/natcast-natabs-valminabs--45617c81ac803ebe63696494.md) | 112 | `result-track:45617c81ac803ebe63696494ee7c6d7e50da1fd73da3d7580e2def905eacb0d7` |
| 16 | `lemma` | [valMinAbs_neg_of_ne_half](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/valminabs-neg-of-ne-half--67e77af706e658a4f6b17d62.md) | 123 | `result-track:67e77af706e658a4f6b17d62832c683f9ce8c0779f2206ebc5061537c9d887eb` |
| 17 | `lemma` | [natAbs_valMinAbs_neg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/natabs-valminabs-neg--328c97f05ef64017004dc371.md) | 133 | `result-track:328c97f05ef64017004dc37135b39822c656fac07c989df6d36ebea03eb43d3c` |
| 18 | `theorem` | [natAbs_valMinAbs_eq_natAbs_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/natabs-valminabs-eq-natabs-valminabs--8428fc40c1f2cc91b0be277e.md) | 138 | `result-track:8428fc40c1f2cc91b0be277e96091f814ad01d52483a122293beafba13107dcd` |
| 19 | `theorem` | [abs_valMinAbs_eq_abs_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/abs-valminabs-eq-abs-valminabs--9f7cd561780882f5a1bc3af7.md) | 147 | `result-track:9f7cd561780882f5a1bc3af725191260766a800905dc1bdeee5e2cf825b3d94d` |
| 20 | `lemma` | [val_eq_ite_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/val-eq-ite-valminabs--54528ea8aa748f82b58ee340.md) | 152 | `result-track:54528ea8aa748f82b58ee3409bd0d0dd7e7fc3809c4741b3451aeaecb0b343f9` |
| 21 | `lemma` | [prime_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/prime-ne-zero--f86d224e5b37b8e82fd253ba.md) | 157 | `result-track:f86d224e5b37b8e82fd253ba08b58f4bdec3e4a2d69ba658dd72b8d0819dbaac` |
| 22 | `lemma` | [valMinAbs_natAbs_eq_min](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/valminabs-natabs-eq-min--4817651c9ebad95def757a4d.md) | 164 | `result-track:4817651c9ebad95def757a4d086d5788931078884ea2ca6ee47b93df1b338305` |
| 23 | `lemma` | [valMinAbs_natCast_of_le_half](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/valminabs-natcast-of-le-half--9faf04183e6d5507552f549e.md) | 171 | `result-track:9faf04183e6d5507552f549e775b426dfeec07b6fd60e46250b41aa09f1c62b1` |
| 24 | `lemma` | [valMinAbs_natCast_of_half_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/valminabs-natcast-of-half-lt--33b7b3f77e055673c7700c08.md) | 177 | `result-track:33b7b3f77e055673c7700c08cd3091ba3d549b01f5e6f8712f0072a4a4fad6cc` |
| 25 | `lemma` | [valMinAbs_natCast_eq_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/valminabs-natcast-eq-self--a6e39e8afe98724abe6d51a8.md) | 184 | `result-track:a6e39e8afe98724abe6d51a8346f853ac98dd0b3c433b7ef34761a506ac277b7` |
| 26 | `lemma` | [natAbs_valMinAbs_add_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/declarations/natabs-valminabs-add-le--49f786233a3c8427889470a5.md) | 189 | `result-track:49f786233a3c8427889470a5ef1841e696310f0a76be2487d12b68169bfc9673` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
