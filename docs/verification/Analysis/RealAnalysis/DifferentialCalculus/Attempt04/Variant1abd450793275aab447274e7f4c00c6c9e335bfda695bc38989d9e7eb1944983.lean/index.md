# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt04.Variant1abd450793275aab447274e7f4c00c6c9e335bfda695bc38989d9e7eb1944983

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6bf9a13da55f8ee99a115c223af0271ea554361",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant1abd450793275aab447274e7f4c00c6c9e335bfda695bc38989d9e7eb1944983.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant1abd450793275aab447274e7f4c00c6c9e335bfda695bc38989d9e7eb1944983.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant1abd450793275aab447274e7f4c00c6c9e335bfda695bc38989d9e7eb1944983.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6bf9a13da55f8ee99a115c223af0271ea554361`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant1abd450793275aab447274e7f4c00c6c9e335bfda695bc38989d9e7eb1944983.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant1abd450793275aab447274e7f4c00c6c9e335bfda695bc38989d9e7eb1944983.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCellMoment` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant1abd450793275aab447274e7f4c00c6c9e335bfda695bc38989d9e7eb1944983.lean/declarations/cellkernel--7fb016324fad050242eba35f.md) | 13 | `declaration-track:7fb016324fad050242eba35ff9690ca2cfe834c78c99d90689ce1d4685435750` |
| 2 | `def` | [cellDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant1abd450793275aab447274e7f4c00c6c9e335bfda695bc38989d9e7eb1944983.lean/declarations/cellderivative--8113cb2b37c7ffdc4542fafa.md) | 14 | `declaration-track:8113cb2b37c7ffdc4542fafa1c3f9dadae7898da6f77574a0da13ffe1f7475d0` |
| 3 | `def` | [derivativeMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant1abd450793275aab447274e7f4c00c6c9e335bfda695bc38989d9e7eb1944983.lean/declarations/derivativemajorant--44a842f913f2871c07084f61.md) | 15 | `declaration-track:44a842f913f2871c07084f611d6f4b05b6acb598cdf00d300ba14c789d45c0f3` |
| 4 | `theorem` | [cellKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant1abd450793275aab447274e7f4c00c6c9e335bfda695bc38989d9e7eb1944983.lean/declarations/cellkernel-integrable--5d779960003a680371af4440.md) | 17 | `result-track:5d779960003a680371af44407fdc4b565f1df9d90289bbe6defafaea40769a6a` |
| 5 | `theorem` | [cellDerivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant1abd450793275aab447274e7f4c00c6c9e335bfda695bc38989d9e7eb1944983.lean/declarations/cellderivative-integrable--43b4acfb4869602bee0c2be9.md) | 27 | `result-track:43b4acfb4869602bee0c2be949730fe286422453a2cbd365cdc11aad9199dc44` |
| 6 | `theorem` | [cellKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant1abd450793275aab447274e7f4c00c6c9e335bfda695bc38989d9e7eb1944983.lean/declarations/cellkernel-hasderivat--63499cfa08d4becd9fe94562.md) | 38 | `result-track:63499cfa08d4becd9fe945625308720c013e9f0da0bfd00f674ef59f6d75e43a` |
| 7 | `theorem` | [cellDerivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant1abd450793275aab447274e7f4c00c6c9e335bfda695bc38989d9e7eb1944983.lean/declarations/cellderivative-bound--c7fe35b2b9036b1c1575c394.md) | 53 | `result-track:c7fe35b2b9036b1c1575c394ad0a179c086a01f386ef3d7e074746cfe80c0bb1` |
| 8 | `theorem` | [term_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant1abd450793275aab447274e7f4c00c6c9e335bfda695bc38989d9e7eb1944983.lean/declarations/term-hasderivat--447fa12987f3f7122ff804e3.md) | 73 | `result-track:447fa12987f3f7122ff804e37f22e8759c977550ca6decd51e374dae9a8d5650` |
| 9 | `theorem` | [term_hasDerivAt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant1abd450793275aab447274e7f4c00c6c9e335bfda695bc38989d9e7eb1944983.lean/declarations/term-hasderivat-one--f195fdea5f8039a623d920bc.md) | 98 | `result-track:f195fdea5f8039a623d920bcbd952679bcd6ad6a3c84de30beead5f916c88bf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
