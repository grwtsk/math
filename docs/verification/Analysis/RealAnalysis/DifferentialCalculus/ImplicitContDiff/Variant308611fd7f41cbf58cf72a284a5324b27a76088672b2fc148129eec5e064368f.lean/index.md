# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ImplicitContDiff.Variant308611fd7f41cbf58cf72a284a5324b27a76088672b2fc148129eec5e064368f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74332e2d31d4a6543bb76f65e97b1bf82670ebd8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant308611fd7f41cbf58cf72a284a5324b27a76088672b2fc148129eec5e064368f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant308611fd7f41cbf58cf72a284a5324b27a76088672b2fc148129eec5e064368f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant308611fd7f41cbf58cf72a284a5324b27a76088672b2fc148129eec5e064368f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74332e2d31d4a6543bb76f65e97b1bf82670ebd8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant308611fd7f41cbf58cf72a284a5324b27a76088672b2fc148129eec5e064368f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant308611fd7f41cbf58cf72a284a5324b27a76088672b2fc148129eec5e064368f.lean.json)

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
| 1 | `theorem` | [contDiffAt_implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant308611fd7f41cbf58cf72a284a5324b27a76088672b2fc148129eec5e064368f.lean/declarations/contdiffat-implicitfunction--453196a20f1103db6f18dacb.md) | 41 | `result-track:453196a20f1103db6f18dacb12c4dbe1d1bb66c75ee83089ff9f9d996f0726a1` |
| 2 | `def` | [implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant308611fd7f41cbf58cf72a284a5324b27a76088672b2fc148129eec5e064368f.lean/declarations/implicitfunction--ed499e78582f68526f1f24cd.md) | 55 | `declaration-track:ed499e78582f68526f1f24cd29b279d3fda8b7e547e6b79048da685ba1674b6e` |
| 3 | `theorem` | [implicitFunction_def](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant308611fd7f41cbf58cf72a284a5324b27a76088672b2fc148129eec5e064368f.lean/declarations/implicitfunction-def--5487c26efd298deb1113f7f8.md) | 60 | `result-track:5487c26efd298deb1113f7f8a45f445d53d7c1630b07b8efcbd6327109bd73ea` |
| 4 | `theorem` | [implicitFunction_apply_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant308611fd7f41cbf58cf72a284a5324b27a76088672b2fc148129eec5e064368f.lean/declarations/implicitfunction-apply-self--b096fcf5a3a98901f553cfc8.md) | 66 | `result-track:b096fcf5a3a98901f553cfc891a6fb8c9891129b7a85c5783ff4b87f3bd4f63a` |
| 5 | `theorem` | [eventually_apply_implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant308611fd7f41cbf58cf72a284a5324b27a76088672b2fc148129eec5e064368f.lean/declarations/eventually-apply-implicitfunction--39c744ac586a3950226010ec.md) | 72 | `result-track:39c744ac586a3950226010ece48a0748f7add1bac5b6e8ea0ee71188e9a11148` |
| 6 | `theorem` | [eventually_apply_eq_iff_implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant308611fd7f41cbf58cf72a284a5324b27a76088672b2fc148129eec5e064368f.lean/declarations/eventually-apply-eq-iff-implicitfunction--b6507a12360d8ee68aec5437.md) | 77 | `result-track:b6507a12360d8ee68aec54377d8ec602f1e3f6e52ae9508311bce6b255ce4ae9` |
| 7 | `theorem` | [hasStrictFDerivAt_implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant308611fd7f41cbf58cf72a284a5324b27a76088672b2fc148129eec5e064368f.lean/declarations/hasstrictfderivat-implicitfunction--e5e51f5c09aa2528b9623148.md) | 82 | `result-track:e5e51f5c09aa2528b9623148358f05f4f1baa2a620f6d8a73dd6907723659b70` |
| 8 | `theorem` | [contDiffAt_implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant308611fd7f41cbf58cf72a284a5324b27a76088672b2fc148129eec5e064368f.lean/declarations/contdiffat-implicitfunction--160eaa1ec2785584f2371778.md) | 90 | `result-track:160eaa1ec2785584f2371778c469e84abb3428ef4007e1e0a360684cc6689545` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
