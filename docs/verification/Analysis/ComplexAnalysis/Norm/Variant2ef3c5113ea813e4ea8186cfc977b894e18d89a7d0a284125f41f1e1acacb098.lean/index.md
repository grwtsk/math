# Verification target: GRWTSK.Analysis.ComplexAnalysis.Norm.Variant2ef3c5113ea813e4ea8186cfc977b894e18d89a7d0a284125f41f1e1acacb098

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af10204c1b143f272a7fe0d7b9b9824e1af57f17",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Norm/Variant2ef3c5113ea813e4ea8186cfc977b894e18d89a7d0a284125f41f1e1acacb098.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Norm/Variant2ef3c5113ea813e4ea8186cfc977b894e18d89a7d0a284125f41f1e1acacb098.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Norm/Variant2ef3c5113ea813e4ea8186cfc977b894e18d89a7d0a284125f41f1e1acacb098.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af10204c1b143f272a7fe0d7b9b9824e1af57f17`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Norm/Variant2ef3c5113ea813e4ea8186cfc977b894e18d89a7d0a284125f41f1e1acacb098.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Norm/Variant2ef3c5113ea813e4ea8186cfc977b894e18d89a7d0a284125f41f1e1acacb098.lean.json)

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
| 1 | `theorem` | [neg_norm_le_re](../../../../../mathematics/Analysis/ComplexAnalysis/Norm/Variant2ef3c5113ea813e4ea8186cfc977b894e18d89a7d0a284125f41f1e1acacb098.lean/declarations/neg-norm-le-re--9a495af284d27a8c6372c42f.md) | 20 | `result-track:9a495af284d27a8c6372c42fbc711089c015064bf0b5c9abf2bf676a1219fadc` |
| 2 | `lemma` | [norm_sub_one_le_one_add_norm](../../../../../mathematics/Analysis/ComplexAnalysis/Norm/Variant2ef3c5113ea813e4ea8186cfc977b894e18d89a7d0a284125f41f1e1acacb098.lean/declarations/norm-sub-one-le-one-add-norm--82618512da254be2025581aa.md) | 24 | `result-track:82618512da254be2025581aaabda0630383304d2e6235311cc1329bef32c22d9` |
| 3 | `lemma` | [norm_one_sub_le_one_add_norm](../../../../../mathematics/Analysis/ComplexAnalysis/Norm/Variant2ef3c5113ea813e4ea8186cfc977b894e18d89a7d0a284125f41f1e1acacb098.lean/declarations/norm-one-sub-le-one-add-norm--e9d1ec9e59e0b451be66d63c.md) | 29 | `result-track:e9d1ec9e59e0b451be66d63cb3baea712322c0444f4a6f0f15e6f37afc7a7ba1` |
| 4 | `lemma` | [one_le_norm_one_sub_of_norm_gt_three](../../../../../mathematics/Analysis/ComplexAnalysis/Norm/Variant2ef3c5113ea813e4ea8186cfc977b894e18d89a7d0a284125f41f1e1acacb098.lean/declarations/one-le-norm-one-sub-of-norm-gt-three--31e6ac6485e0630b1a29240a.md) | 35 | `result-track:31e6ac6485e0630b1a29240a027e560282938009ab4f30c2dd02852cd33d8824` |
| 5 | `lemma` | [norm_inv_pow_le_one_of_one_le_norm](../../../../../mathematics/Analysis/ComplexAnalysis/Norm/Variant2ef3c5113ea813e4ea8186cfc977b894e18d89a7d0a284125f41f1e1acacb098.lean/declarations/norm-inv-pow-le-one-of-one-le-norm--331520921774c250de2a68f5.md) | 44 | `result-track:331520921774c250de2a68f5878f0e3235b7b80543cae82176c280571aa7dc23` |
| 6 | `lemma` | [one_sub_ne_one_of_norm_pos](../../../../../mathematics/Analysis/ComplexAnalysis/Norm/Variant2ef3c5113ea813e4ea8186cfc977b894e18d89a7d0a284125f41f1e1acacb098.lean/declarations/one-sub-ne-one-of-norm-pos--50046057aaf89d859982b0b5.md) | 56 | `result-track:50046057aaf89d859982b0b50e06b59a8eae35bf120f102150a80917c7f9c6e6` |
| 7 | `lemma` | [ne_neg_nat_of_re_pos](../../../../../mathematics/Analysis/ComplexAnalysis/Norm/Variant2ef3c5113ea813e4ea8186cfc977b894e18d89a7d0a284125f41f1e1acacb098.lean/declarations/ne-neg-nat-of-re-pos--d5c017320a9a8fa436988960.md) | 61 | `result-track:d5c017320a9a8fa436988960c743419f085c315c4d58dcf7bd8df3e8857e6033` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
