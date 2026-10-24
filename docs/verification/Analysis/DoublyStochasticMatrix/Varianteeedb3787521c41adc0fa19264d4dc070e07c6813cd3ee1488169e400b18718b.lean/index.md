# Verification target: GRWTSK.Analysis.DoublyStochasticMatrix.Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d9a8f7e16ba73e785510d73997e1472eb81fa3c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/index.md) · [Full source](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d9a8f7e16ba73e785510d73997e1472eb81fa3c`.

Source path: `GRWTSK/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean.json)

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
| 1 | `def` | [doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/declarations/doublystochastic--4b0139f3989cec70baef81a8.md) | 42 | `declaration-track:4b0139f3989cec70baef81a835885eacf2dc5255ef307acfa3d11ad9d23a8e62` |
| 2 | `lemma` | [mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/declarations/mem-doublystochastic--d9f955db0fef57db62abca6d.md) | 52 | `result-track:d9f955db0fef57db62abca6dfd5be53e70266d29d326ea83dda7e18f237c0c88` |
| 3 | `lemma` | [mem_doublyStochastic_iff_sum](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/declarations/mem-doublystochastic-iff-sum--f77afeefb623dc965a14c836.md) | 56 | `result-track:f77afeefb623dc965a14c83695db7eac361954d331d01dbf477a69bb39976175` |
| 4 | `lemma` | [doublyStochastic_eq_rowStochastic_inf_colStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/declarations/doublystochastic-eq-rowstochastic-inf-colstochastic--a55c954e94d305ef7cbcb642.md) | 64 | `result-track:a55c954e94d305ef7cbcb642fa235d27f2310f842fee4291af528a87e5f7d37e` |
| 5 | `lemma` | [mem_doublyStochastic_iff_mem_rowStochastic_and_mem_colStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/declarations/mem-doublystochastic-iff-mem-rowstochastic-and-mem-colstochastic--853a57e9367c8ccee0ab6308.md) | 71 | `result-track:853a57e9367c8ccee0ab6308b416838080916e51a51fdd25f1808247926a8610` |
| 6 | `lemma` | [nonneg_of_mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/declarations/nonneg-of-mem-doublystochastic--b9cd43ae8ed9241ebbdb888b.md) | 76 | `result-track:b9cd43ae8ed9241ebbdb888b6dff25c5c82cad1f457da67b69def9fd893494c5` |
| 7 | `lemma` | [sum_row_of_mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/declarations/sum-row-of-mem-doublystochastic--73e46f83252953b39a136958.md) | 80 | `result-track:73e46f83252953b39a136958e463e6d1213e527d41b6fedcc64d6171bac71967` |
| 8 | `lemma` | [sum_col_of_mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/declarations/sum-col-of-mem-doublystochastic--dde0a2935f397bdcb0d2afc6.md) | 84 | `result-track:dde0a2935f397bdcb0d2afc614a993a3e775932371b1014dffc55e321e0a749d` |
| 9 | `lemma` | [mulVec_one_of_mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/declarations/mulvec-one-of-mem-doublystochastic--9a335929c5602f61fbc7e51e.md) | 88 | `result-track:9a335929c5602f61fbc7e51e2c5b347fdd70132520989ee2354a60f374b1b0eb` |
| 10 | `lemma` | [one_vecMul_of_mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/declarations/one-vecmul-of-mem-doublystochastic--80191cf22bede111240b0c1a.md) | 92 | `result-track:80191cf22bede111240b0c1aa49d75c8b27791164806efb9297fcb9b6d0e10f7` |
| 11 | `lemma` | [le_one_of_mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/declarations/le-one-of-mem-doublystochastic--a33fd2c8e902ef091ce5c4ed.md) | 96 | `result-track:a33fd2c8e902ef091ce5c4ede22b74676210edd1e0bce9d22ec4d61963fb9ede` |
| 12 | `lemma` | [convex_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/declarations/convex-doublystochastic--eb47066fb4a0afdd025863fb.md) | 102 | `result-track:eb47066fb4a0afdd025863fb38a725ef57151340b789e254d92e5afb1df54712` |
| 13 | `lemma` | [permMatrix_mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/declarations/permmatrix-mem-doublystochastic--cf6b516f0d51aa3e20366540.md) | 109 | `result-track:cf6b516f0d51aa3e20366540515b323ae782dfec1beefdf9c99c4bada2b9de3a` |
| 14 | `lemma` | [transpose_mem_doublyStochastic_iff](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/declarations/transpose-mem-doublystochastic-iff--e8cd440fcfddeac65a66555b.md) | 114 | `result-track:e8cd440fcfddeac65a66555b3473f17e348bef560da1c2c6e1800a484e39c6be` |
| 15 | `lemma` | [reindex_mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/declarations/reindex-mem-doublystochastic--2ad688df3cf79247b5c6f8ea.md) | 119 | `result-track:2ad688df3cf79247b5c6f8eafbc633810e9bf1cce097025142516292fdfde682` |
| 16 | `lemma` | [reindex_mem_doublyStochastic_iff](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/declarations/reindex-mem-doublystochastic-iff--c6106c59d01952516269a8cb.md) | 125 | `result-track:c6106c59d01952516269a8cb8741fbf84804e9cdcee5741d862f2d9753532e39` |
| 17 | `lemma` | [sum_mulVec_of_mem_doublyStochastic](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/declarations/sum-mulvec-of-mem-doublystochastic--b04c460a1b3c43dc71811b15.md) | 130 | `result-track:b04c460a1b3c43dc71811b15ff8571b5e2b5e13862bafc49b1dc2b62530e598c` |
| 18 | `lemma` | [exists_mem_doublyStochastic_eq_smul_iff](../../../../mathematics/Analysis/DoublyStochasticMatrix/Varianteeedb3787521c41adc0fa19264d4dc070e07c6813cd3ee1488169e400b18718b.lean/declarations/exists-mem-doublystochastic-eq-smul-iff--675cee08426de00ebf72a33f.md) | 148 | `result-track:675cee08426de00ebf72a33f600844c6da769c1b0d6201f08bd1772004373232` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
