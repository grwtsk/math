# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceAttempt2.Variant06f7a1d3bb4664b3c5f3371661f4cc556336580b56406d2b9e2aaf3fc1642a11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60920b5b6fba20a31e1d2257ce644452cb0820eb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant06f7a1d3bb4664b3c5f3371661f4cc556336580b56406d2b9e2aaf3fc1642a11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant06f7a1d3bb4664b3c5f3371661f4cc556336580b56406d2b9e2aaf3fc1642a11.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant06f7a1d3bb4664b3c5f3371661f4cc556336580b56406d2b9e2aaf3fc1642a11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60920b5b6fba20a31e1d2257ce644452cb0820eb`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant06f7a1d3bb4664b3c5f3371661f4cc556336580b56406d2b9e2aaf3fc1642a11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant06f7a1d3bb4664b3c5f3371661f4cc556336580b56406d2b9e2aaf3fc1642a11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Convolution` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [compact_autocorrelation_deriv_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant06f7a1d3bb4664b3c5f3371661f4cc556336580b56406d2b9e2aaf3fc1642a11.lean/declarations/compact-autocorrelation-deriv-eq-convolution--08dca0c9219e3edc554dfae8.md) | 24 | `result-track:08dca0c9219e3edc554dfae8c451327f27ddba8ed75f943a3174068777e3f50f` |
| 2 | `theorem` | [compact_autocorrelation_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant06f7a1d3bb4664b3c5f3371661f4cc556336580b56406d2b9e2aaf3fc1642a11.lean/declarations/compact-autocorrelation-contdiff-two--c307db9b119a5e8b83fb9071.md) | 41 | `result-track:c307db9b119a5e8b83fb907190c47fe246b571d5089785db4beb5f6bf08579ef` |
| 3 | `theorem` | [compact_autocorrelation_curvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant06f7a1d3bb4664b3c5f3371661f4cc556336580b56406d2b9e2aaf3fc1642a11.lean/declarations/compact-autocorrelation-curvature--bdc592079bd6f54179771991.md) | 65 | `result-track:bdc592079bd6f5417977199190b47aa3226482fa5c391040b542cf1835f5cd2b` |
| 4 | `theorem` | [primitiveCorrelationZero_second_deriv_eq_neg_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant06f7a1d3bb4664b3c5f3371661f4cc556336580b56406d2b9e2aaf3fc1642a11.lean/declarations/primitivecorrelationzero-second-deriv-eq-neg-one--59751be287f5f088ae3ad5dd.md) | 95 | `result-track:59751be287f5f088ae3ad5dd7bf6f057b37b10c9bac3e574423f66a486be9117` |
| 5 | `theorem` | [primitiveCorrelationOne_second_deriv_eq_neg_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant06f7a1d3bb4664b3c5f3371661f4cc556336580b56406d2b9e2aaf3fc1642a11.lean/declarations/primitivecorrelationone-second-deriv-eq-neg-two--5cb27fffe4dfa4c0b2f8927f.md) | 104 | `result-track:5cb27fffe4dfa4c0b2f8927f51c3b27419a66df9b7c950039e3afc4455060da9` |
| 6 | `theorem` | [primitiveCorrelationZero_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant06f7a1d3bb4664b3c5f3371661f4cc556336580b56406d2b9e2aaf3fc1642a11.lean/declarations/primitivecorrelationzero-contdiff-two--f37fea605c6f5e3b89add8af.md) | 113 | `result-track:f37fea605c6f5e3b89add8af13ed746c9ec3568d1bf04ae007fbdff12c95b1db` |
| 7 | `theorem` | [primitiveCorrelationOne_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant06f7a1d3bb4664b3c5f3371661f4cc556336580b56406d2b9e2aaf3fc1642a11.lean/declarations/primitivecorrelationone-contdiff-two--e01a91b9027eebef347f0bea.md) | 120 | `result-track:e01a91b9027eebef347f0bea06a5a3b1c32de7f5339d0a4c83bfbe9a89ae3710` |
| 8 | `theorem` | [primitiveCorrelationZero_contDiff_four](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant06f7a1d3bb4664b3c5f3371661f4cc556336580b56406d2b9e2aaf3fc1642a11.lean/declarations/primitivecorrelationzero-contdiff-four--5363452c529a8eead82d8aab.md) | 126 | `result-track:5363452c529a8eead82d8aab8cf37173130169e6f2d23379b06ff4a1da8ca55a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
