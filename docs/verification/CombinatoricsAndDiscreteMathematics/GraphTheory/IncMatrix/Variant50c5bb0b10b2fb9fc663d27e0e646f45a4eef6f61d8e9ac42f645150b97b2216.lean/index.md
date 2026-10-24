# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.IncMatrix.Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37b958dbda39253ad298b88c1af1ecf507fadb57",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37b958dbda39253ad298b88c1af1ecf507fadb57`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean.json)

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
| 1 | `def` | [incMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean/declarations/incmatrix--f11a0535be313e43d4e6e214.md) | 66 | `declaration-track:f11a0535be313e43d4e6e2149b5b82d046dd8dd5e4238060ff679603f8d132bf` |
| 2 | `theorem` | [incMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean/declarations/incmatrix-apply--9c6983993957d9b7b5162008.md) | 72 | `result-track:9c6983993957d9b7b5162008409dce05237586edc4e83c509caf9a8f4e18ca04` |
| 3 | `theorem` | [incMatrix_apply'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean/declarations/incmatrix-apply--6e017b469e91179c25d4d14b.md) | 77 | `result-track:6e017b469e91179c25d4d14bcdb87127a2c95017ef44bb0594241306f15ff0c2` |
| 4 | `theorem` | [incMatrix_apply_mul_incMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean/declarations/incmatrix-apply-mul-incmatrix-apply--80bcef0f7a37cd3278c532e6.md) | 84 | `result-track:80bcef0f7a37cd3278c532e6fcb30712f2dabf796b0718ec3ff646f349307c33` |
| 5 | `theorem` | [incMatrix_apply_mul_incMatrix_apply_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean/declarations/incmatrix-apply-mul-incmatrix-apply-of-not-adj--deed248797716fc4000555fb.md) | 88 | `result-track:deed248797716fc4000555fb81377f73bbec48d4779e65b40d4d9caf3c7b88b1` |
| 6 | `theorem` | [incMatrix_of_notMem_incidenceSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean/declarations/incmatrix-of-notmem-incidenceset--5cc2cbe927f977652c4d4476.md) | 94 | `result-track:5cc2cbe927f977652c4d4476e29bf35837f69416e00eb71d955026d66a183db2` |
| 7 | `theorem` | [incMatrix_of_mem_incidenceSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean/declarations/incmatrix-of-mem-incidenceset--b75a9ca5bbf418389cdfe3c4.md) | 97 | `result-track:b75a9ca5bbf418389cdfe3c4609d686df2863cb55e8197c5f5b84d7a0ef18eeb` |
| 8 | `theorem` | [incMatrix_apply_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean/declarations/incmatrix-apply-eq-zero-iff--47571548465b4f7b14669ae1.md) | 102 | `result-track:47571548465b4f7b14669ae125452c0b00886ddc8c8db481987bee9d4384016d` |
| 9 | `theorem` | [incMatrix_apply_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean/declarations/incmatrix-apply-eq-one-iff--8f9ef3c1ec58a2feb56656d3.md) | 105 | `result-track:8f9ef3c1ec58a2feb56656d3e7314033acc2965b74f782feabe879c3c9ca5cd8` |
| 10 | `theorem` | [sum_incMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean/declarations/sum-incmatrix-apply--b293a6e3e75934cdf80b18c4.md) | 115 | `result-track:b293a6e3e75934cdf80b18c47f77a7d99ba14295e0609db7581728d2115508bb` |
| 11 | `theorem` | [incMatrix_mul_transpose_diag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean/declarations/incmatrix-mul-transpose-diag--69c178d77cd1060d78bae8fe.md) | 120 | `result-track:69c178d77cd1060d78bae8fec1144f68176542e17ac722c6f878d80865159046` |
| 12 | `theorem` | [sum_incMatrix_apply_of_mem_edgeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean/declarations/sum-incmatrix-apply-of-mem-edgeset--b14153bccd900b4554f629b2.md) | 126 | `result-track:b14153bccd900b4554f629b24ab88663e2758dbf6fda6867b0a62a20d7d22c84` |
| 13 | `theorem` | [sum_incMatrix_apply_of_notMem_edgeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean/declarations/sum-incmatrix-apply-of-notmem-edgeset--816ce19fcfa833c5bb6f719d.md) | 137 | `result-track:816ce19fcfa833c5bb6f719d91f5a922687e8305c8e59558655c830f7d23c7b7` |
| 14 | `theorem` | [incMatrix_transpose_mul_diag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean/declarations/incmatrix-transpose-mul-diag--63705b832608cecf218131ff.md) | 141 | `result-track:63705b832608cecf218131ffed25d4cb40da0f719c7b2dfaa8e7cb4be6302b5e` |
| 15 | `theorem` | [incMatrix_mul_transpose_apply_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean/declarations/incmatrix-mul-transpose-apply-of-adj--4b999398339bb7c2e6f2bc2a.md) | 165 | `result-track:4b999398339bb7c2e6f2bc2a2bf37821ef7072527771de08511bcebef5c4b998` |
| 16 | `theorem` | [incMatrix_mul_transpose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant50c5bb0b10b2fb9fc663d27e0e646f45a4eef6f61d8e9ac42f645150b97b2216.lean/declarations/incmatrix-mul-transpose--8d7abade86f7dfc417dad3c2.md) | 174 | `result-track:8d7abade86f7dfc417dad3c2330c3b80b33f9914b691132ec26807f0c3933f09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
