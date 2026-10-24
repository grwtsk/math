# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Issue9ZeroSummability.Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84d895eda6742994f8f0e3902251e9d1cccb172a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84d895eda6742994f8f0e3902251e9d1cccb172a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTransform` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.ZetaZeros` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shellIndex](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean/declarations/shellindex--0b7b0117a0c8d538f5a47e33.md) | 21 | `declaration-track:0b7b0117a0c8d538f5a47e330f89e6311300df7cda910dfd9df980a5c1c4b98e` |
| 2 | `def` | [ZeroShell](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean/declarations/zeroshell--596f45aca7d82998887f9a82.md) | 22 | `declaration-track:596f45aca7d82998887f9a82cc6eb7868d66be0890d040e8575e846c20ecc01b` |
| 3 | `def` | [ZeroBallPoints](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean/declarations/zeroballpoints--a916d276e21bad266b79a8b4.md) | 23 | `declaration-track:a916d276e21bad266b79a8b44043f4a00e8a720a2e0a274235d8f6e258a96543` |
| 4 | `theorem` | [zeroBallPoints_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean/declarations/zeroballpoints-finite--55b090f054483184b10229cd.md) | 25 | `result-track:55b090f054483184b10229cd25cf1b6999b660c9b2197c7c51a76ed45530969b` |
| 5 | `theorem` | [zeroShell_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean/declarations/zeroshell-finite--c91235ee44f5be73ba324e98.md) | 39 | `result-track:c91235ee44f5be73ba324e984ea7fad1ccc95607a52af25363bb84c9de49dd39` |
| 6 | `def` | [QuarticShellCountObligation](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean/declarations/quarticshellcountobligation--b96a4bbfc274df3e9ba4ccb8.md) | 56 | `declaration-track:b96a4bbfc274df3e9ba4ccb881bd0a4c8dea79158b8e47bad32bfce6b9daaa2f` |
| 7 | `def` | [weight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean/declarations/weight--8957e07d3449ce29680d092d.md) | 59 | `declaration-track:8957e07d3449ce29680d092ddf7a003bf9b5adac0e1649c0837cb6e35836d357` |
| 8 | `theorem` | [weight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean/declarations/weight-nonneg--342fe80ab396efe3dcb832f8.md) | 61 | `result-track:342fe80ab396efe3dcb832f818ce165a77f3ada120a46662f6b2a0f88e7f7b0a` |
| 9 | `theorem` | [shell_weight_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean/declarations/shell-weight-le--9fdd7a0fde7fd5a1206f03b8.md) | 64 | `result-track:9fdd7a0fde7fd5a1206f03b8926c4365122e679f3c56e1e3215e250744089dce` |
| 10 | `theorem` | [shell_sum_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean/declarations/shell-sum-bound--431fe3a3a2998a9a7e819812.md) | 71 | `result-track:431fe3a3a2998a9a7e8198121299661355e71a823df36d804cbf8ea9e95d6a70` |
| 11 | `theorem` | [zero_summability_of_quartic_shell_count](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean/declarations/zero-summability-of-quartic-shell-count--d5a69c82267a8392eb6504c8.md) | 87 | `result-track:d5a69c82267a8392eb6504c8fa5e9db3eb674676414c125ed3109831d981ff7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
