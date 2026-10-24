# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CandidateResidual.Variant79cb97eb79123e8f0f22247d56a94323fa9ec47ed14689a3caa740a77a5a74e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db2f0727359b3ff53f55b8c7011427f7a439cb10",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateResidual/Variant79cb97eb79123e8f0f22247d56a94323fa9ec47ed14689a3caa740a77a5a74e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateResidual/Variant79cb97eb79123e8f0f22247d56a94323fa9ec47ed14689a3caa740a77a5a74e7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateResidual/Variant79cb97eb79123e8f0f22247d56a94323fa9ec47ed14689a3caa740a77a5a74e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db2f0727359b3ff53f55b8c7011427f7a439cb10`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CandidateResidual/Variant79cb97eb79123e8f0f22247d56a94323fa9ec47ed14689a3caa740a77a5a74e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CandidateResidual/Variant79cb97eb79123e8f0f22247d56a94323fa9ec47ed14689a3caa740a77a5a74e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CandidateControllerLaplace` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.ActualConvolutionFourier` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.ReferenceFourier` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.AngularL2Triangle` — import line 9; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.ArithmeticErrorIntegrability` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [residual_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateResidual/Variant79cb97eb79123e8f0f22247d56a94323fa9ec47ed14689a3caa740a77a5a74e7.lean/declarations/residual-integrable--4fb79324e7bb18ac0786f5e0.md) | 29 | `result-track:4fb79324e7bb18ac0786f5e0c87cf908621524ee398f9b4693388d19634461e0` |
| 2 | `theorem` | [residual_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateResidual/Variant79cb97eb79123e8f0f22247d56a94323fa9ec47ed14689a3caa740a77a5a74e7.lean/declarations/residual-fourier--d71e5005d26ba59cb595e8f5.md) | 42 | `result-track:d71e5005d26ba59cb595e8f5b68ab76e1c8e6e5342cbcb756b024c6bd790d61f` |
| 3 | `theorem` | [residual_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateResidual/Variant79cb97eb79123e8f0f22247d56a94323fa9ec47ed14689a3caa740a77a5a74e7.lean/declarations/residual-norm-sq--add6f701f223d56d5330e8fe.md) | 64 | `result-track:add6f701f223d56d5330e8feb237212d0fc578ce9fc81bad8768599f5e440603` |
| 4 | `theorem` | [residual_norm_le_delta_add_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateResidual/Variant79cb97eb79123e8f0f22247d56a94323fa9ec47ed14689a3caa740a77a5a74e7.lean/declarations/residual-norm-le-delta-add-error--f21cc4286450c8a5cdd7c3e4.md) | 80 | `result-track:f21cc4286450c8a5cdd7c3e4fd48e48afb84f6a024c9dd0586c8866decb90f5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
