# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Imo1998Q2.Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d45da58f9af0f2d3b54071ef8ffa6b956253942",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d45da58f9af0f2d3b54071ef8ffa6b956253942`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Parity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Order` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [JudgePair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/judgepair--50d24b43a0be8d19efcc4a8b.md) | 55 | `declaration-track:50d24b43a0be8d19efcc4a8ba68a4fc3044463bd8615ccf73cdcacf7268febdf` |
| 2 | `abbrev` | [AgreedTriple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/agreedtriple--6a379caac4498d44deb370da.md) | 60 | `declaration-track:6a379caac4498d44deb370daad00ace5f8d259ca2656246e4079f4c398d7d6fc` |
| 3 | `abbrev` | [JudgePair.judge₁](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/judgepair-judge--657f035850ede4f403a11b5b.md) | 65 | `declaration-track:657f035850ede4f403a11b5bd1b04dd4cb7b22c54ed1d5316819ee33bfae21d3` |
| 4 | `abbrev` | [JudgePair.judge₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/judgepair-judge--2a206d8591b6049ece5d1d91.md) | 70 | `declaration-track:2a206d8591b6049ece5d1d914a4d50cb4fb97bdd0717304a1b6e39c1b27f2a6b` |
| 5 | `abbrev` | [JudgePair.Distinct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/judgepair-distinct--c226ee17c0a9da71cf97a188.md) | 75 | `declaration-track:c226ee17c0a9da71cf97a1885174e3955a687530baf54c0bd2923550ab5a5ea5` |
| 6 | `abbrev` | [JudgePair.Agree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/judgepair-agree--111041703e44c00b98cd98be.md) | 80 | `declaration-track:111041703e44c00b98cd98be90ffee1c6847686e7177b6b65d6464a59c8ebc56` |
| 7 | `abbrev` | [AgreedTriple.contestant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/agreedtriple-contestant--b54e5d28016a4f3e2a0c890a.md) | 85 | `declaration-track:b54e5d28016a4f3e2a0c890a36c6328d5a6dbb5b02adadcb3778bd4046f224ce` |
| 8 | `abbrev` | [AgreedTriple.judgePair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/agreedtriple-judgepair--19018fcb8b7048e74fd118c7.md) | 91 | `declaration-track:19018fcb8b7048e74fd118c7d10669239b01eac2ddf259787d51fea04568a59a` |
| 9 | `theorem` | [JudgePair.agree_iff_same_rating](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/judgepair-agree-iff-same-rating--a406a5404ebd7e697c588225.md) | 96 | `result-track:a406a5404ebd7e697c588225759708819f7bd76d17d535a03e6c5d9f34b5641d` |
| 10 | `def` | [agreedContestants](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/agreedcontestants--785234d3e060be77c1688d8e.md) | 102 | `declaration-track:785234d3e060be77c1688d8ef8d013b3165c6da58be4e0c57d199bc5f126f99e` |
| 11 | `def` | [A](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/a--31121a0fa5b711a673b1a8c2.md) | 110 | `declaration-track:31121a0fa5b711a673b1a8c2282693803b59a212c9982ecd05bb8243847ce1e8` |
| 12 | `theorem` | [A_maps_to_offDiag_judgePair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/a-maps-to-offdiag-judgepair--1df829c0ca51ab37b78e9665.md) | 115 | `result-track:1df829c0ca51ab37b78e9665046e4746d239bff979cb495ca3dc2f36808236eb` |
| 13 | `theorem` | [A_fibre_over_contestant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/a-fibre-over-contestant--41a2b6521fea0e8bf3637893.md) | 119 | `result-track:41a2b6521fea0e8bf3637893812ecc8221c496fb162fd31dca4cd9c9e60f576d` |
| 14 | `theorem` | [A_fibre_over_contestant_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/a-fibre-over-contestant-card--c67ad639860f7c06df7099c9.md) | 129 | `result-track:c67ad639860f7c06df7099c98bfe6b3e874b9c3a3e90f2312056f8c859cda33a` |
| 15 | `theorem` | [A_fibre_over_judgePair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/a-fibre-over-judgepair--902c662749a7afebf24d58d9.md) | 138 | `result-track:902c662749a7afebf24d58d92cb7303f1947a7500d3dec5458cfd134c310fd23` |
| 16 | `theorem` | [A_fibre_over_judgePair_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/a-fibre-over-judgepair-card--129f8c65577023f9ce4fabb4.md) | 149 | `result-track:129f8c65577023f9ce4fabb40a06faae5245bc39d3851113ce1516b84999a569` |
| 17 | `theorem` | [A_card_upper_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/a-card-upper-bound--2d2169b52e308e3d9d6f2b15.md) | 158 | `result-track:2d2169b52e308e3d9d6f2b15489bad1c71820b776a0ff12a3ee61d483ed619ef` |
| 18 | `theorem` | [add_sq_add_sq_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/add-sq-add-sq-sub--46351e2c4e795b81daca301e.md) | 171 | `result-track:46351e2c4e795b81daca301e58b94b3bfef57ea2eb4beb42240978bddc61874c` |
| 19 | `theorem` | [norm_bound_of_odd_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/norm-bound-of-odd-sum--a139048eab3cee0396a22de9.md) | 175 | `result-track:a139048eab3cee0396a22de956a7e0f6aa1f66eb3714f60f1f0d2e978b86b24f` |
| 20 | `theorem` | [judge_pairs_card_lower_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/judge-pairs-card-lower-bound--ad02cd74c63b7e52e476c658.md) | 189 | `result-track:ad02cd74c63b7e52e476c658c4feca0f1256899d6bdfe4e9bc8b271ce7fca772` |
| 21 | `theorem` | [distinct_judge_pairs_card_lower_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/distinct-judge-pairs-card-lower-bound--f48c376e99706a3b4744f729.md) | 201 | `result-track:f48c376e99706a3b4744f7293f9781e9d9bcc517c282c5faf8dfb09513dc4945` |
| 22 | `theorem` | [A_card_lower_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/a-card-lower-bound--ff31de53bf5e67750b99e5a0.md) | 217 | `result-track:ff31de53bf5e67750b99e5a05101bfdb6e307073d5c98b235b2ef7cf7322a243` |
| 23 | `theorem` | [clear_denominators](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/clear-denominators--23f9850324092d2cc76b9017.md) | 228 | `result-track:23f9850324092d2cc76b9017ab190853e35208daab90e5e9b68d1ce6535e8afe` |
| 24 | `theorem` | [imo1998_q2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/declarations/imo1998-q2--0b8a63442f4d39d1e1fa102b.md) | 244 | `result-track:0b8a63442f4d39d1e1fa102b27e4a9d11837ef0ac7e9e06599aa5b4a08e25c2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
