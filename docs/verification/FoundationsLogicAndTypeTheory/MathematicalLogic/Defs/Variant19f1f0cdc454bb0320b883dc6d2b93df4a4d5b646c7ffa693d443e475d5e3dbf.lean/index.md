# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8960628adf1021a1e65b6aeff33b8c01bb432c64",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8960628adf1021a1e65b6aeff33b8c01bb432c64`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.CoeSort` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Set` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [inductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/inductive--0c3114932e351b194b43012b.md) | 106 | `declaration-track:0c3114932e351b194b43012b35ed3bd5feb72bae53393df033d6c605a97bebd3` |
| 2 | `theorem` | [finite_iff_exists_equiv_fin](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/finite-iff-exists-equiv-fin--4498c46e2cf5d17d0dac1a82.md) | 109 | `result-track:4498c46e2cf5d17d0dac1a8201cede3f40090837da2934b22d341f94983fd617` |
| 3 | `theorem` | [Finite.exists_equiv_fin](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/finite-exists-equiv-fin--11628e74865e5289bb0cac74.md) | 112 | `result-track:11628e74865e5289bb0cac74c3fe416e733edf557e56db5d6a99be02856dd33a` |
| 4 | `theorem` | [Finite.of_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/finite-of-equiv--39f94f082270da3ae93783d8.md) | 115 | `result-track:39f94f082270da3ae93783d876401ca6b590b482b0a98366e05f4e3d82a1c577` |
| 5 | `theorem` | [Equiv.finite_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/equiv-finite-iff--76e5e8f0914cea6ef882bbfe.md) | 118 | `result-track:76e5e8f0914cea6ef882bbfe8813605d326f1cab9e42f9efcee16dc7ac491c33` |
| 6 | `theorem` | [Function.Bijective.finite_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/function-bijective-finite-iff--d94b78a810e5dad0ef538080.md) | 121 | `result-track:d94b78a810e5dad0ef5380807a6c6c337be3f0e3a142b7a1a11289109cfc3442` |
| 7 | `theorem` | [Finite.ofBijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/finite-ofbijective--92ca9df680a4b6c7e7a7fc3e.md) | 124 | `result-track:92ca9df680a4b6c7e7a7fc3e1f3728ff7e949ad2d732095ba5cd02534921a7f2` |
| 8 | `theorem` | [Finite.nonempty_decidableEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/finite-nonempty-decidableeq--c5392c9fe52df1f019bf1bf8.md) | 128 | `result-track:c5392c9fe52df1f019bf1bf862c91784711e4f0875d3a342d1cd2832f47f391b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/instance--d5833f79f18165d3ca858785.md) | 131 | `declaration-track:d5833f79f18165d3ca85878567f2fdc8b818c33fa15e9f5d6aab67b6d6fb79bf` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/instance--045b672571df9ddaf50c61f4.md) | 134 | `declaration-track:045b672571df9ddaf50c61f440e26f1ad84e04db681ed134255c91840b4627dc` |
| 11 | `class` | [Infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/infinite--3e3d4bcf8793a474c93b352a.md) | 139 | `declaration-track:3e3d4bcf8793a474c93b352a180b8d304ca7305e93425a0baed6b1f7f678188d` |
| 12 | `theorem` | [not_finite_iff_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/not-finite-iff-infinite--2b7b139822dd81396e852042.md) | 144 | `result-track:2b7b139822dd81396e8520426b7ac58e6c4cbd8dc5c32441a44a21661003c4de` |
| 13 | `theorem` | [not_infinite_iff_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/not-infinite-iff-finite--5981a53d7db324b9d6bd651f.md) | 148 | `result-track:5981a53d7db324b9d6bd651f25c61de2ae0c31cfd7fc4596583d48dd019a6f61` |
| 14 | `theorem` | [Equiv.infinite_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/equiv-infinite-iff--e47ec87bea03a08938866937.md) | 151 | `result-track:e47ec87bea03a089388669371eaef3444493f653f5063676552e8d12213573ab` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/instance--165bf46e6814ab934b758cb3.md) | 154 | `declaration-track:165bf46e6814ab934b758cb3b4eb501cf5b367ea73347939ca8478f1fc7174f5` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/instance--7ba6c7e5fd2e1a4554737642.md) | 157 | `declaration-track:7ba6c7e5fd2e1a45547376426703dff39a2489ac4b1bafa528d26d5baf3151b1` |
| 17 | `theorem` | [finite_or_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/finite-or-infinite--abae33b350a4029d8175df2b.md) | 160 | `result-track:abae33b350a4029d8175df2b125b1a0c72ebd746973ce2a5ea9ec7b75e3bc97c` |
| 18 | `theorem` | [not_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/not-finite--9f3c5387dd3ec71c320ea17f.md) | 164 | `result-track:9f3c5387dd3ec71c320ea17fd1edce56df46bde1daaa72a56fcf25cf75481c46` |
| 19 | `theorem` | [Finite.false](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/finite-false--5f87fbb8067dacbf1bab4367.md) | 167 | `result-track:5f87fbb8067dacbf1bab43670303509884e969d9c0f99d0c5606a429b6c0a1cb` |
| 20 | `theorem` | [Infinite.false](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/infinite-false--f6699f627a3f807e4392b06d.md) | 170 | `result-track:f6699f627a3f807e4392b06d1cbef6b98b3ec17339cdb183e105b11ec23eb6d3` |
| 21 | `instance` | [Bool.instFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/bool-instfinite--bf011feb392521a0e39addfb.md) | 175 | `declaration-track:bf011feb392521a0e39addfb85f89d8cbbd735f599c4b2da613fa42848a7a336` |
| 22 | `instance` | [Prop.instFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/prop-instfinite--d6125d5382478af4cf4f0f2f.md) | 176 | `declaration-track:d6125d5382478af4cf4f0f2f04be5a2161fc5f7b0f18c370e670fc78cb638864` |
| 23 | `def` | [Finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/finite--bf911c7cf102e428b5b5fa67.md) | 192 | `declaration-track:bf911c7cf102e428b5b5fa671d04b1b8fee8d78ffb5fc13ab8ba6b1c7c8df74c` |
| 24 | `theorem` | [finite_coe_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/finite-coe-iff--08ce016797f528bc8789c663.md) | 199 | `result-track:08ce016797f528bc8789c663e6095f4c4e474598025b1da1ca728eaf4126abe9` |
| 25 | `theorem` | [toFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/tofinite--1ef12ffcc0d306c7114d0280.md) | 202 | `result-track:1ef12ffcc0d306c7114d028094b607cc9fc2435ae3e6a402b912523010f29817` |
| 26 | `theorem` | [Finite.to_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/finite-to-subtype--b41df9df07a6e1d068b59b84.md) | 207 | `result-track:b41df9df07a6e1d068b59b847d77b0256e765497e14318cfb7a342d7248d6169` |
| 27 | `def` | [Infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/infinite--1e97343dc731e8abc108d7af.md) | 212 | `declaration-track:1e97343dc731e8abc108d7af9a53841142ec4b825efa1813e20c98016d1378d5` |
| 28 | `theorem` | [not_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/not-infinite--878ecac110c5bf3edb898def.md) | 216 | `result-track:878ecac110c5bf3edb898defef3163818bea24c1012a7ab8d943ee64e619f7de` |
| 29 | `theorem` | [finite_or_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/finite-or-infinite--5ab21ac1bea39323dc8b6738.md) | 224 | `result-track:5ab21ac1bea39323dc8b673877d3ebc5484d1f10756c17b3df6e30464b8fe07c` |
| 30 | `theorem` | [infinite_or_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/infinite-or-finite--894cfd9c1f0c5806a36f5def.md) | 227 | `result-track:894cfd9c1f0c5806a36f5def512e0fd7ad3b4291412f64ceba4df074616bb048` |
| 31 | `theorem` | [Equiv.set_finite_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/equiv-set-finite-iff--5046f5ae30ecf8b7055cfe8b.md) | 232 | `result-track:5046f5ae30ecf8b7055cfe8bba034fce6f40256d15a69e2c8c946148ba6c25c7` |
| 32 | `theorem` | [infinite_coe_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant19f1f0cdc454bb0320b883dc6d2b93df4a4d5b646c7ffa693d443e475d5e3dbf.lean/declarations/infinite-coe-iff--65f5aa82da89b96989285f14.md) | 241 | `result-track:65f5aa82da89b96989285f140251043ec8ac69286550841529f08dfaca8e977a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
