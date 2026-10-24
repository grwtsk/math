# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReciprocalPrefixDensityAdapter.Variantbf7b3aa92205b24a08f4e4f32ba2f8eb151cd16149f88eb46b0da6d7034d65eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55dc9c2621096200440e5d1420960b133039838f",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalPrefixDensityAdapter/Variantbf7b3aa92205b24a08f4e4f32ba2f8eb151cd16149f88eb46b0da6d7034d65eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalPrefixDensityAdapter/Variantbf7b3aa92205b24a08f4e4f32ba2f8eb151cd16149f88eb46b0da6d7034d65eb.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalPrefixDensityAdapter/Variantbf7b3aa92205b24a08f4e4f32ba2f8eb151cd16149f88eb46b0da6d7034d65eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55dc9c2621096200440e5d1420960b133039838f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalPrefixDensityAdapter/Variantbf7b3aa92205b24a08f4e4f32ba2f8eb151cd16149f88eb46b0da6d7034d65eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalPrefixDensityAdapter/Variantbf7b3aa92205b24a08f4e4f32ba2f8eb151cd16149f88eb46b0da6d7034d65eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefix`](../../../../../../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefix.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityReciprocalPrefix`](../../../../../../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pickupReciprocalPrefix_eq_densityMobiusReciprocalPrefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalPrefixDensityAdapter/Variantbf7b3aa92205b24a08f4e4f32ba2f8eb151cd16149f88eb46b0da6d7034d65eb.lean/declarations/pickupreciprocalprefix-eq-densitymobiusreciprocalprefix--4b32080f02f837061d90dd23.md) | 26 | `result-track:4b32080f02f837061d90dd23db51f550842301b6a8f124eb6160f71c87470b9e` |
| 2 | `theorem` | [pickupReciprocalPrefix_abs_le_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalPrefixDensityAdapter/Variantbf7b3aa92205b24a08f4e4f32ba2f8eb151cd16149f88eb46b0da6d7034d65eb.lean/declarations/pickupreciprocalprefix-abs-le-one--2830b451880bd92ac7cfc978.md) | 35 | `result-track:2830b451880bd92ac7cfc9780ff406ed7d66abf644176f9b37efeb7c95551031` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
