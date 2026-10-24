# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpEnergyAttempt06.Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6e88ce4be096ce68e900b1117d471744866154b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6e88ce4be096ce68e900b1117d471744866154b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `QuarticBumpODE` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rayValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/declarations/rayvalue--8ad0e67590017f83810cb86d.md) | 20 | `declaration-track:8ad0e67590017f83810cb86d8145509b6f1c9d151e87618c2b39ca0f415f20d8` |
| 2 | `def` | [raySlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/declarations/rayslope--68c8af6a6397cbfa4fd3518f.md) | 21 | `declaration-track:68c8af6a6397cbfa4fd3518fc73ed0970ffd6c6d545b4e7aaa5715f0a71e275b` |
| 3 | `def` | [weightedMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/declarations/weightedmass--f72a1f9da12db2dcb1d80da6.md) | 22 | `declaration-track:f72a1f9da12db2dcb1d80da6ee63471e6827c1228ea526e004693163a8221c30` |
| 4 | `def` | [weightedEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/declarations/weightedenergy--9855ccf63b17b60ea26b5c71.md) | 23 | `declaration-track:9855ccf63b17b60ea26b5c710e3503406129cb05b3f66f5e77bfb7e4264b45c6` |
| 5 | `theorem` | [rayValue_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/declarations/rayvalue-hasderivat--51e7555508c3ce5ac058b227.md) | 25 | `result-track:51e7555508c3ce5ac058b227d7459397f3b44bc47bb957da0ba0a01ad4111b32` |
| 6 | `theorem` | [raySlope_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/declarations/rayslope-hasderivat--45b3e23baedcda75ea3cd6c2.md) | 33 | `result-track:45b3e23baedcda75ea3cd6c24bf527e616e37fe4c3f5b7dee9e70112f563acd5` |
| 7 | `theorem` | [rayValue_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/declarations/rayvalue-continuous--ebe1df852a2884af149fb6cb.md) | 41 | `result-track:ebe1df852a2884af149fb6cbb5a631924f1f367d32fd7cf3c2a2679f1e0eeff7` |
| 8 | `theorem` | [raySlope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/declarations/rayslope-continuous--f3066cc7046cf1bd002a24aa.md) | 44 | `result-track:f3066cc7046cf1bd002a24aa9ccf70685a7ddf0a96365bcc80dcaf4cbb5f3724` |
| 9 | `theorem` | [weightedRay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/declarations/weightedray-hasderivat--18adc6ddaab8cd19d4427186.md) | 47 | `result-track:18adc6ddaab8cd19d4427186511e095f9917a02bc032d102ba1180e281cbc370` |
| 10 | `theorem` | [conjugateRay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/declarations/conjugateray-hasderivat--29a2f745ed20429944bdced9.md) | 59 | `result-track:29a2f745ed20429944bdced9ec6eb3972a9ae13481d6397da2c2ad4c96b36a3c` |
| 11 | `theorem` | [mass_integrand_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/declarations/mass-integrand-continuous--b039894a621d00cd89319d60.md) | 63 | `result-track:b039894a621d00cd89319d60ece85b12c2ac2141e626f499a26a10384b07bf78` |
| 12 | `theorem` | [energy_integrand_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/declarations/energy-integrand-continuous--502c9ba8acd26f6cff334705.md) | 67 | `result-track:502c9ba8acd26f6cff33470506d0c2b006728a230e11d2e0e43804ea4eee11a3` |
| 13 | `theorem` | [weightedEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/declarations/weightedenergy-nonneg--b706420dacd7747f785e41ee.md) | 71 | `result-track:b706420dacd7747f785e41eeaa816770c4aa7680fe631448a45829b2151f6256` |
| 14 | `theorem` | [rayValue_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/declarations/rayvalue-zero--f9670df624ab8ec7b8c0c49a.md) | 75 | `result-track:f9670df624ab8ec7b8c0c49a40b1e96365c0679c3ea1517074423e1e801dc358` |
| 15 | `theorem` | [weightedMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/declarations/weightedmass-pos--360263963d4f7cacd04a43eb.md) | 78 | `result-track:360263963d4f7cacd04a43ebaf038b859a20c98f07782075e0cd9984bbd6a52a` |
| 16 | `theorem` | [weighted_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/declarations/weighted-energy-identity--77e2488cc1e6b671258e5701.md) | 93 | `result-track:77e2488cc1e6b671258e570179fda1cd5cc46f84d01867d871ad0d07880fcd57` |
| 17 | `theorem` | [literal_quartic_nonzero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/declarations/literal-quartic-nonzero--20629cf18997a880538a5af4.md) | 135 | `result-track:20629cf18997a880538a5af43fa0f6c505c2e5c1f8df006ec90916a921e23179` |
| 18 | `theorem` | [actual_mellin_halfstrip_nonzero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/declarations/actual-mellin-halfstrip-nonzero--1fc41e39189124b854a34d4d.md) | 153 | `result-track:1fc41e39189124b854a34d4d7c5313ddd82f0c75ac631f2fc974537caec3bcd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
