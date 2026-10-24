# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "662349e5e1aa516774c55f09e96ef80187a257ea",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `662349e5e1aa516774c55f09e96ef80187a257ea`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/declarations/prod-nonneg--19c309c183241a08cbf61630.md) | 40 | `result-track:19c309c183241a08cbf616308855ccb960de300833022432130bd3589ff2c271` |
| 2 | `lemma` | [prod_le_prod₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/declarations/prod-le-prod--590ea7ad3236835efb13d4c1.md) | 47 | `result-track:590ea7ad3236835efb13d4c19548be2833a30439b6ed47c9434becfd1c35b531` |
| 3 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ProdNonneg.Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.Monotone.finsetProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-prodnonneg-varianta2f4be--e43caae9c628e45222fa2b0d.md) | 59 | `result-track:e43caae9c628e45222fa2b0d792a162c98a4c2b36b79cb9853705a33933109c8` |
| 4 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ProdNonneg.Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.MonotoneOn.finsetProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-prodnonneg-varianta2f4be--d6a9b68309f8896a3b1f35be.md) | 66 | `result-track:d6a9b68309f8896a3b1f35beb5bfe98b15c7adda9bd9fbbe435da3a47fc7792f` |
| 5 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ProdNonneg.Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.Antitone.finsetProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-prodnonneg-varianta2f4be--22ef2c956b07fca1cbba3802.md) | 73 | `result-track:22ef2c956b07fca1cbba3802bee0dd55ddf872f88ca2d11624aeedcc3fcce142` |
| 6 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ProdNonneg.Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.AntitoneOn.finsetProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-prodnonneg-varianta2f4be--413647719527d389b602697a.md) | 80 | `result-track:413647719527d389b602697a03dedb258578f843d31bdc8a5c6abc693168f07f` |
| 7 | `lemma` | [prod_le_one₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/declarations/prod-le-one--0c1ca68cf75073b10104b809.md) | 87 | `result-track:0c1ca68cf75073b10104b809f84196a63f649e2a1694828b4a4bfbc920c45aa1` |
| 8 | `lemma` | [one_le_prod₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/declarations/one-le-prod--5a4859316a56c7ab66dafa8e.md) | 92 | `result-track:5a4859316a56c7ab66dafa8ee0246666455f841014af4b9f8e244d95ae56219d` |
| 9 | `lemma` | [le_prod_max_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/declarations/le-prod-max-one--e5d26257a4e64e0fd53c8f65.md) | 95 | `result-track:e5d26257a4e64e0fd53c8f65866222e609fa28531e60fbaa498a6162b79a1e1e` |
| 10 | `lemma` | [prod_mono_of_subset_of_one_le₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/declarations/prod-mono-of-subset-of-one-le--cfbd970949b0101c78e893a9.md) | 107 | `result-track:cfbd970949b0101c78e893a9c8457a00d13b0772377ec249751e34108a8b6079` |
| 11 | `lemma` | [prod_mono_of_subset_of_le_one₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/declarations/prod-mono-of-subset-of-le-one--356bbb4982078ed1f5c67d46.md) | 120 | `result-track:356bbb4982078ed1f5c67d46104fd588fd2e51dbcc977343392f5b0039964f1a` |
| 12 | `lemma` | [prod_le_prod_of_subset_of_one_le₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/declarations/prod-le-prod-of-subset-of-one-le--ef4d060769ccabcfdf7222eb.md) | 134 | `result-track:ef4d060769ccabcfdf7222ebb7dd9e690a42ac778763968078ef170fd6b36075` |
| 13 | `lemma` | [prod_le_prod_of_subset_of_le_one₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/declarations/prod-le-prod-of-subset-of-le-one--5ce8acb18416d91cc47b414b.md) | 138 | `result-track:5ce8acb18416d91cc47b414b62ddf2d80d28bd794cab0bb99b52798c28fcb9cd` |
| 14 | `theorem` | [prod_mono_set_of_one_le₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/declarations/prod-mono-set-of-one-le--dc0eab062b556d4768795847.md) | 143 | `result-track:dc0eab062b556d4768795847619afb37dd39303aafb1708bf946341e8a82f0f2` |
| 15 | `theorem` | [prod_anti_set_of_le_one₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/declarations/prod-anti-set-of-le-one--ab8f9538029526c2f1a01832.md) | 148 | `result-track:ab8f9538029526c2f1a01832e930586ae4be5bdc284eb0808765ed23ddfbab6b` |
| 16 | `theorem` | [prod_le_prod_of_injOn₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/declarations/prod-le-prod-of-injon--fd23a2f75d6363edb46fddd1.md) | 152 | `result-track:fd23a2f75d6363edb46fddd1d98f3bd75a422477ef0f5bfd773ae9ab12da3046` |
| 17 | `lemma` | [prod_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/declarations/prod-pos--be277d5b6fe6bee0776d2f89.md) | 166 | `result-track:be277d5b6fe6bee0776d2f897ed2a5dfb9ac750585b5f5dc8cc9c6b400fa187f` |
| 18 | `lemma` | [prod_lt_prod₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/declarations/prod-lt-prod--158d8815ce88f20424793064.md) | 169 | `result-track:158d8815ce88f20424793064e8e9f46d64108f29ff8b56eb690e26b7ba8d7ef3` |
| 19 | `lemma` | [prod_lt_prod_of_nonempty₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd40c651eba06b7b65881d74dc87963a07709eca8824becc86c39a6b097da062c.lean/declarations/prod-lt-prod-of-nonempty--32698c3a2b6bb866482654f6.md) | 182 | `result-track:32698c3a2b6bb866482654f602eaf2e9136572fda3e128d0a56d0f4768db51f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
