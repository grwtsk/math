# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicPsiAbelReconstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d0848b6c414d19057d9738771f5225587186cd6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d0848b6c414d19057d9738771f5225587186cd6`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyNecessaryCancellation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyNecessaryCancellation.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.AbelSummation` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [psiError](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/declarations/psierror--8b89efe8603ce9eb0fd0fc47.md) | 46 | `declaration-track:8b89efe8603ce9eb0fd0fc472c790ba9530cfb9dd297cfef879b9558495b9e06` |
| 2 | `theorem` | [weightedMangoldt_Ioc_abel](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/declarations/weightedmangoldt-ioc-abel--1895ff9716ef9936864dc072.md) | 48 | `result-track:1895ff9716ef9936864dc0722d563bd94762f375fb51a70e0e4dd17c798b355f` |
| 3 | `theorem` | [weightedMangoldt_Ioc_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/declarations/weightedmangoldt-ioc-error--c04a1f21d6a39e26fea391da.md) | 80 | `result-track:c04a1f21d6a39e26fea391daae60796ee62f25c345ecd2df02b7c88bf0a01daa` |
| 4 | `theorem` | [location_le_location_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/declarations/location-le-location-iff--e06886ca96f2a649e8dfa26b.md) | 142 | `result-track:e06886ca96f2a649e8dfa26b63be5f2b5801eca32f6f3802b5b381759a5e017b` |
| 5 | `theorem` | [step_location_location](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/declarations/step-location-location--0ad7007746034c8bb5657dd3.md) | 161 | `result-track:0ad7007746034c8bb5657dd3c938d0e4011a959affb5b434f228b46c6d082ec0` |
| 6 | `theorem` | [cumulative_at_grid](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/declarations/cumulative-at-grid--34cd4ebaf1a0df46babe96aa.md) | 172 | `result-track:34cd4ebaf1a0df46babe96aa4f49de6fcc342f2557a0d631952bc0abefeae4eb` |
| 7 | `theorem` | [cumulative_at_grid_eq_psiError](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/declarations/cumulative-at-grid-eq-psierror--82a8168c57b5d2effd236267.md) | 198 | `result-track:82a8168c57b5d2effd2362670349029c28b8939634b587133074852aad7477fd` |
| 8 | `def` | [gridIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/declarations/gridindex--468813e8ad5c41d67b6fb711.md) | 208 | `declaration-track:468813e8ad5c41d67b6fb7114100b89f13a3e8d284a0a73b4c3ff71a4f3ded7a` |
| 9 | `theorem` | [gridIndex_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/declarations/gridindex-bounds--f2f7d6f47e0441b0f0cb1f0c.md) | 211 | `result-track:f2f7d6f47e0441b0f0cb1f0cbb6f5c0552a383bcec57def083154fb773be52ec` |
| 10 | `theorem` | [location_le_t_iff_le_gridIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/declarations/location-le-t-iff-le-gridindex--11ce53f19aed1db3769950c9.md) | 232 | `result-track:11ce53f19aed1db3769950c912b33e2770cbdccf198309f67297c536fd58aa9a` |
| 11 | `theorem` | [cumulative_sub_grid_eq_logarithm_sub](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/declarations/cumulative-sub-grid-eq-logarithm-sub--36a5c4031f321fcc333178b1.md) | 249 | `result-track:36a5c4031f321fcc333178b13be3729a4b4422ceac47223c11967df3b7eaf58c` |
| 12 | `theorem` | [logarithm_grid_error_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/declarations/logarithm-grid-error-le--b6cd8bf6054aa14641a10421.md) | 281 | `result-track:b6cd8bf6054aa14641a1042153869f05efae6a52d3ebfad15fd0a8559aa6bb78` |
| 13 | `def` | [PsiOctaveEnvelope](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/declarations/psioctaveenvelope--bf10fda719e4a6f831792a91.md) | 348 | `declaration-track:bf10fda719e4a6f831792a91aa9fcdd25cfaf05f9ddccb987612d2206c266643` |
| 14 | `theorem` | [cumulative_grid_abs_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/declarations/cumulative-grid-abs-le--b61b023a89684d9c354abb65.md) | 353 | `result-track:b61b023a89684d9c354abb65e6ed0502644f7f56b2e32283a9fca1fae0801dec` |
| 15 | `theorem` | [cumulative_abs_le_of_psiEnvelope](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/declarations/cumulative-abs-le-of-psienvelope--41015e4f063259ccf209c1b4.md) | 430 | `result-track:41015e4f063259ccf209c1b4dd8b63c1e0cfc3935f5d0756b76bb7ee4e922d44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
