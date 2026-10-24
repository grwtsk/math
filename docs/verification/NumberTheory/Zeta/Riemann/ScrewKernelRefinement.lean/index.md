# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ScrewKernelRefinement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a635bbbe5b1afa30c7225b36fd283f94c32f9cdb",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a635bbbe5b1afa30c7225b36fd283f94c32f9cdb`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.LinearMap.ReedSolomonRefinement`](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Complex.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Exponential` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.ContinuousLinearMap.PiProd` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SourcePayload](../../../../../mathematics/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/declarations/sourcepayload--3e9d37edcd03372a93f1c749.md) | 39 | `declaration-track:3e9d37edcd03372a93f1c749327cbe252d68784bb810e50d2d85fd4075dbaa22` |
| 2 | `abbrev` | [Symbols](../../../../../mathematics/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/declarations/symbols--defa6ebaa72c4619b3424483.md) | 42 | `declaration-track:defa6ebaa72c4619b34244834a19caf57a7ca6793ba6cec44ad72fafdb463b6a` |
| 3 | `def` | [zeroCoordinate](../../../../../mathematics/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/declarations/zerocoordinate--09a1e63e2f01c77f230f1d26.md) | 45 | `declaration-track:09a1e63e2f01c77f230f1d26308143076032bd7e260ff2367fa25fa997e9bfa9` |
| 4 | `def` | [zeroBinFunction](../../../../../mathematics/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/declarations/zerobinfunction--f3bbd1ae139ada12a49a7856.md) | 52 | `declaration-track:f3bbd1ae139ada12a49a7856c333d8ceb36ff0796667785105a14104a357e3cd` |
| 5 | `def` | [sourcePayload](../../../../../mathematics/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/declarations/sourcepayload--3916c147f234f8ffec8523cf.md) | 59 | `declaration-track:3916c147f234f8ffec8523cf767b9a6a917bc7550bb0bbfd99ebbe002da2a6ae` |
| 6 | `def` | [zeroBinSourcePayload](../../../../../mathematics/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/declarations/zerobinsourcepayload--1fe19351943ef4725e863815.md) | 63 | `declaration-track:1fe19351943ef4725e86381520f1765b0003e03f031ae276a236f7d8ba17b40d` |
| 7 | `theorem` | [sourcePayload_apply_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/declarations/sourcepayload-apply-zero--31dd987c3c363423e5d93ae6.md) | 68 | `result-track:31dd987c3c363423e5d93ae606d12e6c31409f0039119e81b289e16f6ab3d0e4` |
| 8 | `theorem` | [sourcePayload_apply_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/declarations/sourcepayload-apply-one--02a6b5b07d3da330979d222a.md) | 73 | `result-track:02a6b5b07d3da330979d222a566b4cd08f6028455e700dec6fdd72d2c9c1bf13` |
| 9 | `theorem` | [sourcePayload_apply_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/declarations/sourcepayload-apply-two--1548c7f0027223dfa48ef484.md) | 78 | `result-track:1548c7f0027223dfa48ef484312d8a11fbb589006c856674d47872514d262606` |
| 10 | `def` | [screwFunctional](../../../../../mathematics/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/declarations/screwfunctional--d63bec37285b1db4a4a7d2ea.md) | 83 | `declaration-track:d63bec37285b1db4a4a7d2eae20df8e8ca1ab4d39a91688eafa3a89ac6af01e5` |
| 11 | `theorem` | [screwFunctional_apply](../../../../../mathematics/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/declarations/screwfunctional-apply--279ce74b27b7c8f480e9c9d2.md) | 89 | `result-track:279ce74b27b7c8f480e9c9d2de06bf03f58c921c53c9687dc47fe86d964ca6f6` |
| 12 | `def` | [screwContribution](../../../../../mathematics/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/declarations/screwcontribution--32f6358dfe4b7bd4e5e7d62b.md) | 94 | `declaration-track:32f6358dfe4b7bd4e5e7d62b02f33c7ca66a528d7cc8740c4796da600ae89029` |
| 13 | `theorem` | [screwContribution_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/declarations/screwcontribution-eq--61c7be24c2caaa1cfc00ecd7.md) | 98 | `result-track:61c7be24c2caaa1cfc00ecd78b0d3b29f34415e50772c74874f29bf8eb1b1784` |
| 14 | `theorem` | [zeroBinScrewContribution_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/declarations/zerobinscrewcontribution-eq--ae2a79cd370bc26ea882c17c.md) | 104 | `result-track:ae2a79cd370bc26ea882c17c70a90f46b0656712055b23ac1b7f90df9865ddf9` |
| 15 | `theorem` | [sourcePayload_refines](../../../../../mathematics/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/declarations/sourcepayload-refines--701de55681b6b6ab77631b50.md) | 113 | `result-track:701de55681b6b6ab77631b50f5dbaf55d895013401c44ac47cc00b065acf4595` |
| 16 | `theorem` | [encoded_source_refines](../../../../../mathematics/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/declarations/encoded-source-refines--a4fcfbe2f110ab4190c4ef81.md) | 123 | `result-track:a4fcfbe2f110ab4190c4ef81872ef3ee52c1576bcebf02a853a95874317fa288` |
| 17 | `theorem` | [screwKernel_source_preserving_refinement_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/declarations/screwkernel-source-preserving-refinement-error--40f93c5640a737e46c315137.md) | 143 | `result-track:40f93c5640a737e46c31513722a2c4c9d4f05950883b3a9379752081e57620e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
