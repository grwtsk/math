# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Reexpansion.Variantea8bf935ae24663cbc2fbfd315dce2599515c7e22d66dbe816868b6b41b873ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c106d05fb29d6e3903ac9ec5d8181d5f8fbf804a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Reexpansion/Variantea8bf935ae24663cbc2fbfd315dce2599515c7e22d66dbe816868b6b41b873ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Reexpansion/Variantea8bf935ae24663cbc2fbfd315dce2599515c7e22d66dbe816868b6b41b873ba.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Reexpansion/Variantea8bf935ae24663cbc2fbfd315dce2599515c7e22d66dbe816868b6b41b873ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c106d05fb29d6e3903ac9ec5d8181d5f8fbf804a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Reexpansion/Variantea8bf935ae24663cbc2fbfd315dce2599515c7e22d66dbe816868b6b41b873ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Reexpansion/Variantea8bf935ae24663cbc2fbfd315dce2599515c7e22d66dbe816868b6b41b873ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Transfer.Inputs` — import line 13; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Coeff.ReexpansionGen` — import line 14; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Coeff.LT` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eXi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Reexpansion/Variantea8bf935ae24663cbc2fbfd315dce2599515c7e22d66dbe816868b6b41b873ba.lean/declarations/exi--2739e031ebf484a1693b7bb2.md) | 26 | `declaration-track:2739e031ebf484a1693b7bb248d4e9897e7ebaa949d8d1cc0faddd6aa7ac4ed2` |
| 2 | `theorem` | [xiReexpansion_eXi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Reexpansion/Variantea8bf935ae24663cbc2fbfd315dce2599515c7e22d66dbe816868b6b41b873ba.lean/declarations/xireexpansion-exi--c4aca0ed93de53b17d2e1eab.md) | 29 | `result-track:c4aca0ed93de53b17d2e1eab34d3da3f11d81190ad115503d71c7b034e021337` |
| 3 | `theorem` | [xiReexpansion](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Reexpansion/Variantea8bf935ae24663cbc2fbfd315dce2599515c7e22d66dbe816868b6b41b873ba.lean/declarations/xireexpansion--9f572b1329dbe9041bd79b54.md) | 42 | `result-track:9f572b1329dbe9041bd79b542595d0275218d1af393a7b446dfaa44321fe3691` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
