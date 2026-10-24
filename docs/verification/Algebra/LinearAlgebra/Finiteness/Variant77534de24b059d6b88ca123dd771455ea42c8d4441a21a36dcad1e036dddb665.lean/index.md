# Verification target: GRWTSK.Algebra.LinearAlgebra.Finiteness.Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5def742b0e38abb0b974b799e585134ab3f2cc6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5def742b0e38abb0b974b799e585134ab3f2cc6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finiteness/Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iff_rank_lt_aleph0](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.lean/declarations/iff-rank-lt-aleph0--b435bf0e096d65def14518d5.md) | 27 | `result-track:b435bf0e096d65def14518d593cd97d251828304cdcb3ff8af1db813d56a0179` |
| 2 | `def` | [fintypeBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.lean/declarations/fintypebasisindex--9020dac2fc73c577c5f1ab02.md) | 41 | `declaration-track:9020dac2fc73c577c5f1ab02dcc38e83c7c5c14ff738edb02b293ab91502104c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.lean/declarations/instance--096f02e7654f86b3b249d3f4.md) | 46 | `declaration-track:096f02e7654f86b3b249d3f4b59683662071d5e9b3ee7fd704f503b4a5e0fb4e` |
| 4 | `theorem` | [finite_basis_index](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.lean/declarations/finite-basis-index--e3ed64b841196968bd48f00f.md) | 51 | `result-track:e3ed64b841196968bd48f00fed7a9cd55cab6830d4d77b24aca6bfe8c61f4fb2` |
| 5 | `def` | [finsetBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.lean/declarations/finsetbasisindex--b6cf810962df9e627a7d304b.md) | 59 | `declaration-track:b6cf810962df9e627a7d304bee0524dc1c4e3e74d0e9c5d5a90e124b48baa111` |
| 6 | `theorem` | [coe_finsetBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.lean/declarations/coe-finsetbasisindex--93c148ebd1ca553098f05f50.md) | 63 | `result-track:93c148ebd1ca553098f05f50603bfb7de74b20d3274b386ec861922b4d8e1854` |
| 7 | `theorem` | [coeSort_finsetBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.lean/declarations/coesort-finsetbasisindex--71af14efe5b4bb5feb2716a8.md) | 68 | `result-track:71af14efe5b4bb5feb2716a86c93372b04b548e1f2ed5318f0877733ba3c1998` |
| 8 | `def` | [finsetBasis](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.lean/declarations/finsetbasis--d6213bc589df1fae69792f4d.md) | 77 | `declaration-track:d6213bc589df1fae69792f4d5207dee73cab56158492e6f52c2d6ca95459d663` |
| 9 | `theorem` | [range_finsetBasis](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.lean/declarations/range-finsetbasis--f2130760e2cc7c905b66d9f0.md) | 81 | `result-track:f2130760e2cc7c905b66d9f03df1a4423a8f630c2a2dd6271614052a731d86e1` |
| 10 | `theorem` | [_root_.Module.card_eq_pow_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.lean/declarations/root-module-card-eq-pow-finrank--18e306c5bf57087cbc982bd1.md) | 87 | `result-track:18e306c5bf57087cbc982bd1c58cfe28ed1418aa04de0b3002cc497ee4e3030f` |
| 11 | `theorem` | [_root_.Module.natCard_eq_pow_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.lean/declarations/root-module-natcard-eq-pow-finrank--e761c167eedf968e629b7fbd.md) | 94 | `result-track:e761c167eedf968e629b7fbda4af77988993ea162415c57356eda4a608f42423` |
| 12 | `theorem` | [iff_fg](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.lean/declarations/iff-fg--89d676ba4f348bdccb5513a7.md) | 100 | `result-track:89d676ba4f348bdccb5513a7057f5f96180ae5de51a46ec6347e72534c46b395` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
