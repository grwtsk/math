# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Order.Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01e643e21408393e0f060a55f933e0eff0aacaa8",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01e643e21408393e0f060a55f933e0eff0aacaa8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Order.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Ext` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean/declarations/instle--8ab37f6bb0e4deaae17fe949.md) | 16 | `declaration-track:8ab37f6bb0e4deaae17fe949a3c2d2471517cead837b1ebd78dd4f32eb6e99df` |
| 2 | `instance` | [instLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean/declarations/instlt--9dcc8a29dd27dbdf1092c36d.md) | 19 | `declaration-track:9dcc8a29dd27dbdf1092c36d181238a39f6d238e972990f7bd202a1296a7a7c3` |
| 3 | `instance` | [instLawfulOrderLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean/declarations/instlawfulorderlt--30ec35bd87b17e0b9c15f189.md) | 22 | `declaration-track:30ec35bd87b17e0b9c15f18986f9ef0d4545658d0c02b0ff78290eccf1a4fd8d` |
| 4 | `instance` | [instMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean/declarations/instmin--cf3a61041c8e0e4914afc3e9.md) | 26 | `declaration-track:cf3a61041c8e0e4914afc3e9f230f6493ed34d0056cbefed44957d3d24a201f5` |
| 5 | `instance` | [instMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean/declarations/instmax--e8116cfb91f842c8d5be18f2.md) | 29 | `declaration-track:e8116cfb91f842c8d5be18f2d44d545981f21de1d4ea0dcfcd7b3b117004caa0` |
| 6 | `instance` | [instReflLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean/declarations/instreflle--3bd5262116d4dac028303db9.md) | 32 | `declaration-track:3bd5262116d4dac028303db902f1b86c0195e2086a1dac1fd5959d9b2233b377` |
| 7 | `instance` | [instAntisymmLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean/declarations/instantisymmle--45acb7799b0c8cc7d4764d6c.md) | 36 | `declaration-track:45acb7799b0c8cc7d4764d6c55bee30e546cd779abae9b90190f24124185dfe5` |
| 8 | `instance` | [instTotalLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean/declarations/insttotalle--06dd8eb46f075fa42ae4f027.md) | 40 | `declaration-track:06dd8eb46f075fa42ae4f0279c9c11c6f926399e062ff5ae91727f2085a6aa83` |
| 9 | `instance` | [instTransLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean/declarations/insttransle--07a170970e98d4c1a9017760.md) | 44 | `declaration-track:07a170970e98d4c1a9017760fa9a17847c2d8b5bd3671a017d4be3223775f755` |
| 10 | `instance` | [instMinEqOr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean/declarations/instmineqor--e48c1c6b9cf3c64b6a0614f9.md) | 49 | `declaration-track:e48c1c6b9cf3c64b6a0614f9142a5711fb15fdb079b42bfd81b5905ffc15c2c2` |
| 11 | `instance` | [instLawfulOrderMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean/declarations/instlawfulordermin--e4dd3dc26a3cff74f712662c.md) | 56 | `declaration-track:e4dd3dc26a3cff74f712662c0744875b6ce6b3314a4eb2b1a8a2107d7dcc2e5d` |
| 12 | `instance` | [instMaxEqOr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean/declarations/instmaxeqor--c96b7af60035c14ee3d68d5f.md) | 61 | `declaration-track:c96b7af60035c14ee3d68d5fe00ba65a5a55d7acee63a5213538daead8ad7d67` |
| 13 | `instance` | [instLawfulOrderMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean/declarations/instlawfulordermax--ddf34c5b08af164d0915e8d2.md) | 68 | `declaration-track:ddf34c5b08af164d0915e8d280a70e9c50539828affce5b93b366f5e266f4afa` |
| 14 | `instance` | [instIsPreorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean/declarations/instispreorder--f8b1167a44193df0f0af1989.md) | 74 | `declaration-track:f8b1167a44193df0f0af1989b960223e475bb188429c5a11c1fe04d0636fee63` |
| 15 | `instance` | [instIsLinearPreorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean/declarations/instislinearpreorder--353765d3ce9adbb8856a69ad.md) | 78 | `declaration-track:353765d3ce9adbb8856a69adef5ae7e42cab5e73ff6118932198ea4efdcd4e36` |
| 16 | `instance` | [instIsPartialOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean/declarations/instispartialorder--b3bd310ad303529377ffeaa6.md) | 82 | `declaration-track:b3bd310ad303529377ffeaa63bb6ba860ac6cc9dfe2ad81456408066e4f3e607` |
| 17 | `instance` | [instIsLinearOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant2b0ea46cd1267ba69cad076bbf1e55adbe09506ccaf5899b1d0b41a67ae0b53b.lean/declarations/instislinearorder--aeaf9d7db90cbc79f029e117.md) | 86 | `declaration-track:aeaf9d7db90cbc79f029e1177373a145c4aca63834c3a28c77eca2e0e84126c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
