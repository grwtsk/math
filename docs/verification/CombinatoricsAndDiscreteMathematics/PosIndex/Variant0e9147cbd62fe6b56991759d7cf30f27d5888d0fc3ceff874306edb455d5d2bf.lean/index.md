# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PosIndex.Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0617aeb0c424d43a4e449b819bef4a18e6030083",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0617aeb0c424d43a4e449b819bef4a18e6030083`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [posIndex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean/declarations/posindex--9bb82401b98e45fcbd0e512a.md) | 41 | `declaration-track:9bb82401b98e45fcbd0e512a46888fcb8527ac6c4997c1f6b08be2630ed08e8c` |
| 2 | `def` | [negIndex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean/declarations/negindex--330c2f536f696ecbb68d901a.md) | 45 | `declaration-track:330c2f536f696ecbb68d901a7bda8b5bd6835a49a748fc031dd2fc288835beb2` |
| 3 | `def` | [posIndexAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean/declarations/posindexabove--3053b0f331ea9a640144c103.md) | 50 | `declaration-track:3053b0f331ea9a640144c103565ea2f4af90b40a306232fa3e2887e27dacc9bc` |
| 4 | `lemma` | [posIndex_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean/declarations/posindex-le-card--702d7e36320225f3204bf148.md) | 53 | `result-track:702d7e36320225f3204bf1482bd8b6daf9523c5561c69f328e67b0d0b15e8f6d` |
| 5 | `lemma` | [posIndex_eq_rank_of_posSemidef](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean/declarations/posindex-eq-rank-of-possemidef--42e10356674f5c89b77c1f09.md) | 59 | `result-track:42e10356674f5c89b77c1f099596920e40975e96e46fa25705d4eaf6e8d104ad` |
| 6 | `def` | [rtrace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean/declarations/rtrace--4087d2b6bad6245316ff6bb9.md) | 70 | `declaration-track:4087d2b6bad6245316ff6bb9e3c9c5faaf24870fe62de455f90148434e7871a3` |
| 7 | `def` | [frobSq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean/declarations/frobsq--1a091c6f206b82d90cc8f1c8.md) | 73 | `declaration-track:1a091c6f206b82d90cc8f1c8705d4aa75e1aef19c795149b7454e62b648f04e6` |
| 8 | `lemma` | [rtrace_eq_sum_eigenvalues](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean/declarations/rtrace-eq-sum-eigenvalues--7ae14cd6311fe1214ee0be92.md) | 75 | `result-track:7ae14cd6311fe1214ee0be929e3af4731822a6d5309bf67ce692b9a8dbd5c14f` |
| 9 | `def` | [eigEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean/declarations/eigequiv--8a2d289a3a5b008345004e34.md) | 87 | `declaration-track:8a2d289a3a5b008345004e34d883228b0e6b80eec2fb81bde1a205a31eb77d62` |
| 10 | `lemma` | [eigenvalues_eigEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean/declarations/eigenvalues-eigequiv--bd8c8131ef2116e59666709d.md) | 90 | `result-track:bd8c8131ef2116e59666709d54a4821745251e0cf70d0b320a276bd9399f556e` |
| 11 | `lemma` | [sum_eigenvalues_reindex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean/declarations/sum-eigenvalues-reindex--5eb82d5134d86fa2e4d22b4b.md) | 96 | `result-track:5eb82d5134d86fa2e4d22b4b686353b625981e016c303b9c94d3f7e76e9f88f4` |
| 12 | `lemma` | [card_eigenvalues_reindex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean/declarations/card-eigenvalues-reindex--a86d0a3e7d04c622bc06b77b.md) | 101 | `result-track:a86d0a3e7d04c622bc06b77b2db985635afcce26d5a12fc5b9bac67cd8c3f01e` |
| 13 | `lemma` | [frobSq_hermitian_eq_sum_sq_eigenvalues](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean/declarations/frobsq-hermitian-eq-sum-sq-eigenvalues--f9bdde920a01688e4892bc56.md) | 117 | `result-track:f9bdde920a01688e4892bc5631d763425a80f4de684b1934be842adddacc9a12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
