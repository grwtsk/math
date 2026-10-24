# Verification target: GRWTSK.NumberTheory.Moebius.DyadicWeightedMertensSquare

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "895c31aca4f7d1a06fa351144081328a3e0f3447",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `895c31aca4f7d1a06fa351144081328a3e0f3447`.

Source path: `GRWTSK/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CumulativeWeightedMertensSquare`](../../../../mathematics/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Data.Nat.Log` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedMertensDyadicBlock](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/weightedmertensdyadicblock--eb82d2ef7ca418b3edaeba74.md) | 42 | `declaration-track:eb82d2ef7ca418b3edaeba745f5716923d17d181972729950bc1cf88fd04423b` |
| 2 | `def` | [weightedMertensDyadicPrefix](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/weightedmertensdyadicprefix--3b839ddf6c954bfdd50edf81.md) | 47 | `declaration-track:3b839ddf6c954bfdd50edf810ac7c4fb1ab7ddeffb53bca9a62c9936f8484535` |
| 3 | `def` | [weightedMertensDyadicCover](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/weightedmertensdyadiccover--d3cb85d15d51de05029a7a2c.md) | 52 | `declaration-track:d3cb85d15d51de05029a7a2c361a3d5d2c2838da6a2ae128ee7522af381abef4` |
| 4 | `def` | [SubpolynomialDyadicPrefixWeightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/subpolynomialdyadicprefixweightedmertenssquare--fb133aca44f5a2f5f29948db.md) | 56 | `declaration-track:fb133aca44f5a2f5f29948dbe762905f3cf8d4415f48761143937dff2bd6c700` |
| 5 | `def` | [SubpolynomialDyadicBlockWeightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/subpolynomialdyadicblockweightedmertenssquare--883b07458ff26f8135d84e47.md) | 64 | `declaration-track:883b07458ff26f8135d84e475f78d45e5833c37066e9828b79858c741e647dd9` |
| 6 | `theorem` | [weightedMertensBaseTerm_zero](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/weightedmertensbaseterm-zero--3c47b2b87b9e41ff763e94b7.md) | 71 | `result-track:3c47b2b87b9e41ff763e94b7055ca8b6af204f188cbdaaecdac4bc54604f6b35` |
| 7 | `theorem` | [weightedMertensDyadicBlock_nonneg](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/weightedmertensdyadicblock-nonneg--d87e02f455cd9abba065500b.md) | 75 | `result-track:d87e02f455cd9abba065500b061e7ab155627e9f6d085eaddc2a0e4e0c9446ac` |
| 8 | `theorem` | [weightedMertensDyadicPrefix_nonneg](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/weightedmertensdyadicprefix-nonneg--839f6586b2e0e8d8bb3f58ec.md) | 80 | `result-track:839f6586b2e0e8d8bb3f58ec9856f02828e11c63eaed746e24e64164af1fb339` |
| 9 | `theorem` | [weightedMertensDyadicPrefix_zero](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/weightedmertensdyadicprefix-zero--fe74b1d7cb1d3493cb76951e.md) | 85 | `result-track:fe74b1d7cb1d3493cb76951e12650ea884d674786716e53785a191c0b4f568b1` |
| 10 | `theorem` | [weightedMertensDyadicPrefix_succ](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/weightedmertensdyadicprefix-succ--517d0fdf56e8631aa6d21a92.md) | 89 | `result-track:517d0fdf56e8631aa6d21a92d1412a1b23877d2b4ff169b2e1f35a7030552854` |
| 11 | `theorem` | [weightedMertensCumulative_mono](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/weightedmertenscumulative-mono--e5b5e287c294e2acc1aeed98.md) | 95 | `result-track:e5b5e287c294e2acc1aeed98ec62412b60a00513dd66d52f1567378231ccee73` |
| 12 | `theorem` | [weightedMertensDyadicBlock_eq_cumulative_sub](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/weightedmertensdyadicblock-eq-cumulative-sub--3c470b54b42281bd0d39fe23.md) | 104 | `result-track:3c470b54b42281bd0d39fe235a780e299f0685fefeae5292a6e2f227547fafcc` |
| 13 | `theorem` | [weightedMertensDyadicPrefix_eq_cumulative_pow](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/weightedmertensdyadicprefix-eq-cumulative-pow--8dfd88054148b1dfbe29e2f4.md) | 117 | `result-track:8dfd88054148b1dfbe29e2f416fb25e8c8800d2293a6e6092b46dee987324bbb` |
| 14 | `theorem` | [subpolynomialDyadicPrefix_of_cumulative](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/subpolynomialdyadicprefix-of-cumulative--7341446617e0cc8a9b9ebb68.md) | 130 | `result-track:7341446617e0cc8a9b9ebb68849466a893acd76aa9f5d7a59efd5c0ed7287a0a` |
| 15 | `theorem` | [lt_pow_weightedMertensDyadicCover](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/lt-pow-weightedmertensdyadiccover--39f9123ca2f5e877839533a9.md) | 141 | `result-track:39f9123ca2f5e877839533a936015e0688df9e98b672ef5f6a9ec1085c7bb22d` |
| 16 | `theorem` | [pow_weightedMertensDyadicCover_le_two_mul](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/pow-weightedmertensdyadiccover-le-two-mul--1caf59ba8b3e53f1f1c5e124.md) | 148 | `result-track:1caf59ba8b3e53f1f1c5e12443973882ce9b113f2c5af3195a8d513d20fa07a6` |
| 17 | `theorem` | [dyadicEndpoint_succ_rpow](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/dyadicendpoint-succ-rpow--94956341ecc0c13af32b128b.md) | 158 | `result-track:94956341ecc0c13af32b128bea04e1703dba340d338253ae810e01f498eee01e` |
| 18 | `theorem` | [subpolynomialCumulative_of_dyadicPrefix](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/subpolynomialcumulative-of-dyadicprefix--987a38ef8b34485ba9725617.md) | 167 | `result-track:987a38ef8b34485ba9725617e94689d5944ea91e9aef3c5137ecf2f2ca7da173` |
| 19 | `theorem` | [subpolynomialDyadicPrefix_iff_cumulative](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/subpolynomialdyadicprefix-iff-cumulative--133bc9571bddf18597cbbc50.md) | 217 | `result-track:133bc9571bddf18597cbbc50736ef3863405f0045ef47a2c14dbfafa7d869ca7` |
| 20 | `theorem` | [weightedMertensDyadicBlock_le_prefix_succ](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/weightedmertensdyadicblock-le-prefix-succ--f1ab33343e59210b09865582.md) | 224 | `result-track:f1ab33343e59210b09865582c1eceed99f221b0ea55e1ff044c7777ec6221f00` |
| 21 | `theorem` | [subpolynomialDyadicBlock_of_prefix](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/subpolynomialdyadicblock-of-prefix--c129574291fb1f5a304f5b3e.md) | 232 | `result-track:c129574291fb1f5a304f5b3ebff9fe3fc9bacbf4f613990dad03f08b1d97f5ea` |
| 22 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicPrefixWeightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/declarations/riemannhypothesis-of-subpolynomialdyadicprefixweightedmertenssquare--52d41d3486347d1f10a3441f.md) | 256 | `result-track:52d41d3486347d1f10a3441f071f24feee7f1b443db6bb12ab95a4fdc77b4e91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
