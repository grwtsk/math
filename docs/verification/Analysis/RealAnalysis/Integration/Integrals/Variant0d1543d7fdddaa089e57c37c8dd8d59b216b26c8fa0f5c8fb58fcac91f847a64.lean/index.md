# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integrals.Variant0d1543d7fdddaa089e57c37c8dd8d59b216b26c8fa0f5c8fb58fcac91f847a64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ba49193468025d7023dedd8cf6801a1d49850b1",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variant0d1543d7fdddaa089e57c37c8dd8d59b216b26c8fa0f5c8fb58fcac91f847a64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrals/Variant0d1543d7fdddaa089e57c37c8dd8d59b216b26c8fa0f5c8fb58fcac91f847a64.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrals/Variant0d1543d7fdddaa089e57c37c8dd8d59b216b26c8fa0f5c8fb58fcac91f847a64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ba49193468025d7023dedd8cf6801a1d49850b1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variant0d1543d7fdddaa089e57c37c8dd8d59b216b26c8fa0f5c8fb58fcac91f847a64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integrals/Variant0d1543d7fdddaa089e57c37c8dd8d59b216b26c8fa0f5c8fb58fcac91f847a64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.ProbabilityMassFunction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.ProbabilityMassFunction.Constructions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_eq_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrals/Variant0d1543d7fdddaa089e57c37c8dd8d59b216b26c8fa0f5c8fb58fcac91f847a64.lean/declarations/integral-eq-tsum--4be8fd76afbb896c29ed8a00.md) | 36 | `result-track:4be8fd76afbb896c29ed8a0083d5513fd34d82665819b5211e5a72cfe1ba52b9` |
| 2 | `theorem` | [integral_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrals/Variant0d1543d7fdddaa089e57c37c8dd8d59b216b26c8fa0f5c8fb58fcac91f847a64.lean/declarations/integral-eq-sum--9278e65f340cab322c564711.md) | 51 | `result-track:9278e65f340cab322c5647112fae91a7384dedbb15f3e7638189b9a30e9ab4c0` |
| 3 | `theorem` | [bernoulli_expectation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrals/Variant0d1543d7fdddaa089e57c37c8dd8d59b216b26c8fa0f5c8fb58fcac91f847a64.lean/declarations/bernoulli-expectation--b39b0b6ad471155b26542d4c.md) | 61 | `result-track:b39b0b6ad471155b26542d4c6b68366135d9c9182d5f1b897ba5b3194205edd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
