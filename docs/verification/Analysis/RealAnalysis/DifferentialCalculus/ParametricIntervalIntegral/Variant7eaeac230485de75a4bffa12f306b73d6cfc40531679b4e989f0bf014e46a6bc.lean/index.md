# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ParametricIntervalIntegral.Variant7eaeac230485de75a4bffa12f306b73d6cfc40531679b4e989f0bf014e46a6bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "778e967eb411db0886d8fd7c2c1d854a0c9e2bd7",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant7eaeac230485de75a4bffa12f306b73d6cfc40531679b4e989f0bf014e46a6bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant7eaeac230485de75a4bffa12f306b73d6cfc40531679b4e989f0bf014e46a6bc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant7eaeac230485de75a4bffa12f306b73d6cfc40531679b4e989f0bf014e46a6bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `778e967eb411db0886d8fd7c2c1d854a0c9e2bd7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant7eaeac230485de75a4bffa12f306b73d6cfc40531679b4e989f0bf014e46a6bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant7eaeac230485de75a4bffa12f306b73d6cfc40531679b4e989f0bf014e46a6bc.lean.json)

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
| 1 | `theorem` | [hasFDerivAt_integral_of_dominated_loc_of_lip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant7eaeac230485de75a4bffa12f306b73d6cfc40531679b4e989f0bf014e46a6bc.lean/declarations/hasfderivat-integral-of-dominated-loc-of-lip--557505d1d6febc136ad85315.md) | 34 | `result-track:557505d1d6febc136ad8531579ae8a4e65d8b8377b2379fadda46a2bec1de544` |
| 2 | `theorem` | [hasFDerivAt_integral_of_dominated_of_fderiv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant7eaeac230485de75a4bffa12f306b73d6cfc40531679b4e989f0bf014e46a6bc.lean/declarations/hasfderivat-integral-of-dominated-of-fderiv-le--9ee025c75025f45d91099e09.md) | 56 | `result-track:9ee025c75025f45d91099e0932a6571e9d80dde811d32bcec0da969150255b4e` |
| 3 | `theorem` | [hasDerivAt_integral_of_dominated_loc_of_lip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant7eaeac230485de75a4bffa12f306b73d6cfc40531679b4e989f0bf014e46a6bc.lean/declarations/hasderivat-integral-of-dominated-loc-of-lip--9a3147c48249b25fe6446db8.md) | 75 | `result-track:9a3147c48249b25fe6446db87e98f302f68539e12824f43f2da5dbd9237a81ef` |
| 4 | `theorem` | [hasDerivAt_integral_of_dominated_loc_of_deriv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant7eaeac230485de75a4bffa12f306b73d6cfc40531679b4e989f0bf014e46a6bc.lean/declarations/hasderivat-integral-of-dominated-loc-of-deriv-le--de3bafcdce7392429d540c0e.md) | 97 | `result-track:de3bafcdce7392429d540c0ec0ba3b4164ed806c4d1f0aae53e2ad2968f67405` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
