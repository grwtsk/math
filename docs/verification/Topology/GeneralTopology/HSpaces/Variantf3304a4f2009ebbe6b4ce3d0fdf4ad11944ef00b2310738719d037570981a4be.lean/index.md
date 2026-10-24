# Verification target: GRWTSK.Topology.GeneralTopology.HSpaces.Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71a9ef6282fd3e86e6e7b2c86cbe408cc288ca38",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71a9ef6282fd3e86e6e7b2c86cbe408cc288ca38`.

Source path: `GRWTSK/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.CompactOpen` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Path` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HSpace](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/hspace--49ceb603fddaf304333ced3b.md) | 61 | `declaration-track:49ceb603fddaf304333ced3bf861c3585e7e025cfb6c6edececef461a2a25149` |
| 2 | `instance` | [HSpace.prod](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/hspace-prod--0f7e80434027247e8954ca7c.md) | 75 | `declaration-track:0f7e80434027247e8954ca7c6693a206bed32bf88dbe4da8391d0d2ee0257f76` |
| 3 | `def` | [toHSpace](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/tohspace--20182c9e6dbe573ba43221ad.md) | 117 | `declaration-track:20182c9e6dbe573ba43221ada8dba8bb60c9694f3cc313a1429cc32bdb86c706` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/instance--f094606220bf021263a5fcc5.md) | 125 | `declaration-track:f094606220bf021263a5fcc57ba22c3d2d89346b834833bb0e23e51d902cfca1` |
| 5 | `theorem` | [one_eq_hSpace_e](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/one-eq-hspace-e--105a53535c6810ebc04d735a.md) | 129 | `result-track:105a53535c6810ebc04d735ae4c44accaccea2bc36744277f91074cbd87765b6` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/example--7243c0d8957c7517d5836c64.md) | 135 | `declaration-track:7243c0d8957c7517d5836c6441b9965d659171022a4a61c74834e7bbfb3dd5e3` |
| 7 | `def` | [qRight](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/qright--9d738207ed068ed1be4735d5.md) | 147 | `declaration-track:9d738207ed068ed1be4735d5322034d79e7e7714c3b647c07f64187f6970b07d` |
| 8 | `theorem` | [continuous_qRight](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/continuous-qright--98302e5ebb4e058fefb3310a.md) | 151 | `result-track:98302e5ebb4e058fefb3310a91417e6c763d5dcff9885a654166aaf21c9ce812` |
| 9 | `theorem` | [qRight_zero_left](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/qright-zero-left--974bc0642525889e8e6265b1.md) | 155 | `result-track:974bc0642525889e8e6265b139e2b8181524cd6eab9cbd8d74dc0c85d0e91c24` |
| 10 | `theorem` | [qRight_one_left](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/qright-one-left--a42d8a4ff3491e011c7517b8.md) | 158 | `result-track:a42d8a4ff3491e011c7517b87108f8cf8570fa10d54616886721c9ca42e29cd1` |
| 11 | `theorem` | [qRight_zero_right](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/qright-zero-right--9df89294ca9207c1db298820.md) | 166 | `result-track:9df89294ca9207c1db2988209b246114d480aafb992261a696c51c9de143bc49` |
| 12 | `theorem` | [qRight_one_right](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/qright-one-right--ac86059344b480d2d1feca62.md) | 177 | `result-track:ac86059344b480d2d1feca62f1a000705ef6772ca16a54e8dd2912027c5b2930` |
| 13 | `def` | [delayReflRight](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/delayreflright--a43c3d4f8046cf9432feb48e.md) | 190 | `declaration-track:a43c3d4f8046cf9432feb48ef03608015e3e41546193c81faa87c085d4f53a68` |
| 14 | `theorem` | [continuous_delayReflRight](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/continuous-delayreflright--b323847b50b358a133ab66e0.md) | 198 | `result-track:b323847b50b358a133ab66e09ed44f113053062c45e8212b25441d904b641e84` |
| 15 | `theorem` | [delayReflRight_zero](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/delayreflright-zero--befb6fead55d333cff87ce5c.md) | 203 | `result-track:befb6fead55d333cff87ce5ce68b8b8474bb564959e99792db53e134f115f170` |
| 16 | `theorem` | [delayReflRight_one](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/delayreflright-one--cfaddd91fe3a6b3d4a59055f.md) | 212 | `result-track:cfaddd91fe3a6b3d4a59055fab0be3d1063798fd2c1ac41c7f0baa19c2e293da` |
| 17 | `def` | [delayReflLeft](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/delayreflleft--25dcad2758b0e9cc66f7b021.md) | 218 | `declaration-track:25dcad2758b0e9cc66f7b021d4a511d6411a697c5c16ef819a30936a7bfac077` |
| 18 | `theorem` | [continuous_delayReflLeft](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/continuous-delayreflleft--13d61c49fea4b85fa38e7b25.md) | 221 | `result-track:13d61c49fea4b85fa38e7b2575fbfe8c6aa6dbf27d92bf04934ac9aac6e31a9f` |
| 19 | `theorem` | [delayReflLeft_zero](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/delayreflleft-zero--1d375723ba18df9ad8b43440.md) | 226 | `result-track:1d375723ba18df9ad8b4344096dd866c29b34e0649beaff663dd1b4bd2f42024` |
| 20 | `theorem` | [delayReflLeft_one](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/delayreflleft-one--21fb642c79b3a65570f81cd3.md) | 229 | `result-track:21fb642c79b3a65570f81cd3404bb2a4096a7e38ffddd068762bac8346861bec` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/declarations/instance--be5c3771140a172b65203e58.md) | 236 | `declaration-track:be5c3771140a172b65203e588bea6fc537ea59fe6dd4c43466ae89d97135760b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
