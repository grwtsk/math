# Verification target: GRWTSK.Analysis.MeasureTheory.OuterMeasure.Variant72e20399f977bd03364c48d0a6bb96e81ed79f60ea8327f250da128d46d1882b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e9a353c9d4a0eb7c84ea9e4383446fa053f9c9a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/OuterMeasure/Variant72e20399f977bd03364c48d0a6bb96e81ed79f60ea8327f250da128d46d1882b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/OuterMeasure/Variant72e20399f977bd03364c48d0a6bb96e81ed79f60ea8327f250da128d46d1882b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/OuterMeasure/Variant72e20399f977bd03364c48d0a6bb96e81ed79f60ea8327f250da128d46d1882b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e9a353c9d4a0eb7c84ea9e4383446fa053f9c9a`.

Source path: `GRWTSK/Analysis/MeasureTheory/OuterMeasure/Variant72e20399f977bd03364c48d0a6bb96e81ed79f60ea8327f250da128d46d1882b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/OuterMeasure/Variant72e20399f977bd03364c48d0a6bb96e81ed79f60ea8327f250da128d46d1882b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [OuterMeasure.toMeasure](../../../../../mathematics/Analysis/MeasureTheory/OuterMeasure/Variant72e20399f977bd03364c48d0a6bb96e81ed79f60ea8327f250da128d46d1882b.lean/declarations/outermeasure-tomeasure--ed5c548777bb81c48c353e04.md) | 40 | `declaration-track:ed5c548777bb81c48c353e049abe4f1ec76b5697e7716bd0a07efb630fa8783b` |
| 2 | `theorem` | [le_toOuterMeasure_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/OuterMeasure/Variant72e20399f977bd03364c48d0a6bb96e81ed79f60ea8327f250da128d46d1882b.lean/declarations/le-tooutermeasure-caratheodory--16878042b71b1225283d235a.md) | 45 | `result-track:16878042b71b1225283d235a0b96dab2254b634620b6e3ba58f78d68831bf043` |
| 3 | `theorem` | [toMeasure_toOuterMeasure](../../../../../mathematics/Analysis/MeasureTheory/OuterMeasure/Variant72e20399f977bd03364c48d0a6bb96e81ed79f60ea8327f250da128d46d1882b.lean/declarations/tomeasure-tooutermeasure--114fbfbebded562cea74e8f9.md) | 49 | `result-track:114fbfbebded562cea74e8f945464a89e13679bc386fcda1c66a59e75430f01b` |
| 4 | `theorem` | [toMeasure_apply](../../../../../mathematics/Analysis/MeasureTheory/OuterMeasure/Variant72e20399f977bd03364c48d0a6bb96e81ed79f60ea8327f250da128d46d1882b.lean/declarations/tomeasure-apply--3306edc3d02b1aafa9444bd5.md) | 54 | `result-track:3306edc3d02b1aafa9444bd5018ab900ebac3f4d4144ec2bade5e6042e7adf89` |
| 5 | `theorem` | [le_toMeasure_apply](../../../../../mathematics/Analysis/MeasureTheory/OuterMeasure/Variant72e20399f977bd03364c48d0a6bb96e81ed79f60ea8327f250da128d46d1882b.lean/declarations/le-tomeasure-apply--983a7c5c986309779e6f7866.md) | 58 | `result-track:983a7c5c986309779e6f786627f7f5469c15c24376d7415aa425e3b6717bd52a` |
| 6 | `theorem` | [toMeasure_apply₀](../../../../../mathematics/Analysis/MeasureTheory/OuterMeasure/Variant72e20399f977bd03364c48d0a6bb96e81ed79f60ea8327f250da128d46d1882b.lean/declarations/tomeasure-apply--505da284b3cfabd23eb1f932.md) | 62 | `result-track:505da284b3cfabd23eb1f9323010c1981a15ac88219d9b36f427a77db4987055` |
| 7 | `theorem` | [toOuterMeasure_toMeasure](../../../../../mathematics/Analysis/MeasureTheory/OuterMeasure/Variant72e20399f977bd03364c48d0a6bb96e81ed79f60ea8327f250da128d46d1882b.lean/declarations/tooutermeasure-tomeasure--2ef8115b779aa4d3fdce7d8a.md) | 72 | `result-track:2ef8115b779aa4d3fdce7d8a4a2135cfeeebbef4fc78b5358f8752729c5cf6c6` |
| 8 | `theorem` | [boundedBy_measure](../../../../../mathematics/Analysis/MeasureTheory/OuterMeasure/Variant72e20399f977bd03364c48d0a6bb96e81ed79f60ea8327f250da128d46d1882b.lean/declarations/boundedby-measure--1aede57e50407bc8fca0764f.md) | 77 | `result-track:1aede57e50407bc8fca0764fd98157e782dd7614c33754f84792df442f944995` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
