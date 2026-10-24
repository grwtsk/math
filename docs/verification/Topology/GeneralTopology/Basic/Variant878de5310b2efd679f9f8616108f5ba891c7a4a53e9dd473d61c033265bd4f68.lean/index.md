# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad905785646092288944e833d0fefcd1a63ea9db",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad905785646092288944e833d0fefcd1a63ea9db`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.List.Count` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.MinMax` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tail_dropLast](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/tail-droplast--54f21078116fa971ea81dbeb.md) | 36 | `result-track:54f21078116fa971ea81dbeb48d8fedac3aafbb591f1e598aae12afd78c5632b` |
| 2 | `theorem` | [dropLast_reverse](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/droplast-reverse--6fd1216edd13f75005e5cb92.md) | 45 | `result-track:6fd1216edd13f75005e5cb922412d1b4d8f0a303a975c07aabff57743185d0ef` |
| 3 | `theorem` | [length_filter_pos_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/length-filter-pos-iff--f1cfebb75767798d41d1d93e.md) | 57 | `result-track:f1cfebb75767798d41d1d93e3c7c69d240e7e44689f6bc51f0c0f009ef831cef` |
| 4 | `theorem` | [length_filter_lt_length_iff_exists](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/length-filter-lt-length-iff-exists--2a771efef0ab7f9b9e6be7bc.md) | 63 | `result-track:2a771efef0ab7f9b9e6be7bcdba2cf13b352d667baa570164f519e998d5d0368` |
| 5 | `theorem` | [length_filterMap_pos_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/length-filtermap-pos-iff--d77b3fa54e2742e62a447fcf.md) | 70 | `result-track:d77b3fa54e2742e62a447fcf32760c1d480f752efcd4bfc909911ea9d5a0f16e` |
| 6 | `theorem` | [length_filterMap_lt_length_iff_exists](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/length-filtermap-lt-length-iff-exists--016a1fa50514caa44eaa8a2b.md) | 81 | `result-track:016a1fa50514caa44eaa8a2b8e8b3496861d1ba7b4f790cf70018139ee1dfe09` |
| 7 | `theorem` | [getElem_eq_getElem_reverse](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/getelem-eq-getelem-reverse--922637031b94be98fbe7bb4f.md) | 95 | `result-track:922637031b94be98fbe7bb4f23e5e3572f5bdd3718ebdb4b5e13ac4e6ca97587` |
| 8 | `theorem` | [length_leftpad](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/length-leftpad--fe24f32d4e6895b79e6b98fd.md) | 107 | `result-track:fe24f32d4e6895b79e6b98fd078bf47a4ff114b5670701a712a8044de5d5787b` |
| 9 | `theorem` | [length_rightpad](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/length-rightpad--1daf460d93faa6932b396546.md) | 111 | `result-track:1daf460d93faa6932b39654619c339df7411c3bb93177c03e06bc9c2c5764439` |
| 10 | `theorem` | [length_intersperse](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/length-intersperse--5c24330c0b387b51939083b3.md) | 121 | `result-track:5c24330c0b387b51939083b38564bbcb95e526ad0bd439f24841f1564c379779` |
| 11 | `theorem` | [getElem?_intersperse_two_mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/getelem-intersperse-two-mul--2620c74649d2faa452f5e6c7.md) | 127 | `result-track:2620c74649d2faa452f5e6c700ab820bb66ef0e5ca16edbeaed6d16fba5a82eb` |
| 12 | `theorem` | [getElem?_intersperse_two_mul_add_one](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/getelem-intersperse-two-mul-add-one--8a81c8d173eb56e50bc5f767.md) | 131 | `result-track:8a81c8d173eb56e50bc5f7677406681c46e3418ab2acb8961a76e178bdae26ff` |
| 13 | `theorem` | [getElem?_intersperse](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/getelem-intersperse--c053e17ea07fde034ce03215.md) | 141 | `result-track:c053e17ea07fde034ce03215bfef9c92bd09f98e9f3b516a7ca4585619472f60` |
| 14 | `theorem` | [getElem_intersperse_two_mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/getelem-intersperse-two-mul--65fbc0b1193902a39b242171.md) | 160 | `result-track:65fbc0b1193902a39b2421715dfde53829e5d083a0834f6c8e6b8370d5d8ed83` |
| 15 | `theorem` | [getElem_intersperse_two_mul_add_one](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/getelem-intersperse-two-mul-add-one--0c2521408a34a260d0abaac0.md) | 165 | `result-track:0c2521408a34a260d0abaac0068b787e610cbbf73a8d28413df01dcc27d236ab` |
| 16 | `theorem` | [getElem_intersperse](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/getelem-intersperse--ffa308f4238339378559d886.md) | 172 | `result-track:ffa308f4238339378559d886aab9d67c53b64a7f2ba899e6b30f82775150c880` |
| 17 | `theorem` | [getElem_eq_getElem_intersperse_two_mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/getelem-eq-getelem-intersperse-two-mul--4bda26d8cf583fbbb0526d12.md) | 183 | `result-track:4bda26d8cf583fbbb0526d12bec07da27ed164e6c7b659e872c0fdd13a2f4fd8` |
| 18 | `theorem` | [mem_eraseIdx_iff_getElem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/mem-eraseidx-iff-getelem--d6d6bb1723e4ca5c8ef4a83c.md) | 191 | `result-track:d6d6bb1723e4ca5c8ef4a83c87a13d0da26d6f728b3273adba7b6cacdbc512e7` |
| 19 | `theorem` | [mem_eraseIdx_iff_getElem?](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/mem-eraseidx-iff-getelem--519abade84fcf6e90b09f2bd.md) | 202 | `result-track:519abade84fcf6e90b09f2bd7dfbbaaf5e59a2ef96d4bd9a288fd04518cf6e87` |
| 20 | `theorem` | [min?_eq_some_iff'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/min-eq-some-iff--e1b1d3e1a10e72c280d6b092.md) | 215 | `result-track:e1b1d3e1a10e72c280d6b0926973c129cce7c39c6a1aea5a6fb3d683a5e52208` |
| 21 | `theorem` | [min?_get_le_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/min-get-le-of-mem--9beca15e7e374c987473966e.md) | 219 | `result-track:9beca15e7e374c987473966eccc893f7b08f5b2b4868d7bfdeeeac71b36d7448` |
| 22 | `theorem` | [min?_getD_le_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/min-getd-le-of-mem--c4d0af0e6c74633f348b298d.md) | 233 | `result-track:c4d0af0e6c74633f348b298dfb98072d0102bac3832b55e5e940ab3b248001df` |
| 23 | `theorem` | [max?_eq_some_iff'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/max-eq-some-iff--db8aff207c815617eb5ac124.md) | 240 | `result-track:db8aff207c815617eb5ac12448c0fabb8aec1ca6f76902f151df0abee039041c` |
| 24 | `theorem` | [le_max?_get_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/le-max-get-of-mem--327374494e4edd36701499b2.md) | 244 | `result-track:327374494e4edd36701499b2931e5ba0a130b32d37f0affa092bee4536d30eb4` |
| 25 | `theorem` | [le_max?_getD_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/le-max-getd-of-mem--e55a0cc6252778343fd93b99.md) | 258 | `result-track:e55a0cc6252778343fd93b99dddde25f4e788764fceee37028edbdac3e611e1b` |
| 26 | `theorem` | [append_eq_append_iff_of_size_eq_left](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/append-eq-append-iff-of-size-eq-left--7883280693139b17c565560a.md) | 264 | `result-track:7883280693139b17c565560a4e11253cb4d9c26b04b39d0e5a5f9d31e7452cc0` |
| 27 | `theorem` | [append_eq_append_iff_of_size_eq_right](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/declarations/append-eq-append-iff-of-size-eq-right--f23372c774fe3114fd8d10d7.md) | 271 | `result-track:f23372c774fe3114fd8d10d7cd2197d53b5f7e183954fb6a7c1ff1f8dedbe162` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
