# Verification target: GRWTSK.Analysis.ComplexAnalysis.MobiusReciprocalPoleAudit.Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7eb4166a891b5e3ae5704f638d733a601a392400",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7eb4166a891b5e3ae5704f638d733a601a392400`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ZetaBounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaPoleFactor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/declarations/zetapolefactor--dedbe101fe6a797c909f3a82.md) | 26 | `declaration-track:dedbe101fe6a797c909f3a8207933db20fc9441dda543a71856f3bdc0656b93e` |
| 2 | `theorem` | [zetaPoleFactor_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/declarations/zetapolefactor-zero--c4b0b76c41c42f8668a6968f.md) | 28 | `result-track:c4b0b76c41c42f8668a6968f55e9132da5c19a63bdaf5bd3b81a60302f549f54` |
| 3 | `theorem` | [zetaPoleFactor_off](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/declarations/zetapolefactor-off--50c479fa42fec518525f2aa6.md) | 31 | `result-track:50c479fa42fec518525f2aa628be2ea59b86f04f112563795a9184f461668932` |
| 4 | `theorem` | [zetaPoleFactor_limit](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/declarations/zetapolefactor-limit--fd859882195d29f35f9619c0.md) | 35 | `result-track:fd859882195d29f35f9619c0bb15b96eab6d9e45e91423757a64035f4f81e80a` |
| 5 | `theorem` | [zetaPoleFactor_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/declarations/zetapolefactor-analyticat-zero--379d57f3986cbe79d5a1664b.md) | 50 | `result-track:379d57f3986cbe79d5a1664b21d354b1c42708144b11c643321cbf95ce279f04` |
| 6 | `def` | [reciprocalZeta](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/declarations/reciprocalzeta--d9dee605a3bd2523de853d6c.md) | 63 | `declaration-track:d9dee605a3bd2523de853d6c3620ebb969840c9554d0fa3cc32620155e57ed0c` |
| 7 | `theorem` | [reciprocalZeta_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/declarations/reciprocalzeta-zero--354149875c26e08ac08794f6.md) | 65 | `result-track:354149875c26e08ac08794f6c7b3f99fb76827f33666c695682957aeadc835af` |
| 8 | `theorem` | [reciprocalZeta_off](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/declarations/reciprocalzeta-off--7c7e568db26ef11b81b4e2af.md) | 68 | `result-track:7c7e568db26ef11b81b4e2af009d18dac5bb6f85d3296e37660865c4b148710b` |
| 9 | `theorem` | [reciprocalZeta_eq_div_factor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/declarations/reciprocalzeta-eq-div-factor--8f74511714694d9799287422.md) | 72 | `result-track:8f74511714694d97992874228b821f7828f3d9218b05eaec2eb11680631332eb` |
| 10 | `theorem` | [reciprocalZeta_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/declarations/reciprocalzeta-analyticat-zero--e3bf9808d8da6358ff361e9c.md) | 79 | `result-track:e3bf9808d8da6358ff361e9c2f45cac6b333cd6f27d3ae2fa25ef34a13317d76` |
| 11 | `theorem` | [reciprocalZeta_hasDerivAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/declarations/reciprocalzeta-hasderivat-zero--82b4cb004e9a3e5b9aee1fdd.md) | 85 | `result-track:82b4cb004e9a3e5b9aee1fdd964e72d7f59e6ef6fb3c0ddff7477efa900ec5a9` |
| 12 | `theorem` | [reciprocalZeta_eventually_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/declarations/reciprocalzeta-eventually-ne-zero--fb5ff07a148b9515ae2e6d8a.md) | 93 | `result-track:fb5ff07a148b9515ae2e6d8a739cd927931e8c147f2073a8e0ac9ba21150b0db` |
| 13 | `def` | [smoothedPerronIntegrand](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/declarations/smoothedperronintegrand--2b1a6e8a1454895f90f3feb9.md) | 104 | `declaration-track:2b1a6e8a1454895f90f3feb9823213a7f2ae909302e454bd1c18368498f230a1` |
| 14 | `theorem` | [smoothedPerronIntegrand_factor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/declarations/smoothedperronintegrand-factor--02c6461a868a0e3998b906c3.md) | 107 | `result-track:02c6461a868a0e3998b906c3c9d1edcae4dfa9017b4a67baa4c0df1f3f713831` |
| 15 | `theorem` | [perronNumerator_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/declarations/perronnumerator-analyticat-zero--d74d0b4ba830596dc0e9c220.md) | 115 | `result-track:d74d0b4ba830596dc0e9c220bbf5b1a85ea64e06138d1945d14f2594b0a38d07` |
| 16 | `theorem` | [smoothedPerronIntegrand_meromorphicAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/declarations/smoothedperronintegrand-meromorphicat-zero--52009ac93c7b9aaf15598347.md) | 124 | `result-track:52009ac93c7b9aaf15598347cd3703f50bcc4224122906e7eb80f0b1d7f94ed0` |
| 17 | `theorem` | [smoothedPerronIntegrand_order_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/declarations/smoothedperronintegrand-order-zero--09d817c8ce009e92bab26021.md) | 131 | `result-track:09d817c8ce009e92bab260216a8db217f5519fbea82fa9d3762b1b73f06e8f02` |
| 18 | `theorem` | [smoothedPerronIntegrand_residue_limit](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/declarations/smoothedperronintegrand-residue-limit--57316e6c8c46d396998eba29.md) | 141 | `result-track:57316e6c8c46d396998eba29065f138a15798a9d5913356f1ecb800f6ca4a45c` |
| 19 | `theorem` | [smoothedPerronIntegrand_residue_one](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/declarations/smoothedperronintegrand-residue-one--947aad1011b43fad60016af5.md) | 152 | `result-track:947aad1011b43fad60016af5895d71e05a8536c2006b2e1db37817d4155f4e2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
