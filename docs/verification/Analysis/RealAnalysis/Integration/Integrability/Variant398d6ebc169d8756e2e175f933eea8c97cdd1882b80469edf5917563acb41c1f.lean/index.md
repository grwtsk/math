# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integrability.Variant398d6ebc169d8756e2e175f933eea8c97cdd1882b80469edf5917563acb41c1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4db1e7061be636db693aacf64bb67db902a268e8",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variant398d6ebc169d8756e2e175f933eea8c97cdd1882b80469edf5917563acb41c1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant398d6ebc169d8756e2e175f933eea8c97cdd1882b80469edf5917563acb41c1f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant398d6ebc169d8756e2e175f933eea8c97cdd1882b80469edf5917563acb41c1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4db1e7061be636db693aacf64bb67db902a268e8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variant398d6ebc169d8756e2e175f933eea8c97cdd1882b80469edf5917563acb41c1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integrability/Variant398d6ebc169d8756e2e175f933eea8c97cdd1882b80469edf5917563acb41c1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.L2Space` — import line 6; external provider; requires a separately pinned dependency.
- `SpectralProof.Core.Weight` — import line 7; external provider; requires a separately pinned dependency.
- `SpectralProof.Core.FourierDecay` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpLog` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KtWeighted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant398d6ebc169d8756e2e175f933eea8c97cdd1882b80469edf5917563acb41c1f.lean/declarations/ktweighted--37c10cd1de3e97c8af1791c7.md) | 29 | `declaration-track:37c10cd1de3e97c8af1791c7d452465bc443b0da5565908dd92e65381ad0118b` |
| 2 | `lemma` | [integrable_KtWeighted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant398d6ebc169d8756e2e175f933eea8c97cdd1882b80469edf5917563acb41c1f.lean/declarations/integrable-ktweighted--9c2b59c54a2fc1624b459088.md) | 36 | `result-track:9c2b59c54a2fc1624b459088d4a18f6192b68a66b7fcd8984f5f26eddcb814f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
