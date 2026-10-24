# Verification target: GRWTSK.Algebra.LinearAlgebra.PosDef.Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ed87a4e89156114c838a1c80a17bee923db0a8d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ed87a4e89156114c838a1c80a17bee923db0a8d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean.json)

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
| 1 | `lemma` | [IsHermitian.posSemidef_iff_eigenvalues_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean/declarations/ishermitian-possemidef-iff-eigenvalues-nonneg--cccb32bb6423f16635779725.md) | 34 | `result-track:cccb32bb6423f1663577972573e4e8296d95bb076617cac163fa422def4b598d` |
| 2 | `lemma` | [eigenvalues_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean/declarations/eigenvalues-nonneg--ae3fce350437fcf01b9a0007.md) | 42 | `result-track:ae3fce350437fcf01b9a0007e4bfdfe58823094094e3dec0305ea7b0582173be` |
| 3 | `lemma` | [re_dotProduct_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean/declarations/re-dotproduct-nonneg--10a7cfd57d0bf6e2b697ca3b.md) | 45 | `result-track:10a7cfd57d0bf6e2b697ca3b47ac82bc72cde44892eee1e59cea19ad2243e0b0` |
| 4 | `lemma` | [det_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean/declarations/det-nonneg--56d3cd77cea8231800393188.md) | 51 | `result-track:56d3cd77cea8231800393188376906fbed322fefcac12db56dfc805e068a4082` |
| 5 | `lemma` | [trace_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean/declarations/trace-eq-zero-iff--07607f294068d4efd35dc5bf.md) | 55 | `result-track:07607f294068d4efd35dc5bf03b44426cbe30d4005944b45749ee5bfcaa63711` |
| 6 | `lemma` | [eigenvalues_conjTranspose_mul_self_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean/declarations/eigenvalues-conjtranspose-mul-self-nonneg--8967c78d9f1f8ed44833df33.md) | 63 | `result-track:8967c78d9f1f8ed44833df33cd0d325e41be62324baa1199cae01cc891a4df40` |
| 7 | `lemma` | [eigenvalues_self_mul_conjTranspose_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean/declarations/eigenvalues-self-mul-conjtranspose-nonneg--80eee1a257d8cfac2820adb1.md) | 67 | `result-track:80eee1a257d8cfac2820adb1e919ae28ce57bb9d3b26ca5ee039cad54bc67cea` |
| 8 | `lemma` | [IsHermitian.posDef_iff_eigenvalues_pos](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean/declarations/ishermitian-posdef-iff-eigenvalues-pos--9e3695531e15d9e47c4dab8f.md) | 74 | `result-track:9e3695531e15d9e47c4dab8f4ac7a8eb0809937ee728197e2147aae4e4df167b` |
| 9 | `lemma` | [re_dotProduct_pos](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean/declarations/re-dotproduct-pos--b1aa289cb700a211489a8430.md) | 81 | `result-track:b1aa289cb700a211489a8430d198d5cb296ff2f5743a1c4575681d221b09ef66` |
| 10 | `lemma` | [eigenvalues_pos](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean/declarations/eigenvalues-pos--0337ae3a9157fea8192585da.md) | 85 | `result-track:0337ae3a9157fea8192585da146f19151b541902244c3c0f56471b0a244f9cd7` |
| 11 | `def` | [PosSemidef.preInnerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean/declarations/possemidef-preinnerproductspace--813418feec0d37be1120e505.md) | 95 | `declaration-track:813418feec0d37be1120e5051137483843100a19febfff48b6e873d74c1964f2` |
| 12 | `abbrev` | [toSeminormedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean/declarations/toseminormedaddcommgroup--ef51c4a8241c2acd6156fc55.md) | 108 | `declaration-track:ef51c4a8241c2acd6156fc55af79096c5fc1bad5761017169b20cb5e7e3fa4fc` |
| 13 | `abbrev` | [toNormedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean/declarations/tonormedaddcommgroup--f90fd1ae6db37c6b5dee8ff8.md) | 115 | `declaration-track:f90fd1ae6db37c6b5dee8ff8c1ea1d60df9aeab0e3bcca10f8b53d1a1e1d40f4` |
| 14 | `def` | [toInnerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean/declarations/toinnerproductspace--d3b89d5ef769572f51e8fd0f.md) | 125 | `declaration-track:d3b89d5ef769572f51e8fd0f74d72434f6f6ff183853178eaeb69982f81637cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
