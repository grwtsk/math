# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerNonnegative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90fd4d72fce396f0c46b4ecb84a046233869a42e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerNonnegative.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerNonnegative.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerNonnegative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90fd4d72fce396f0c46b4ecb84a046233869a42e`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerNonnegative.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerNonnegative.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerNormalization`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerNormalization.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [symmetricTriangularKernel_eq_normalized_goldbachFejer](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerNonnegative.lean/declarations/symmetrictriangularkernel-eq-normalized-goldbachfejer--08a7e7b2d65ffd8c1634d08c.md) | 13 | `result-track:08a7e7b2d65ffd8c1634d08c063b9a7a6e99b1b073d08dc197eb7001cfc1525e` |
| 2 | `theorem` | [symmetricTriangularKernel_re_nonnegative](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerNonnegative.lean/declarations/symmetrictriangularkernel-re-nonnegative--2a915b6e71092bd35560a9e7.md) | 22 | `result-track:2a915b6e71092bd35560a9e7e00fefcbb4c54fdd488ceef75618da4a60e116c6` |
| 3 | `theorem` | [signedSampledTriangularKernelAtPeriod_nonnegative](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerNonnegative.lean/declarations/signedsampledtriangularkernelatperiod-nonnegative--7fda6ffdcda06a4f208c3fa6.md) | 33 | `result-track:7fda6ffdcda06a4f208c3fa63e244caa7686a7d0c216f9293da4070b2da1ef82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
