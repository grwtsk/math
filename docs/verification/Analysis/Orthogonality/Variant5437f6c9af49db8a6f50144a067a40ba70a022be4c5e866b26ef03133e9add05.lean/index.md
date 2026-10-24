# Verification target: GRWTSK.Analysis.Orthogonality.Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38c642a4b7e8bd6aa1c92994e7467001fab1b43c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Orthogonality/Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Orthogonality/Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05.lean/index.md) · [Full source](../../../../mathematics/Analysis/Orthogonality/Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38c642a4b7e8bd6aa1c92994e7467001fab1b43c`.

Source path: `GRWTSK/Analysis/Orthogonality/Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Orthogonality/Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Expect` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.AddChar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Inner` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [expect_eq_ite](../../../../mathematics/Analysis/Orthogonality/Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05.lean/declarations/expect-eq-ite--027c6ab38106856f209879c1.md) | 39 | `result-track:027c6ab38106856f209879c15cc183ab300c2856bb02270d6e7634b83da2f92c` |
| 2 | `lemma` | [expect_eq_zero_iff_ne_zero](../../../../mathematics/Analysis/Orthogonality/Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05.lean/declarations/expect-eq-zero-iff-ne-zero--8d47e72d6cf91493429ef38d.md) | 42 | `result-track:8d47e72d6cf91493429ef38d9d755db24ff5cc8efbb8aa7fe4a047fc14c62a66` |
| 3 | `lemma` | [expect_ne_zero_iff_eq_zero](../../../../mathematics/Analysis/Orthogonality/Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05.lean/declarations/expect-ne-zero-iff-eq-zero--101a2c066a20856f42e32c8d.md) | 45 | `result-track:101a2c066a20856f42e32c8da4ed9cfc4c4efeb2640ea3edc17cd515ceef3f94` |
| 4 | `lemma` | [wInner_cWeight_self](../../../../mathematics/Analysis/Orthogonality/Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05.lean/declarations/winner-cweight-self--bc8cf190d3a93859b8420538.md) | 52 | `result-track:bc8cf190d3a93859b84205389f8abbf3feacafd91fae6222963dea504812c99a` |
| 5 | `lemma` | [wInner_cWeight_eq_boole](../../../../mathematics/Analysis/Orthogonality/Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05.lean/declarations/winner-cweight-eq-boole--3229f4e68b3dec97988f0be0.md) | 64 | `result-track:3229f4e68b3dec97988f0be08ebb7b5dfcf2e261cb128dea59bc83d4570b5a68` |
| 6 | `lemma` | [wInner_cWeight_eq_zero_iff_ne](../../../../mathematics/Analysis/Orthogonality/Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05.lean/declarations/winner-cweight-eq-zero-iff-ne--0401082ac30e1292efe56e7b.md) | 72 | `result-track:0401082ac30e1292efe56e7bf93645efdf3f7e9bbef3e31891698113d3ae2431` |
| 7 | `lemma` | [wInner_cWeight_eq_one_iff_eq](../../../../mathematics/Analysis/Orthogonality/Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05.lean/declarations/winner-cweight-eq-one-iff-eq--16b5f8f127acabe8db34c813.md) | 75 | `result-track:16b5f8f127acabe8db34c813787f31d6c3c8746bb399ca3ee55aa21213ee9b9e` |
| 8 | `lemma` | [linearIndependent](../../../../mathematics/Analysis/Orthogonality/Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05.lean/declarations/linearindependent--8da6d82c9e5112e235c59c10.md) | 80 | `result-track:8da6d82c9e5112e235c59c10f280e511263e163cfeeed700f55cd23f1c4df902` |
| 9 | `instance` | [instFintype](../../../../mathematics/Analysis/Orthogonality/Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05.lean/declarations/instfintype--9a706c3eba27ae4e47257c8b.md) | 85 | `declaration-track:9a706c3eba27ae4e47257c8b0a48a85fe40ecb5f07554f15cb7083e22cd62518` |
| 10 | `lemma` | [card_addChar_le](../../../../mathematics/Analysis/Orthogonality/Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05.lean/declarations/card-addchar-le--e888ad93976f21d307db7ebd.md) | 88 | `result-track:e888ad93976f21d307db7ebdc4954420d0ade6b6bad40d3bdb7d3b3de1a4cc3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
