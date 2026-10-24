# Verification target: GRWTSK.Algebra.UniversalAlgebra.Opposite.Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40b834013a2bcdaf2f01de2851937541f3cfd81a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40b834013a2bcdaf2f01de2851937541f3cfd81a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/declarations/instance--b93e296a001e827522f557d2.md) | 30 | `declaration-track:b93e296a001e827522f557d2e41ded2d8974c4e029f4df78dd6102b2ba4acb1c` |
| 2 | `lemma` | [unop_le_unop](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/declarations/unop-le-unop--92220cefc10579ed1d049a48.md) | 32 | `result-track:92220cefc10579ed1d049a48c1dafc47f7a59e304e34ea5c5a4c1dbf340d0ad4` |
| 3 | `lemma` | [op_le_op](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/declarations/op-le-op--e482b7456b27521cbf85f933.md) | 33 | `result-track:e482b7456b27521cbf85f933ebd0a093a6008986a48e2d196934f53616315c84` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/declarations/instance--38cb02a21d9fd896821a08e0.md) | 37 | `declaration-track:38cb02a21d9fd896821a08e0796a9d0c8945e3323594d4289b72b6c175795629` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/declarations/instance--463cee5b645b63e7357c0430.md) | 42 | `declaration-track:463cee5b645b63e7357c0430d705ae562072c01df0521a1e20a59b0689fa6b03` |
| 6 | `lemma` | [unop_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/declarations/unop-le-one--4fb8a8c822ca44a5be051091.md) | 45 | `result-track:4fb8a8c822ca44a5be0510914b558b6f9ce745f8c0d2401f4587e98eafb22612` |
| 7 | `lemma` | [one_le_unop](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/declarations/one-le-unop--ebd10aa146bedacd17238fa8.md) | 46 | `result-track:ebd10aa146bedacd17238fa8f54c51aa2331e953dc06b3f09cc5b8d2a4c0b844` |
| 8 | `lemma` | [op_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/declarations/op-le-one--3df9a563d4b2cc2063908805.md) | 47 | `result-track:3df9a563d4b2cc2063908805b970d652963cd06fdb6edcfab74c90472234f04e` |
| 9 | `lemma` | [one_le_op](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/declarations/one-le-op--5aa407d5545df6c6a938dd95.md) | 48 | `result-track:5aa407d5545df6c6a938dd958f8ff2a8436fee7e74cc3e4f36bbc7c14b608eb9` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/declarations/instance--20dd87466ce0539c1b272749.md) | 55 | `declaration-track:20dd87466ce0539c1b272749af978e2b85abf1bf98367a76a56417527276638d` |
| 11 | `lemma` | [unop_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/declarations/unop-nonpos--64c3b78cd19b134fdb601063.md) | 58 | `result-track:64c3b78cd19b134fdb6010634161cd15ac38481909359165005001565492459d` |
| 12 | `lemma` | [unop_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/declarations/unop-nonneg--4cf9f58ed854eeafc1ad91c2.md) | 59 | `result-track:4cf9f58ed854eeafc1ad91c2c6b3dd1483a5e9ee0f9d1f5a410dfd4fe3581f25` |
| 13 | `lemma` | [op_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/declarations/op-nonpos--cb022d7124fad7d564dbdfae.md) | 60 | `result-track:cb022d7124fad7d564dbdfae58f3875e1313f051b92bdfe272757e181a2d4986` |
| 14 | `lemma` | [op_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/declarations/op-nonneg--5dc7cb569e24798ad17b772f.md) | 61 | `result-track:5dc7cb569e24798ad17b772fd44276d9e4661766d1af594dcdff0a227eea3cfa` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/declarations/instance--5e64c60b09e1d5b0a9208775.md) | 71 | `declaration-track:5e64c60b09e1d5b0a9208775adf295074a8bdb0f7ec6e187ea97aa19cce51746` |
| 16 | `lemma` | [unop_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/declarations/unop-le-one--ee630ed1cd84fb7cb6ac6854.md) | 74 | `result-track:ee630ed1cd84fb7cb6ac68545efa01e791e991c5ca7e56bf67acf132d725007e` |
| 17 | `lemma` | [one_le_unop](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/declarations/one-le-unop--3f3dbfac35aa3ad96f45f312.md) | 75 | `result-track:3f3dbfac35aa3ad96f45f312e5b789cfb2879e8412cd177815d71d521d02809d` |
| 18 | `lemma` | [op_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/declarations/op-le-one--eecd3743fe57a8ec24730b46.md) | 76 | `result-track:eecd3743fe57a8ec24730b46242d52cc9e0eaeaec72900f7cd125f8cc8b973d7` |
| 19 | `lemma` | [one_le_op](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variantce3a4b057173383ad71f48d70f23df0531dc82254124fc7e8498a7425064fab8.lean/declarations/one-le-op--18c251c7ccda51e216d52b58.md) | 77 | `result-track:18c251c7ccda51e216d52b581481426ec66113c966f2cfcefba19b20856a68b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
