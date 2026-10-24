# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NatAntidiagonal.Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7718c551501cc4f8cfdb8a41414542ec47b7018b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7718c551501cc4f8cfdb8a41414542ec47b7018b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Antidiag.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.NatAntidiagonal` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instHasAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean/declarations/insthasantidiagonal--2d0364c78e7412e6047852a6.md) | 33 | `declaration-track:2d0364c78e7412e6047852a6a6ca174bff142f86ced727c45db8305b317b1bb9` |
| 2 | `lemma` | [antidiagonal_eq_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean/declarations/antidiagonal-eq-map--f061acbf13d9fa53a882ae91.md) | 38 | `result-track:f061acbf13d9fa53a882ae910c3261aebedcbad069c2b9cdd7d4fad980debf4c` |
| 3 | `lemma` | [antidiagonal_eq_map'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean/declarations/antidiagonal-eq-map--eb5c55901f95938262b9657c.md) | 42 | `result-track:eb5c55901f95938262b9657c3bddc21b9b1ca4e06a8cc0bde193eae1816fd371` |
| 4 | `lemma` | [antidiagonal_eq_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean/declarations/antidiagonal-eq-image--06adff5a486b5bf778f6dd96.md) | 47 | `result-track:06adff5a486b5bf778f6dd961a893305c01f3118dd5dc86dced58b28ba59e151` |
| 5 | `lemma` | [antidiagonal_eq_image'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean/declarations/antidiagonal-eq-image--cecd50b16f232660d21cc644.md) | 51 | `result-track:cecd50b16f232660d21cc64405167bd8c7ed1249e14b4cc1ed4a8699861f26c8` |
| 6 | `theorem` | [card_antidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean/declarations/card-antidiagonal--7a1ed8fb556d376f804939e0.md) | 57 | `result-track:7a1ed8fb556d376f804939e0dea07d6a2bd9c835a64b629ecf1069af81706aa1` |
| 7 | `theorem` | [antidiagonal_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean/declarations/antidiagonal-zero--7e0365346d0458f8473d6183.md) | 61 | `result-track:7e0365346d0458f8473d6183af7b96db8ad23a667cd101205ac16edf56741813` |
| 8 | `theorem` | [antidiagonal_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean/declarations/antidiagonal-succ--5d909b7753c35548ef7dc23c.md) | 63 | `result-track:5d909b7753c35548ef7dc23c8683f8c6c628c916c19819176d0d1f8f6b42ee47` |
| 9 | `theorem` | [antidiagonal_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean/declarations/antidiagonal-succ--19cfd6d661527a6805fbefff.md) | 73 | `result-track:19cfd6d661527a6805fbefffeed25f6be30a6123945fcedc17a390f6b0e17f79` |
| 10 | `theorem` | [antidiagonal_succ_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean/declarations/antidiagonal-succ-succ--3e24c97287bf522e1a80c712.md) | 83 | `result-track:3e24c97287bf522e1a80c71238d93af92a4e988208955646fef068e89a2f0036` |
| 11 | `theorem` | [antidiagonal.fst_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean/declarations/antidiagonal-fst-lt--094948afdb4eeb964d87c552.md) | 95 | `result-track:094948afdb4eeb964d87c5526131db2e980dbeaba6d2b73ecaa99fa7e1c8b057` |
| 12 | `theorem` | [antidiagonal.snd_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean/declarations/antidiagonal-snd-lt--fc41becce070cbdbec872b3f.md) | 98 | `result-track:fc41becce070cbdbec872b3fb82641dfcafe2b2653b570de1dcf85401f5d5194` |
| 13 | `lemma` | [antidiagonal_filter_snd_le_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean/declarations/antidiagonal-filter-snd-le-of-le--26fdf534d295859008b47502.md) | 101 | `result-track:26fdf534d295859008b47502e6d98214644c2458367b6269f7df3adad8cc6733` |
| 14 | `lemma` | [antidiagonal_filter_fst_le_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean/declarations/antidiagonal-filter-fst-le-of-le--8bcfc8e4f0ee4ad536ae77b6.md) | 114 | `result-track:8bcfc8e4f0ee4ad536ae77b6a4a5641357892e809b1be48794c5238723888ef0` |
| 15 | `lemma` | [antidiagonal_filter_le_fst_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean/declarations/antidiagonal-filter-le-fst-of-le--d815e3915b54eb9a5a6d083b.md) | 126 | `result-track:d815e3915b54eb9a5a6d083b18cbb60bc206f3c225d4fc2e1bfe177045ef4c57` |
| 16 | `lemma` | [antidiagonal_filter_le_snd_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean/declarations/antidiagonal-filter-le-snd-of-le--5c25d8b915b415cca8ae3023.md) | 138 | `result-track:5c25d8b915b415cca8ae30234e5fd9145a91917988e5fa78981219c54707b564` |
| 17 | `def` | [antidiagonalEquivFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant63fcf48b294fa8edf425f518987a91f36a943cfbb5919e4151247cb3407e8eea.lean/declarations/antidiagonalequivfin--101d6c1b223bfdc01b3fe707.md) | 152 | `declaration-track:101d6c1b223bfdc01b3fe7079c82606d737ee8def3f149ae1316b2c22849590e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
