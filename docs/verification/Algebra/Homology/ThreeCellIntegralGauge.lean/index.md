# Verification target: GRWTSK.Algebra.Homology.ThreeCellIntegralGauge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb0cf56ed96a0f25e82ef69c48c22b7ce6425229",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Homology/ThreeCellIntegralGauge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/index.md) · [Full source](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb0cf56ed96a0f25e82ef69c48c22b7ce6425229`.

Source path: `GRWTSK/Algebra/Homology/ThreeCellIntegralGauge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Homology/ThreeCellIntegralGauge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.Homology.ThreeCellCech`](../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Cell](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/cell--e78f7de11222078bfe6c34df.md) | 18 | `declaration-track:e78f7de11222078bfe6c34df75ebf6bf46a267945d052ff8ff8acfc6d0b7b6dc` |
| 2 | `abbrev` | [Reduced](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/reduced--846c063afb3a3031270c7f43.md) | 19 | `declaration-track:846c063afb3a3031270c7f4385932b89939418f29f46414b7bfc553ef77d1c23` |
| 3 | `abbrev` | [Packed](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/packed--6d90d915ad6e801fdc20bcab.md) | 20 | `declaration-track:6d90d915ad6e801fdc20bcabe36ca675a1c4ec55a747132a895c9078e718a0db` |
| 4 | `def` | [total](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/total--ccff0b8247b083ef8a4cf4e4.md) | 24 | `declaration-track:ccff0b8247b083ef8a4cf4e405c550060dc2513fc73cb2291f543bd85555852c` |
| 5 | `def` | [reduce](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/reduce--5f51f6c611d4ade2298b4bdd.md) | 26 | `declaration-track:5f51f6c611d4ade2298b4bddfe30362ec33815b1981610e8e04cc7df9c19a7c9` |
| 6 | `def` | [pack](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/pack--ba71b0293c24c30cfb4900e5.md) | 29 | `declaration-track:ba71b0293c24c30cfb4900e5dfc72c74a9df961e2ac3c419ba0af5ca9e61e66d` |
| 7 | `def` | [unpack](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/unpack--4700899e147a094119c35742.md) | 31 | `declaration-track:4700899e147a094119c35742dba2af2c7d2596e59749d14555f4e506dc72a047` |
| 8 | `theorem` | [unpack_pack](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/unpack-pack--6e3ab5db227d965cf364b37f.md) | 35 | `result-track:6e3ab5db227d965cf364b37f4da1f02bda8492fe919b77500ae27cb56e6826ad` |
| 9 | `theorem` | [pack_unpack](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/pack-unpack--798430a3e87f1a83b006e778.md) | 39 | `result-track:798430a3e87f1a83b006e77879a40e5c5fecc2620f4d124da6a843b37a7727dd` |
| 10 | `def` | [packHom](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/packhom--38ae55803b0f0cbfde393cc6.md) | 48 | `declaration-track:38ae55803b0f0cbfde393cc6dc448bb10897c92311b11c82785ef6ba6754bcb6` |
| 11 | `def` | [splitEquiv](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/splitequiv--c7fb47c6208ed762a5369164.md) | 60 | `declaration-track:c7fb47c6208ed762a53691646f32f67ba6a529671207ae5d1907b9fd569617d8` |
| 12 | `def` | [anchor](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/anchor--617d22642d16de1a92d7e0f2.md) | 69 | `declaration-track:617d22642d16de1a92d7e0f2c29a960ddf5cc7bc7f444bc46df3431820fc2711` |
| 13 | `theorem` | [reduce_anchor](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/reduce-anchor--4a05e29df934a5318f2efb7b.md) | 71 | `result-track:4a05e29df934a5318f2efb7bda9f340f2b9929583da45e9f12f8538d9781845a` |
| 14 | `theorem` | [reduce_surjective](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/reduce-surjective--a4b21057fd99dfc289b4e8b7.md) | 74 | `result-track:a4b21057fd99dfc289b4e8b7d523b3592e9804cb098470e20b92ddc0527c6625` |
| 15 | `def` | [reduction](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/reduction--dfa4df08105ed0436d407ebb.md) | 77 | `declaration-track:dfa4df08105ed0436d407ebb476e96c620a29f5242026e389f61cd5b5846a1f3` |
| 16 | `abbrev` | [GaugeQuotient](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/gaugequotient--590c871c6d1f3d073b6182fd.md) | 80 | `declaration-track:590c871c6d1f3d073b6182fde49f0dbfa59c5fa4e651e36933e33e2fdd213245` |
| 17 | `def` | [quotientEquiv](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/quotientequiv--ae78db6507e9cf16c91674f1.md) | 83 | `declaration-track:ae78db6507e9cf16c91674f1ea4dad55a24b04b4a2241e5c2bea3ae584d28048` |
| 18 | `theorem` | [quotientEquiv_mk](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/quotientequiv-mk--fe1492098c08cc33ab3f4d0d.md) | 86 | `result-track:fe1492098c08cc33ab3f4d0dc5de9cbf03e780d48e8327c35347442e8741a091` |
| 19 | `def` | [shift](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/shift--51f70adecaab6bf961cf899f.md) | 89 | `declaration-track:51f70adecaab6bf961cf899f037709ef1b902e22f16822cabb36c6dc978f84ff` |
| 20 | `theorem` | [reduce_eq_iff_shift](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/reduce-eq-iff-shift--93864bcb0f4e9bd5e88c9ab4.md) | 92 | `result-track:93864bcb0f4e9bd5e88c9ab4e3b20400f62d02d88122ff0d542cb42bd1b84280` |
| 21 | `def` | [mapFields](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/mapfields--9fe19e99cc73d47f8729395c.md) | 125 | `declaration-track:9fe19e99cc73d47f8729395ca2ea46e406b4995bb05f6718bf416a685f82dd06` |
| 22 | `theorem` | [reduce_map](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/reduce-map--e46271df7c55ac6ef4b402fd.md) | 128 | `result-track:e46271df7c55ac6ef4b402fd9d5a19607698b3ea84762c14431508dcc21d0576` |
| 23 | `theorem` | [anchor_map](../../../../mathematics/Algebra/Homology/ThreeCellIntegralGauge.lean/declarations/anchor-map--e65b1964a2e78ce0ccf326cf.md) | 135 | `result-track:e65b1964a2e78ce0ccf326cf079eb9b8e52d578ac3dd16d6459dc1307dbbe134` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
