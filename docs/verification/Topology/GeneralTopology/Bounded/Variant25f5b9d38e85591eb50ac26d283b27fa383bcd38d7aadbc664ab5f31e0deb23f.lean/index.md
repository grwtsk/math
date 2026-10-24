# Verification target: GRWTSK.Topology.GeneralTopology.Bounded.Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c57f696a3832faba98223f5bb834de93634f0e5e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c57f696a3832faba98223f5bb834de93634f0e5e`.

Source path: `GRWTSK/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.BalancedCoreHull` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Seminorm` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformGroup` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Cauchy` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/isvonnbounded--c8b2ffe8b653fe2ca05a740f.md) | 65 | `declaration-track:c8b2ffe8b653fe2ca05a740f6dd1e852dddbeb5f2ece151befe8650868a4b26c` |
| 2 | `theorem` | [isVonNBounded_empty](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/isvonnbounded-empty--f15e92dbbf83d694d55536fe.md) | 72 | `result-track:f15e92dbbf83d694d55536fe76574da909c70a15f8d0dcf6417f6e6b1292c4d7` |
| 3 | `theorem` | [isVonNBounded_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/isvonnbounded-iff--6e869fefbafff2315356861e.md) | 77 | `result-track:6e869fefbafff2315356861ed70bd4808989719c66c78e603ebc5b4187576170` |
| 4 | `theorem` | [_root_.Filter.HasBasis.isVonNBounded_basis_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/root-filter-hasbasis-isvonnbounded-basis-iff--f37a02ec75ff806d5f554723.md) | 81 | `result-track:f37a02ec75ff806d5f5547239c8c3d9560c851b2fb7390d141a292a1fb5cc48e` |
| 5 | `theorem` | [IsVonNBounded.subset](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/isvonnbounded-subset--18a3737480cfb950f12cbeff.md) | 89 | `result-track:18a3737480cfb950f12cbeff61a270dc2b896aac15639f76738ee151dcdeb031` |
| 6 | `theorem` | [IsVonNBounded.union](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/isvonnbounded-union--73d36223f79bde3d14817119.md) | 94 | `result-track:73d36223f79bde3d14817119ea57c506405a23fd49cd560c1944792d975d8b5a` |
| 7 | `theorem` | [IsVonNBounded.of_topologicalSpace_le](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/isvonnbounded-of-topologicalspace-le--b98772bc6af696442adf4b06.md) | 108 | `result-track:b98772bc6af696442adf4b060c29a02aab2553115d1d8bd4e4f17f9c1b8f45b3` |
| 8 | `theorem` | [IsVonNBounded.image](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/isvonnbounded-image--0dade4eba58748da36b57c7c.md) | 121 | `result-track:0dade4eba58748da36b57c7cb343b8766a45be13ba3909639154b5998c9e62dc` |
| 9 | `theorem` | [IsVonNBounded.smul_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/isvonnbounded-smul-tendsto-zero--92e821aff41cc44b77aa0b97.md) | 147 | `result-track:92e821aff41cc44b77aa0b97b065d1dd6769ab57255b7522f8b86a85a50a6c31` |
| 10 | `theorem` | [isVonNBounded_of_smul_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/isvonnbounded-of-smul-tendsto-zero--feff9241640aee97447784ad.md) | 161 | `result-track:feff9241640aee97447784ad3da89976aeba32015ea6b20f711351c4a797102e` |
| 11 | `theorem` | [isVonNBounded_iff_smul_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/isvonnbounded-iff-smul-tendsto-zero--7b5ae2d323d82cbd5f30b823.md) | 186 | `result-track:7b5ae2d323d82cbd5f30b823d86a2186f14d41c40f37b3adf9c546c9db7d3bfa` |
| 12 | `theorem` | [isVonNBounded_singleton](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/isvonnbounded-singleton--65dd1452eaa43fda1dfdd526.md) | 202 | `result-track:65dd1452eaa43fda1dfdd526c340e0a64128e5550869c18259e3249fa78ee3e7` |
| 13 | `theorem` | [isVonNBounded_covers](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/isvonnbounded-covers--c3c3a35001996403300e2455.md) | 207 | `result-track:c3c3a35001996403300e24559ae1e893804ca440b6830a8d743bb86ac232c7b8` |
| 14 | `def` | [vonNBornology](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/vonnbornology--b499c291e95ab50a5f0c5fff.md) | 220 | `declaration-track:b499c291e95ab50a5f0c5fffdbf5d4c5cf0a24484e111cc679d5c6902054fdeb` |
| 15 | `theorem` | [isBounded_iff_isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/isbounded-iff-isvonnbounded--60b06e66acb193ba1aebfd77.md) | 228 | `result-track:60b06e66acb193ba1aebfd779959abafadc0396af5bd4fb613d26e3d4668b10f` |
| 16 | `theorem` | [TotallyBounded.isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/totallybounded-isvonnbounded--1d14e7531d89216d1e4868bb.md) | 243 | `result-track:1d14e7531d89216d1e4868bb67b6805a1f356bd8631cd7b07f2bc5f01efaac72` |
| 17 | `theorem` | [isVonNBounded_ball](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/isvonnbounded-ball--1277add3b933fceb1d78aeaf.md) | 274 | `result-track:1277add3b933fceb1d78aeaf31680573d31aa0c382e3ff76051b91172615fc55` |
| 18 | `theorem` | [isVonNBounded_closedBall](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/isvonnbounded-closedball--37c1b5ce18828e229fb9e2e7.md) | 279 | `result-track:37c1b5ce18828e229fb9e2e761e4b62fc50dba8b3e6aef05bc379a56431bde27` |
| 19 | `theorem` | [isVonNBounded_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/isvonnbounded-iff--e225029e6fd36d7623b786f5.md) | 284 | `result-track:e225029e6fd36d7623b786f5b5273b4c518eec16c616e4c73530262817102600` |
| 20 | `theorem` | [isVonNBounded_iff'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/isvonnbounded-iff--d16bdccd34fa3a9eeb938d89.md) | 297 | `result-track:d16bdccd34fa3a9eeb938d896a9443ff9fbd6b432719ad9ae8c311f50abe01d5` |
| 21 | `theorem` | [image_isVonNBounded_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/image-isvonnbounded-iff--fb947c1825b8e38bd4f6b242.md) | 302 | `result-track:fb947c1825b8e38bd4f6b24230bc9549392370f95ef6c305bbba047731d9c213` |
| 22 | `theorem` | [vonNBornology_eq](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/vonnbornology-eq--be024b0cc84344a659b3a35a.md) | 309 | `result-track:be024b0cc84344a659b3a35acd089d24c88a9cda6724a31848403448fb1a61e5` |
| 23 | `theorem` | [isBounded_iff_subset_smul_ball](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/isbounded-iff-subset-smul-ball--177fe0df4fac8c6803799421.md) | 316 | `result-track:177fe0df4fac8c680379942189ddbb3fd8e3bc680cb0d7736a677da29b6af6de` |
| 24 | `theorem` | [isBounded_iff_subset_smul_closedBall](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/declarations/isbounded-iff-subset-smul-closedball--bd6dad143868515fd14b547e.md) | 328 | `result-track:bd6dad143868515fd14b547e6bfe90478ac0921757f4e9f9ef19a37f3045b0a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
