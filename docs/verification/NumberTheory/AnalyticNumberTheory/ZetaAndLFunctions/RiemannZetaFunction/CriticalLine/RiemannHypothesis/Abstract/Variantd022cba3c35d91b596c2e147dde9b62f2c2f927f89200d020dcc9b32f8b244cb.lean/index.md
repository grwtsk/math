# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Abstract.Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29fed6bbfed3694a1d9055ee5f406e372bbc4b92",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29fed6bbfed3694a1d9055ee5f406e372bbc4b92`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Assembly` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Module` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [abs_rtrace_le_sum_norm_diag](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/declarations/abs-rtrace-le-sum-norm-diag--0889c30e1d1bd9a588a2ae63.md) | 46 | `result-track:0889c30e1d1bd9a588a2ae6315f3c9ccb8e1d5239db0c3b90bca29aafd9bb5a8` |
| 2 | `lemma` | [frobSq_le_of_norm_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/declarations/frobsq-le-of-norm-le--a46941bd4e2062363c3bf457.md) | 52 | `result-track:a46941bd4e2062363c3bf457df78a009f9df8371c379a43b17eb36bc9ae2b8b0` |
| 3 | `lemma` | [frobSq_hadamard_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/declarations/frobsq-hadamard-le--df3331c0fa7c541eed29df4e.md) | 60 | `result-track:df3331c0fa7c541eed29df4e8de0849ce225e541dce03d07d9972bd2a883fe2b` |
| 4 | `lemma` | [sqrt_frobSq_hadamard_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/declarations/sqrt-frobsq-hadamard-le--871b28e6584658dee9aa1857.md) | 74 | `result-track:871b28e6584658dee9aa185784c5a454801f321b8b46c50a1351a67a7f8a4697` |
| 5 | `theorem` | [frobSq_le_of_tendsto_partialSums](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/declarations/frobsq-le-of-tendsto-partialsums--ae409c8d5ab2324af37787bf.md) | 90 | `result-track:ae409c8d5ab2324af37787bfc1ca45d649b62a0c9db644348597e2b1472f093c` |
| 6 | `theorem` | [abs_sum_mul_le_of_monotone](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/declarations/abs-sum-mul-le-of-monotone--7e8ae105bd39dc7e19d0d743.md) | 120 | `result-track:7e8ae105bd39dc7e19d0d74326d2eba7759be69ac302d72721c3abea59ca795f` |
| 7 | `lemma` | [sum_inv_affine_sq_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/declarations/sum-inv-affine-sq-le--26715ec78f7a42fad89c08cb.md) | 155 | `result-track:26715ec78f7a42fad89c08cbbe4a744529b6562a04b6682e381dab499834df1f` |
| 8 | `lemma` | [sum_inv_affine_sq_le'](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/declarations/sum-inv-affine-sq-le--66071d2e83cc9c336208d5b3.md) | 180 | `result-track:66071d2e83cc9c336208d5b315fe44ea21530de8a0cb6ee5fa2b6089baffda1a` |
| 9 | `lemma` | [inv_max_one_sq_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/declarations/inv-max-one-sq-le--312ab3283ac16f61f00e0d7e.md) | 190 | `result-track:312ab3283ac16f61f00e0d7ed156bb15f4cbd3a2622583c68b806aa92caedd51` |
| 10 | `theorem` | [lattice_sum_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/declarations/lattice-sum-le--d2f024a6389f0e84aabb6401.md) | 203 | `result-track:d2f024a6389f0e84aabb64019b53323e5706b6241c1f60417aa4c74c8b5ae41b` |
| 11 | `lemma` | [rtrace_sub_of_decomp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/declarations/rtrace-sub-of-decomp--d25cd0b36867c45ba8b3ed66.md) | 252 | `result-track:d25cd0b36867c45ba8b3ed6661e7360f36edc37a191e4fca0c38286e0938831a` |
| 12 | `theorem` | [frobSq_le_of_decomp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/declarations/frobsq-le-of-decomp--32bb2034c91bcdca14a589dc.md) | 258 | `result-track:32bb2034c91bcdca14a589dc9b591c1587dedcf59be700e17f458bb0b70c37f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
