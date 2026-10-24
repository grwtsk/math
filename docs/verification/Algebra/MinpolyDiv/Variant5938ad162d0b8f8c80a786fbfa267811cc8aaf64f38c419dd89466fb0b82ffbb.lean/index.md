# Verification target: GRWTSK.Algebra.MinpolyDiv.Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6bc468459788d85f3cec26bc0529de3f64d2411",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/index.md) · [Full source](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6bc468459788d85f3cec26bc0529de3f64d2411`.

Source path: `GRWTSK/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean.json)

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
| 1 | `def` | [minpolyDiv](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/declarations/minpolydiv--163f2a29cff10da052845e39.md) | 41 | `declaration-track:163f2a29cff10da052845e39a272d711ca58b9dc570a2ccf4462cfa890312d12` |
| 2 | `lemma` | [minpolyDiv_spec](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/declarations/minpolydiv-spec--b6d7e3064728c2149f07e999.md) | 43 | `result-track:b6d7e3064728c2149f07e99919babb988bc3f2a0a36f1547ac171f90dbacb27c` |
| 3 | `lemma` | [coeff_minpolyDiv](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/declarations/coeff-minpolydiv--a04cd997628ff28713b7c1ea.md) | 48 | `result-track:a04cd997628ff28713b7c1eaba7da5c615b34d9792d91c1ee3b2c2942f7b14a6` |
| 4 | `lemma` | [minpolyDiv_eq_zero](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/declarations/minpolydiv-eq-zero--fb65a81e601256afef677a2e.md) | 54 | `result-track:fb65a81e601256afef677a2e203e41c89d32a830c32734b00c313d719a89ca4b` |
| 5 | `lemma` | [eval_minpolyDiv_self](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/declarations/eval-minpolydiv-self--2cd78f5949b1dc6cc612e05b.md) | 58 | `result-track:2cd78f5949b1dc6cc612e05b9e0856f17e57386b83528b67c2e5b50cf0a0be8c` |
| 6 | `lemma` | [minpolyDiv_eval_eq_zero_of_ne_of_aeval_eq_zero](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/declarations/minpolydiv-eval-eq-zero-of-ne-of-aeval-eq-zero--94f34436ad1d993f3134103d.md) | 61 | `result-track:94f34436ad1d993f3134103d4c7e071215e286c15d5a640d98eb83f3fad0df5b` |
| 7 | `lemma` | [eval₂_minpolyDiv_of_eval₂_eq_zero](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/declarations/eval-minpolydiv-of-eval-eq-zero--97b6f85b9aded84573d327e4.md) | 67 | `result-track:97b6f85b9aded84573d327e432da364a8bc79d2bcb420e1ba0b633a5e8aca54c` |
| 8 | `lemma` | [eval₂_minpolyDiv_self](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/declarations/eval-minpolydiv-self--6c2ce52e0227b957e9c9d478.md) | 77 | `result-track:6c2ce52e0227b957e9c9d47810dbbdacd18a8365d732ab6e02cb51991127ed1e` |
| 9 | `lemma` | [eval_minpolyDiv_of_aeval_eq_zero](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/declarations/eval-minpolydiv-of-aeval-eq-zero--813d7a685be737def798baad.md) | 85 | `result-track:813d7a685be737def798baad2528f045f89ee954425ad7c3df4bec7ed6744458` |
| 10 | `lemma` | [coeff_minpolyDiv_mem_adjoin](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/declarations/coeff-minpolydiv-mem-adjoin--1ea4bf9f6118c29711007f88.md) | 92 | `result-track:1ea4bf9f6118c29711007f88451f4183da93ecb7a2fb4a45c3b1a3f011d4a3db` |
| 11 | `lemma` | [minpolyDiv_ne_zero](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/declarations/minpolydiv-ne-zero--3c5647986d985af69be53037.md) | 112 | `result-track:3c5647986d985af69be53037a199304eaf5c0c77f2282befb62dfbc9db183be3` |
| 12 | `lemma` | [minpolyDiv_monic](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/declarations/minpolydiv-monic--d361f1ac42b45ec14c4dbac1.md) | 118 | `result-track:d361f1ac42b45ec14c4dbac140acac52cea663be95bdfdd30248958c0bd3f0db` |
| 13 | `lemma` | [natDegree_minpolyDiv_succ](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/declarations/natdegree-minpolydiv-succ--89ce2bb7f0a0ade0abe5a1fa.md) | 125 | `result-track:89ce2bb7f0a0ade0abe5a1facc53ad780f30402027133978e998a20bec2609bb` |
| 14 | `lemma` | [natDegree_minpolyDiv_lt](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/declarations/natdegree-minpolydiv-lt--591a5e9eeb5aa40ee6c02549.md) | 131 | `result-track:591a5e9eeb5aa40ee6c02549427bdbdf516594d0278b701cb3b194289aaf2103` |
| 15 | `lemma` | [minpolyDiv_eq_of_isIntegrallyClosed](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/declarations/minpolydiv-eq-of-isintegrallyclosed--749c9989a1f6c45bbc59f32a.md) | 136 | `result-track:749c9989a1f6c45bbc59f32af9013a0b63c676a8dd1095bd2fe4a53a114bc71e` |
| 16 | `lemma` | [coeff_minpolyDiv_sub_pow_mem_span](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/declarations/coeff-minpolydiv-sub-pow-mem-span--beb6dc2e208c2688c16beaa5.md) | 143 | `result-track:beb6dc2e208c2688c16beaa59cc6397203277034b8e1132b2082a0d5c29c2657` |
| 17 | `lemma` | [span_coeff_minpolyDiv](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/declarations/span-coeff-minpolydiv--263ed9ec46074b6d99bd2ca6.md) | 164 | `result-track:263ed9ec46074b6d99bd2ca6f930fcd97cb1dc0e9de9bc16a4edae6a90a29485` |
| 18 | `lemma` | [natDegree_minpolyDiv](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/declarations/natdegree-minpolydiv--99e91b6cbfabe24be9d98bd1.md) | 190 | `result-track:99e91b6cbfabe24be9d98bd1b5344cd80c42b93096cedd75493a2e42557d28b8` |
| 19 | `lemma` | [sum_smul_minpolyDiv_eq_X_pow](../../../../mathematics/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/declarations/sum-smul-minpolydiv-eq-x-pow--4ccb1214924cdc5f12313888.md) | 202 | `result-track:4ccb1214924cdc5f1231388866b729f2844b45acd82a393187ac378167424ded` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
