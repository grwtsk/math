# Verification target: GRWTSK.Topology.GeneralTopology.Bounded.Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8b3cd9ba9a8019b3e2e39fba30f0eb23d783062",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8b3cd9ba9a8019b3e2e39fba30f0eb23d783062`.

Source path: `GRWTSK/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Continuity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Bounded` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Pointwise` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [comap_norm_atTop'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/declarations/comap-norm-attop--5eab6db732288821db59546c.md) | 37 | `result-track:5eab6db732288821db59546c3b8cc03147088e1d4783eef28188ca4b076cc1ed` |
| 2 | `lemma` | [Filter.HasBasis.cobounded_of_norm'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/declarations/filter-hasbasis-cobounded-of-norm--da92bf2d76366e3c74bd7a27.md) | 41 | `result-track:da92bf2d76366e3c74bd7a27eb2dc32e8c1f393f7f050d38b0624d27b0e519ec` |
| 3 | `lemma` | [Filter.hasBasis_cobounded_norm'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/declarations/filter-hasbasis-cobounded-norm--03cc6366a993f8a85feddcd9.md) | 46 | `result-track:03cc6366a993f8a85feddcd9fb7f5062795da5f34451aa899eb22a4b803bf717` |
| 4 | `lemma` | [tendsto_norm_atTop_iff_cobounded'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/declarations/tendsto-norm-attop-iff-cobounded--549ea5c549bcbed979658831.md) | 50 | `result-track:549ea5c549bcbed979658831d937ba3e0ccecce3d2d3db221e0cfe653a956f08` |
| 5 | `lemma` | [tendsto_norm_cobounded_atTop'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/declarations/tendsto-norm-cobounded-attop--aa586e67d39b091a87ae4f6f.md) | 55 | `result-track:aa586e67d39b091a87ae4f6fa0b577551deaaa8ede012f69c3b10213c622cdd5` |
| 6 | `lemma` | [eventually_cobounded_le_norm'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/declarations/eventually-cobounded-le-norm--963f429d8962aeb5403111b0.md) | 59 | `result-track:963f429d8962aeb5403111b0e63dde957f438aacffa611e2fac623287ef43a4a` |
| 7 | `lemma` | [tendsto_norm_cocompact_atTop'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/declarations/tendsto-norm-cocompact-attop--35fb7c3127ee423b894e3609.md) | 63 | `result-track:35fb7c3127ee423b894e36092d67ea41264c0b53b0089afb27b987a6673ef567` |
| 8 | `lemma` | [Filter.inv_cobounded](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/declarations/filter-inv-cobounded--d73df0c702f176919473d197.md) | 67 | `result-track:d73df0c702f176919473d197eb17d48d7da072930e470c83a92d3fc0a96985bb` |
| 9 | `theorem` | [Filter.tendsto_inv_cobounded](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/declarations/filter-tendsto-inv-cobounded--a509a577de101e165cf5d1dc.md) | 72 | `result-track:a509a577de101e165cf5d1dcccfc76b90ea7e50b3a4cbdea2b9b4ab90ac97feb` |
| 10 | `lemma` | [isBounded_iff_forall_norm_le'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/declarations/isbounded-iff-forall-norm-le--2fdb662587106e0ac666e9f7.md) | 76 | `result-track:2fdb662587106e0ac666e9f78dea2711735b3eaa8cc22c700d081e092e4d3013` |
| 11 | `lemma` | [Bornology.IsBounded.exists_pos_norm_le'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/declarations/bornology-isbounded-exists-pos-norm-le--c2ba000c2cfe3b1cce9c86ac.md) | 86 | `result-track:c2ba000c2cfe3b1cce9c86ac3f545afb775b0b02c387b722073cf3901781c969` |
| 12 | `lemma` | [Bornology.IsBounded.exists_pos_norm_lt'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/declarations/bornology-isbounded-exists-pos-norm-lt--b44d69cb15fef80c48540eb1.md) | 91 | `result-track:b44d69cb15fef80c48540eb1707325eb5cc83368428436a409741e27f8679a31` |
| 13 | `lemma` | [NormedCommGroup.cauchySeq_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/declarations/normedcommgroup-cauchyseq-iff--f1f21616fe168a38e0179779.md) | 96 | `result-track:f1f21616fe168a38e0179779321092c04185f5626ab5dc35459a71971009e21b` |
| 14 | `lemma` | [IsCompact.exists_bound_of_continuousOn'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/declarations/iscompact-exists-bound-of-continuouson--803919e5996ecd820d2b763f.md) | 101 | `result-track:803919e5996ecd820d2b763fb5c8bf6ae5dad973f24f331a830f29d181abeb20` |
| 15 | `lemma` | [HasCompactMulSupport.exists_bound_of_continuous](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/declarations/hascompactmulsupport-exists-bound-of-continuous--8e3eb20f13734e469a34f5d6.md) | 107 | `result-track:8e3eb20f13734e469a34f5d60ee89c250dd8f3f3443e30d642b81f5860ff7386` |
| 16 | `lemma` | [Filter.Tendsto.op_one_isBoundedUnder_le'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/declarations/filter-tendsto-op-one-isboundedunder-le--ea01410143d229b6d30fee47.md) | 119 | `result-track:ea01410143d229b6d30fee47fffaef9c0faba2587c11065f7ca43ff53c116670` |
| 17 | `theorem` | [Filter.Tendsto.op_one_isBoundedUnder_le](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/declarations/filter-tendsto-op-one-isboundedunder-le--45e2949dfd06dcef6b6d8b4d.md) | 145 | `result-track:45e2949dfd06dcef6b6d8b4d2692d31a8a547681ad5a90bd1e426b3ac6e4e039` |
| 18 | `lemma` | [Continuous.bounded_above_of_compact_support](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/declarations/continuous-bounded-above-of-compact-support--fd89abe80704fa68fcb56839.md) | 155 | `result-track:fd89abe80704fa68fcb568398245500d6e0001ccbe360bf65b19195e8247f079` |
| 19 | `lemma` | [HasCompactMulSupport.exists_pos_le_norm](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/declarations/hascompactmulsupport-exists-pos-le-norm--df99ff1aa716fe1a7e138754.md) | 165 | `result-track:df99ff1aa716fe1a7e1387543172e34278f991a56d94fce05aedb7997f8b1c86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
