# Verification target: GRWTSK.Algebra.LinearAlgebra.IsPrimary.Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddb0173fd381eef41f672758ba997a5522ea18c2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddb0173fd381eef41f672758ba997a5522ea18c2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean.json)

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
| 1 | `def` | [IsPrimary](../../../../../mathematics/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean/declarations/isprimary--ac7af48745dc7620ac703778.md) | 52 | `declaration-track:ac7af48745dc7620ac70377865efd60d9a12358a658fb3bfd5e9c3d3aa4340a8` |
| 2 | `lemma` | [IsPrimary.ne_top](../../../../../mathematics/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean/declarations/isprimary-ne-top--126690a178328a689bebf946.md) | 57 | `result-track:126690a178328a689bebf9460a75dc76daf042d00d9a820e94cd9bd5d05fdc13` |
| 3 | `lemma` | [IsPrimary.mem_or_mem](../../../../../mathematics/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean/declarations/isprimary-mem-or-mem--2ab4dda20e381717c0fbb968.md) | 59 | `result-track:2ab4dda20e381717c0fbb968ea70896c159c192c69999cebaa44aeb64f860904` |
| 4 | `lemma` | [IsPrimary.inf](../../../../../mathematics/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean/declarations/isprimary-inf--8db61a576a23124be197347a.md) | 63 | `result-track:8db61a576a23124be197347aeeb3a7ab52c33d480c00f251d178f3831c4957af` |
| 5 | `lemma` | [isPrimary_finsetInf](../../../../../mathematics/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean/declarations/isprimary-finsetinf--96e23c9098becfa56518c7a9.md) | 74 | `result-track:96e23c9098becfa56518c7a9abea088274283458b4252f95b2728bdeb4b0310d` |
| 6 | `theorem` | [IsPrimary.isPrime_radical_colon](../../../../../mathematics/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean/declarations/isprimary-isprime-radical-colon--e5b0b59946bc6f5afa3c838e.md) | 92 | `result-track:e5b0b59946bc6f5afa3c838e9261c5ff7bb16cb9a7a1ab8be1461221cd6919c2` |
| 7 | `theorem` | [IsPrimary.radical_colon_singleton_of_notMem](../../../../../mathematics/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean/declarations/isprimary-radical-colon-singleton-of-notmem--8a156e11788c4de4389527d4.md) | 99 | `result-track:8a156e11788c4de4389527d4f992d0220da20d25259b08673f3e1a4aa40dd7ef` |
| 8 | `theorem` | [IsPrimary.radical_colon_singleton_eq_ite](../../../../../mathematics/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean/declarations/isprimary-radical-colon-singleton-eq-ite--49a3e39ab07440431c59a11d.md) | 105 | `result-track:49a3e39ab07440431c59a11dc63217440d5e3c3d94db9060705c72f82b21c3d8` |
| 9 | `lemma` | [isPrimary_iff_zero_divisor_quotient_imp_nilpotent_smul](../../../../../mathematics/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean/declarations/isprimary-iff-zero-divisor-quotient-imp-nilpotent-smul--d7a464bd7a1a41d4a758b05f.md) | 117 | `result-track:d7a464bd7a1a41d4a758b05fc430988a135607bdeacddd6da862381c4c23541d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
