# Verification target: GRWTSK.NumberTheory.Zeta.ReciprocalDecayBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "774e40eaeffa54c84e5eb25e6abe1889da780eb8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/ReciprocalDecayBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Zeta/ReciprocalDecayBounds.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Zeta/ReciprocalDecayBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `774e40eaeffa54c84e5eb25e6abe1889da780eb8`.

Source path: `GRWTSK/NumberTheory/Zeta/ReciprocalDecayBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/ReciprocalDecayBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MoebiusEulerProduct`](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.SignedEnergyDecomposition`](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [absoluteDirichletBudget](../../../../mathematics/NumberTheory/Zeta/ReciprocalDecayBounds.lean/declarations/absolutedirichletbudget--aac684d1522cb29661ea0db5.md) | 12 | `declaration-track:aac684d1522cb29661ea0db580b2af46f9a2cbf8a76084074898bbbe2952efed` |
| 2 | `theorem` | [absoluteDirichletBudget_nonnegative](../../../../mathematics/NumberTheory/Zeta/ReciprocalDecayBounds.lean/declarations/absolutedirichletbudget-nonnegative--11c5de05c314a3340057408c.md) | 15 | `result-track:11c5de05c314a3340057408c06e29915542856f242e3eac21fca4cb5549f3a56` |
| 3 | `theorem` | [reciprocal_zeta_uniform_bound](../../../../mathematics/NumberTheory/Zeta/ReciprocalDecayBounds.lean/declarations/reciprocal-zeta-uniform-bound--62923eeba39847d21d808dd7.md) | 18 | `result-track:62923eeba39847d21d808dd73640063ab45b09a6f0c9dfab534b06f746f9d9f5` |
| 4 | `def` | [pickupKernel](../../../../mathematics/NumberTheory/Zeta/ReciprocalDecayBounds.lean/declarations/pickupkernel--5db0a27a92e0af912172cc3d.md) | 31 | `declaration-track:5db0a27a92e0af912172cc3dbfdd46e269967823f00337b26785592f02417782` |
| 5 | `theorem` | [pickupKernel_norm_decay](../../../../mathematics/NumberTheory/Zeta/ReciprocalDecayBounds.lean/declarations/pickupkernel-norm-decay--08b45e55d49e1ee5a95b7644.md) | 35 | `result-track:08b45e55d49e1ee5a95b76444dd51921389dcf201b75f922e79c2721a724f772` |
| 6 | `theorem` | [pickupKernel_continuous](../../../../mathematics/NumberTheory/Zeta/ReciprocalDecayBounds.lean/declarations/pickupkernel-continuous--3ecb126a832fc5971bfdfb3e.md) | 58 | `result-track:3ecb126a832fc5971bfdfb3e05557c3f7ba972e2c9ce6a6f8aaf4c5359415046` |
| 7 | `theorem` | [pickupKernel_right_tail](../../../../mathematics/NumberTheory/Zeta/ReciprocalDecayBounds.lean/declarations/pickupkernel-right-tail--ea042750611eadbfea7e35f8.md) | 85 | `result-track:ea042750611eadbfea7e35f8a2c6f009cf73c8f78d99b4efa627d493056ce8fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
