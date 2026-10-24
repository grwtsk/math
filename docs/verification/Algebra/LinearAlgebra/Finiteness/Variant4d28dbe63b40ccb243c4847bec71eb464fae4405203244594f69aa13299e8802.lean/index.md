# Verification target: GRWTSK.Algebra.LinearAlgebra.Finiteness.Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa83780036cc7b8bfa0322c7c3048c23a6725c81",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa83780036cc7b8bfa0322c7c3048c23a6725c81`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean.json)

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
| 1 | `theorem` | [iff_rank_lt_aleph0](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean/declarations/iff-rank-lt-aleph0--cb8c6653258b7c5d1b483bbf.md) | 38 | `result-track:cb8c6653258b7c5d1b483bbfc69f6e32c9bcceb21adbcdb846dda571f57fc445` |
| 2 | `def` | [fintypeBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean/declarations/fintypebasisindex--fc7df0370e9050cdcfc95593.md) | 53 | `declaration-track:fc7df0370e9050cdcfc95593d144e28935bc0193ba188093fd423df978b6da05` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean/declarations/instance--34c36af3228de8e12152c18b.md) | 58 | `declaration-track:34c36af3228de8e12152c18bda92a97c25357580f3b45d1d40399372f9a58985` |
| 4 | `theorem` | [finite_basis_index](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean/declarations/finite-basis-index--a1d89223c92f8511385d0561.md) | 63 | `result-track:a1d89223c92f8511385d056160482a749b4a8c9e1c636191c360c64779c4839c` |
| 5 | `def` | [finsetBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean/declarations/finsetbasisindex--f4a68e2b788093ecc526164a.md) | 71 | `declaration-track:f4a68e2b788093ecc526164ac3f782dfb1e948a6be4670eee99815c1cbbffbf5` |
| 6 | `theorem` | [coe_finsetBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean/declarations/coe-finsetbasisindex--32ec7ea0ea3349d580de3246.md) | 75 | `result-track:32ec7ea0ea3349d580de3246ed460ac922dbfe1c2833970cb916469185335fc6` |
| 7 | `theorem` | [coeSort_finsetBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean/declarations/coesort-finsetbasisindex--e0a56c0f4ce703b2ebc569b3.md) | 80 | `result-track:e0a56c0f4ce703b2ebc569b37ff813b15ead5766f6a22ad44e9b7c0b86420b13` |
| 8 | `def` | [finsetBasis](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean/declarations/finsetbasis--b2981e793fafdae4a409079f.md) | 89 | `declaration-track:b2981e793fafdae4a409079fb19f38f9dc09ed9ec7455e665ccebe2576b4b392` |
| 9 | `theorem` | [range_finsetBasis](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean/declarations/range-finsetbasis--37dd5118e93fd7f369701809.md) | 93 | `result-track:37dd5118e93fd7f3697018094d83fdccd854d1732d9314b665443e6f0c56a099` |
| 10 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.IffRankLtAleph0.Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.Module.card_eq_pow_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean/declarations/root-grwtsk-algebra-linearalgebra-iffrankltaleph0-variant05316f2a785ab57--f132f65c26c1c77248e38319.md) | 99 | `result-track:f132f65c26c1c77248e3831913623cd47f2d8816893538c8efc1f3f9238246bc` |
| 11 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.IffRankLtAleph0.Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.Module.natCard_eq_pow_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean/declarations/root-grwtsk-algebra-linearalgebra-iffrankltaleph0-variant05316f2a785ab57--77fc166aa6d728d4d428b01f.md) | 104 | `result-track:77fc166aa6d728d4d428b01fd49f840551ab9cc9cce278821a327b432e0ed633` |
| 12 | `theorem` | [iff_fg](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802.lean/declarations/iff-fg--c7e3424979318681df8751a5.md) | 110 | `result-track:c7e3424979318681df8751a595864402f70b58098df4601181bf6c747ca29d96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
