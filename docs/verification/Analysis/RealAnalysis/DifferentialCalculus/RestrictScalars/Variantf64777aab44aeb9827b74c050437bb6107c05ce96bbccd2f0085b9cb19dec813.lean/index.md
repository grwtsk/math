# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RestrictScalars.Variantf64777aab44aeb9827b74c050437bb6107c05ce96bbccd2f0085b9cb19dec813

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39ecfd1e999e710d74fb64f666471196168b5013",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variantf64777aab44aeb9827b74c050437bb6107c05ce96bbccd2f0085b9cb19dec813.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variantf64777aab44aeb9827b74c050437bb6107c05ce96bbccd2f0085b9cb19dec813.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variantf64777aab44aeb9827b74c050437bb6107c05ce96bbccd2f0085b9cb19dec813.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39ecfd1e999e710d74fb64f666471196168b5013`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variantf64777aab44aeb9827b74c050437bb6107c05ce96bbccd2f0085b9cb19dec813.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variantf64777aab44aeb9827b74c050437bb6107c05ce96bbccd2f0085b9cb19dec813.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [fderivWithin_restrictScalars_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variantf64777aab44aeb9827b74c050437bb6107c05ce96bbccd2f0085b9cb19dec813.lean/declarations/fderivwithin-restrictscalars-comp--764504c6c3ea5beffa95a3b7.md) | 41 | `result-track:764504c6c3ea5beffa95a3b77c09ed9a76f91a81320c1aeea02085fe4b400f8b` |
| 2 | `theorem` | [ContDiffWithinAt.restrictScalars_iteratedFDerivWithin_eventuallyEq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variantf64777aab44aeb9827b74c050437bb6107c05ce96bbccd2f0085b9cb19dec813.lean/declarations/contdiffwithinat-restrictscalars-iteratedfderivwithin-eventuallyeq--ecf60a0ddfbb5a49ddbfefcf.md) | 56 | `result-track:ecf60a0ddfbb5a49ddbfefcff11f7b9ae12ce4c2ae1f6413eec15c9ce35a0fe0` |
| 3 | `theorem` | [ContDiffAt.restrictScalars_iteratedFDeriv_eventuallyEq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variantf64777aab44aeb9827b74c050437bb6107c05ce96bbccd2f0085b9cb19dec813.lean/declarations/contdiffat-restrictscalars-iteratedfderiv-eventuallyeq--b55546137b91624e1519a5a7.md) | 90 | `result-track:b55546137b91624e1519a5a70cb5597d7567fac6b401ad4e33634514e97fa8bc` |
| 4 | `theorem` | [ContDiffAt.restrictScalars_iteratedFDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variantf64777aab44aeb9827b74c050437bb6107c05ce96bbccd2f0085b9cb19dec813.lean/declarations/contdiffat-restrictscalars-iteratedfderiv--687e2a64d5bd96f3019d45f2.md) | 101 | `result-track:687e2a64d5bd96f3019d45f22388de776e57fa498b59579e4c30b6e6f3c50914` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
