# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PosIndex.Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8ed5d166d554060fe162bf383e02ed8bce48ee0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8ed5d166d554060fe162bf383e02ed8bce48ee0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [posIndex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean/declarations/posindex--ccdcb054e1deddbb506accc0.md) | 49 | `declaration-track:ccdcb054e1deddbb506accc0b0032023ae85bb02c6c0ffc86a8fc354536ef4a5` |
| 2 | `def` | [negIndex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean/declarations/negindex--286a432cc6339f581a4102f5.md) | 53 | `declaration-track:286a432cc6339f581a4102f548fa3c3bcebb7c5fdfeb6e8401e0fb3592416f29` |
| 3 | `def` | [posIndexAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean/declarations/posindexabove--57713bfea3644b2b3759a3fa.md) | 58 | `declaration-track:57713bfea3644b2b3759a3faf1fdc51a54fc5c900b532b22054ec80585d1556a` |
| 4 | `lemma` | [posIndex_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean/declarations/posindex-le-card--4864196ae9cbcee5878ee9cd.md) | 61 | `result-track:4864196ae9cbcee5878ee9cd0c4c22de17fee6f236206f2dbfbb163de3b5b10e` |
| 5 | `lemma` | [posIndex_eq_rank_of_posSemidef](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean/declarations/posindex-eq-rank-of-possemidef--b5edec608ada9757331b2403.md) | 67 | `result-track:b5edec608ada9757331b2403b0ebb56b34135fa27a71857594a1bc5d9e4090d1` |
| 6 | `def` | [rtrace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean/declarations/rtrace--3216867b952ff829accabdf1.md) | 78 | `declaration-track:3216867b952ff829accabdf17f95fa6c14a75bbd2497e11998110dd4db641b05` |
| 7 | `def` | [frobSq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean/declarations/frobsq--d7dfabba31f3a5058d4cb9d0.md) | 81 | `declaration-track:d7dfabba31f3a5058d4cb9d0890705d8bff0248e081f5f19b66f028dfcc05fe7` |
| 8 | `lemma` | [rtrace_eq_sum_eigenvalues](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean/declarations/rtrace-eq-sum-eigenvalues--bc1919272180a05a75b2ea5c.md) | 83 | `result-track:bc1919272180a05a75b2ea5cc2a344660e5acab7cf3969b1b83082c1e92e0905` |
| 9 | `def` | [eigEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean/declarations/eigequiv--61ef12203562eb30b974cbfe.md) | 95 | `declaration-track:61ef12203562eb30b974cbfea87375ff8f121228ff72ec1235fc43f69e377c36` |
| 10 | `lemma` | [eigenvalues_eigEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean/declarations/eigenvalues-eigequiv--6a4df56f4e22663487908083.md) | 98 | `result-track:6a4df56f4e226634879080834952a4b7ad2469d4c5ffbea31ca223eafc9ac53d` |
| 11 | `lemma` | [sum_eigenvalues_reindex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean/declarations/sum-eigenvalues-reindex--d73006cbbaa068d3249bd96e.md) | 104 | `result-track:d73006cbbaa068d3249bd96e1d8bbe76968446f1ec06c646d6820a85b62b609a` |
| 12 | `lemma` | [card_eigenvalues_reindex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean/declarations/card-eigenvalues-reindex--6db1ab321354129dd1b77fb2.md) | 109 | `result-track:6db1ab321354129dd1b77fb2354c3e313bc904609267453888c6a8494662e938` |
| 13 | `lemma` | [frobSq_hermitian_eq_sum_sq_eigenvalues](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant08aa0edb80323ca12d6a423fff7c030b907a1cca834cac6c2f14fc657eab7258.lean/declarations/frobsq-hermitian-eq-sum-sq-eigenvalues--e942c089747469de748cda06.md) | 125 | `result-track:e942c089747469de748cda06757b4fbe15e3fefb2466b22792d3bc85531a3e2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
