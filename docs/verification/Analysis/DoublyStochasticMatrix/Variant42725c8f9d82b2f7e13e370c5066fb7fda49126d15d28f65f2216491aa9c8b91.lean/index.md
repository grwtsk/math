# Verification target: GRWTSK.Analysis.DoublyStochasticMatrix.Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6ea9e9c90a47201c6050fa65e397cf6e7f866a2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/index.md) · [Full source](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6ea9e9c90a47201c6050fa65e397cf6e7f866a2`.

Source path: `GRWTSK/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean.json)

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
| 1 | `def` | [doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/declarations/doublystochastic--353c14cfb3d102b03711f82d.md) | 50 | `declaration-track:353c14cfb3d102b03711f82d608f6b9af401964c8592db1a96c10fb91d28a354` |
| 2 | `lemma` | [mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/declarations/mem-doublystochastic--6a98957c685e3ba14f48f9bb.md) | 60 | `result-track:6a98957c685e3ba14f48f9bbdba7f64fd5024b7ee4fb6f026c24d26adf8946c3` |
| 3 | `lemma` | [mem_doublyStochastic_iff_sum](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/declarations/mem-doublystochastic-iff-sum--5ca47f4d6e1a2b43c0f01724.md) | 64 | `result-track:5ca47f4d6e1a2b43c0f0172478deaec469241935b8c8dc354848100223404a44` |
| 4 | `lemma` | [doublyStochastic_eq_rowStochastic_inf_colStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/declarations/doublystochastic-eq-rowstochastic-inf-colstochastic--82838d978918a7f0eec62b8c.md) | 72 | `result-track:82838d978918a7f0eec62b8c8697cc6889982585047a4363f0f0d50f1c9db148` |
| 5 | `lemma` | [mem_doublyStochastic_iff_mem_rowStochastic_and_mem_colStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/declarations/mem-doublystochastic-iff-mem-rowstochastic-and-mem-colstochastic--901825386f4b1ea4948594ad.md) | 79 | `result-track:901825386f4b1ea4948594ad350ad9a37b814b26763e8d89d0ea9499c08c978d` |
| 6 | `lemma` | [nonneg_of_mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/declarations/nonneg-of-mem-doublystochastic--6ff23de6cb792c82c7bcd45c.md) | 84 | `result-track:6ff23de6cb792c82c7bcd45ce058f2cf6a711bbfb397212ca9059bfb1780e1bb` |
| 7 | `lemma` | [sum_row_of_mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/declarations/sum-row-of-mem-doublystochastic--d0926d14fbff66a650f3cc8c.md) | 88 | `result-track:d0926d14fbff66a650f3cc8c89a0fba18bd4a3f6a2099e941ab1e96d0ab08f2f` |
| 8 | `lemma` | [sum_col_of_mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/declarations/sum-col-of-mem-doublystochastic--3518e3f8589129002a28b12c.md) | 92 | `result-track:3518e3f8589129002a28b12cf49b6a01d374bc75f6b1a0f34a0e86d7e172d251` |
| 9 | `lemma` | [mulVec_one_of_mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/declarations/mulvec-one-of-mem-doublystochastic--f3fbc4a460ae8bd5eabe0af1.md) | 96 | `result-track:f3fbc4a460ae8bd5eabe0af11c6756294655274bc8e9342b116d45594c3bbbbf` |
| 10 | `lemma` | [one_vecMul_of_mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/declarations/one-vecmul-of-mem-doublystochastic--67a268c0e24a119e1da80748.md) | 100 | `result-track:67a268c0e24a119e1da807484878851a3b9216bdf5138aad2ae5c51b8c4d681c` |
| 11 | `lemma` | [le_one_of_mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/declarations/le-one-of-mem-doublystochastic--fbc6d8bd523d960e908934e6.md) | 104 | `result-track:fbc6d8bd523d960e908934e6e027580f7d81f6aa9070a222e760e004addf6342` |
| 12 | `lemma` | [convex_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/declarations/convex-doublystochastic--aaefe583742b475f21416a88.md) | 110 | `result-track:aaefe583742b475f21416a884ac9cdbf1d3fcb4ba53d2443b39cd78a20979611` |
| 13 | `lemma` | [permMatrix_mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/declarations/permmatrix-mem-doublystochastic--4eab1988e6f28a2c1cb61c48.md) | 117 | `result-track:4eab1988e6f28a2c1cb61c4861b100d0ab85b523f4b8800a5b8accc5291a7f46` |
| 14 | `lemma` | [transpose_mem_doublyStochastic_iff](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/declarations/transpose-mem-doublystochastic-iff--77cae014d466fa177ac8482a.md) | 122 | `result-track:77cae014d466fa177ac8482af45c1d921ae06397c4061c70dc2999eff9676f31` |
| 15 | `lemma` | [reindex_mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/declarations/reindex-mem-doublystochastic--9dfcdebd17b1df6a3a181247.md) | 127 | `result-track:9dfcdebd17b1df6a3a18124774670f38b7752ea3982ab6e4f1b0a76bc92c8b9e` |
| 16 | `lemma` | [reindex_mem_doublyStochastic_iff](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/declarations/reindex-mem-doublystochastic-iff--68582cfbf01154ae0c5ca4b0.md) | 133 | `result-track:68582cfbf01154ae0c5ca4b07c41794f1a849179a78a01b2fc438fadd3c4ecc9` |
| 17 | `lemma` | [sum_mulVec_of_mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/declarations/sum-mulvec-of-mem-doublystochastic--1edbc9315ecff47e3c44f076.md) | 138 | `result-track:1edbc9315ecff47e3c44f07617c569bec6d2c087c48bfcdf6765f568df0fe5f7` |
| 18 | `lemma` | [exists_mem_doublyStochastic_eq_smul_iff](../../../../mathematics/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/declarations/exists-mem-doublystochastic-eq-smul-iff--75443d798f6ef96091a702ae.md) | 156 | `result-track:75443d798f6ef96091a702aeaf2161b39b6e388b1b5fd50bdd421ba59128fb26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
