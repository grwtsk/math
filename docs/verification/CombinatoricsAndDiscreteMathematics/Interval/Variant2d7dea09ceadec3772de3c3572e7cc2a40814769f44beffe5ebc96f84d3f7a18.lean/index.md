# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcbeed21f993403570ec4b55fe568d60d21bbf9b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcbeed21f993403570ec4b55fe568d60d21bbf9b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sum.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.LocallyFinite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumLift₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/sumlift--19bb7f32fafc6e47444258c4.md) | 44 | `declaration-track:19bb7f32fafc6e47444258c4af78a3e2218c140379493ef0076b99beb104d008` |
| 2 | `theorem` | [mem_sumLift₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/mem-sumlift--3e1059e81446430b8fb0c4ee.md) | 53 | `result-track:3e1059e81446430b8fb0c4ee16427acd831654780a347df2aabb6066846cc880` |
| 3 | `theorem` | [inl_mem_sumLift₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/inl-mem-sumlift--c4e3667a2d3dc542b3da4524.md) | 70 | `result-track:c4e3667a2d3dc542b3da45244e03cb7b6a90a33d3ff102b4267d54c2747da68e` |
| 4 | `theorem` | [inr_mem_sumLift₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/inr-mem-sumlift--d409a93096e80a3c3e484330.md) | 78 | `result-track:d409a93096e80a3c3e48433008b84917d97705607cc4103b481a4f5995c5955e` |
| 5 | `theorem` | [sumLift₂_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/sumlift-eq-empty--ac35afc0218a8d9b1e2a71d6.md) | 86 | `result-track:ac35afc0218a8d9b1e2a71d6c7a385270746b27021e556216901b9e732c57704` |
| 6 | `theorem` | [sumLift₂_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/sumlift-nonempty--1a55d3049e0ba92afa3b901c.md) | 101 | `result-track:1a55d3049e0ba92afa3b901c73082cd5567f2a90afc2c5d815d5268a57400336` |
| 7 | `theorem` | [sumLift₂_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/sumlift-mono--d4176121bd393a3d4e79b420.md) | 108 | `result-track:d4176121bd393a3d4e79b420852c93a49507f4bb341c2ceb47c1d251bd0b1c6c` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/instance--db0427ab905bbbd42e6151e7.md) | 133 | `declaration-track:db0427ab905bbbd42e6151e7de9b26f4c0f723196c82e6899f8b2cdf7655fe37` |
| 9 | `theorem` | [Icc_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/icc-inl-inl--0951ae07bf85094ea3bedfaa.md) | 146 | `result-track:0951ae07bf85094ea3bedfaa4cea6f5d323fa8188b34ee1e1f3880e5ddb0a518` |
| 10 | `theorem` | [Ico_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/ico-inl-inl--1c4d2a4437c0a1b89d79cef4.md) | 150 | `result-track:1c4d2a4437c0a1b89d79cef4608225400078b61ca6ac4e66473b65eb6229a28c` |
| 11 | `theorem` | [Ioc_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/ioc-inl-inl--d9bc074a2369ff6a96797dab.md) | 154 | `result-track:d9bc074a2369ff6a96797dab0f8f452be0df6213115e8a001b44774c7371eb90` |
| 12 | `theorem` | [Ioo_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/ioo-inl-inl--de38031475e52ad3b9e7eea8.md) | 158 | `result-track:de38031475e52ad3b9e7eea83f7f5c55723bacb44880509ddb565310deaa94d8` |
| 13 | `theorem` | [Icc_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/icc-inl-inr--b4a14e7a9d3c38bcec263045.md) | 163 | `result-track:b4a14e7a9d3c38bcec2630454128c2ff6f3287679b627183b0fb40c6081a3658` |
| 14 | `theorem` | [Ico_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/ico-inl-inr--c5d1beb33a79677b2e9bec81.md) | 168 | `result-track:c5d1beb33a79677b2e9bec812f5469bef39bed16cfbc749ab277d036932d74cb` |
| 15 | `theorem` | [Ioc_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/ioc-inl-inr--54304036783c1b653f712cf1.md) | 173 | `result-track:54304036783c1b653f712cf1eb8dc4ae89df8c8026513dc6030e6a5b672655c8` |
| 16 | `theorem` | [Ioo_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/ioo-inl-inr--32f7dbc2984a5043566e3b67.md) | 178 | `result-track:32f7dbc2984a5043566e3b672483f3f32095e1eddee2c9ce1c119541cfa510d9` |
| 17 | `theorem` | [Icc_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/icc-inr-inl--563f7c705252288fea4ddb77.md) | 183 | `result-track:563f7c705252288fea4ddb772441f5472d453e5b3cef0216da2b613bfe93d9eb` |
| 18 | `theorem` | [Ico_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/ico-inr-inl--84afc8434616adcf039abe1a.md) | 188 | `result-track:84afc8434616adcf039abe1ae5f8fc15221e99c8570e0c6342ad8b3dc40476b4` |
| 19 | `theorem` | [Ioc_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/ioc-inr-inl--6ad07f6474300f847325e101.md) | 193 | `result-track:6ad07f6474300f847325e10192d2123d2af37b4eba40018b6369d4a54b7c3938` |
| 20 | `theorem` | [Ioo_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/ioo-inr-inl--d8f6289dd6054eef5941c89e.md) | 198 | `result-track:d8f6289dd6054eef5941c89e4207e87d496b8a46b6ad834829b8adaf370a3c09` |
| 21 | `theorem` | [Icc_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/icc-inr-inr--c1e824f702c212648ffd8363.md) | 202 | `result-track:c1e824f702c212648ffd8363867d6c7bd39740e6a684b00bdd6bd513d5a03dec` |
| 22 | `theorem` | [Ico_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/ico-inr-inr--b0d3b059ba170a76ca860be8.md) | 206 | `result-track:b0d3b059ba170a76ca860be8fd66d76637301eea822c28c0721adbcaa9ee8c83` |
| 23 | `theorem` | [Ioc_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/ioc-inr-inr--7b2390397ccaa995caa63fc4.md) | 210 | `result-track:7b2390397ccaa995caa63fc4ef4505b3faf50897c4f02b98c49a7c465f3c6829` |
| 24 | `theorem` | [Ioo_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant2d7dea09ceadec3772de3c3572e7cc2a40814769f44beffe5ebc96f84d3f7a18.lean/declarations/ioo-inr-inr--a0eb3337b7f82c5e98877bb4.md) | 214 | `result-track:a0eb3337b7f82c5e98877bb4f16e383816fe0b66718fd9d747d230193c63e854` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
