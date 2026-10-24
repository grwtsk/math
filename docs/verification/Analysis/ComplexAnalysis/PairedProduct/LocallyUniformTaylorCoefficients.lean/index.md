# Verification target: GRWTSK.Analysis.ComplexAnalysis.PairedProduct.LocallyUniformTaylorCoefficients

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adedceda2efd5be2236f5728aca912a61da3ab93",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/PairedProduct/LocallyUniformTaylorCoefficients.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/PairedProduct/LocallyUniformTaylorCoefficients.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/PairedProduct/LocallyUniformTaylorCoefficients.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adedceda2efd5be2236f5728aca912a61da3ab93`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/PairedProduct/LocallyUniformTaylorCoefficients.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/PairedProduct/LocallyUniformTaylorCoefficients.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Meromorphic.Order` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 33; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendstoLocallyUniformlyOn_iterate_deriv](../../../../../mathematics/Analysis/ComplexAnalysis/PairedProduct/LocallyUniformTaylorCoefficients.lean/declarations/tendstolocallyuniformlyon-iterate-deriv--b7eaac681cc57cc7dcf2cb36.md) | 57 | `result-track:b7eaac681cc57cc7dcf2cb36dce716ab19a11da340b7c51fa1bddf956a8d92e1` |
| 2 | `theorem` | [tendsto_iteratedDeriv_zero_of_locallyUniform](../../../../../mathematics/Analysis/ComplexAnalysis/PairedProduct/LocallyUniformTaylorCoefficients.lean/declarations/tendsto-iteratedderiv-zero-of-locallyuniform--598d6295127c47f24f8a40fc.md) | 73 | `result-track:598d6295127c47f24f8a40fc267e20abb312c9b9dc274c27274e0073ef4a50d1` |
| 3 | `theorem` | [tendsto_taylorCoefficient_zero_of_locallyUniform](../../../../../mathematics/Analysis/ComplexAnalysis/PairedProduct/LocallyUniformTaylorCoefficients.lean/declarations/tendsto-taylorcoefficient-zero-of-locallyuniform--51f4ce80130e2f8b98c9044d.md) | 86 | `result-track:51f4ce80130e2f8b98c9044de5ccc68ca811d28aeec69210b169543c4943af4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
