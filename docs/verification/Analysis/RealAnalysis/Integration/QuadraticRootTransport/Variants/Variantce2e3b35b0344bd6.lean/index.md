# Verification target: GRWTSK.Analysis.Integral.QuadraticRootTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4ee4a176e608ec7d8273c98b492b8f4b2dfd055",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Integral/QuadraticRootTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuadraticRootTransport/Variants/Variantce2e3b35b0344bd6.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuadraticRootTransport/Variants/Variantce2e3b35b0344bd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4ee4a176e608ec7d8273c98b492b8f4b2dfd055`.

Source path: `GRWTSK/Analysis/Integral/QuadraticRootTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Integral/QuadraticRootTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [energy](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuadraticRootTransport/Variants/Variantce2e3b35b0344bd6.lean/declarations/energy--46837b1a5f3e5ab6df0774a2.md) | 15 | `declaration-track:46837b1a5f3e5ab6df0774a222b856ba2cf6878ab66cde6a664cb87f18e8caa5` |
| 2 | `def` | [cross](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuadraticRootTransport/Variants/Variantce2e3b35b0344bd6.lean/declarations/cross--e87b109797ff8e40fff42e0a.md) | 17 | `declaration-track:e87b109797ff8e40fff42e0a08b566e7589b49b60901f7712f4f085c0f949f13` |
| 3 | `lemma` | [energy_nonnegative](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuadraticRootTransport/Variants/Variantce2e3b35b0344bd6.lean/declarations/energy-nonnegative--cb90253efff4e127bb21a3df.md) | 19 | `result-track:cb90253efff4e127bb21a3dfdde2c678b8b1a5bd082e21ebcba77788bc7487bf` |
| 4 | `lemma` | [cross_integrable](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuadraticRootTransport/Variants/Variantce2e3b35b0344bd6.lean/declarations/cross-integrable--8003832c8d1169494b4989f6.md) | 23 | `result-track:8003832c8d1169494b4989f6860baf1a4ac1c5881276c41707c166b7f459182e` |
| 5 | `lemma` | [moment_identity](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuadraticRootTransport/Variants/Variantce2e3b35b0344bd6.lean/declarations/moment-identity--c91a22a911197be4c2b40c4a.md) | 32 | `result-track:c91a22a911197be4c2b40c4a6825247e9ea62d2061d01b16c20480af6be76423` |
| 6 | `lemma` | [cross_square_bound](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuadraticRootTransport/Variants/Variantce2e3b35b0344bd6.lean/declarations/cross-square-bound--d2e70f8ac773caf561900b6e.md) | 50 | `result-track:d2e70f8ac773caf561900b6eb7bcca597a6de9a7fd8b61a1a5145f2bd54e483e` |
| 7 | `theorem` | [sqrt_energy_add_le](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuadraticRootTransport/Variants/Variantce2e3b35b0344bd6.lean/declarations/sqrt-energy-add-le--df1d25a6f914c06583b1e091.md) | 73 | `result-track:df1d25a6f914c06583b1e0918ee017c21bb5caaff1881b435c9d62630832c8e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
