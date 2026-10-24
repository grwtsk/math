# Verification target: GRWTSK.NumberTheory.Moebius.SectorEssentialSuprema

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09884075d49fedab864c6ac8639e043d9d7f23d1",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/SectorEssentialSuprema.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09884075d49fedab864c6ac8639e043d9d7f23d1`.

Source path: `GRWTSK/NumberTheory/Moebius/SectorEssentialSuprema.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/SectorEssentialSuprema.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.SignedIntegralSectorBounds`](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.EnergyGrowthEquivalences`](../../../../mathematics/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.MeasureTheory.Function.EssSup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.EReal.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [strictSector](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/strictsector--e8476ab7c43c3f6de5b6befa.md) | 28 | `declaration-track:e8476ab7c43c3f6de5b6befae824c543f1cad1fb16c08e8fcd0393f7f3d18117` |
| 2 | `def` | [gatedReading](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/gatedreading--e925e1aa80a43da87a1f62a8.md) | 31 | `declaration-track:e925e1aa80a43da87a1f62a81b16ef5384b1ffedb583dd8ae59a82bf1a2151f2` |
| 3 | `def` | [sectorEssSup](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/sectoresssup--df571d802d9723f90757a7d8.md) | 35 | `declaration-track:df571d802d9723f90757a7d8a7fd2cc4b8ae6f09b0d8a591c06bd80b315ecf7c` |
| 4 | `def` | [extendedMeter](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/extendedmeter--43b30e8ba2b964eb3e333776.md) | 37 | `declaration-track:43b30e8ba2b964eb3e333776109fa9ea09cf6099810fe591e004a49bcd07f20c` |
| 5 | `theorem` | [gated_reading_ae_le_iff](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/gated-reading-ae-le-iff--064afa3f6e2d3e52c53a2f96.md) | 40 | `result-track:064afa3f6e2d3e52c53a2f966587837c9715fa83732389aced19d8a4da178cd2` |
| 6 | `theorem` | [sector_esssup_le_iff](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/sector-esssup-le-iff--6dac8fa7c3e607bcc335e7d4.md) | 55 | `result-track:6dac8fa7c3e607bcc335e7d446e4ce476f839cb0c6695205e3693ca8e3077e53` |
| 7 | `theorem` | [sector_esssup_eq_sInf](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/sector-esssup-eq-sinf--e7988b78b4ef6ef10adc9bd9.md) | 67 | `result-track:e7988b78b4ef6ef10adc9bd96e5f7655fe12f2aa21d206599eb184cbd98fdfe4` |
| 8 | `theorem` | [null_sector_esssup](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/null-sector-esssup--a3200965aa13e303b0d998a1.md) | 77 | `result-track:a3200965aa13e303b0d998a1407a933c4e84334dea87cca552a31158da4d78e8` |
| 9 | `theorem` | [empty_sector_esssup](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/empty-sector-esssup--87c061ed838436fb3628f4a1.md) | 87 | `result-track:87c061ed838436fb3628f4a1752c27d901f62f2726b3282a4386c55b8fb26c75` |
| 10 | `theorem` | [zero_sector_silent](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/zero-sector-silent--14b3d51ae7ccbb56795bfe2b.md) | 91 | `result-track:14b3d51ae7ccbb56795bfe2b16595622c9f4746e944d8d547c6be58bddf5b58a` |
| 11 | `theorem` | [extended_meter_le_real_iff](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/extended-meter-le-real-iff--81c81041361a5816db331070.md) | 98 | `result-track:81c81041361a5816db33107039e21aeb13102abf3044b32a76cf59546eec7c40` |
| 12 | `def` | [finiteMeterBound](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/finitemeterbound--4e428e386887b87522c783b1.md) | 107 | `declaration-track:4e428e386887b87522c783b176c6cd9bc95fb5f6c449748fb59eded69ec7e3ac` |
| 13 | `theorem` | [finite_meter_bound_nonnegative](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/finite-meter-bound-nonnegative--6755b0285a4c5d15fdeadc50.md) | 109 | `result-track:6755b0285a4c5d15fdeadc50dc1d28002f47fb356dfdff5b24c9a45ffdc7664c` |
| 14 | `theorem` | [reset_pickup_window_bound](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/reset-pickup-window-bound--f76437adf65083867e49caf7.md) | 117 | `result-track:f76437adf65083867e49caf72b88e65df05166b337d80d5f641e704884df25d1` |
| 15 | `theorem` | [extended_meter_le_finite_bound](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/extended-meter-le-finite-bound--390bec28ddb2815b272b38ae.md) | 133 | `result-track:390bec28ddb2815b272b38ae648e8e62345b2fc871fefd8b592ee47169813e8e` |
| 16 | `theorem` | [extended_meter_nonnegative](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/extended-meter-nonnegative--c9ea912681a42c09fed0506d.md) | 144 | `result-track:c9ea912681a42c09fed0506d421258622e7edf8e8d13a8ec6eb71249ea5a7e6b` |
| 17 | `theorem` | [extended_meter_ne_bot](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/extended-meter-ne-bot--9a3f7fd1e35e402af601e74e.md) | 146 | `result-track:9a3f7fd1e35e402af601e74e513236657a32182a50ea061da715e82b51c9e441` |
| 18 | `theorem` | [extended_meter_ne_top](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/extended-meter-ne-top--e476c159637cb32ef939c32e.md) | 149 | `result-track:e476c159637cb32ef939c32eb775f50256304b7441556f1b1a1e8aa327173356` |
| 19 | `def` | [realMeter](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/realmeter--35777188ccecbb7b66813036.md) | 153 | `declaration-track:35777188ccecbb7b668130364fda0654ee641d39f0e71c917adf56fa3226e5b5` |
| 20 | `theorem` | [real_meter_embedding](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/real-meter-embedding--3a2d40121bc7d6fd3ed5957e.md) | 155 | `result-track:3a2d40121bc7d6fd3ed5957e66049675bfd8284316598e5561a4ca81b77235aa` |
| 21 | `theorem` | [real_meter_le_iff](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/real-meter-le-iff--0150d487021f27b022cb534c.md) | 159 | `result-track:0150d487021f27b022cb534c373c5aa199ecfd21138bb22b4decdad3b99eb7f9` |
| 22 | `theorem` | [supplier_allowance_nonnegative](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/supplier-allowance-nonnegative--bf84445b6463d6b8e1d1aa32.md) | 167 | `result-track:bf84445b6463d6b8e1d1aa3222bf0c2b3455bcaee858e5c02957b0913d9c76cd` |
| 23 | `def` | [OriginalSupplierMeterEstimate](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/originalsuppliermeterestimate--90a1885c7460a5a80da73f1f.md) | 178 | `declaration-track:90a1885c7460a5a80da73f1f11591c741e694678e67719e416904c45eb9aaf7e` |
| 24 | `theorem` | [original_supplier_estimate_iff_real_meter](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/original-supplier-estimate-iff-real-meter--a74075b7c4ac24e76c9fc0a9.md) | 186 | `result-track:a74075b7c4ac24e76c9fc0a91cc33941c9e2cb52a57604f548a9cf6bd7464808` |
| 25 | `theorem` | [whole_pickup_poly_supplies_meter](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/whole-pickup-poly-supplies-meter--268ba52242931209ea3450c3.md) | 207 | `result-track:268ba52242931209ea3450c370af9885174568d69a6b6ca5de8b159863299a0d` |
| 26 | `theorem` | [pickup_budgets_supply_meter](../../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/declarations/pickup-budgets-supply-meter--82bb9b6024e5dad1e6dffd4a.md) | 213 | `result-track:82bb9b6024e5dad1e6dffd4a3b66ebe0b1f78b3d8c8684d9fc891d91e205ee7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
