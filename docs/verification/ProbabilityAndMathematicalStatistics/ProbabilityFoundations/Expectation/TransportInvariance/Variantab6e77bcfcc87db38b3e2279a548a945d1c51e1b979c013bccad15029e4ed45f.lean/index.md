# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.TransportInvariance.Variantab6e77bcfcc87db38b3e2279a548a945d1c51e1b979c013bccad15029e4ed45f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5dff7470cdf9f91539c3d9161a39fcdba6c260ff",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TransportInvariance/Variantab6e77bcfcc87db38b3e2279a548a945d1c51e1b979c013bccad15029e4ed45f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TransportInvariance/Variantab6e77bcfcc87db38b3e2279a548a945d1c51e1b979c013bccad15029e4ed45f.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TransportInvariance/Variantab6e77bcfcc87db38b3e2279a548a945d1c51e1b979c013bccad15029e4ed45f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5dff7470cdf9f91539c3d9161a39fcdba6c260ff`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TransportInvariance/Variantab6e77bcfcc87db38b3e2279a548a945d1c51e1b979c013bccad15029e4ed45f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TransportInvariance/Variantab6e77bcfcc87db38b3e2279a548a945d1c51e1b979c013bccad15029e4ed45f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.KTheoryIndex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RodgersTaoKIndexTransport](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TransportInvariance/Variantab6e77bcfcc87db38b3e2279a548a945d1c51e1b979c013bccad15029e4ed45f.lean/declarations/rodgerstaokindextransport--89d151ce055e0a292a4466ef.md) | 34 | `declaration-track:89d151ce055e0a292a4466ef19a228d38df1ac423022b1918869f1d2d3232183` |
| 2 | `theorem` | [rodgers_tao_transport_is_quasi_isomorphism](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TransportInvariance/Variantab6e77bcfcc87db38b3e2279a548a945d1c51e1b979c013bccad15029e4ed45f.lean/declarations/rodgers-tao-transport-is-quasi-isomorphism--5c22d94317429c9033380a5a.md) | 43 | `result-track:5c22d94317429c9033380a5ac3d55455ea4263502162c2c285e6b426f175100e` |
| 3 | `theorem` | [rodgers_tao_transport_preserves_euler](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TransportInvariance/Variantab6e77bcfcc87db38b3e2279a548a945d1c51e1b979c013bccad15029e4ed45f.lean/declarations/rodgers-tao-transport-preserves-euler--392624ea7894aa3550a1b283.md) | 49 | `result-track:392624ea7894aa3550a1b2832161cadb29f6f89ffd94da0b18229866ea7436ba` |
| 4 | `theorem` | [rodgers_tao_transport_preserves_k_index](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TransportInvariance/Variantab6e77bcfcc87db38b3e2279a548a945d1c51e1b979c013bccad15029e4ed45f.lean/declarations/rodgers-tao-transport-preserves-k-index--3e8a360b19eb9e63615f909f.md) | 56 | `result-track:3e8a360b19eb9e63615f909f2c36d015ebb835e5e0a33002515b16535087a1c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
