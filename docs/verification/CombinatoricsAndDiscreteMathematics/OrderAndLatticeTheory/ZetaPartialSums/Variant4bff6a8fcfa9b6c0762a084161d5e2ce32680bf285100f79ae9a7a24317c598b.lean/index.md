# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ZetaPartialSums.Variant4bff6a8fcfa9b6c0762a084161d5e2ce32680bf285100f79ae9a7a24317c598b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "454ea44940cbfcae482ece2bbea4c0eb0a1e771d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant4bff6a8fcfa9b6c0762a084161d5e2ce32680bf285100f79ae9a7a24317c598b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant4bff6a8fcfa9b6c0762a084161d5e2ce32680bf285100f79ae9a7a24317c598b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant4bff6a8fcfa9b6c0762a084161d5e2ce32680bf285100f79ae9a7a24317c598b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `454ea44940cbfcae482ece2bbea4c0eb0a1e771d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant4bff6a8fcfa9b6c0762a084161d5e2ce32680bf285100f79ae9a7a24317c598b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant4bff6a8fcfa9b6c0762a084161d5e2ce32680bf285100f79ae9a7a24317c598b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.ZetaRealHalfPlane` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaPartialReal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant4bff6a8fcfa9b6c0762a084161d5e2ce32680bf285100f79ae9a7a24317c598b.lean/declarations/zetapartialreal--355349c94111ed6308965c70.md) | 24 | `declaration-track:355349c94111ed6308965c7026b25ddf63a581f36109249b86746b944422c831` |
| 2 | `theorem` | [zetaPartialReal_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant4bff6a8fcfa9b6c0762a084161d5e2ce32680bf285100f79ae9a7a24317c598b.lean/declarations/zetapartialreal-nonneg--5275f7a942acf63f226332d6.md) | 29 | `result-track:5275f7a942acf63f226332d681377084db1c76f9e6885f0b753b4bc00560943b` |
| 3 | `theorem` | [zetaPartialReal_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant4bff6a8fcfa9b6c0762a084161d5e2ce32680bf285100f79ae9a7a24317c598b.lean/declarations/zetapartialreal-mono--1894ef2e88c56c2f9077c80f.md) | 36 | `result-track:1894ef2e88c56c2f9077c80f650263b4233d9fbf88eaa627459aab655b350b6a` |
| 4 | `theorem` | [zetaPartialReal_eq_range_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant4bff6a8fcfa9b6c0762a084161d5e2ce32680bf285100f79ae9a7a24317c598b.lean/declarations/zetapartialreal-eq-range-sum--3de04fa7fc9ed00706308182.md) | 48 | `result-track:3de04fa7fc9ed00706308182d29fc224ddab5a293d07e6454718181a77d32478` |
| 5 | `theorem` | [tendsto_zetaPartialReal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant4bff6a8fcfa9b6c0762a084161d5e2ce32680bf285100f79ae9a7a24317c598b.lean/declarations/tendsto-zetapartialreal--940d5460399701bb2115b574.md) | 72 | `result-track:940d5460399701bb2115b57491e615211510d070e4ee479ae32b5f2ac05e52f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
