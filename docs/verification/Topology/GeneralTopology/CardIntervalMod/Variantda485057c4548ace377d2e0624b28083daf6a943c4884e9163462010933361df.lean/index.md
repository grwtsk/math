# Verification target: GRWTSK.Topology.GeneralTopology.CardIntervalMod.Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce3c56a7bda0fd21745cff98e788241851d242d8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce3c56a7bda0fd21745cff98e788241851d242d8`.

Source path: `GRWTSK/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.ModEq` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Count` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Ico_filter_modEq_eq](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/declarations/ico-filter-modeq-eq--9ae307acb782b40d90517aea.md) | 28 | `result-track:9ae307acb782b40d90517aea06743e8cd9be50ebe1747d9e51c7155e860c654c` |
| 2 | `lemma` | [Ioc_filter_modEq_eq](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/declarations/ioc-filter-modeq-eq--533e887f135dac3aa152fcad.md) | 35 | `result-track:533e887f135dac3aa152fcadf37f94efe59db4a932613729821e453ec1f9e376` |
| 3 | `lemma` | [Ico_filter_dvd_eq](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/declarations/ico-filter-dvd-eq--330b572eb2c93da166de6011.md) | 45 | `result-track:330b572eb2c93da166de60113543e926e36423bbdbb95dbd50c1ee3bd45cca92` |
| 4 | `lemma` | [Ioc_filter_dvd_eq](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/declarations/ioc-filter-dvd-eq--5d751686ede9abd4cf25734c.md) | 53 | `result-track:5d751686ede9abd4cf25734c2d63889f0b2daa84fb9ae6613ba114b4905cce20` |
| 5 | `theorem` | [Ico_filter_dvd_card](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/declarations/ico-filter-dvd-card--c6ff1d7f33687ddda2364f3a.md) | 62 | `result-track:c6ff1d7f33687ddda2364f3a19ddd1a75b6acae33eb0a3f507978ab6f88ad26a` |
| 6 | `theorem` | [Ioc_filter_dvd_card](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/declarations/ioc-filter-dvd-card--4170bb80f280ef7cccf3d6e3.md) | 66 | `result-track:4170bb80f280ef7cccf3d6e39a6093fa83ccfb7aa0b7dcf4e91fa11f2b3f6c46` |
| 7 | `theorem` | [Ico_filter_modEq_card](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/declarations/ico-filter-modeq-card--73f091f716ee7028c3a7f019.md) | 71 | `result-track:73f091f716ee7028c3a7f019216c35595f58d63384fe9c355ffc396086e86841` |
| 8 | `theorem` | [Ioc_filter_modEq_card](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/declarations/ioc-filter-modeq-card--f510aa37ca90f54a93b05410.md) | 77 | `result-track:f510aa37ca90f54a93b05410f69fad15a0ba9dbf60d3c10a69b32f6b30c108f0` |
| 9 | `lemma` | [Ico_filter_modEq_cast](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/declarations/ico-filter-modeq-cast--3dada2907d9e350dcfea79bb.md) | 87 | `result-track:3dada2907d9e350dcfea79bb2d1915ae5d1cc6ba2e1f9a6edf3b535fe786021d` |
| 10 | `lemma` | [Ioc_filter_modEq_cast](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/declarations/ioc-filter-modeq-cast--7746cbf9359989dbd5c0e1e5.md) | 96 | `result-track:7746cbf9359989dbd5c0e1e5d208ecbddff8e8fc84061bd0b67507ad216fe36c` |
| 11 | `theorem` | [Ico_filter_modEq_card](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/declarations/ico-filter-modeq-card--a8dd6d16fa900ff15eecf3b1.md) | 110 | `result-track:a8dd6d16fa900ff15eecf3b1697ff1219a40271db7beec8c0bf699ea4f046cb2` |
| 12 | `theorem` | [Ioc_filter_modEq_card](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/declarations/ioc-filter-modeq-card--7a61babf4f702f3d4ababbb4.md) | 117 | `result-track:7a61babf4f702f3d4ababbb49247a5df343933816dc588c283e6985e0d1589c0` |
| 13 | `theorem` | [count_modEq_card_eq_ceil](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/declarations/count-modeq-card-eq-ceil--8ab187d0fdcee3370f708d67.md) | 123 | `result-track:8ab187d0fdcee3370f708d67bdafb2264702bba6d757aba8fa51c100640628c7` |
| 14 | `theorem` | [count_modEq_card](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/declarations/count-modeq-card--2a605c9581a4ba2d77cfe1c1.md) | 139 | `result-track:2a605c9581a4ba2d77cfe1c13a202b2434f40de8c10a8266e2df3b9e6f774910` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
