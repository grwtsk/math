# Verification target: GRWTSK.Algebra.LinearAlgebra.Finiteness.Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c683bf4884ab301c257e353b58f4deb761a4728",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c683bf4884ab301c257e353b58f4deb761a4728`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iff_rank_lt_aleph0](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean/declarations/iff-rank-lt-aleph0--3382468c41e53d28697b491f.md) | 35 | `result-track:3382468c41e53d28697b491f60acd56da331ccf60e10cf2b32273513817c9f38` |
| 2 | `def` | [fintypeBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean/declarations/fintypebasisindex--54be4f4220d6188f07f08760.md) | 49 | `declaration-track:54be4f4220d6188f07f08760c60c86bbe4f20a88379920e0be62abd915336011` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean/declarations/instance--7d884b0dc6177c848775f766.md) | 54 | `declaration-track:7d884b0dc6177c848775f76652ed19ba861bd1fb0a598ea5fd83f88e0ae90789` |
| 4 | `theorem` | [finite_basis_index](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean/declarations/finite-basis-index--9c10bd7d46133a9eb294a8bd.md) | 59 | `result-track:9c10bd7d46133a9eb294a8bd92608aecfab128fd5f8dca2747d809e10a805327` |
| 5 | `def` | [finsetBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean/declarations/finsetbasisindex--0b2a8c884aefc6d1587de8ee.md) | 67 | `declaration-track:0b2a8c884aefc6d1587de8ee2d358e1ca1bd8cd7da4f73e59a49ed58567b7dac` |
| 6 | `theorem` | [coe_finsetBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean/declarations/coe-finsetbasisindex--551f43fb1d43414ecad5278e.md) | 71 | `result-track:551f43fb1d43414ecad5278ecf68ab2177673ead78f57480738d48c342bbafaf` |
| 7 | `theorem` | [coeSort_finsetBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean/declarations/coesort-finsetbasisindex--cae9d3fb10eb2dd4e711952b.md) | 76 | `result-track:cae9d3fb10eb2dd4e711952b1a51300c746ff770b6a6175294ee91441aa4f8f7` |
| 8 | `def` | [finsetBasis](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean/declarations/finsetbasis--2ead74659ceac163b91228c2.md) | 85 | `declaration-track:2ead74659ceac163b91228c2062ce613a2aa8d40d3f9453c764adb3111409786` |
| 9 | `theorem` | [range_finsetBasis](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean/declarations/range-finsetbasis--376eb44fbfa1ea940b29cae5.md) | 89 | `result-track:376eb44fbfa1ea940b29cae53c741bb58930db1068f4cda2bfb01c630d714226` |
| 10 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.IffRankLtAleph0.Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.Module.card_eq_pow_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean/declarations/root-grwtsk-algebra-linearalgebra-iffrankltaleph0-variant77534de24b059d6--ae7a8b59f8df9ebab9bb818c.md) | 95 | `result-track:ae7a8b59f8df9ebab9bb818c3eae408986ed5a9bdd4d471bcda7c29e5faf4685` |
| 11 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.IffRankLtAleph0.Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.Module.natCard_eq_pow_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean/declarations/root-grwtsk-algebra-linearalgebra-iffrankltaleph0-variant77534de24b059d6--13b06c62d751c2c8479dde63.md) | 102 | `result-track:13b06c62d751c2c8479dde6386393afcff8295908d25ed48433c0b8b98210df0` |
| 12 | `theorem` | [iff_fg](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean/declarations/iff-fg--a8b3e845ec296394da4dbb2c.md) | 108 | `result-track:a8b3e845ec296394da4dbb2cc1b0a149988857b1e1f76cab3f017295e6097361` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
