# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdmissibleAnatomicReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b03bc40563f4fbc0d88dfabc9a0d7d09411e881a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b03bc40563f4fbc0d88dfabc9a0d7d09411e881a`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ShortIntervalExceptional`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ShortIntervalExceptional.lean/index.md) — import line 20; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scaleProduct](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/declarations/scaleproduct--4411ce53c6102345bf6cb954.md) | 36 | `declaration-track:4411ce53c6102345bf6cb954edca0b1c0933222a83e67bb9d4cc6bd095128f39` |
| 2 | `def` | [weightSum](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/declarations/weightsum--7429aaf85f1d99fcc15c5cd4.md) | 41 | `declaration-track:7429aaf85f1d99fcc15c5cd413fb3883e4b188badc3a29db2fa8e1e409fe4712` |
| 3 | `def` | [ResidualPrimitive](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/declarations/residualprimitive--e2e7ac475f24e738595cda14.md) | 45 | `declaration-track:e2e7ac475f24e738595cda14ae731a334a3bf774f017ca536303bfdc4d5933e9` |
| 4 | `def` | [ExplicitAdmissible](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/declarations/explicitadmissible--356fe07cd8c79050ecb64d78.md) | 54 | `declaration-track:356fe07cd8c79050ecb64d78cd3b9059ba54452f662cf87edf3cb079ed70fbe5` |
| 5 | `def` | [admissibleParameters](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/declarations/admissibleparameters--d30f99a6db78572c01cb0ae3.md) | 67 | `declaration-track:d30f99a6db78572c01cb0ae3cce779d732381d1fc496f0cb35b8bc398c78627a` |
| 6 | `theorem` | [card_admissibleParameters_le](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/declarations/card-admissibleparameters-le--b4185727afca60585cd60a26.md) | 73 | `result-track:b4185727afca60585cd60a2617b461e77b259499f20baefd806b78a9f7df4f46` |
| 7 | `theorem` | [scale_support_le](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/declarations/scale-support-le--672c2cdb80db74dbbc0e8967.md) | 80 | `result-track:672c2cdb80db74dbbc0e8967ec26f8d8d08a70f230bf66d09363e44ee08c7a70` |
| 8 | `theorem` | [support_le_two_pow_mul_scale](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/declarations/support-le-two-pow-mul-scale--5f691d2dc887b87ea6763541.md) | 89 | `result-track:5f691d2dc887b87ea676354131442dab78dd39a5682fd4ab14fe658f09f635bd` |
| 9 | `theorem` | [scale_monomial_le](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/declarations/scale-monomial-le--1cfcd1a0881afefa7d17c8a6.md) | 102 | `result-track:1cfcd1a0881afefa7d17c8a6876af0d5e3d9183628cee7cc7fd2a2cf531b8e45` |
| 10 | `theorem` | [monomial_le_two_pow_weight_mul_scale](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/declarations/monomial-le-two-pow-weight-mul-scale--d2a67f28a87be6230398b9c5.md) | 112 | `result-track:d2a67f28a87be6230398b9c50d4eec4b69f7dc8875f1d27ad276104992b20d33` |
| 11 | `theorem` | [support_le_rpow_mul_radical](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/declarations/support-le-rpow-mul-radical--0cd29a55edad4f5ba9efb174.md) | 133 | `result-track:0cd29a55edad4f5ba9efb1742983543f0fb90dbdc27ea60f3de28f73ead0c03d` |
| 12 | `theorem` | [residualPrimitive_of_reconstructions](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/declarations/residualprimitive-of-reconstructions--0e8e05590db25a25bf650db6.md) | 144 | `result-track:0e8e05590db25a25bf650db6575781da9c42ab0eb37ca9da35716e348e2ece8d` |
| 13 | `theorem` | [explicitAdmissible_of_factorizations](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/declarations/explicitadmissible-of-factorizations--551ab8408f425d273a7bac64.md) | 163 | `result-track:551ab8408f425d273a7bac641985a36d73cc581be589575f1ad77c4f1a63bf9d` |
| 14 | `theorem` | [nStarTriples_subset_admissible_cover](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/declarations/nstartriples-subset-admissible-cover--be1e27c4c242a8bbb8ee3c92.md) | 307 | `result-track:be1e27c4c242a8bbb8ee3c9269c13a22650256dacd8f2defbc86e97c1832fd3d` |
| 15 | `theorem` | [nStarCount_le_admissible_parameter_mul_sup](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/declarations/nstarcount-le-admissible-parameter-mul-sup--4328ac76e274d647de2cd57a.md) | 424 | `result-track:4328ac76e274d647de2cd57ae2abed14e28b11f8744ebb24bf73cca1a4a642a3` |
| 16 | `theorem` | [nStarCount_le_explicit_admissible_bound](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/declarations/nstarcount-le-explicit-admissible-bound--30e1bbb1c9f5bbeb40f686d5.md) | 437 | `result-track:30e1bbb1c9f5bbeb40f686d57177c16906775bfd296733d53de026cd64d11da2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
