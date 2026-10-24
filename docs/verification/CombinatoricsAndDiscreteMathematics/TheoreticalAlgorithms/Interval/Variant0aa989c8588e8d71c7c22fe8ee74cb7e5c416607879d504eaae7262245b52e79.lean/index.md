# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Interval.Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81ad1732365511a4fd9479f8fcfef744e5933fa4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81ad1732365511a4fd9479f8fcfef744e5933fa4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Finsupp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rangeSingleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean/declarations/rangesingleton--741afcf1a12fcc331882f387.md) | 40 | `declaration-track:741afcf1a12fcc331882f3870fe0276547f0c873c202426612a8fc33946038cf` |
| 2 | `theorem` | [mem_rangeSingleton_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean/declarations/mem-rangesingleton-apply-iff--68148ee6f47236c85f2524be.md) | 47 | `result-track:68148ee6f47236c85f2524beed04a7c37fdbbb78a36ceb5aa085459fafb0ab8a` |
| 3 | `def` | [rangeIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean/declarations/rangeicc--e49fb6b103e8fbddd2e4e77e.md) | 59 | `declaration-track:e49fb6b103e8fbddd2e4e77edb1cb577b4eda20ce84812708e48555cb252bc5c` |
| 4 | `lemma` | [coe_rangeIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean/declarations/coe-rangeicc--7e38d2bf927a1fc37ad391f2.md) | 66 | `result-track:7e38d2bf927a1fc37ad391f2562f44685101b57e0605bd2e8f23c678985c8101` |
| 5 | `theorem` | [rangeIcc_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean/declarations/rangeicc-support--4fe6e62a7dc0b22757030793.md) | 69 | `result-track:4fe6e62a7dc0b22757030793fad7275a2c6504d69338bcdafc75ec788c7d1dad` |
| 6 | `theorem` | [mem_rangeIcc_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean/declarations/mem-rangeicc-apply-iff--371eb09c041f0fb49169712f.md) | 72 | `result-track:371eb09c041f0fb49169712f0ab2b03a7a734d45df430b36117492cf9be62eb1` |
| 7 | `instance` | [instLocallyFiniteOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean/declarations/instlocallyfiniteorder--923c02b67a2c10df37308a6c.md) | 81 | `declaration-track:923c02b67a2c10df37308a6c1368c24101e0434a2552f208437c6c8945257c62` |
| 8 | `theorem` | [Icc_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean/declarations/icc-eq--97a858484c9d219a8e2b0f02.md) | 89 | `result-track:97a858484c9d219a8e2b0f028385c3dd55f5dae3bae002109cc94326d5d21823` |
| 9 | `theorem` | [card_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean/declarations/card-icc--7e9e450ba437acd30ef923e8.md) | 91 | `result-track:7e9e450ba437acd30ef923e8a8c436b0060c5cbbcb00ca87da1f306d88640a8b` |
| 10 | `theorem` | [card_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean/declarations/card-ico--487e018dc78d3694674a77d2.md) | 94 | `result-track:487e018dc78d3694674a77d270ac7957496dbb52676f1e93685e9de26435d183` |
| 11 | `theorem` | [card_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean/declarations/card-ioc--6ee9a1fe4e78d729c9fc81ff.md) | 97 | `result-track:6ee9a1fe4e78d729c9fc81fff3a2c5443289efb564ea49f0a7f29c12e465bff1` |
| 12 | `theorem` | [card_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean/declarations/card-ioo--b2e5934684f6aba0d5db52ab.md) | 100 | `result-track:b2e5934684f6aba0d5db52ab946f3d9b45b372ba51c6e8e86bfd9479eec178fa` |
| 13 | `theorem` | [card_uIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean/declarations/card-uicc--21a95ff67a77a46e894f2dab.md) | 109 | `result-track:21a95ff67a77a46e894f2dab15213d10ea7ee10054275f92120ea578ecc97dc5` |
| 14 | `theorem` | [card_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean/declarations/card-iic--ddeaacd812175e5f78c61d04.md) | 121 | `result-track:ddeaacd812175e5f78c61d0453cea36936d73272735fceaf96cb81f38724202d` |
| 15 | `theorem` | [card_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant0aa989c8588e8d71c7c22fe8ee74cb7e5c416607879d504eaae7262245b52e79.lean/declarations/card-iio--321d1bcd600b0e009f45ab5f.md) | 125 | `result-track:321d1bcd600b0e009f45ab5f2eacbd95ff597ce3c9dc0a4d7d18500fa5589e78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
