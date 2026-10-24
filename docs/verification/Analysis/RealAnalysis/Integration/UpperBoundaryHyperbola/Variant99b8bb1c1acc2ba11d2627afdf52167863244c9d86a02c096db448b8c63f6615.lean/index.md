# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.UpperBoundaryHyperbola.Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9828b34de7f2f3b8c0121a9a50a1c208474ff83d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9828b34de7f2f3b8c0121a9a50a1c208474ff83d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryJoint` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [upperSmallIndices](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/uppersmallindices--4f4fe160b14598794ceb770f.md) | 12 | `declaration-track:4f4fe160b14598794ceb770f43ae728aa4eaa7135ded18354a48796a279b13e3` |
| 2 | `def` | [upperSmallSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/uppersmallsum--dc83e4664348b471891afbe3.md) | 16 | `declaration-track:dc83e4664348b471891afbe36138a1f6c541b82973037249fe93b74433522513` |
| 3 | `def` | [upperHyperbola](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/upperhyperbola--2da586d1871a4e7db6b7476d.md) | 20 | `declaration-track:2da586d1871a4e7db6b7476df4648f89b3b037b538e5d326be8c8c5df81e8359` |
| 4 | `theorem` | [mem_upperSmallIndices_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/mem-uppersmallindices-iff--657fbb736345dbe573bd74da.md) | 25 | `result-track:657fbb736345dbe573bd74da54fce8a909c47f463293595162f5c0025206b865` |
| 5 | `theorem` | [upperSmallIndices_eq_sqrt_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/uppersmallindices-eq-sqrt-cutoff--939fd777550ede4fd67770f0.md) | 31 | `result-track:939fd777550ede4fd67770f0f68b5f6041b5d49b9f216459656bd49b6b10fe0d` |
| 6 | `theorem` | [hyperbola_pair](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/hyperbola-pair--471f478d19b5ad62c94791c8.md) | 38 | `result-track:471f478d19b5ad62c94791c8f3171a6298ab1e102d985d0804685881a7d4a7a2` |
| 7 | `theorem` | [finite_hyperbola](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/finite-hyperbola--b031a52da0a35071b659d856.md) | 55 | `result-track:b031a52da0a35071b659d8569d65715cfa73481ba5138dcfb436034988f0798c` |
| 8 | `theorem` | [upperProductSummatory_eq_hyperbola](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/upperproductsummatory-eq-hyperbola--44ee6d7a5179de38bc296e4d.md) | 112 | `result-track:44ee6d7a5179de38bc296e4d4ebaba94f8ba6b8f2c6d94b525f87400eb4821b7` |
| 9 | `theorem` | [upperSmallSum_square_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/uppersmallsum-square-nonneg--85ab1beea89b2b52db5389f9.md) | 119 | `result-track:85ab1beea89b2b52db5389f9aa3ad2d9da24588e3034126281469d7a4cf1e8fc` |
| 10 | `theorem` | [upperRowIndices_eq_div_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/upperrowindices-eq-div-cutoff--b50167e2a1f61d64f1a6706b.md) | 123 | `result-track:b50167e2a1f61d64f1a6706b64b197713c7f16e31ce3811f545812c7bca941cc` |
| 11 | `theorem` | [upperHyperbola_eq_floor_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/upperhyperbola-eq-floor-sum--7e0dd13720f24d154f84b1cc.md) | 135 | `result-track:7e0dd13720f24d154f84b1ccb2cd7f100c81b59770967e7da3f6a50976176c10` |
| 12 | `theorem` | [upperSmallSum_eq_floor_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/uppersmallsum-eq-floor-sum--fd293c67943d3be4f33cc853.md) | 148 | `result-track:fd293c67943d3be4f33cc853f4a56d4ff6a5976ef8e03ab40dee6a9ecc0f30df` |
| 13 | `theorem` | [upperProductSummatory_eq_floor_hyperbola](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/upperproductsummatory-eq-floor-hyperbola--4fd8e59b752a7d1c89591c48.md) | 154 | `result-track:4fd8e59b752a7d1c89591c48a3d638e6daa480887fc87cf9ee7b383a807dd1c2` |
| 14 | `theorem` | [upperSmallSum_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/uppersmallsum-measurable--7d44d11db20ad2f9b785abb1.md) | 166 | `result-track:7d44d11db20ad2f9b785abb157d909f3e995c135426fec226ce8ce8182af3cb2` |
| 15 | `theorem` | [upperSmallSum_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/uppersmallsum-abs-le--916579d2b161f07a16d6b5b3.md) | 174 | `result-track:916579d2b161f07a16d6b5b3c386aab748a1de63b031962e9faca14f13b0899e` |
| 16 | `theorem` | [upperSmallSum_square_mul_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/uppersmallsum-square-mul-integrableon--bbdc50a5a2e73013ef842b03.md) | 185 | `result-track:bbdc50a5a2e73013ef842b034304418a5f1dd981cee9aed858f147541a2136b8` |
| 17 | `theorem` | [upperHyperbola_mul_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/upperhyperbola-mul-integrableon--a8ca6ed81f3c1460778ba59b.md) | 200 | `result-track:a8ca6ed81f3c1460778ba59b4893af6485dc6b97f8ca32f6ea871bcc8648e9c6` |
| 18 | `theorem` | [upperProduct_integral_eq_hyperbola](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/upperproduct-integral-eq-hyperbola--52becc01a526574918536c0f.md) | 216 | `result-track:52becc01a526574918536c0fe58c2d9f4f74bae7d96b0027b169cc45c86a346a` |
| 19 | `theorem` | [source_hyperbola_derivative_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/source-hyperbola-derivative-integrableon--d7219d8cead566c530c718af.md) | 239 | `result-track:d7219d8cead566c530c718af5d4a9b4d3462233d0cf191c8203e3c88052157e8` |
| 20 | `theorem` | [source_square_derivative_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/source-square-derivative-integrableon--aa780e21ba687abac4864f5b.md) | 248 | `result-track:aa780e21ba687abac4864f5baf0a75b2b67ad72b0f1d0e80d35e64d206f84643` |
| 21 | `theorem` | [sourceQuadraticValue_eq_hyperbola_integrals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/declarations/sourcequadraticvalue-eq-hyperbola-integrals--8793d8aa30eef5b2df10511f.md) | 257 | `result-track:8793d8aa30eef5b2df10511f89bdad2e014df23e0eb92347ecff8e711229f753` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
