# Verification target: GRWTSK.Topology.GeneralTopology.KrullTopology.Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "779b146e514c11f38bf56ceb3b8daada005d455e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `779b146e514c11f38bf56ceb3b8daada005d455e`.

Source path: `GRWTSK/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Galois` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.FilterBasis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.OpenSubgroup` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ByContra` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IntermediateField.map_mono](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/intermediatefield-map-mono--7478cfef45c7add830f5451d.md) | 69 | `result-track:7478cfef45c7add830f5451ded1f4715a60a9e9352ce7099973ba051e3b6b4a9` |
| 2 | `theorem` | [IntermediateField.map_id](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/intermediatefield-map-id--7ee6c6c09a725431b93f194f.md) | 76 | `result-track:7ee6c6c09a725431b93f194f84aa0813bc2891618010f1ea1418fa0ed80bc5eb` |
| 3 | `instance` | [im_finiteDimensional](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/im-finitedimensional--cd04acf664a3db203d1e6921.md) | 83 | `declaration-track:cd04acf664a3db203d1e69212ebcb797fd59fc9e6d89af11094bdd660476293b` |
| 4 | `def` | [finiteExts](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/finiteexts--6a5b466a478bf4e093e6fae7.md) | 91 | `declaration-track:6a5b466a478bf4e093e6fae7abe705d09e1b35d59d5539253be35ed9e238e8b1` |
| 5 | `def` | [fixedByFinite](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/fixedbyfinite--287430122f5af3f07495397a.md) | 98 | `declaration-track:287430122f5af3f07495397a716e3aceacc64e31675b95029c7135e70c36f342` |
| 6 | `theorem` | [IntermediateField.finiteDimensional_bot](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/intermediatefield-finitedimensional-bot--b4048fcc6f2bb59017a3923b.md) | 103 | `result-track:b4048fcc6f2bb59017a3923be9ae689553134a8ce214055d3f61c3f20cb6daad` |
| 7 | `theorem` | [IntermediateField.fixingSubgroup.bot](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/intermediatefield-fixingsubgroup-bot--b46f19a7dd809b282eb42e4e.md) | 109 | `result-track:b46f19a7dd809b282eb42e4ec2a28c5b0686abf45cd23a08af9bcde0e310e13e` |
| 8 | `theorem` | [top_fixedByFinite](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/top-fixedbyfinite--13db6b1487e08739d8ad2ed3.md) | 120 | `result-track:13db6b1487e08739d8ad2ed3bf0bf86253fd10394edc968c444e8967c613108f` |
| 9 | `theorem` | [finiteDimensional_sup](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/finitedimensional-sup--4cdf173022788054fabf286a.md) | 127 | `result-track:4cdf173022788054fabf286a070d2855e15e9da6a8db50cbd94b6cbdd34e8bab` |
| 10 | `theorem` | [IntermediateField.mem_fixingSubgroup_iff](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/intermediatefield-mem-fixingsubgroup-iff--362ca7f5499a5834a5604989.md) | 134 | `result-track:362ca7f5499a5834a56049894813f348d18fb51f971d4864b6bc0b8c3eb70411` |
| 11 | `theorem` | [IntermediateField.fixingSubgroup.antimono](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/intermediatefield-fixingsubgroup-antimono--b202a8355252bb955c3a2a1c.md) | 140 | `result-track:b202a8355252bb955c3a2a1c52aa409acddb73af4d1411180bfd58e8a45b1141` |
| 12 | `def` | [galBasis](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/galbasis--59ae8ee850a2bec83162fd10.md) | 148 | `declaration-track:59ae8ee850a2bec83162fd10e085dff6494993c9bf33d1098c871992c7e592e8` |
| 13 | `theorem` | [mem_galBasis_iff](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/mem-galbasis-iff--e98fd602c2340f9742b4cb44.md) | 163 | `result-track:e98fd602c2340f9742b4cb445802a9b63d6eb3afc61e0b7c69c8ce7da8092bbb` |
| 14 | `def` | [galGroupBasis](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/galgroupbasis--6a2a7d2dc5b089a2f38c9af2.md) | 170 | `declaration-track:6a2a7d2dc5b089a2f38c9af2b1c5d69581c8770dc16f812a6499bcb39ad1f0ba` |
| 15 | `instance` | [krullTopology](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/krulltopology--b115d0d9197b4b2ee1404476.md) | 204 | `declaration-track:b115d0d9197b4b2ee1404476d3192d1f1f2770ae0d98e93ea44feceb4d8310c2` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/instance--1237daed78a2eb20ec3927b6.md) | 210 | `declaration-track:1237daed78a2eb20ec3927b63a1676c1171e9b5ffb2119f0d733f2712b0e0791` |
| 17 | `theorem` | [IntermediateField.fixingSubgroup_isOpen](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/intermediatefield-fixingsubgroup-isopen--be6ac4ad2cd4890ad6b41129.md) | 219 | `result-track:be6ac4ad2cd4890ad6b41129ed2df7e69524b32caef8655fddaf3e81f0b544bf` |
| 18 | `theorem` | [IntermediateField.fixingSubgroup_isClosed](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/intermediatefield-fixingsubgroup-isclosed--c2cdfcbc8bdf2044a69c6be7.md) | 230 | `result-track:c2cdfcbc8bdf2044a69c6be7b9819d18a8dae2a74708edb3b224e355551a0b35` |
| 19 | `theorem` | [krullTopology_t2](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/krulltopology-t2--c2c32d058bb748f8c90bf2cb.md) | 237 | `result-track:c2c32d058bb748f8c90bf2cb3ce55d8f4ff476459b0a6aad9ef0b4c63091b993` |
| 20 | `theorem` | [krullTopology_totallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/declarations/krulltopology-totallydisconnected--c95de484663de22005c801ab.md) | 276 | `result-track:c95de484663de22005c801ab3fe476597218184c0b852e7b634675c46566b411` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
