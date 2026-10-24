# Verification target: GRWTSK.Topology.GeneralTopology.Baire.Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7eecb27e8705b47215657356ef9fe0b13e12fed",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7eecb27e8705b47215657356ef9fe0b13e12fed`.

Source path: `GRWTSK/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountableInter` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.GDelta` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Compacts` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountableInter` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BaireSpace](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/bairespace--8869c61f2b3154490ce3d25d.md) | 53 | `declaration-track:8869c61f2b3154490ce3d25dfc28b27592d791310636d49ef2f68ffb6ce1a346` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/instance--9d95f360e040b499379410d4.md) | 60 | `declaration-track:9d95f360e040b499379410d4af6a0608cff5e3a7badcf09b8c4ab113514ff827` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/instance--d0eaf32f30fd811dfaf9d086.md) | 157 | `declaration-track:d0eaf32f30fd811dfaf9d0863d89a3956aca98f564770a374454b3d08a84563f` |
| 4 | `theorem` | [dense_iInter_of_open_nat](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/dense-iinter-of-open-nat--921b89a6537c9170412820c6.md) | 198 | `result-track:921b89a6537c9170412820c60e3cabcd7b7f101789513e453dfad5b4f01619e2` |
| 5 | `theorem` | [dense_sInter_of_open](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/dense-sinter-of-open--f2073fa82b056eaf0f60a351.md) | 204 | `result-track:f2073fa82b056eaf0f60a351bb3f2df4d01be5d38d09f3bd3409a5a5c229782f` |
| 6 | `theorem` | [dense_biInter_of_open](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/dense-biinter-of-open--fc021ceb148099da896d2323.md) | 216 | `result-track:fc021ceb148099da896d23231853fac20e72cb79aafff62d43a20164b1e3e0a1` |
| 7 | `theorem` | [dense_iInter_of_open](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/dense-iinter-of-open--5fe2ff92531d8fa65e062c1b.md) | 227 | `result-track:5fe2ff92531d8fa65e062c1b7fb87610618e30f19350a255b4f20469263c2f83` |
| 8 | `theorem` | [mem_residual](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/mem-residual--97f73ea4db8fbfe1e0176cdf.md) | 237 | `result-track:97f73ea4db8fbfe1e0176cdf643d36041e3159994ff040a11a88198682c75ff2` |
| 9 | `theorem` | [eventually_residual](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/eventually-residual--e15f0378e2691a24b1243428.md) | 248 | `result-track:e15f0378e2691a24b12434288e04a327c84ee1c2ec12e713b33e62a6534d5ffb` |
| 10 | `theorem` | [dense_of_mem_residual](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/dense-of-mem-residual--f9084d4a28b80fba9737ae65.md) | 256 | `result-track:f9084d4a28b80fba9737ae6580fdc26abcb778ee6eb6618a0682a549798c2c4c` |
| 11 | `theorem` | [dense_sInter_of_Gδ](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/dense-sinter-of-g--0e8fe09bfa39c7e6981e4a35.md) | 262 | `result-track:0e8fe09bfa39c7e6981e4a35aedf46187f0f76a05fe4a5222eda81aa7d0ec89e` |
| 12 | `theorem` | [dense_iInter_of_Gδ](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/dense-iinter-of-g--9a33f4ccc4e358a910d83841.md) | 271 | `result-track:9a33f4ccc4e358a910d8384182438453d289715894fbb747c8f627ea24244d8a` |
| 13 | `theorem` | [dense_biInter_of_Gδ](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/dense-biinter-of-g--0764177c7cb419a17cbc86ca.md) | 281 | `result-track:0764177c7cb419a17cbc86ca0f6688c8dc12c1ce34d373325a4e7930287aa0b8` |
| 14 | `theorem` | [Dense.inter_of_Gδ](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/dense-inter-of-g--8f4626237ee61e61390a9ef7.md) | 290 | `result-track:8f4626237ee61e61390a9ef714baad4e4b7b041061a0da5c9e5ae729ae8add48` |
| 15 | `theorem` | [IsGδ.dense_iUnion_interior_of_closed](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/isg-dense-iunion-interior-of-closed--2536e36d65ada848d4c713e8.md) | 299 | `result-track:2536e36d65ada848d4c713e8bb539a46e93981da934452e963d07afe26eb70c2` |
| 16 | `theorem` | [IsGδ.dense_biUnion_interior_of_closed](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/isg-dense-biunion-interior-of-closed--4145482f24c56a0184457c9e.md) | 318 | `result-track:4145482f24c56a0184457c9e6056272006f8483d2575d8565e741bc8510511a9` |
| 17 | `theorem` | [IsGδ.dense_sUnion_interior_of_closed](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/isg-dense-sunion-interior-of-closed--36859421dce1915263e1b5bd.md) | 329 | `result-track:36859421dce1915263e1b5bd47046665a81841bf927965f60b36bdf3f4ee18bb` |
| 18 | `theorem` | [dense_biUnion_interior_of_closed](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/dense-biunion-interior-of-closed--13ee58623dec172425f1d3c6.md) | 338 | `result-track:13ee58623dec172425f1d3c6b26a8056fcc136244002cf01fd8cf91efa0c0283` |
| 19 | `theorem` | [dense_sUnion_interior_of_closed](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/dense-sunion-interior-of-closed--68d313f57e445ec3db7a3914.md) | 345 | `result-track:68d313f57e445ec3db7a3914e9b93bc8e1d9f8fbca8d807a573d181301e94731` |
| 20 | `theorem` | [dense_iUnion_interior_of_closed](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/dense-iunion-interior-of-closed--5711f66129b343e66e2398fa.md) | 352 | `result-track:5711f66129b343e66e2398fa09382a4fbec873c91e2fd9aa07ef368f275369b4` |
| 21 | `theorem` | [nonempty_interior_of_iUnion_of_closed](../../../../../mathematics/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/declarations/nonempty-interior-of-iunion-of-closed--5c493f6b431c2c24250a3706.md) | 359 | `result-track:5c493f6b431c2c24250a3706fb199fb76a33b12a2701a21b6bb8adc266f789e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
