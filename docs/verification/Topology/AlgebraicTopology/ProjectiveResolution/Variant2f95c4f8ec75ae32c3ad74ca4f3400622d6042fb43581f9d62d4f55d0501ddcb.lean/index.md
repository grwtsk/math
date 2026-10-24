# Verification target: GRWTSK.Topology.AlgebraicTopology.ProjectiveResolution.Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94282e6f5976cce6a365daf9b32f3eda2ec690c9",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94282e6f5976cce6a365daf9b32f3eda2ec690c9`.

Source path: `GRWTSK/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Projective` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Single` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProjectiveResolution](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/projectiveresolution--b8d5e60099d262e972c9e6b2.md) | 76 | `declaration-track:b8d5e60099d262e972c9e6b25da7e8ba9fe5e881ccc32270508eab619bf7ee0c` |
| 2 | `class` | [HasProjectiveResolution](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/hasprojectiveresolution--5ebaf4cc4b346925d587c19f.md) | 90 | `declaration-track:5ebaf4cc4b346925d587c19fc78a56fc1ec0e1699126731becddb35d9baa5013` |
| 3 | `class` | [HasProjectiveResolutions](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/hasprojectiveresolutions--ce89db945213220d96c8555d.md) | 102 | `declaration-track:ce89db945213220d96c8555d8eb67624f96b5126a4391b62dc623619bfe1727e` |
| 4 | `theorem` | [π_f_succ](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/f-succ--2f01da64398d562a412ed0af.md) | 113 | `result-track:2f01da64398d562a412ed0af24cbd96e2fa2571bdd367a3679b7125ea924c14b` |
| 5 | `theorem` | [complex_d_comp_π_f_zero](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/complex-d-comp-f-zero--52ed9cd03161d0375be0fa38.md) | 120 | `result-track:52ed9cd03161d0375be0fa3895bf313622e49b51476bfd95ba95b996e58bed3d` |
| 6 | `theorem` | [complex_d_succ_comp](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/complex-d-succ-comp--284b26db3ef3f87ff587a485.md) | 127 | `result-track:284b26db3ef3f87ff587a4851f55a5e5b6eb2a5bf6464cfd0717dda00d0e1660` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/instance--22774ee32c7dcb2236a8182e.md) | 133 | `declaration-track:22774ee32c7dcb2236a8182eb6a035b626df80dc0ea340613cfb0862de6b64a6` |
| 8 | `def` | [self](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/self--402ca7d5499a980acb14c6d1.md) | 137 | `declaration-track:402ca7d5499a980acb14c6d1e326a37dbb518f4c5f4ec07495182bb6b4630fe7` |
| 9 | `def` | [liftZero](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/liftzero--168c01c019133e7eaeca8e04.md) | 159 | `declaration-track:168c01c019133e7eaeca8e045b99548d71b40a4f313d744ffcb76be09834dc3f` |
| 10 | `def` | [liftOne](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/liftone--f2837b8d90eaf5193b3d4e72.md) | 166 | `declaration-track:f2837b8d90eaf5193b3d4e720b87e9b3ce020563d2f2b7ab15f3e966413016e0` |
| 11 | `theorem` | [liftOne_zero_comm](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/liftone-zero-comm--b5025d808c42bb6b30a261c9.md) | 175 | `result-track:b5025d808c42bb6b30a261c92116d0e058e085501e4dadd0664f719b0d0c3084` |
| 12 | `def` | [liftSucc](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/liftsucc--098db3e90f91bf8d5b198c81.md) | 184 | `declaration-track:098db3e90f91bf8d5b198c81348e59511eb3c902ac1a5d2e7d6e9c2cbf7d608c` |
| 13 | `def` | [lift](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/lift--ab4ef54dc834611355cfd2d9.md) | 195 | `declaration-track:ab4ef54dc834611355cfd2d9ad0319a7566aff919b1aade885de563b2353ef02` |
| 14 | `theorem` | [lift_commutes](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/lift-commutes--e521208246844134d925a918.md) | 204 | `result-track:e521208246844134d925a91883c7708b067b09a3597f4b6ec656b626bd8262e3` |
| 15 | `def` | [liftHomotopyZeroZero](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/lifthomotopyzerozero--91c3f4ebce9ce28d811b0d12.md) | 221 | `declaration-track:91c3f4ebce9ce28d811b0d12c4f4a3964cdc97bbb2513c2e4bab8a7e078047d4` |
| 16 | `def` | [liftHomotopyZeroOne](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/lifthomotopyzeroone--165be932524d266c7c7a6302.md) | 229 | `declaration-track:165be932524d266c7c7a6302126993a3c574f6851da35ea5daf10c45d860d1b1` |
| 17 | `def` | [liftHomotopyZeroSucc](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/lifthomotopyzerosucc--1ec60a554315a589a0c0c421.md) | 237 | `declaration-track:1ec60a554315a589a0c0c421a2880df543c5bc06217837187d885a1bdd1973dc` |
| 18 | `def` | [liftHomotopyZero](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/lifthomotopyzero--fb752d7109677fd4aa7c15f8.md) | 248 | `declaration-track:fb752d7109677fd4aa7c15f807252de06646317811db04a4f8ca303717cce633` |
| 19 | `def` | [liftHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/lifthomotopy--8b2d35266c8a521948e37a0e.md) | 257 | `declaration-track:8b2d35266c8a521948e37a0ed35d053582e4b9f0e0f17bae00ecb4a143f93acf` |
| 20 | `def` | [liftIdHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/liftidhomotopy--cb496393bbbfc42916ee976e.md) | 265 | `declaration-track:cb496393bbbfc42916ee976ed34b3996922a4d45f0544f63e74f5ec55fe0b2da` |
| 21 | `def` | [liftCompHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/liftcomphomotopy--7733d5792d98f993384fa860.md) | 271 | `declaration-track:7733d5792d98f993384fa86059e37ec0947bb499797fa013b392ffb147b2f6d5` |
| 22 | `def` | [homotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/homotopyequiv--87c143250c6aca0cdeab291d.md) | 280 | `declaration-track:87c143250c6aca0cdeab291d22499365e3488e0801c7e955eb37c0f41eee18d4` |
| 23 | `theorem` | [homotopyEquiv_hom_π](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/homotopyequiv-hom--c561d366150181ebf9056586.md) | 295 | `result-track:c561d366150181ebf90565869f8e9693d22d66b2f2ddbdde793a15d0bd896162` |
| 24 | `theorem` | [homotopyEquiv_inv_π](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/homotopyequiv-inv--3ed1f10b593fca2fba367a44.md) | 301 | `result-track:3ed1f10b593fca2fba367a44a04b3518da913e89fd3894365b7395cb3c12cd29` |
| 25 | `def` | [projectiveResolution](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/projectiveresolution--6e200c63b248bfdaa22c41b0.md) | 312 | `declaration-track:6e200c63b248bfdaa22c41b0f663debe034278e0ba95ffbd5c6149d6d440ba86` |
| 26 | `abbrev` | [projectiveResolution.complex](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/projectiveresolution-complex--1a33dba21c3d0d8b3a3eed91.md) | 320 | `declaration-track:1a33dba21c3d0d8b3a3eed919519303455d46454bc1ce5b608be46fcacc69a99` |
| 27 | `abbrev` | [projectiveResolution.π](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/projectiveresolution--4ef16643bdc0e4d1abbe8edf.md) | 327 | `declaration-track:4ef16643bdc0e4d1abbe8edfe9cba08eba27924a2e630550719d36aa11577903` |
| 28 | `abbrev` | [projectiveResolution.lift](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/projectiveresolution-lift--4b75f1fcb1c87ae150fb0c06.md) | 333 | `declaration-track:4b75f1fcb1c87ae150fb0c06c0ba8539f2461a8de4cbfd37d84e22e715a745f9` |
| 29 | `def` | [projectiveResolutions](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/declarations/projectiveresolutions--08e83071fc180f1072f532b0.md) | 349 | `declaration-track:08e83071fc180f1072f532b008a8e9327561a5545ca07457970f20d0f102120e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
