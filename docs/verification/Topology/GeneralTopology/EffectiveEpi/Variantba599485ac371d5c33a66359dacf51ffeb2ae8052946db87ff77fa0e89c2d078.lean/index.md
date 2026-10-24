# Verification target: GRWTSK.Topology.GeneralTopology.EffectiveEpi.Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7ae75d9d20239e8a93e99ff5473e38fa61b2280",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7ae75d9d20239e8a93e99ff5473e38fa61b2280`.

Source path: `GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.Limits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [relation](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/declarations/relation--0ea02cb2db2045718d4d6d06.md) | 56 | `declaration-track:0ea02cb2db2045718d4d6d0688a915a34df6d5c6970b98a54d0f27453e4452df` |
| 2 | `def` | [ιFun](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/declarations/fun--cdb90ce985b15366fd2f5c5e.md) | 80 | `declaration-track:cdb90ce985b15366fd2f5c5eab9b0fdd7a9e3bed68fe965bec28b9d5dce330f7` |
| 3 | `lemma` | [ιFun_continuous](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/declarations/fun-continuous--191da19762c577be7860dda9.md) | 88 | `result-track:191da19762c577be7860dda9f4626faa52c4655a527c0932183faa505ebc3861` |
| 4 | `lemma` | [ιFun_injective](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/declarations/fun-injective--a19fa59867eee34181d2acdc.md) | 94 | `result-track:a19fa59867eee34181d2acdccde6c0dacb95074145e289e14607b26f759f505a` |
| 5 | `def` | [QB](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/declarations/qb--f68281e25b5f7edb762a35f8.md) | 103 | `declaration-track:f68281e25b5f7edb762a35f8485a9dfaf76b98a0219f80cd9f3bd204c9aa34a5` |
| 6 | `def` | [ιHom](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/declarations/hom--b798a899707a3707e57e0eb3.md) | 109 | `declaration-track:b798a899707a3707e57e0eb35cda572b3adeb94ac8dc31479aab01ccf1114457` |
| 7 | `def` | [ι](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/declarations/anonymous--9072df0a9ac0b3514ea5172b.md) | 115 | `declaration-track:9072df0a9ac0b3514ea5172bcd9553d06dd03fc47d8f6df498118f02e2fb4c11` |
| 8 | `def` | [π'](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/declarations/anonymous--2bdfecd32118c1994d1c1534.md) | 127 | `declaration-track:2bdfecd32118c1994d1c1534d2ea3f8f9a4dc00e997e6d5fa93a811dd218201f` |
| 9 | `def` | [structAux](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/declarations/structaux--de11c1ab7abb8eae8496c8b3.md) | 137 | `declaration-track:de11c1ab7abb8eae8496c8b31b0f82bb40004488fe9c5259b5748c3a9707b6b4` |
| 10 | `lemma` | [π'_comp_ι_hom](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/declarations/comp-hom--dea276cfa0b826b75dfc2022.md) | 163 | `result-track:dea276cfa0b826b75dfc20225c0380fb2a48bf5949ef61400856687a3047c465` |
| 11 | `lemma` | [π_comp_ι_inv](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/declarations/comp-inv--7ed562bbbdd4dd4cb9af6d12.md) | 166 | `result-track:7ed562bbbdd4dd4cb9af6d12453048aa346b0e74268283641cfce3759bd71039` |
| 12 | `def` | [struct](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/declarations/struct--9a7f86a887ac1b27529033cd.md) | 176 | `declaration-track:9a7f86a887ac1b27529033cd8a3d0e16478c6916bb119add9b3c9ecb9159cc30` |
| 13 | `theorem` | [effectiveEpiFamily_of_jointly_surjective](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/declarations/effectiveepifamily-of-jointly-surjective--b734fee14fd0063ac6abd976.md) | 194 | `result-track:b734fee14fd0063ac6abd9764ca62c32d68c91e38ba129d20dcb5cd6f3456fd3` |
| 14 | `theorem` | [effectiveEpiFamily_tfae](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/declarations/effectiveepifamily-tfae--2823380ec98f2220923f36a6.md) | 204 | `result-track:2823380ec98f2220923f36a684af563f78ce947d2b5c9a4e7f9e8c2a785f75ed` |
| 15 | `instance` | [precoherent](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/declarations/precoherent--6151cf39bb7e433ab39f576f.md) | 237 | `declaration-track:6151cf39bb7e433ab39f576f9cb1741311b3277d65dacf1d9fb8c8aada77a149` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
