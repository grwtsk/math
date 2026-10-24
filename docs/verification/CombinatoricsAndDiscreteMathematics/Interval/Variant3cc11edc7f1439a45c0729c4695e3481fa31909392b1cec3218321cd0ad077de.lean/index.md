# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7cd4e2273f51a2747c488aadba304211d697f3f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7cd4e2273f51a2747c488aadba304211d697f3f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Finsupp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.LocallyFinite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Order` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rangeSingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean/declarations/rangesingleton--5d2c4c7625a39a1190392a2f.md) | 44 | `declaration-track:5d2c4c7625a39a1190392a2ff9d22c861590e8cc92e48db5df3fa2888a3c6cac` |
| 2 | `theorem` | [mem_rangeSingleton_apply_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean/declarations/mem-rangesingleton-apply-iff--9abb7099acf8a1465814b274.md) | 52 | `result-track:9abb7099acf8a1465814b274aaa1c93ca8380b7fbd6246a0d256067dfde4087a` |
| 3 | `def` | [rangeIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean/declarations/rangeicc--8c674fbd6c3a4eef07d8fc10.md) | 64 | `declaration-track:8c674fbd6c3a4eef07d8fc108c6bd56d006adf1e3e1467194c310dc6b5c74ce4` |
| 4 | `lemma` | [coe_rangeIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean/declarations/coe-rangeicc--f8eb913272846ff3fe0c1c7c.md) | 76 | `result-track:f8eb913272846ff3fe0c1c7c6a8189cbfbb6c400d2de75b1b34c69346f7aa9e5` |
| 5 | `theorem` | [rangeIcc_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean/declarations/rangeicc-support--ee7c8a0f9aab17f00b7cbd75.md) | 79 | `result-track:ee7c8a0f9aab17f00b7cbd750c4e6801cff4f7a4d910a463f1375a213febbfda` |
| 6 | `theorem` | [mem_rangeIcc_apply_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean/declarations/mem-rangeicc-apply-iff--2c347fa5f83946060db7f646.md) | 83 | `result-track:2c347fa5f83946060db7f646f347922a4c991783f35d1e4bdc03d2ae3acf2072` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean/declarations/instance--36243a8a5f25340b7a1ceb93.md) | 92 | `declaration-track:36243a8a5f25340b7a1ceb934e496acd225c0a25779435eff19762e9ab39a967` |
| 8 | `theorem` | [Icc_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean/declarations/icc-eq--13269d289a6b80994ae77ae1.md) | 103 | `result-track:13269d289a6b80994ae77ae172b1ecdb888f3972355856de0193bfb738911872` |
| 9 | `theorem` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean/declarations/card-icc--a931b0131cd6919c5f630719.md) | 107 | `result-track:a931b0131cd6919c5f6307198ed05970231bc463088494d92337889420b068ff` |
| 10 | `theorem` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean/declarations/card-ico--5fc299e04d2b6ba0622dd8e8.md) | 112 | `result-track:5fc299e04d2b6ba0622dd8e870f4fb7ebe3ae16d1734e0b4f4d70098e313f4e5` |
| 11 | `theorem` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean/declarations/card-ioc--5431a27bd14ba47ee063da93.md) | 117 | `result-track:5431a27bd14ba47ee063da93738aabb1dc11e907abd51a7e9493089562ba69e0` |
| 12 | `theorem` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean/declarations/card-ioo--e501cdb7655d5eefabf9e0a9.md) | 122 | `result-track:e501cdb7655d5eefabf9e0a93334a877074e66454b379c7d04fe2cac471ee84d` |
| 13 | `theorem` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean/declarations/card-uicc--6c7239cf423280e2d700b085.md) | 132 | `result-track:6c7239cf423280e2d700b08595d70423f7d01a545b6a962921b2d45a24d92e35` |
| 14 | `theorem` | [card_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean/declarations/card-iic--cae9b7df3dd1e55b624c468d.md) | 145 | `result-track:cae9b7df3dd1e55b624c468dc1a315c1b2e0ff2af66302bdb4186efb82558ec2` |
| 15 | `theorem` | [card_Iio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant3cc11edc7f1439a45c0729c4695e3481fa31909392b1cec3218321cd0ad077de.lean/declarations/card-iio--7b1ed92c432abaa50ee438fa.md) | 150 | `result-track:7b1ed92c432abaa50ee438fa3c214622471ecca28d4ae8800ff160efff968ac8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
