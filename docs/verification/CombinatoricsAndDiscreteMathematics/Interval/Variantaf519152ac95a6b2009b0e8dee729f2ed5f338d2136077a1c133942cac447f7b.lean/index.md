# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6b862b4b98e220c6c4e4307e6e48d1bdfde8dfc",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6b862b4b98e220c6c4e4307e6e48d1bdfde8dfc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Embedding` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Int` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.CharZero` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/instlocallyfiniteorder--e454c732367a1629a1297f24.md) | 32 | `declaration-track:e454c732367a1629a1297f24452eb84a2315f2ea321958400d53730af6bb2466` |
| 2 | `theorem` | [Icc_eq_finset_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/icc-eq-finset-map--8e7a3b815d0ccc556ad38788.md) | 87 | `result-track:8e7a3b815d0ccc556ad38788938ba9d4eae7ed197b2aff4efb3222029ec992b3` |
| 3 | `theorem` | [Ico_eq_finset_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/ico-eq-finset-map--9b3f5bb6f3bb8fb95abddf68.md) | 92 | `result-track:9b3f5bb6f3bb8fb95abddf684c1803c22dfa2f08947f324dfd7a0d0dbfadec78` |
| 4 | `theorem` | [Ioc_eq_finset_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/ioc-eq-finset-map--a50a7f34912833bfc29d10a7.md) | 96 | `result-track:a50a7f34912833bfc29d10a7ba359c1d3c3edff8bbe4f1aae6f9ebb254b747bb` |
| 5 | `theorem` | [Ioo_eq_finset_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/ioo-eq-finset-map--90e4fa981d98d71f5a567a0e.md) | 101 | `result-track:90e4fa981d98d71f5a567a0ef6b45e1ee8d71015c49f617719a7b725d944a56e` |
| 6 | `theorem` | [uIcc_eq_finset_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/uicc-eq-finset-map--9785b07fb5c6c6e6417b81a5.md) | 106 | `result-track:9785b07fb5c6c6e6417b81a57e1b1d2f2388418e2f1849a4a2e85b578f5e6c13` |
| 7 | `theorem` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/card-icc--a22c3c86bd47cc3d61e8c6b3.md) | 111 | `result-track:a22c3c86bd47cc3d61e8c6b3adaeb46d145e4b412c2cb93baa2b3acb86bf0dad` |
| 8 | `theorem` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/card-ico--760e3b744376a2751345d15c.md) | 114 | `result-track:760e3b744376a2751345d15c8b925ba6d9cd11cec179dc0611ce4357120cf3a4` |
| 9 | `theorem` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/card-ioc--f9f2d7a0a37256bcd2943b87.md) | 117 | `result-track:f9f2d7a0a37256bcd2943b8784b73163c9b8096ead20db18630912e2c94fba0f` |
| 10 | `theorem` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/card-ioo--c5c47e09e93426b36d3fc89c.md) | 120 | `result-track:c5c47e09e93426b36d3fc89c95b8bd794f3e15da8abf1fd98d32dec2dd044736` |
| 11 | `theorem` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/card-uicc--df7f62f7a7e1f68bd0c62944.md) | 123 | `result-track:df7f62f7a7e1f68bd0c62944ec873f737f925cbe44a7b8d15f05019054d7212d` |
| 12 | `theorem` | [card_Icc_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/card-icc-of-le--4c0bf4b54fa2ca99143ae272.md) | 130 | `result-track:4c0bf4b54fa2ca99143ae2726517f499413ca054acd1c0dea02c714e9159714b` |
| 13 | `theorem` | [card_Ico_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/card-ico-of-le--4a29c674ede09cbefd06e3d0.md) | 133 | `result-track:4a29c674ede09cbefd06e3d0acac30399fb495626d9b7dd35edf9589d3a3f136` |
| 14 | `theorem` | [card_Ioc_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/card-ioc-of-le--8c4b6fef70871173fee52aa8.md) | 136 | `result-track:8c4b6fef70871173fee52aa8b195ec6828157643b22088af0bfc60fdc127d60a` |
| 15 | `theorem` | [card_Ioo_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/card-ioo-of-lt--543e139fd854fdbaaa1dc311.md) | 139 | `result-track:543e139fd854fdbaaa1dc311315cead19078e1ef5fa10602f6ac51218d9a0e58` |
| 16 | `theorem` | [Icc_eq_pair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/icc-eq-pair--e1c44e96011a33042fa174df.md) | 142 | `result-track:e1c44e96011a33042fa174dfe313187c60d3bf641da4e4be98265667b29ebf5c` |
| 17 | `theorem` | [card_fintype_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/card-fintype-icc--555dff511b2eafb6e4f07941.md) | 148 | `result-track:555dff511b2eafb6e4f079415cf7505ae41bdf81376bfd1cfee618ba02ee2b1e` |
| 18 | `theorem` | [card_fintype_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/card-fintype-ico--60f16bf491d52360ec722017.md) | 152 | `result-track:60f16bf491d52360ec7220170479f66277c1dd0bdd3d44a1ca55de4b3674b0a4` |
| 19 | `theorem` | [card_fintype_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/card-fintype-ioc--aa6da58ef0ff278ad1601ca6.md) | 156 | `result-track:aa6da58ef0ff278ad1601ca6c3807828a8d74f4416eac26911aebfaca5d41bd3` |
| 20 | `theorem` | [card_fintype_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/card-fintype-ioo--b1181512cd22ad45d8ac2fe3.md) | 160 | `result-track:b1181512cd22ad45d8ac2fe371a6a50379370b4f11f5d632fdb4d89c84714716` |
| 21 | `theorem` | [card_fintype_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/card-fintype-uicc--5eb16ab83f08dccd26f9a73e.md) | 164 | `result-track:5eb16ab83f08dccd26f9a73e098d6e089a694d1976b86e670b772288b56d2c3a` |
| 22 | `theorem` | [card_fintype_Icc_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/card-fintype-icc-of-le--c808efd0de4181a8677f3a07.md) | 167 | `result-track:c808efd0de4181a8677f3a07eafc9d72d9776936e1aef180d83735372a2ddf63` |
| 23 | `theorem` | [card_fintype_Ico_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/card-fintype-ico-of-le--51f93ba1e1f853d3e2230ded.md) | 170 | `result-track:51f93ba1e1f853d3e2230ded9cf14bf26845c8200b007d9f6fb3148f906b3633` |
| 24 | `theorem` | [card_fintype_Ioc_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/card-fintype-ioc-of-le--398db6a2d38b186a94b58fc5.md) | 173 | `result-track:398db6a2d38b186a94b58fc592ec0ad7d8b0a27a9a06a1a5087a721026757591` |
| 25 | `theorem` | [card_fintype_Ioo_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/card-fintype-ioo-of-lt--44b021e2a98740c8a808fe12.md) | 176 | `result-track:44b021e2a98740c8a808fe122f6a6337658b64a37a0052d9de801f500e7e48db` |
| 26 | `theorem` | [image_Ico_emod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantaf519152ac95a6b2009b0e8dee729f2ed5f338d2136077a1c133942cac447f7b.lean/declarations/image-ico-emod--8687262dc7beeef382da7902.md) | 179 | `result-track:8687262dc7beeef382da7902cbfe06ad5a6148fcd20d0873c59b3215bbf64946` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
