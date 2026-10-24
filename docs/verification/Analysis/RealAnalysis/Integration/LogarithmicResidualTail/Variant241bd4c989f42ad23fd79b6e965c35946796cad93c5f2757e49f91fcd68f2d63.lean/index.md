# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicResidualTail.Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13c0ba8320f9b0f96c99c100ce8986b0af025ae1",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13c0ba8320f9b0f96c99c100ce8986b0af025ae1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidual` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dampedCoefficient_reciprocal_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean/declarations/dampedcoefficient-reciprocal-sum--2d9fc40bfad067b7e7c9b1a8.md) | 15 | `result-track:2d9fc40bfad067b7e7c9b1a873dfcebf08d516b462a4cab52c4a0f8e1feb4e6c` |
| 2 | `theorem` | [arithmeticResidual_eq_below_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean/declarations/arithmeticresidual-eq-below-one--565830057a449e33d25c24d0.md) | 24 | `result-track:565830057a449e33d25c24d0a81d1cd2c8585216fb6b0b64bf69e27071155153` |
| 3 | `theorem` | [arithmeticResidual_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean/declarations/arithmeticresidual-norm-le--9fb28c9a9236ce1092ad74f4.md) | 39 | `result-track:9fb28c9a9236ce1092ad74f41d5d43c414b23894c1d745fe699d26e1aa0a8159` |
| 4 | `theorem` | [logResidual_eq_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean/declarations/logresidual-eq-of-neg--67a884d518424d99a510fa3c.md) | 60 | `result-track:67a884d518424d99a510fa3c4d5b8dfa2606cd860e796f8e4df1c240dca216f1` |
| 5 | `theorem` | [logResidual_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean/declarations/logresidual-norm-le--7109ce3fe25e13ac68977c9b.md) | 70 | `result-track:7109ce3fe25e13ac68977c9baf24f40183a9da764deeeea3d509d36ed3b28fdb` |
| 6 | `theorem` | [logResidual_sq_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean/declarations/logresidual-sq-of-neg--acf38e8f54a0e085539aca65.md) | 78 | `result-track:acf38e8f54a0e085539aca659dd76876c9a1e522cc74abbf392fc8893c31c966` |
| 7 | `theorem` | [logResidual_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean/declarations/logresidual-sq-le--9bcfdb0250ab77db2517a0e1.md) | 89 | `result-track:9bcfdb0250ab77db2517a0e19d6cb4e8a7dd8aa6efbd560c37577c177624cc02` |
| 8 | `theorem` | [logResidual_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean/declarations/logresidual-memlp--9dfaaba653778feac2aed5b0.md) | 100 | `result-track:9dfaaba653778feac2aed5b0474b374fa2ac7a19a66629e87200bcb76fca30fd` |
| 9 | `theorem` | [logResidual_negative_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean/declarations/logresidual-negative-integral--07094d2db7fe496a94c922ec.md) | 122 | `result-track:07094d2db7fe496a94c922ec673dd758db4c2d20c259cbd80820b47909422e45` |
| 10 | `theorem` | [logResidual_positive_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean/declarations/logresidual-positive-integral-le--764beffa58135658f9dd0307.md) | 135 | `result-track:764beffa58135658f9dd0307c896084881cbee9606f75f4d97ed4a9689e3e126` |
| 11 | `theorem` | [indicator_toLp_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean/declarations/indicator-tolp-norm-sq--d4a02ae1d40cb94711f6d06c.md) | 152 | `result-track:d4a02ae1d40cb94711f6d06cf7f344df0b6b5af3de1de211625c2991eb987513` |
| 12 | `theorem` | [logResidual_negative_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean/declarations/logresidual-negative-norm--539c523082976481ad23b114.md) | 161 | `result-track:539c523082976481ad23b114b4883a2b0445679c3ca574967e72931aa2710b33` |
| 13 | `theorem` | [logResidual_positive_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean/declarations/logresidual-positive-norm-le--8e4a9c92c619b26b32a9d406.md) | 170 | `result-track:8e4a9c92c619b26b32a9d40665355dccbb88c22ab7e909aec63185fceb8ae1c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
