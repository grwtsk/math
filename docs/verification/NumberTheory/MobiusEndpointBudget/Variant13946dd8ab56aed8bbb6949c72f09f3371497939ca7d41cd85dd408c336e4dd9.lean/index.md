# Verification target: GRWTSK.NumberTheory.MobiusEndpointBudget.Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb1d943ed535ac9ac9a97d67d1bb4eeb2cf8c388",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb1d943ed535ac9ac9a97d67d1bb4eeb2cf8c388`.

Source path: `GRWTSK/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusPrefixTilt` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reciprocal_abs_le_harmonic](../../../../mathematics/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean/declarations/reciprocal-abs-le-harmonic--5edb57c0bde356f916839ae9.md) | 12 | `result-track:5edb57c0bde356f916839ae9470b09fddc04281d85ab3d8623c40fa0c28e82ee` |
| 2 | `theorem` | [reciprocal_abs_le_one_add_log](../../../../mathematics/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean/declarations/reciprocal-abs-le-one-add-log--d96d1d1ba8eaea8599320fd7.md) | 30 | `result-track:d96d1d1ba8eaea8599320fd764a970762713c2333c6f9dd6323e9de4722002d4` |
| 3 | `theorem` | [prefix_abs_le](../../../../mathematics/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean/declarations/prefix-abs-le--566319de8b4674f73868a730.md) | 34 | `result-track:566319de8b4674f73868a730c148abc58ad7278bfdca5be9adb331a7f0c7d248` |
| 4 | `theorem` | [integrand_norm_le](../../../../mathematics/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean/declarations/integrand-norm-le--a61b637db9f77a43cc5b86cd.md) | 42 | `result-track:a61b637db9f77a43cc5b86cd0644157deaa0ce98db5bef2c35b38ffd664dca8b` |
| 5 | `theorem` | [correctedNumerator_half_add_norm_le](../../../../mathematics/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean/declarations/correctednumerator-half-add-norm-le--0922849d1917124fd1307868.md) | 60 | `result-track:0922849d1917124fd13078685b4f5a77a8a80e9a08699854bfbb17f72b5ebe40` |
| 6 | `def` | [dampedCoefficient](../../../../mathematics/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean/declarations/dampedcoefficient--95709076c5a5552ad53983a4.md) | 96 | `declaration-track:95709076c5a5552ad53983a420e4cf1d5cb1212e282a409e0b42da8253b3c4fd` |
| 7 | `theorem` | [dampedCoefficient_abs_sum_le](../../../../mathematics/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean/declarations/dampedcoefficient-abs-sum-le--85c54bf59afb450c88dbe809.md) | 102 | `result-track:85c54bf59afb450c88dbe809413f8620dbdb96fb9580cb249d5395988d5c757b` |
| 8 | `theorem` | [damping_exp](../../../../mathematics/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean/declarations/damping-exp--ab650182fba24214ec6fc230.md) | 142 | `result-track:ab650182fba24214ec6fc23023ce934eb433b7acc033601e0863b4cf6dfcde19` |
| 9 | `theorem` | [dampedCoefficient_sum_eq_correctedNumerator](../../../../mathematics/NumberTheory/MobiusEndpointBudget/Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9.lean/declarations/dampedcoefficient-sum-eq-correctednumerator--2a32930acb819f54277e6f84.md) | 152 | `result-track:2a32930acb819f54277e6f84d45ffbebdbc82c5dc642144855075cb9448082fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
