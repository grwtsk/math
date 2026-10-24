# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Attempt01.Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f51c9aadc3f18289c4d2f1dbf0e76eaaac1f1461",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f51c9aadc3f18289c4d2f1dbf0e76eaaac1f1461`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/declarations/outerweight--d1ac589df4738eed4229203b.md) | 25 | `declaration-track:d1ac589df4738eed4229203b8ab14cb2d54acc49477439e921118ac077de9929` |
| 2 | `def` | [exponentWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/declarations/exponentweight--65d681809391d4fe2fce0929.md) | 27 | `declaration-track:65d681809391d4fe2fce09291d29b8a53e3e0cd199227b5b74395ae8361d99a1` |
| 3 | `def` | [momentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/declarations/momentatom--5e33ef22bc197fb2eb04e29d.md) | 29 | `declaration-track:5e33ef22bc197fb2eb04e29d8e836d426162094401cc0c31908e0b6b50e9bb56` |
| 4 | `def` | [primeMomentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/declarations/primemomentatom--ea28f98d90a93b2986f16ae8.md) | 32 | `declaration-track:ea28f98d90a93b2986f16ae842ff2afcee6ee2f9c61707dda12d122ff0fc3725` |
| 5 | `def` | [properPowerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/declarations/properpowermoment--02ded05103ad629733c238a9.md) | 34 | `declaration-track:02ded05103ad629733c238a9ee4db80cff098931e578b25d4c5588f3862c4b73` |
| 6 | `def` | [properPowerB1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/declarations/properpowerb1--cee9491d2a48483e24028f29.md) | 36 | `declaration-track:cee9491d2a48483e24028f298c11bb69f7b5344587fb2384410870a03ce311d4` |
| 7 | `def` | [properPowerB2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/declarations/properpowerb2--43675477713d7de5863d9126.md) | 38 | `declaration-track:43675477713d7de5863d9126c884ef1a79d980ae104e8e941979dfe38a5c6fc6` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/declarations/outerweight-nonneg--cfde26363842ff95adbcfca1.md) | 40 | `result-track:cfde26363842ff95adbcfca196aac7d92251f549c497d04157ea3fbb47d8f009` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/declarations/exponentweight-nonneg--7abbbb6355e96aeb78fcea13.md) | 48 | `result-track:7abbbb6355e96aeb78fcea13ff78616683767e2bdff8a0e2fad1815cddcfaf56` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/declarations/momentatom-nonneg--5266d47ee108d4bf953ba55c.md) | 52 | `result-track:5266d47ee108d4bf953ba55c5cf5e53ca9480e8b1a88740d9b0c92e82d430c1d` |
| 11 | `theorem` | [outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/declarations/outerweight-summable--ac1824be38d03c509c5c6a65.md) | 60 | `result-track:ac1824be38d03c509c5c6a65fe50d8b9fcbaa5f2a14583205bb52c6678680d83` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/declarations/exponentweight-summable--e575e86b0e7c7da2cf76d9ed.md) | 87 | `result-track:e575e86b0e7c7da2cf76d9edcccea6a8ec0c4ce5bad5a93a51f4860a2bd2551d` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/declarations/momentatom-le-product--e36e0603b51a5a0361bc1637.md) | 96 | `result-track:e36e0603b51a5a0361bc163787855e5738b5780b251250cc2e29f9e2714a13e4` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/declarations/prime-outerweight-summable--deecabde6f60b788fcd8373d.md) | 112 | `result-track:deecabde6f60b788fcd8373d19b193efd960a4d634dfa1233ebc0df9aa4b4ac5` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/declarations/primemomentatom-summable--63e961bcf8f901f7943b3c3f.md) | 116 | `result-track:63e961bcf8f901f7943b3c3f78284e7c5254e980dadb17b39051119145dcc07c` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/declarations/primemomentatom-inner-summable--9b592b12a43408c7174742be.md) | 123 | `result-track:9b592b12a43408c7174742be65283d6307c81a7e1b5ac3d1c7a009303f093d4c` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/declarations/primemomentatom-outer-summable--8cd08d656f6e0787c8d76ed5.md) | 128 | `result-track:8cd08d656f6e0787c8d76ed5749218b06f8097cd2d9df6bb40b7f3100c96c1ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
