# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt01Source.Variantd31b7370b46ed10c6b75cb35ec7e88567f01f75f2465336ff2647a1e5d237acf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5f84279e58ae7ec7cc7f97409b8f3a3ba0d6e34",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantd31b7370b46ed10c6b75cb35ec7e88567f01f75f2465336ff2647a1e5d237acf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantd31b7370b46ed10c6b75cb35ec7e88567f01f75f2465336ff2647a1e5d237acf.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantd31b7370b46ed10c6b75cb35ec7e88567f01f75f2465336ff2647a1e5d237acf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5f84279e58ae7ec7cc7f97409b8f3a3ba0d6e34`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantd31b7370b46ed10c6b75cb35ec7e88567f01f75f2465336ff2647a1e5d237acf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantd31b7370b46ed10c6b75cb35ec7e88567f01f75f2465336ff2647a1e5d237acf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceInvariantBoundaryCoefficient` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gammaTraceFloor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantd31b7370b46ed10c6b75cb35ec7e88567f01f75f2465336ff2647a1e5d237acf.lean/declarations/gammatracefloor--dab58188303a3ebec3377702.md) | 19 | `declaration-track:dab58188303a3ebec33777026d82b0e5f91fdebceacdd45774941129e5a94c30` |
| 2 | `theorem` | [actual_first_prime_correlation_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantd31b7370b46ed10c6b75cb35ec7e88567f01f75f2465336ff2647a1e5d237acf.lean/declarations/actual-first-prime-correlation-lower--3d36b3e71d56db451ffde4fc.md) | 24 | `result-track:3d36b3e71d56db451ffde4fc5d9d5c4d151de1b879caa7d55ba6214535be3867` |
| 3 | `theorem` | [gammaTraceFloor_le_actual](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantd31b7370b46ed10c6b75cb35ec7e88567f01f75f2465336ff2647a1e5d237acf.lean/declarations/gammatracefloor-le-actual--a068d9b9fa0bd27568da6878.md) | 41 | `result-track:a068d9b9fa0bd27568da687862fc25c51d4f3c21f7f123009014d338848901fb` |
| 4 | `theorem` | [gammaTraceFloor_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantd31b7370b46ed10c6b75cb35ec7e88567f01f75f2465336ff2647a1e5d237acf.lean/declarations/gammatracefloor-nonneg--c82622c95f928b3009b3f094.md) | 52 | `result-track:c82622c95f928b3009b3f0949044af34bc486a48f0ace0f98381980d0815fcb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
