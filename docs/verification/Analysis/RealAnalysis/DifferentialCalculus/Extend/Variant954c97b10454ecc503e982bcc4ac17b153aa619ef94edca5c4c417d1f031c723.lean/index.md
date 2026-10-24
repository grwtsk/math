# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Extend.Variant954c97b10454ecc503e982bcc4ac17b153aa619ef94edca5c4c417d1f031c723

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fea0ff4b1f3355ba83a22ce345632276832b9c1a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variant954c97b10454ecc503e982bcc4ac17b153aa619ef94edca5c4c417d1f031c723.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variant954c97b10454ecc503e982bcc4ac17b153aa619ef94edca5c4c417d1f031c723.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variant954c97b10454ecc503e982bcc4ac17b153aa619ef94edca5c4c417d1f031c723.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fea0ff4b1f3355ba83a22ce345632276832b9c1a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variant954c97b10454ecc503e982bcc4ac17b153aa619ef94edca5c4c417d1f031c723.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variant954c97b10454ecc503e982bcc4ac17b153aa619ef94edca5c4c417d1f031c723.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.MeanValue` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [has_fderiv_at_boundary_of_tendsto_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variant954c97b10454ecc503e982bcc4ac17b153aa619ef94edca5c4c417d1f031c723.lean/declarations/has-fderiv-at-boundary-of-tendsto-fderiv--ea1b1c83142f6f0e8289bba1.md) | 45 | `result-track:ea1b1c83142f6f0e8289bba12ef7b0e525be24410eef08856f23af95d14a06c6` |
| 2 | `theorem` | [has_deriv_at_interval_left_endpoint_of_tendsto_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variant954c97b10454ecc503e982bcc4ac17b153aa619ef94edca5c4c417d1f031c723.lean/declarations/has-deriv-at-interval-left-endpoint-of-tendsto-deriv--2fea847880dd7b110b3c7071.md) | 119 | `result-track:2fea847880dd7b110b3c7071e3390ba7aacf8f36aedfae3375a681b73540715e` |
| 3 | `theorem` | [has_deriv_at_interval_right_endpoint_of_tendsto_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variant954c97b10454ecc503e982bcc4ac17b153aa619ef94edca5c4c417d1f031c723.lean/declarations/has-deriv-at-interval-right-endpoint-of-tendsto-deriv--a8ae35fafa181beac9f74b0f.md) | 153 | `result-track:a8ae35fafa181beac9f74b0f64827f494e474c3a4b695ac99aa87de570e496f0` |
| 4 | `theorem` | [hasDerivAt_of_hasDerivAt_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variant954c97b10454ecc503e982bcc4ac17b153aa619ef94edca5c4c417d1f031c723.lean/declarations/hasderivat-of-hasderivat-of-ne--167a01975265684b166f1e48.md) | 188 | `result-track:167a01975265684b166f1e486768e5d186cebbc00f6e398aad6f7b83f726bde5` |
| 5 | `theorem` | [hasDerivAt_of_hasDerivAt_of_ne'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variant954c97b10454ecc503e982bcc4ac17b153aa619ef94edca5c4c417d1f031c723.lean/declarations/hasderivat-of-hasderivat-of-ne--625fdcaaca7d555c88b1571d.md) | 222 | `result-track:625fdcaaca7d555c88b1571d4961dc27751610f90a5726f5e51ea3b3b46abe61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
