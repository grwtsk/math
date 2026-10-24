# Verification target: GRWTSK.Analysis.MeasureTheory.RadonNikodym.Variant56fe23c1344ff3c985f62efe09cc87dfbb1f1f1953591f14554671bc013bbb3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e1db4a11a807e306d1ec272e9fe87b23c1b452b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant56fe23c1344ff3c985f62efe09cc87dfbb1f1f1953591f14554671bc013bbb3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variant56fe23c1344ff3c985f62efe09cc87dfbb1f1f1953591f14554671bc013bbb3c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variant56fe23c1344ff3c985f62efe09cc87dfbb1f1f1953591f14554671bc013bbb3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e1db4a11a807e306d1ec272e9fe87b23c1b452b`.

Source path: `GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant56fe23c1344ff3c985f62efe09cc87dfbb1f1f1953591f14554671bc013bbb3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/RadonNikodym/Variant56fe23c1344ff3c985f62efe09cc87dfbb1f1f1953591f14554671bc013bbb3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Decomposition.Lebesgue` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [withDensity_rnDeriv_eq](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variant56fe23c1344ff3c985f62efe09cc87dfbb1f1f1953591f14554671bc013bbb3c.lean/declarations/withdensity-rnderiv-eq--4c8bc8760cb0acc7195f3867.md) | 46 | `result-track:4c8bc8760cb0acc7195f3867d600d77b2cc8c9df432c643664e8a859a327acd6` |
| 2 | `theorem` | [absolutelyContinuous_iff_withDensity_rnDeriv_eq](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variant56fe23c1344ff3c985f62efe09cc87dfbb1f1f1953591f14554671bc013bbb3c.lean/declarations/absolutelycontinuous-iff-withdensity-rnderiv-eq--0ca63ca3307a099643fab510.md) | 65 | `result-track:0ca63ca3307a099643fab510815265e4001aab7afd8e822bc326cf33ab3ae4ff` |
| 3 | `theorem` | [withDensity_rnDeriv_toReal_eq](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variant56fe23c1344ff3c985f62efe09cc87dfbb1f1f1953591f14554671bc013bbb3c.lean/declarations/withdensity-rnderiv-toreal-eq--43a881ee7d6904bb0933180c.md) | 70 | `result-track:43a881ee7d6904bb0933180c8e2f004f97a32053379c0ff7c29d097821da4771` |
| 4 | `theorem` | [withDensityᵥ_rnDeriv_eq](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variant56fe23c1344ff3c985f62efe09cc87dfbb1f1f1953591f14554671bc013bbb3c.lean/declarations/withdensity-rnderiv-eq--2a28a8ee0aef4ead2d9e273a.md) | 87 | `result-track:2a28a8ee0aef4ead2d9e273a7987e2eb35b7a41c0ca6ea93d2bcab7b3242a199` |
| 5 | `theorem` | [absolutelyContinuous_iff_withDensityᵥ_rnDeriv_eq](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variant56fe23c1344ff3c985f62efe09cc87dfbb1f1f1953591f14554671bc013bbb3c.lean/declarations/absolutelycontinuous-iff-withdensity-rnderiv-eq--f5b655f6e77793f1a330df99.md) | 109 | `result-track:f5b655f6e77793f1a330df9993da9306f85b8b8e6a1802c732ac81d02eef183e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
