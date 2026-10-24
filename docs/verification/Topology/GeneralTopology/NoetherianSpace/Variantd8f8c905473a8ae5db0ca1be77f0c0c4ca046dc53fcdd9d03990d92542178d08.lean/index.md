# Verification target: GRWTSK.Topology.GeneralTopology.NoetherianSpace.Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65c6233f3bfe0ba5b665f1f002940f9e2cbf0cfc",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65c6233f3bfe0ba5b665f1f002940f9e2cbf0cfc`.

Source path: `GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.CompactlyGenerated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Closeds` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NoetherianSpace](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/noetherianspace--abc912ed7553d2e87bac53ed.md) | 50 | `declaration-track:abc912ed7553d2e87bac53ed84fa5d51cc6940a4564869eb1756a134b45c7997` |
| 2 | `theorem` | [noetherianSpace_iff_opens](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/noetherianspace-iff-opens--384996566822e10d934342be.md) | 54 | `result-track:384996566822e10d934342bee9dbd790125c30acc124129af45261fe119f7d9e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/instance--4481a6f7e30afe190eacee6a.md) | 60 | `declaration-track:4481a6f7e30afe190eacee6a4d9c710841f90baa52d6d621ca7c6f9facc5770c` |
| 4 | `theorem` | [NoetherianSpace.isCompact](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/noetherianspace-iscompact--d88cdf3a4b6ffafd3498af91.md) | 67 | `result-track:d88cdf3a4b6ffafd3498af9184289b95a7eb7674662fc63be916af1361aa2d75` |
| 5 | `theorem` | [_root_.Inducing.noetherianSpace](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/root-inducing-noetherianspace--2ce2923dd8ff9ac7b6dd78ff.md) | 75 | `result-track:2ce2923dd8ff9ac7b6dd78fff0e5f42fd81fc1233657ff6ed6f0b8618f7216ce` |
| 6 | `instance` | [NoetherianSpace.set](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/noetherianspace-set--d4ae5c9ea75a5781ce0544df.md) | 80 | `declaration-track:d4ae5c9ea75a5781ce0544df7e03cf193b94a0cfe2146d2c67ca6df83bae9e94` |
| 7 | `theorem` | [noetherianSpace_TFAE](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/noetherianspace-tfae--4e2fdeb07b4a5c503298fc8c.md) | 87 | `result-track:4e2fdeb07b4a5c503298fc8c4f407f678f954ce4ec260b3257e4b3c77186a954` |
| 8 | `theorem` | [noetherianSpace_iff_isCompact](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/noetherianspace-iff-iscompact--354027dc2cbfafe146ebdfbb.md) | 106 | `result-track:354027dc2cbfafe146ebdfbb629d661dfceca42d366fde93cce07e46942e6e66` |
| 9 | `theorem` | [NoetherianSpace.wellFounded_closeds](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/noetherianspace-wellfounded-closeds--9295a4ed6938459497716914.md) | 109 | `result-track:9295a4ed6938459497716914b221e7ebe328dea07d90b163f3950c2b7fa4205b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/instance--952f5896a700691510c12543.md) | 113 | `declaration-track:952f5896a700691510c12543fbd157c81c64120c1839236c3ea076b1ffc4877e` |
| 11 | `theorem` | [noetherianSpace_of_surjective](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/noetherianspace-of-surjective--96ad40c0d3b3a1f61fb03821.md) | 122 | `result-track:96ad40c0d3b3a1f61fb038215e88750da44f207f5a7012dbab7a2736e3f5f4a7` |
| 12 | `theorem` | [noetherianSpace_iff_of_homeomorph](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/noetherianspace-iff-of-homeomorph--c6778194a567e221eb3ba8fd.md) | 128 | `result-track:c6778194a567e221eb3ba8fd20f3ce16b3ec680a683e46fd0e4ed23b9b8bcd20` |
| 13 | `theorem` | [NoetherianSpace.range](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/noetherianspace-range--f1b0681bb631a9b0ec4bee42.md) | 133 | `result-track:f1b0681bb631a9b0ec4bee4216afc3cc2c3770e760ccaba8ad19109a5589f7fa` |
| 14 | `theorem` | [noetherianSpace_set_iff](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/noetherianspace-set-iff--df82c70bea18c5bbf3214106.md) | 139 | `result-track:df82c70bea18c5bbf32141066a45a4f3dedd8b5ea1c14fc13d1d1d04b71d292d` |
| 15 | `theorem` | [noetherian_univ_iff](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/noetherian-univ-iff--1090bd019e4e8da67864315d.md) | 146 | `result-track:1090bd019e4e8da67864315d3e3f485b66422747054bf810967faa4d346dbfbe` |
| 16 | `theorem` | [NoetherianSpace.iUnion](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/noetherianspace-iunion--5dcb574175bc87ed35e14ed0.md) | 150 | `result-track:5dcb574175bc87ed35e14ed00d473fc6dcb75d3c52eddf9ad5fc50d805b56dde` |
| 17 | `theorem` | [NoetherianSpace.discrete](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/noetherianspace-discrete--2eb90353fbca0b98f0b21176.md) | 159 | `result-track:2eb90353fbca0b98f0b2117658518d864115220fbf837729172fa1f35a970c99` |
| 18 | `theorem` | [NoetherianSpace.finite](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/noetherianspace-finite--9a2db66c47a99bd41b864b21.md) | 166 | `result-track:9a2db66c47a99bd41b864b213271f812eb86ca54164b1ccd082c0bd89aef430b` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/instance--7cc3551eaeaa376165569ec4.md) | 170 | `declaration-track:7cc3551eaeaa376165569ec4cc0b2c13adfb82171dec4291b262c849580e2bc5` |
| 20 | `theorem` | [NoetherianSpace.exists_finite_set_closeds_irreducible](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/noetherianspace-exists-finite-set-closeds-irreducible--5831435a0a0f70b0c5ef28d8.md) | 175 | `result-track:5831435a0a0f70b0c5ef28d8de00fac0805e0976c66cdde83434d94bbeaddda8` |
| 21 | `theorem` | [NoetherianSpace.exists_finite_set_isClosed_irreducible](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/noetherianspace-exists-finite-set-isclosed-irreducible--49f8cd5646d70d38b134b472.md) | 194 | `result-track:49f8cd5646d70d38b134b47279e61b096f667db2310574f92be233819f6340d8` |
| 22 | `theorem` | [NoetherianSpace.exists_finset_irreducible](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/noetherianspace-exists-finset-irreducible--153735f4f6a7b1d9a02f5923.md) | 204 | `result-track:153735f4f6a7b1d9a02f5923062e3e0bb47462239340a50fed6ba89ae50d8af8` |
| 23 | `theorem` | [NoetherianSpace.finite_irreducibleComponents](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variantd8f8c905473a8ae5db0ca1be77f0c0c4ca046dc53fcdd9d03990d92542178d08.lean/declarations/noetherianspace-finite-irreduciblecomponents--4aeddf18497f589e230a46fa.md) | 210 | `result-track:4aeddf18497f589e230a46fae9239883a2e46f1092ffa1db767709ec9bf9dcb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
