# Verification target: GRWTSK.Topology.GeneralTopology.Perfect.Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "562e3496db8f6ee7ca09dd1ba85944372aab6851",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `562e3496db8f6ee7ca09dd1ba85944372aab6851`.

Source path: `GRWTSK/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AccPt.nhds_inter](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/declarations/accpt-nhds-inter--e4965a0dff1f6e1abd5e338f.md) | 67 | `result-track:e4965a0dff1f6e1abd5e338fb1905ac84b6a9a1d709a4e68015f35b57309cd53` |
| 2 | `def` | [Preperfect](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/declarations/preperfect--61e7fbbe1812b71169e8a30c.md) | 78 | `declaration-track:61e7fbbe1812b71169e8a30cd080ac72c8c843de4c44f541e76b300ceea34dc4` |
| 3 | `structure` | [Perfect](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/declarations/perfect--75228a45e94a81d9a5aab7ad.md) | 85 | `declaration-track:75228a45e94a81d9a5aab7ad08f71d712537ebd16276f7534a1d23333d59a95e` |
| 4 | `theorem` | [preperfect_iff_nhds](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/declarations/preperfect-iff-nhds--832895191eff9fd0091b2737.md) | 89 | `result-track:832895191eff9fd0091b273701a7287ee71ab539550ec902361c98ca47467a6f` |
| 5 | `class` | [PerfectSpace](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/declarations/perfectspace--638a4436f5d25670ab33d428.md) | 101 | `declaration-track:638a4436f5d25670ab33d428a44f8b058a5b62ca7b01a60b961c3f377ddaf0b8` |
| 6 | `theorem` | [PerfectSpace.univ_perfect](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/declarations/perfectspace-univ-perfect--0610a54f0f5c4afb8e4d1c88.md) | 104 | `result-track:0610a54f0f5c4afb8e4d1c88c9e77233ef77f393b4ab60b22155ae508f69454d` |
| 7 | `theorem` | [Preperfect.open_inter](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/declarations/preperfect-open-inter--d4003c6f5e0b6eb828177b78.md) | 112 | `result-track:d4003c6f5e0b6eb828177b78a2c9de062e3ba3a47aa69547bf2d8dfbe2ca9af6` |
| 8 | `theorem` | [Preperfect.perfect_closure](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/declarations/preperfect-perfect-closure--e0fe1b63a0ecd787b8bf4eaa.md) | 120 | `result-track:e0fe1b63a0ecd787b8bf4eaa56a035248350464c6a04d35540f131164b346466` |
| 9 | `theorem` | [IsOpen.preperfect](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/declarations/isopen-preperfect--61fad297ed6ee4c4903134ed.md) | 133 | `result-track:61fad297ed6ee4c4903134ed13370e8dad921c61f73a0ca9acbe0bfb2cf932ea` |
| 10 | `theorem` | [IsOpen.perfect_closure](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/declarations/isopen-perfect-closure--44bac184856ab2dab44c8f04.md) | 140 | `result-track:44bac184856ab2dab44c8f0431712b6e1afd5d160ba197db6c67f0f462262fe7` |
| 11 | `theorem` | [preperfect_iff_perfect_closure](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/declarations/preperfect-iff-perfect-closure--2e8eaea129c2f92667d9cc38.md) | 145 | `result-track:2e8eaea129c2f92667d9cc38455954bf02a8be4382f240e8158b182d56d96c32` |
| 12 | `theorem` | [Perfect.closure_nhds_inter](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/declarations/perfect-closure-nhds-inter--7780d2e53ff03ce3ced6972b.md) | 159 | `result-track:7780d2e53ff03ce3ced6972b7c16c86ea4f08e30872cfae3bd3af261833fd0f8` |
| 13 | `theorem` | [Perfect.splitting](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/declarations/perfect-splitting--0df621781eb44ffa247316b1.md) | 169 | `result-track:0df621781eb44ffa247316b17a8637d6f41cd2e8b67605a4af4b6ebf59740cf3` |
| 14 | `lemma` | [IsPreconnected.preperfect_of_nontrivial](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/declarations/ispreconnected-preperfect-of-nontrivial--6936211cb3808a38be2330fc.md) | 190 | `result-track:6936211cb3808a38be2330fc04f3f514086c5e793509ab49f251f97eb00aba79` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/declarations/instance--c8479b589e5e0c3ec2353496.md) | 210 | `declaration-track:c8479b589e5e0c3ec235349696667c8951d8691df7633e3c85353b6d9bd43d46` |
| 16 | `theorem` | [exists_countable_union_perfect_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/declarations/exists-countable-union-perfect-of-isclosed--5f03c5ce40a1882d4f61703f.md) | 222 | `result-track:5f03c5ce40a1882d4f61703f6aa1f55ce41afba447239662f96369d8aea375ec` |
| 17 | `theorem` | [exists_perfect_nonempty_of_isClosed_of_not_countable](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/declarations/exists-perfect-nonempty-of-isclosed-of-not-countable--fe36bf6d1dbfb706f165a6f4.md) | 257 | `result-track:fe36bf6d1dbfb706f165a6f46c5856ed10191bc865188312992028908ac8c89e` |
| 18 | `theorem` | [perfectSpace_iff_forall_not_isolated](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/declarations/perfectspace-iff-forall-not-isolated--ac3a1007e7f0323683e183a9.md) | 278 | `result-track:ac3a1007e7f0323683e183a9d4cb87f516fdd8c7e8f81054d21d4ee77d9892b8` |
| 19 | `instance` | [PerfectSpace.not_isolated](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant40c4a61f6a8a9f923674520215130f4ffd77ba4f69fb8ee0ba5ed5d461637f7f.lean/declarations/perfectspace-not-isolated--9fb48e1eb5b2313fc905d197.md) | 281 | `declaration-track:9fb48e1eb5b2313fc905d197725b95b997ec534d2b82a99a9a78886a1fbf2b40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
