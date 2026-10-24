# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Pi.Variant50ca0920e02c2cf59a40aea2351ff63e7e5fd70c918e04f28e7bf00be1077d3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea735b8e03a98921bd33cbdadf5f7f67bb609a2e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant50ca0920e02c2cf59a40aea2351ff63e7e5fd70c918e04f28e7bf00be1077d3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant50ca0920e02c2cf59a40aea2351ff63e7e5fd70c918e04f28e7bf00be1077d3f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant50ca0920e02c2cf59a40aea2351ff63e7e5fd70c918e04f28e7bf00be1077d3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea735b8e03a98921bd33cbdadf5f7f67bb609a2e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant50ca0920e02c2cf59a40aea2351ff63e7e5fd70c918e04f28e7bf00be1077d3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant50ca0920e02c2cf59a40aea2351ff63e7e5fd70c918e04f28e7bf00be1077d3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_update](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant50ca0920e02c2cf59a40aea2351ff63e7e5fd70c918e04f28e7bf00be1077d3f.lean/declarations/hasderivat-update--72f82d83c778e2b971a3703c.md) | 15 | `result-track:72f82d83c778e2b971a3703cb5ffbea6b566ac15a7505f6f824dbd2332fe59cf` |
| 2 | `theorem` | [hasDerivAt_single](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant50ca0920e02c2cf59a40aea2351ff63e7e5fd70c918e04f28e7bf00be1077d3f.lean/declarations/hasderivat-single--df064f5a8efc60392a4352df.md) | 24 | `result-track:df064f5a8efc60392a4352dfd2064a20076116c20bfd779ab732be2dc6a53293` |
| 3 | `theorem` | [deriv_update](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant50ca0920e02c2cf59a40aea2351ff63e7e5fd70c918e04f28e7bf00be1077d3f.lean/declarations/deriv-update--195a61c878efc23073dd65d8.md) | 28 | `result-track:195a61c878efc23073dd65d810bf9d157421700d35bd01428d68e858aa5190cf` |
| 4 | `theorem` | [deriv_single](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant50ca0920e02c2cf59a40aea2351ff63e7e5fd70c918e04f28e7bf00be1077d3f.lean/declarations/deriv-single--84bbefa2f408b73fb0ba1ee0.md) | 32 | `result-track:84bbefa2f408b73fb0ba1ee038d4f86e8efdf6f479bf639dbc27714e1e6118b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
