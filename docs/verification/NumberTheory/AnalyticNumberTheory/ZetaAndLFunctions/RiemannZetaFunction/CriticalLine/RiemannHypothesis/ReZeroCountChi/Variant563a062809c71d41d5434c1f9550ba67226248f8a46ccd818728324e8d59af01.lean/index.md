# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReZeroCountChi.Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af934bdf53717e621ad3fd60f957561b546fffe6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af934bdf53717e621ad3fd60f957561b546fffe6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.BacklundChi` — import line 14; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.ReZeroCount` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [symL](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean/declarations/syml--7b76e72803440e8f06f0f7ba.md) | 27 | `declaration-track:7b76e72803440e8f06f0f7ba8a2a674f1bea158b4abb37d51ad90dea300044fe` |
| 2 | `lemma` | [symL_analyticAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean/declarations/syml-analyticat--f642c0fdb6ea6eeb99c54683.md) | 30 | `result-track:f642c0fdb6ea6eeb99c54683dcf94d658a1c50971b1693cc39b225c04aa522d5` |
| 3 | `lemma` | [symL_ofReal](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean/declarations/syml-ofreal--61c47eeaada629543490b1c9.md) | 40 | `result-track:61c47eeaada629543490b1c939bf7f02db457fde0507dbbb0b998c7e563b092a` |
| 4 | `theorem` | [reZeroSetL_card_le_uniform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean/declarations/rezerosetl-card-le-uniform--9b1e6bd5bbfced6342ec8438.md) | 59 | `result-track:9b1e6bd5bbfced6342ec8438aed38fcd89528e1fcdaf4c2d1203071da1cd2f4d` |
| 5 | `theorem` | [backlund_horizontalChi_uniform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean/declarations/backlund-horizontalchi-uniform--dbffd92e31114f8d2897af70.md) | 283 | `result-track:dbffd92e31114f8d2897af70ed703520c572651eebb5afed6d3d8ef4675823f1` |
| 6 | `theorem` | [reZeroSetL_card_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean/declarations/rezerosetl-card-le--061ab15fac21ef086e279ef1.md) | 305 | `result-track:061ab15fac21ef086e279ef16e035910e7f07aaf5053b9cdc96df80bddc53c0f` |
| 7 | `theorem` | [backlund_horizontalChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean/declarations/backlund-horizontalchi--5381a7d355d2447266712011.md) | 326 | `result-track:5381a7d355d244726671201152d0138d58ec9e16251ed51a6ebb0c63bee244d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
