# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport.Varianta5ce75b02f9a0775056856d089f35e8cb87e964d868bf0a5126c5f176749972d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2537f2e17289328377ee6642115b7147c22ccea",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Varianta5ce75b02f9a0775056856d089f35e8cb87e964d868bf0a5126c5f176749972d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Varianta5ce75b02f9a0775056856d089f35e8cb87e964d868bf0a5126c5f176749972d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Varianta5ce75b02f9a0775056856d089f35e8cb87e964d868bf0a5126c5f176749972d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2537f2e17289328377ee6642115b7147c22ccea`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Varianta5ce75b02f9a0775056856d089f35e8cb87e964d868bf0a5126c5f176749972d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Varianta5ce75b02f9a0775056856d089f35e8cb87e964d868bf0a5126c5f176749972d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceFactorialMellinCancellation` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [scaled_factorial_density](../../../../../../mathematics/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Varianta5ce75b02f9a0775056856d089f35e8cb87e964d868bf0a5126c5f176749972d.lean/declarations/scaled-factorial-density--45bbc1bbcba70c4f065827cc.md) | 21 | `result-track:45bbc1bbcba70c4f065827ccd09511b812ca792068668881f10e1408a9887137` |
| 2 | `theorem` | [scaledFactorialMellin_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Varianta5ce75b02f9a0775056856d089f35e8cb87e964d868bf0a5126c5f176749972d.lean/declarations/scaledfactorialmellin-integrable--71019ab66d9c7b14c0f3ba9f.md) | 34 | `result-track:71019ab66d9c7b14c0f3ba9ffabb320593d4863d9309171ade3d95a84b3a72d3` |
| 3 | `theorem` | [scaledFactorialMellin_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Varianta5ce75b02f9a0775056856d089f35e8cb87e964d868bf0a5126c5f176749972d.lean/declarations/scaledfactorialmellin-integral--6d29f6f55a020b4210628290.md) | 48 | `result-track:6d29f6f55a020b4210628290022320be102939085670de85f3287ffb0a756194` |
| 4 | `theorem` | [shortFactorialMellin_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Varianta5ce75b02f9a0775056856d089f35e8cb87e964d868bf0a5126c5f176749972d.lean/declarations/shortfactorialmellin-integrable--c5c6fe94cd9fcb26b59804ab.md) | 68 | `result-track:c5c6fe94cd9fcb26b59804ab928d78b3429978aadc6f77df32af96e12fa7444f` |
| 5 | `theorem` | [shortFactorialMellin_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Varianta5ce75b02f9a0775056856d089f35e8cb87e964d868bf0a5126c5f176749972d.lean/declarations/shortfactorialmellin-integral--466f3f8e87ba8507195ef7c8.md) | 81 | `result-track:466f3f8e87ba8507195ef7c8ab38d07621389a55fa58789b5309dbd6672bdee1` |
| 6 | `theorem` | [fullKappa_signed_half_inventory_eq_factorial_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Varianta5ce75b02f9a0775056856d089f35e8cb87e964d868bf0a5126c5f176749972d.lean/declarations/fullkappa-signed-half-inventory-eq-factorial-integral--65cccd22f8ae86b585f86d81.md) | 103 | `result-track:65cccd22f8ae86b585f86d81183affdb16a16af52bbb5f67c5271cd46e3dd302` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
