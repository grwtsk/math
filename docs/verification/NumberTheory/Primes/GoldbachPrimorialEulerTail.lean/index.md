# Verification target: GRWTSK.NumberTheory.Primes.GoldbachPrimorialEulerTail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc18a8b4f8e86ee7e3cb5a9c8ceded60e7105b31",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc18a8b4f8e86ee7e3cb5a9c8ceded60e7105b31`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachCompositeCoefficient`](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachFejerBoundary`](../../../../mathematics/NumberTheory/Primes/GoldbachFejerBoundary.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.NumberTheory.Primorial` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [goldbachPrimeCutoff_eq_primesLE](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachprimecutoff-eq-primesle--ff720fe64fa986af13092ea7.md) | 59 | `result-track:ff720fe64fa986af13092ea78ce609f16bb69457db45fdd5ebd9c74de9306ccb` |
| 2 | `def` | [goldbachDenominatorCoefficientRangeSum](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachdenominatorcoefficientrangesum--2246665afae803ae00c1f863.md) | 65 | `declaration-track:2246665afae803ae00c1f863c8f428201e72ad37296fcd4700b87e3688833749` |
| 3 | `def` | [goldbachPrimorialCoefficientDivisorSum](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachprimorialcoefficientdivisorsum--debacd0956461ab14a7b644a.md) | 71 | `declaration-track:debacd0956461ab14a7b644a548ffa27cc07bdf627fc0d92d600f0bd246db98e` |
| 4 | `def` | [goldbachPrimorialShortDivisors](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachprimorialshortdivisors--6d4c1704a4ec41bc29d15fb9.md) | 78 | `declaration-track:6d4c1704a4ec41bc29d15fb9a49f47e7f39695d9c3c0ab23096aa205bbacb496` |
| 5 | `def` | [goldbachPrimorialTailDivisors](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachprimorialtaildivisors--b2689c13b602ac8c8b45c2e4.md) | 83 | `declaration-track:b2689c13b602ac8c8b45c2e4be9e335cbfe0a2de08381d92729d91bb4a90f0d7` |
| 6 | `def` | [goldbachPrimorialShortCoefficientSum](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachprimorialshortcoefficientsum--4dba3ef7a082d47a75b4abb8.md) | 88 | `declaration-track:4dba3ef7a082d47a75b4abb83375376a03a745dc18555253fb7983c3fef93a43` |
| 7 | `def` | [goldbachPrimorialCoefficientTail](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachprimorialcoefficienttail--ec76f82d0870ef275cd3f079.md) | 94 | `declaration-track:ec76f82d0870ef275cd3f079a966b9cca8eb8181b3dcb9867bb931cdbc0c876d` |
| 8 | `def` | [goldbachPrimorialCoefficientTailNorm](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachprimorialcoefficienttailnorm--41ee50959b2ee78e700aa443.md) | 100 | `declaration-track:41ee50959b2ee78e700aa443cfc7060f44a2f1d843735527875cf4e9ebf89dcb` |
| 9 | `theorem` | [goldbachFiniteCoefficientEulerProduct_eq_primorialDivisorSum](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachfinitecoefficienteulerproduct-eq-primorialdivisorsum--38b237b486d6be2fd62a331b.md) | 107 | `result-track:38b237b486d6be2fd62a331b9a44b449f045893c4ad0b2b1eaf0b645495d0903` |
| 10 | `theorem` | [goldbachPrimorialCoefficientDivisorSum_eq_short_add_tail](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachprimorialcoefficientdivisorsum-eq-short-add-tail--6afe1602d515b32e4c178aa0.md) | 144 | `result-track:6afe1602d515b32e4c178aa09edd13bfe223735b8ceb2dc75fdf6ab6c9051833` |
| 11 | `theorem` | [goldbachPrimorialShortDivisors_subset_denominatorRange](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachprimorialshortdivisors-subset-denominatorrange--a644841682b363bce06eec6c.md) | 159 | `result-track:a644841682b363bce06eec6ce2e3d0ceaf7fd5f3c700a66362c2c97b231041b7` |
| 12 | `theorem` | [squarefree_dvd_primorial_of_le](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/squarefree-dvd-primorial-of-le--c61499303242c91694fd3db4.md) | 170 | `result-track:c61499303242c91694fd3db40fcb56639db0da2d1bbc4dcfb740eb94fe09ef6d` |
| 13 | `theorem` | [goldbachPrimorialShortCoefficientSum_eq_denominatorRangeSum](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachprimorialshortcoefficientsum-eq-denominatorrangesum--6f903a2c8e2dfd2006e1dc2b.md) | 179 | `result-track:6f903a2c8e2dfd2006e1dc2bb1227d426c7cbaa843e7b54496acfa68741d12eb` |
| 14 | `theorem` | [goldbachFiniteCoefficientEulerProduct_eq_range_add_tail](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachfinitecoefficienteulerproduct-eq-range-add-tail--0a90e1b1b24d10a390444b78.md) | 206 | `result-track:0a90e1b1b24d10a390444b78433641cbaf165e45f9e2642e536da3f73551e866` |
| 15 | `theorem` | [norm_goldbachPrimorialCoefficientTail_le](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/norm-goldbachprimorialcoefficienttail-le--d1af5ebaa3fb92ecd8265cc1.md) | 218 | `result-track:d1af5ebaa3fb92ecd8265cc1b4e36c662df21c4df19ef95bdee91c13ea165b2c` |
| 16 | `theorem` | [goldbachPrimorialCoefficientTailNorm_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachprimorialcoefficienttailnorm-nonneg--f5935c529705d468c2c1bf47.md) | 227 | `result-track:f5935c529705d468c2c1bf475dd4be50c08a4a4849ace89a2ad6ac6554cb3018` |
| 17 | `def` | [goldbachFejerNegativeCoefficientPenalty](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachfejernegativecoefficientpenalty--19036868f837b3b0a5aa2a02.md) | 234 | `declaration-track:19036868f837b3b0a5aa2a028b80c66ad38c2ad17a054590587c23683e74081d` |
| 18 | `theorem` | [goldbachFejerCoreMain_le_windowUpper](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachfejercoremain-le-windowupper--cea98ad5d05c50d88e73f695.md) | 244 | `result-track:cea98ad5d05c50d88e73f6953a7286ec1c20388f4a878ba277a2f15855f6c15b` |
| 19 | `theorem` | [goldbachFejerNegativeCoefficientPenalty_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachfejernegativecoefficientpenalty-nonneg--fa59609f2f1496bb13390d53.md) | 256 | `result-track:fa59609f2f1496bb13390d5319acb170aa223529dc77cd1e4ed263d1185dea42` |
| 20 | `theorem` | [goldbachFejerDenominatorLowerTerm_eq_core_sub_penalty](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachfejerdenominatorlowerterm-eq-core-sub-penalty--874f3aa931e64f0eb0afed27.md) | 272 | `result-track:874f3aa931e64f0eb0afed27c84ad3fcdc9c3a6ed718d281fab7bd0365cf1526` |
| 21 | `theorem` | [goldbachFejerDenominatorLowerSum_eq_core_mul_range_sub_penalty](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachfejerdenominatorlowersum-eq-core-mul-range-sub-penalty--cf627c8c2ba5094e72bc762e.md) | 306 | `result-track:cf627c8c2ba5094e72bc762ee2f51ccdd8a3309f786271514fbac28a75a9f0d9` |
| 22 | `def` | [goldbachFejerEulerTailError](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachfejereulertailerror--56c8f93092ba9a4d477be77a.md) | 347 | `declaration-track:56c8f93092ba9a4d477be77a12ac94739b550de0efb1a39c5c2e7a5a98d03fb5` |
| 23 | `theorem` | [goldbachFejerEulerTailError_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachfejereulertailerror-nonneg--0cc742e61a225c5ca7436044.md) | 354 | `result-track:0cc742e61a225c5ca7436044a03cf1ff7f758154e4faee203251d0f217638d7b` |
| 24 | `theorem` | [goldbachCoefficientTruncatedMainScale_sub_fejerEulerTailError_le](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachcoefficienttruncatedmainscale-sub-fejereulertailerror-le--0205e9f349c00debbfd75778.md) | 367 | `result-track:0205e9f349c00debbfd75778d0d572326bcd4e3e034c697ac5a5b38fe45912c5` |
| 25 | `theorem` | [goldbachCount_pos_of_fejerEulerTail_certificate](../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/declarations/goldbachcount-pos-of-fejereulertail-certificate--3e1f661ff7b7c28d05b07e31.md) | 400 | `result-track:3e1f661ff7b7c28d05b07e3171c74501660994b65aae9710b447056b753c5c7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
