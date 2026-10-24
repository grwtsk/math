# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Extend.Variantee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30680e258ef5460b622b5929cd1e6ea9c3d99c2f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30680e258ef5460b622b5929cd1e6ea9c3d99c2f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.MeanValue` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFDerivWithinAt_closure_of_tendsto_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean/declarations/hasfderivwithinat-closure-of-tendsto-fderiv--cd53f8519e36b7ba4053fc8d.md) | 32 | `result-track:cd53f8519e36b7ba4053fc8d92290e4a2af8370040c1cb2f049946f1aebe9cb7` |
| 2 | `theorem` | [hasDerivWithinAt_Ici_of_tendsto_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean/declarations/hasderivwithinat-ici-of-tendsto-deriv--ff698fd5c73bffa8f51ee313.md) | 105 | `result-track:ff698fd5c73bffa8f51ee313505fe1dbadfbf8218492e89d6e32752fbae1b9af` |
| 3 | `theorem` | [hasDerivWithinAt_Iic_of_tendsto_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean/declarations/hasderivwithinat-iic-of-tendsto-deriv--b42c78f7c8e99c3c19cf9e77.md) | 139 | `result-track:b42c78f7c8e99c3c19cf9e772233bdf3a6d36dc505b18e19e3a941e9e394aab3` |
| 4 | `theorem` | [hasDerivAt_of_hasDerivAt_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean/declarations/hasderivat-of-hasderivat-of-ne--3b9ec05b8a08703d975b874d.md) | 174 | `result-track:3b9ec05b8a08703d975b874d662a963d59d304f6b59c3b4aa4dd74869a5c0f5b` |
| 5 | `theorem` | [hasDerivAt_of_hasDerivAt_of_ne'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean/declarations/hasderivat-of-hasderivat-of-ne--bd4c7dde3075d37acfb8f021.md) | 207 | `result-track:bd4c7dde3075d37acfb8f0216ca6db175d689a43abdf43e7ac7b812f557bd8db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
