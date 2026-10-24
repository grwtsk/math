# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Imo1998Q2.Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24aae130c016d95d04f5dc8220efe26b17564035",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24aae130c016d95d04f5dc8220efe26b17564035`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Parity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Order` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [JudgePair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/judgepair--23ebd9f3cae5755ccc166245.md) | 63 | `declaration-track:23ebd9f3cae5755ccc16624507059189186b5a569cf1f0eef0e9a940adf91f2f` |
| 2 | `abbrev` | [AgreedTriple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/agreedtriple--9c6eb40fc67dee527016c376.md) | 68 | `declaration-track:9c6eb40fc67dee527016c3763c5a7cc282478f6724af1e3c86c0c825bdba2c62` |
| 3 | `abbrev` | [JudgePair.judge₁](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/judgepair-judge--12aeda0c4a0416c9211a0e1a.md) | 73 | `declaration-track:12aeda0c4a0416c9211a0e1ab20e0a2b1c7ac33b91350544fa7e2f6c08e7e2f7` |
| 4 | `abbrev` | [JudgePair.judge₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/judgepair-judge--2255b131b2787cecb754e407.md) | 78 | `declaration-track:2255b131b2787cecb754e4076cddc039b54444ec6acd7c4e606a0fbbeff80e9a` |
| 5 | `abbrev` | [JudgePair.Distinct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/judgepair-distinct--f128569fa23c7aa47612abbb.md) | 83 | `declaration-track:f128569fa23c7aa47612abbbb9c490a4624fafa611ae92d9c07178a7ccb49831` |
| 6 | `abbrev` | [JudgePair.Agree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/judgepair-agree--c67dc09f6ebf7b2e1fa9e9e0.md) | 88 | `declaration-track:c67dc09f6ebf7b2e1fa9e9e071e96cfa2f80abecf5f73313c104d911382e4ada` |
| 7 | `abbrev` | [AgreedTriple.contestant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/agreedtriple-contestant--5ff1bc4c8d039889b8dfde04.md) | 93 | `declaration-track:5ff1bc4c8d039889b8dfde045e116f4240a4bf25800ec9355c2ec548030e6794` |
| 8 | `abbrev` | [AgreedTriple.judgePair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/agreedtriple-judgepair--cb9a76285bd3e2870e28332a.md) | 99 | `declaration-track:cb9a76285bd3e2870e28332ad061eaabdf6a6a5eb291a068ef2ef1379b196fea` |
| 9 | `theorem` | [JudgePair.agree_iff_same_rating](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/judgepair-agree-iff-same-rating--f132368fe7df054bce65410c.md) | 104 | `result-track:f132368fe7df054bce65410cca9fa96424dcf0e8fb783e428f5805e166eaa09b` |
| 10 | `def` | [agreedContestants](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/agreedcontestants--5bd3ce839a53e27fcfb6b3f5.md) | 110 | `declaration-track:5bd3ce839a53e27fcfb6b3f5c91c7e420af6140996eeb746e701933671847298` |
| 11 | `def` | [A](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/a--fe4bc6cd9408d6133efeeac5.md) | 118 | `declaration-track:fe4bc6cd9408d6133efeeac5b2450dcc24c0f116b3c0bc29ad26e16b5139670b` |
| 12 | `theorem` | [A_maps_to_offDiag_judgePair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/a-maps-to-offdiag-judgepair--5fa7cf9bb5458e046b73cba6.md) | 123 | `result-track:5fa7cf9bb5458e046b73cba67046dbc8227eef8c213e06455e38341fe40fc06b` |
| 13 | `theorem` | [A_fibre_over_contestant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/a-fibre-over-contestant--0a00ad3314e7eb98a89ff068.md) | 127 | `result-track:0a00ad3314e7eb98a89ff068d3d8d8147341e04cfb5bf2b111861fc265ab85d8` |
| 14 | `theorem` | [A_fibre_over_contestant_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/a-fibre-over-contestant-card--3c50c7832832335fc4071d63.md) | 137 | `result-track:3c50c7832832335fc4071d637d7214671fa42356463f78c0d7712f203defb300` |
| 15 | `theorem` | [A_fibre_over_judgePair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/a-fibre-over-judgepair--6868787d73ce0df68b60557b.md) | 146 | `result-track:6868787d73ce0df68b60557bc32af0029d633673f2a5450f173824707c9b81c0` |
| 16 | `theorem` | [A_fibre_over_judgePair_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/a-fibre-over-judgepair-card--54c3ab59bf3e85883427080f.md) | 157 | `result-track:54c3ab59bf3e85883427080f0ed24a4e02902607613aceb982ee0b5725f626a9` |
| 17 | `theorem` | [A_card_upper_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/a-card-upper-bound--0a22cd429ad9dabdccca0c70.md) | 166 | `result-track:0a22cd429ad9dabdccca0c70e34b3b7364f2c50ba85d899db581f7e9ade7e196` |
| 18 | `theorem` | [add_sq_add_sq_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/add-sq-add-sq-sub--7c97bcc8bd6d271f6dbb8b56.md) | 179 | `result-track:7c97bcc8bd6d271f6dbb8b560a98ff566a1dee2503147fa8df8f8a586c128fc3` |
| 19 | `theorem` | [norm_bound_of_odd_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/norm-bound-of-odd-sum--75d2b5ab8a2af7bb8c51e999.md) | 183 | `result-track:75d2b5ab8a2af7bb8c51e9999132e5f4bddee02b8f9f641a0ec4105d9e4d2ebb` |
| 20 | `theorem` | [judge_pairs_card_lower_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/judge-pairs-card-lower-bound--06bed72282f969194d276625.md) | 197 | `result-track:06bed72282f969194d27662595891c0a1abbfc664458a46cab2abe1fffa3b0e8` |
| 21 | `theorem` | [distinct_judge_pairs_card_lower_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/distinct-judge-pairs-card-lower-bound--6fe605b9f927a8680dbb42ab.md) | 209 | `result-track:6fe605b9f927a8680dbb42ab16fdf46f79d568362ecab6222105737b86c7baae` |
| 22 | `theorem` | [A_card_lower_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/a-card-lower-bound--950c07bb1320a835356c7d90.md) | 225 | `result-track:950c07bb1320a835356c7d90c92d848acc7cdb3826950d2de74e733b972454c3` |
| 23 | `theorem` | [clear_denominators](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/clear-denominators--70d3c01d92be1a8da1327504.md) | 236 | `result-track:70d3c01d92be1a8da132750486787b41e9ecf13dea272872f3c685b5ba1edd7f` |
| 24 | `theorem` | [imo1998_q2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaf689116652a17aa01f0b50520a21812585cedc8888df45afb82fedcf3c00c08.lean/declarations/imo1998-q2--56c98649d0f1fb0798a3d88d.md) | 252 | `result-track:56c98649d0f1fb0798a3d88d221613a9625f45110be2728e50324ba24664f401` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
