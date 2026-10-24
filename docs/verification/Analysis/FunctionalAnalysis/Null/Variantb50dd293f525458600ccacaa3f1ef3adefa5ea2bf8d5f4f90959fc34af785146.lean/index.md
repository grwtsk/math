# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Null.Variantb50dd293f525458600ccacaa3f1ef3adefa5ea2bf8d5f4f90959fc34af785146

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd997ebd2e8cb488a832ad77f2c518ea1cdd7a6d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Null/Variantb50dd293f525458600ccacaa3f1ef3adefa5ea2bf8d5f4f90959fc34af785146.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Null/Variantb50dd293f525458600ccacaa3f1ef3adefa5ea2bf8d5f4f90959fc34af785146.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Null/Variantb50dd293f525458600ccacaa3f1ef3adefa5ea2bf8d5f4f90959fc34af785146.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd997ebd2e8cb488a832ad77f2c518ea1cdd7a6d`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Null/Variantb50dd293f525458600ccacaa3f1ef3adefa5ea2bf8d5f4f90959fc34af785146.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Null/Variantb50dd293f525458600ccacaa3f1ef3adefa5ea2bf8d5f4f90959fc34af785146.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Hilbert.Raw` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rawEnergyZero_orthogonal_all](../../../../../mathematics/Analysis/FunctionalAnalysis/Null/Variantb50dd293f525458600ccacaa3f1ef3adefa5ea2bf8d5f4f90959fc34af785146.lean/declarations/rawenergyzero-orthogonal-all--ba57532fc33311c70695bcdc.md) | 23 | `result-track:ba57532fc33311c70695bcdc90e3379bacce5461adc9bd45f286b32abf3aa35b` |
| 2 | `def` | [kernelNullSubmodule](../../../../../mathematics/Analysis/FunctionalAnalysis/Null/Variantb50dd293f525458600ccacaa3f1ef3adefa5ea2bf8d5f4f90959fc34af785146.lean/declarations/kernelnullsubmodule--79f63c01c33ddca2c1f452fb.md) | 34 | `declaration-track:79f63c01c33ddca2c1f452fb7541060d5bc82b30c0ae63abc6f07ddc538270c9` |
| 3 | `theorem` | [mem_kernelNullSubmodule_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Null/Variantb50dd293f525458600ccacaa3f1ef3adefa5ea2bf8d5f4f90959fc34af785146.lean/declarations/mem-kernelnullsubmodule-iff--d040cce6b9b4093def5111a8.md) | 50 | `result-track:d040cce6b9b4093def5111a808ea7dbf80763b68c1713c35b56946a6dfefbf38` |
| 4 | `theorem` | [null_orthogonal_all](../../../../../mathematics/Analysis/FunctionalAnalysis/Null/Variantb50dd293f525458600ccacaa3f1ef3adefa5ea2bf8d5f4f90959fc34af785146.lean/declarations/null-orthogonal-all--d63429b64a87c7df072b117c.md) | 55 | `result-track:d63429b64a87c7df072b117cdd4d0dd5f2519c22e24b655ba041aa38122485ec` |
| 5 | `theorem` | [inner_self_eq_zero_iff_mem_kernelNullSubmodule](../../../../../mathematics/Analysis/FunctionalAnalysis/Null/Variantb50dd293f525458600ccacaa3f1ef3adefa5ea2bf8d5f4f90959fc34af785146.lean/declarations/inner-self-eq-zero-iff-mem-kernelnullsubmodule--9f247f28457178ad2f73d990.md) | 63 | `result-track:9f247f28457178ad2f73d9900ed4527a089a8e85977a8f3ef28f09bed84a02ce` |
| 6 | `theorem` | [rawInner_eq_of_sub_mem_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Null/Variantb50dd293f525458600ccacaa3f1ef3adefa5ea2bf8d5f4f90959fc34af785146.lean/declarations/rawinner-eq-of-sub-mem-left--5eb92cb1126033d996a86e30.md) | 70 | `result-track:5eb92cb1126033d996a86e30858761640fecaff2aba2f68675ad5746c0a62d77` |
| 7 | `theorem` | [rawInner_eq_of_sub_mem_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Null/Variantb50dd293f525458600ccacaa3f1ef3adefa5ea2bf8d5f4f90959fc34af785146.lean/declarations/rawinner-eq-of-sub-mem-right--8828a1858288cbaf7debc106.md) | 83 | `result-track:8828a1858288cbaf7debc106af0cdbaeb5231ed068631a50c8c0cb6fa24aeb1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
