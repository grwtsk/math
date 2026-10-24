# Verification target: GRWTSK.NumberTheory.Cyclotomic.Checks.Positive.ThirdCyclotomicIdeals

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13de7dd1da45de7995cee319d61086b314faf58d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicIdeals.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicIdeals.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicIdeals.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13de7dd1da45de7995cee319d61086b314faf58d`.

Source path: `GRWTSK/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicIdeals.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicIdeals.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals`](../../../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactCutoff`](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclotomicWindow](../../../../../../mathematics/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicIdeals.lean/declarations/cyclotomicwindow--55fa1b7ac2e5f77b2cd0f082.md) | 10 | `declaration-track:55fa1b7ac2e5f77b2cd0f082b82e432f2e0a5ae44bcc14df4fdca0c296c5d473` |
| 2 | `lemma` | [cyclotomicWindow_compact](../../../../../../mathematics/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicIdeals.lean/declarations/cyclotomicwindow-compact--fab2e1a284ebd3ae039bdaa5.md) | 11 | `result-track:fab2e1a284ebd3ae039bdaa50eb0a03c499ccd2a2aad0f21340bf062b88fd1dc` |
| 3 | `lemma` | [cyclotomicWindow_one](../../../../../../mathematics/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicIdeals.lean/declarations/cyclotomicwindow-one--5fc3c2cefa0babaa447b4fee.md) | 12 | `result-track:5fc3c2cefa0babaa447b4feeddc022b7ff8ce7f9de4408310a1341f10006afd8` |
| 4 | `def` | [cyclotomicTriple](../../../../../../mathematics/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicIdeals.lean/declarations/cyclotomictriple--0ec688806934b035b97612e7.md) | 15 | `declaration-track:0ec688806934b035b97612e7aa08b3f5cbaf3887cfe4498507266176743653bf` |
| 5 | `lemma` | [cyclotomicTriple_zero](../../../../../../mathematics/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicIdeals.lean/declarations/cyclotomictriple-zero--26efa400edcdc3706e088a96.md) | 19 | `result-track:26efa400edcdc3706e088a966ab73f4020a4d074522c224ad481220879e5bbdb` |
| 6 | `lemma` | [cyclotomicTriple_window](../../../../../../mathematics/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicIdeals.lean/declarations/cyclotomictriple-window--e124a8764cc86533267e1434.md) | 23 | `result-track:e124a8764cc86533267e14346b1a7b104aaba11a61f837e89cb6362f58a4ea27` |
| 7 | `theorem` | [actual_cyclotomic_finite_support](../../../../../../mathematics/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicIdeals.lean/declarations/actual-cyclotomic-finite-support--1428b9421031bf8f625d1816.md) | 31 | `result-track:1428b9421031bf8f625d18163aab1a88a0adc2343838b4c7e5835556f90d076a` |
| 8 | `lemma` | [principal_two_ne_zero](../../../../../../mathematics/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicIdeals.lean/declarations/principal-two-ne-zero--5e5bcdb139358175235e510f.md) | 35 | `result-track:5e5bcdb139358175235e510f2d270780a580ffae127abf716f46c72adc47044f` |
| 9 | `theorem` | [actual_principal_two_term](../../../../../../mathematics/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicIdeals.lean/declarations/actual-principal-two-term--c58a80ffddfaf1bd56104a64.md) | 42 | `result-track:c58a80ffddfaf1bd56104a64ec187aab29c1627f7d4678bce6b9991e6cd37c84` |
| 10 | `lemma` | [integer_principal_two_absNorm](../../../../../../mathematics/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicIdeals.lean/declarations/integer-principal-two-absnorm--128aae549ffbedd8731b5aca.md) | 56 | `result-track:128aae549ffbedd8731b5aca151cd4b10cb4ec51124a920ec76d247f158690a5` |
| 11 | `theorem` | [actual_integer_norm_identification_false](../../../../../../mathematics/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicIdeals.lean/declarations/actual-integer-norm-identification-false--985584afd3bb4a8dafeaa9da.md) | 60 | `result-track:985584afd3bb4a8dafeaa9da5604fbc62b5c3a56e92bca1bcc628e12ed996fbf` |
| 12 | `lemma` | [actual_ring_rank_two](../../../../../../mathematics/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicIdeals.lean/declarations/actual-ring-rank-two--d103a2cd1d4a3e3ca4c1265f.md) | 65 | `result-track:d103a2cd1d4a3e3ca4c1265fa72a8133424e773f8e07589315f8bce98a069b57` |
| 13 | `lemma` | [actual_zero_principal_norm](../../../../../../mathematics/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicIdeals.lean/declarations/actual-zero-principal-norm--3ca4c11e84ef2c9bb7797333.md) | 68 | `result-track:3ca4c11e84ef2c9bb7797333a4437845bad92eb00c9b030849159e6eab9da03b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
