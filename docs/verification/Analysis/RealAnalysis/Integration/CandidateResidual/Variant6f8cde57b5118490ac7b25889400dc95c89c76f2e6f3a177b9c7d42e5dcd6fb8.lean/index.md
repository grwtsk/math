# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CandidateResidual.Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21630135358a7e81c299af94af1f85514d3c2caa",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateResidual/Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateResidual/Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateResidual/Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21630135358a7e81c299af94af1f85514d3c2caa`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CandidateResidual/Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CandidateResidual/Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CandidateControllerLaplace` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.ActualConvolutionFourier` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.ReferenceFourier` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.AngularL2Triangle` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.ArithmeticErrorIntegrability` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [residual_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateResidual/Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8.lean/declarations/residual-integrable--fb052248b20039d81f37c83a.md) | 21 | `result-track:fb052248b20039d81f37c83a2662ec3b6f09dabdbbf73ede4f05bddef408b723` |
| 2 | `theorem` | [residual_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateResidual/Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8.lean/declarations/residual-fourier--53590002e53a7df8251cb9a3.md) | 34 | `result-track:53590002e53a7df8251cb9a3d1ffc383a13f65caa01dbeeb1013eb4c5c98eb73` |
| 3 | `theorem` | [residual_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateResidual/Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8.lean/declarations/residual-norm-sq--7f7e98f50a64ddd4e8690d4c.md) | 56 | `result-track:7f7e98f50a64ddd4e8690d4c10a2725cea8105b8d4431a7bf680312ca6b28076` |
| 4 | `theorem` | [residual_norm_le_delta_add_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateResidual/Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8.lean/declarations/residual-norm-le-delta-add-error--9f262f8c463d2594b30b3308.md) | 72 | `result-track:9f262f8c463d2594b30b3308ee66409d3d4eaaba107b331939b64583f99c3884` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
