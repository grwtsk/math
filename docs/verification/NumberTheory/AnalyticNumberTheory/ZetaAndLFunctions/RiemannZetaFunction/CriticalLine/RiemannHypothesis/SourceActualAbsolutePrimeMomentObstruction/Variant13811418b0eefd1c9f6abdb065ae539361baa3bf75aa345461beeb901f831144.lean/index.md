# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualAbsolutePrimeMomentObstruction.Variant13811418b0eefd1c9f6abdb065ae539361baa3bf75aa345461beeb901f831144

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9b3a0ff1574dde26035414543452e0c78450b3f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentObstruction/Variant13811418b0eefd1c9f6abdb065ae539361baa3bf75aa345461beeb901f831144.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentObstruction/Variant13811418b0eefd1c9f6abdb065ae539361baa3bf75aa345461beeb901f831144.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentObstruction/Variant13811418b0eefd1c9f6abdb065ae539361baa3bf75aa345461beeb901f831144.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9b3a0ff1574dde26035414543452e0c78450b3f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentObstruction/Variant13811418b0eefd1c9f6abdb065ae539361baa3bf75aa345461beeb901f831144.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentObstruction/Variant13811418b0eefd1c9f6abdb065ae539361baa3bf75aa345461beeb901f831144.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualEdgeComplementCancellation` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualClosedAbsolutePrimeMoment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentObstruction/Variant13811418b0eefd1c9f6abdb065ae539361baa3bf75aa345461beeb901f831144.lean/declarations/actualclosedabsoluteprimemoment--0eada985fcbab53ac000be8d.md) | 19 | `declaration-track:0eada985fcbab53ac000be8daf541213afa9249e0498b8c79c00be569c1bdf29` |
| 2 | `theorem` | [complement_le_absoluteMoment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentObstruction/Variant13811418b0eefd1c9f6abdb065ae539361baa3bf75aa345461beeb901f831144.lean/declarations/complement-le-absolutemoment--5e94dd6bdacd10ea5ac8af1e.md) | 22 | `result-track:5e94dd6bdacd10ea5ac8af1e0b24ed004130d4e2a44ccf647db2a342acde31be` |
| 3 | `theorem` | [actualClosedAbsolutePrimeMoment_eventually_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentObstruction/Variant13811418b0eefd1c9f6abdb065ae539361baa3bf75aa345461beeb901f831144.lean/declarations/actualclosedabsoluteprimemoment-eventually-lower--41822adc3b3c5a7f26fbcc4e.md) | 34 | `result-track:41822adc3b3c5a7f26fbcc4e3e836456efc1e587f8f6a257d911507f23bf85c6` |
| 4 | `theorem` | [actualClosedAbsolutePrimeMoment_tendsto_atTop](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentObstruction/Variant13811418b0eefd1c9f6abdb065ae539361baa3bf75aa345461beeb901f831144.lean/declarations/actualclosedabsoluteprimemoment-tendsto-attop--bc566e9aafd0ebbe67bd0518.md) | 42 | `result-track:bc566e9aafd0ebbe67bd0518215e510c5aead7d9c7b15ac969f104cd304bbe25` |
| 5 | `theorem` | [actualClosedAbsolutePrimeMoment_no_constant_tail_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentObstruction/Variant13811418b0eefd1c9f6abdb065ae539361baa3bf75aa345461beeb901f831144.lean/declarations/actualclosedabsoluteprimemoment-no-constant-tail-bound--49e6a504910e8b4c12b3a990.md) | 47 | `result-track:49e6a504910e8b4c12b3a990df1a266701945650694b2ce69911d5e4e4742dd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
