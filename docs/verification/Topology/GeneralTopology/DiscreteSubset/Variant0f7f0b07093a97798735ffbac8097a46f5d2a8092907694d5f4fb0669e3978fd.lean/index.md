# Verification target: GRWTSK.Topology.GeneralTopology.DiscreteSubset.Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45d7db780c6f6e51ae8d5c4bf115b981e0f92a85",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45d7db780c6f6e51ae8d5c4bf115b981e0f92a85`.

Source path: `GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.TautoSet` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subset` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_cofinite_cocompact_iff](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/tendsto-cofinite-cocompact-iff--641d335c1e6bfedf59173112.md) | 55 | `result-track:641d335c1e6bfedf59173112a96baa1ae8178f68f006aa57137984d0313cc483` |
| 2 | `lemma` | [Continuous.discrete_of_tendsto_cofinite_cocompact](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/continuous-discrete-of-tendsto-cofinite-cocompact--a3b32ddfd09c249174c50c74.md) | 63 | `result-track:a3b32ddfd09c249174c50c74508b53e1ec60175fbd138759455ff6d3d6024481` |
| 3 | `lemma` | [tendsto_cofinite_cocompact_of_discrete](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/tendsto-cofinite-cocompact-of-discrete--cd84a2d7771f0da89087b1f0.md) | 73 | `result-track:cd84a2d7771f0da89087b1f005cde58c8bae096826b8b4f048d51d62a121195b` |
| 4 | `lemma` | [IsClosed.tendsto_coe_cofinite_of_discreteTopology](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/isclosed-tendsto-coe-cofinite-of-discretetopology--e871045932454306e03eeed9.md) | 79 | `result-track:e871045932454306e03eeed9ed2e036586962be806ef89ea7a7ac3e320229b68` |
| 5 | `lemma` | [IsClosed.tendsto_coe_cofinite_iff](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/isclosed-tendsto-coe-cofinite-iff--2c908f466b206f5f87e82027.md) | 84 | `result-track:2c908f466b206f5f87e820276649fe29d1055453ce37c774add7c9f513b79c0e` |
| 6 | `theorem` | [isClosed_and_discrete_iff](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/isclosed-and-discrete-iff--52d8e95a2d19ebed07dbf4fc.md) | 98 | `result-track:52d8e95a2d19ebed07dbf4fc538a237ee4d1c439340902217edd177dba3032cb` |
| 7 | `def` | [Filter.codiscreteWithin](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/filter-codiscretewithin--6a976cab2023cce19c8f0feb.md) | 111 | `declaration-track:6a976cab2023cce19c8f0febb100ee50c6511cd35a9074efc508edf01711b3b6` |
| 8 | `lemma` | [mem_codiscreteWithin](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/mem-codiscretewithin--d903dc69cab4bafb68b53970.md) | 113 | `result-track:d903dc69cab4bafb68b53970d272652149a4064891595c8553c74e359869c56e` |
| 9 | `lemma` | [mem_codiscreteWithin_accPt](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/mem-codiscretewithin-accpt--8a7ce995995744719e205553.md) | 120 | `result-track:8a7ce995995744719e20555312d2821c37b47a3bb331a9299910d0a9fccdfe48` |
| 10 | `theorem` | [Filter.self_mem_codiscreteWithin](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/filter-self-mem-codiscretewithin--716cd760af7f3b832e431184.md) | 126 | `result-track:716cd760af7f3b832e4311848649e0c8632989ab5254bb87c4d3ada6c4319327` |
| 11 | `lemma` | [Filter.codiscreteWithin.mono](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/filter-codiscretewithin-mono--d4228870bff924805698c9c1.md) | 130 | `result-track:d4228870bff924805698c9c1c50d35b051cd28db28c5df076ad9c64f7d33c22c` |
| 12 | `theorem` | [discreteTopology_of_codiscreteWithin](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/discretetopology-of-codiscretewithin--2edd0c04515b4c752c547bca.md) | 136 | `result-track:2edd0c04515b4c752c547bcaeeb70da0f14e5b306b14772f8ff9ebb03c46809d` |
| 13 | `lemma` | [codiscreteWithin_iff_locallyEmptyComplementWithin](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/codiscretewithin-iff-locallyemptycomplementwithin--fa52c0b1a338c700ff8c52c0.md) | 147 | `result-track:fa52c0b1a338c700ff8c52c0fe33d6cce4fa9e588aa72b6b68cd8b7205bef763` |
| 14 | `theorem` | [isClosed_sdiff_of_codiscreteWithin](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/isclosed-sdiff-of-codiscretewithin--e939f0442040ebec1174e924.md) | 156 | `result-track:e939f0442040ebec1174e92490cc20116d47f1df6a67dce5e88b197ffd7c10bb` |
| 15 | `theorem` | [nhdsNE_of_nhdsNE_sdiff_finite](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/nhdsne-of-nhdsne-sdiff-finite--7a6984893e37afb4f332d221.md) | 175 | `result-track:7a6984893e37afb4f332d221ce6b246ff3230c08b70ae38676c8835e8f8212c4` |
| 16 | `theorem` | [codiscreteWithin_iff_locallyFiniteComplementWithin](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/codiscretewithin-iff-locallyfinitecomplementwithin--932859412991216a9ba4af70.md) | 192 | `result-track:932859412991216a9ba4af704254c9496cdf570a424a3eb7f9bf75176d39dd63` |
| 17 | `def` | [Filter.codiscrete](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/filter-codiscrete--b22c4cdd716f1c087d4bed53.md) | 213 | `declaration-track:b22c4cdd716f1c087d4bed53b611271bce28c887b4766277047d712af63aea45` |
| 18 | `lemma` | [mem_codiscrete](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/mem-codiscrete--5cdf6069b81885cf8fa749c4.md) | 215 | `result-track:5cdf6069b81885cf8fa749c4a48703a5df8ac16cfe30a1b3b8bb183e67fb935c` |
| 19 | `lemma` | [mem_codiscrete_accPt](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/mem-codiscrete-accpt--ca470be6b22ffebb3da1c338.md) | 219 | `result-track:ca470be6b22ffebb3da1c3383ff161e8b7556da6cddf8f5bbfdadfad675e3980` |
| 20 | `lemma` | [mem_codiscrete'](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/mem-codiscrete--6d6903e8914381c94efc32f8.md) | 223 | `result-track:6d6903e8914381c94efc32f866f80ecfa9881920c5c57114a80e49015e44657a` |
| 21 | `lemma` | [mem_codiscrete_subtype_iff_mem_codiscreteWithin](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/declarations/mem-codiscrete-subtype-iff-mem-codiscretewithin--05d23e3f6d7f85bd727b4a42.md) | 227 | `result-track:05d23e3f6d7f85bd727b4a429614e2a2fa9101a55d88cb7fbf18934907f77899` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
