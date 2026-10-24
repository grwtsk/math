# Verification target: GRWTSK.Algebra.Symmetrized.Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25d941dd4f344c38d94838f8a8aeb7cc958b7ee9",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/index.md) · [Full source](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25d941dd4f344c38d94838f8a8aeb7cc958b7ee9`.

Source path: `GRWTSK/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Jordan.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SymAlg](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/symalg--043531266464277acc3182e5.md) | 37 | `declaration-track:043531266464277acc3182e58c59a0f56184d1ac5095c0f43ced124e2ca6ffc2` |
| 2 | `def` | [sym](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/sym--7576395e1b6bbbd9d6b99415.md) | 51 | `declaration-track:7576395e1b6bbbd9d6b994157a215ad38faabb2c9d3046555cfca7a69502c47f` |
| 3 | `def` | [unsym](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/unsym--d105e2316b51734f48e48cdc.md) | 57 | `declaration-track:d105e2316b51734f48e48cdcbd26fce755bece8ef326d3d25cab727092032df7` |
| 4 | `theorem` | [unsym_sym](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/unsym-sym--ae6f7332daa8d7d6014801d9.md) | 62 | `result-track:ae6f7332daa8d7d6014801d9d61cfe33410e486c7d992f4430d005b66f1850ce` |
| 5 | `theorem` | [sym_unsym](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/sym-unsym--c6b444eedfe4c3bbb6afbb23.md) | 67 | `result-track:c6b444eedfe4c3bbb6afbb237d4be4fa732f1edb84f44262f68ab2293e298c67` |
| 6 | `theorem` | [sym_comp_unsym](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/sym-comp-unsym--fdbba4ae534ff9a24fcbeb90.md) | 72 | `result-track:fdbba4ae534ff9a24fcbeb90d8cf91547d37d68b4eff48cc6ad854745ffeaf68` |
| 7 | `theorem` | [unsym_comp_sym](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/unsym-comp-sym--afa9984c38234c98e1b004a3.md) | 77 | `result-track:afa9984c38234c98e1b004a36cc5fbb5215f8fd67108b047bd5fa9e567f1e6da` |
| 8 | `theorem` | [sym_symm](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/sym-symm--e39210f79f7c6a7160419d81.md) | 82 | `result-track:e39210f79f7c6a7160419d810a6c026a62f1ba272ca783b06dc374a57292652a` |
| 9 | `theorem` | [unsym_symm](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/unsym-symm--04ef8c860a4794cdbf7c2dc3.md) | 87 | `result-track:04ef8c860a4794cdbf7c2dc343e4e7949957278b39cb92acedb0c7c941ff95f6` |
| 10 | `theorem` | [sym_bijective](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/sym-bijective--4c0a997664b04f6fee3499fe.md) | 91 | `result-track:4c0a997664b04f6fee3499fe0e19a9f8a6c0a0af3a220a13f6bd5c916f58e609` |
| 11 | `theorem` | [unsym_bijective](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/unsym-bijective--937e0155fcb4a11eae528362.md) | 95 | `result-track:937e0155fcb4a11eae52836217772e4cae4c79e1ad2acda4e7a8b81a5fb07e6f` |
| 12 | `theorem` | [sym_injective](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/sym-injective--ac7f368977f97e34dff0d765.md) | 99 | `result-track:ac7f368977f97e34dff0d765760beaf4ee104e34e246b35fc2534a58a28014c2` |
| 13 | `theorem` | [sym_surjective](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/sym-surjective--f3624543b4f5aab22893bd27.md) | 103 | `result-track:f3624543b4f5aab22893bd2799e779a8ac0421c526720616a25e5dbd793a1ece` |
| 14 | `theorem` | [unsym_injective](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/unsym-injective--cf1dd413e4a41991fe579d28.md) | 107 | `result-track:cf1dd413e4a41991fe579d28ebe5b7f972e7be3d56671ae8a1369830a6673445` |
| 15 | `theorem` | [unsym_surjective](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/unsym-surjective--471c9bef8da2fecbf8839fe8.md) | 111 | `result-track:471c9bef8da2fecbf8839fe8373a9010daa99c6ec6ac76b5345bc6c5756ab4fd` |
| 16 | `theorem` | [sym_inj](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/sym-inj--1f9b40d51b47df6863511d9e.md) | 116 | `result-track:1f9b40d51b47df6863511d9e7851ad0245f6609bba3d07dcd132e3df19e74a39` |
| 17 | `theorem` | [unsym_inj](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/unsym-inj--898c47b1b9623fa7ae277bb6.md) | 121 | `result-track:898c47b1b9623fa7ae277bb6cf99cc73a39edac43752a5bf440719516a2bea4e` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/instance--b8c7e47014c399fbc1250ceb.md) | 125 | `declaration-track:b8c7e47014c399fbc1250cebe4518fabda0fad45710908172e49de09dfe963cd` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/instance--765644fc8b844577cdc68975.md) | 128 | `declaration-track:765644fc8b844577cdc689757b8a3b9f069bfc745224abffe2a7f33edd195eb9` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/instance--7efd79b1b2864ace4dea4e33.md) | 131 | `declaration-track:7efd79b1b2864ace4dea4e33e66f74593f3215e81a62d697e006d274d0c605b0` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/instance--ea376f100d0fae0ac2c39f90.md) | 134 | `declaration-track:ea376f100d0fae0ac2c39f9019d28bf5996c39e47c5d6da86cf673bd66b19588` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/instance--c357dcba02adecb9d991928d.md) | 137 | `declaration-track:c357dcba02adecb9d991928d7c0df04865a8983bc57ef407597648792b5fc754` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/instance--8deff5d5caaf7b5b26ec3d87.md) | 141 | `declaration-track:8deff5d5caaf7b5b26ec3d87ed52b689b4df30880b5cf2f53b4ec8110f522c70` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/instance--7ccbbe03e848d1ed12eff197.md) | 143 | `declaration-track:7ccbbe03e848d1ed12eff1978e6ff1f8ec80893caa1bec661f7e70c394830534` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/instance--75c37741738d3d223d2e45d5.md) | 145 | `declaration-track:75c37741738d3d223d2e45d59db119e83d17b51b5b7e348de9c2c0ca53b650aa` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/instance--dd61eb1220a0d507aff7fc8e.md) | 147 | `declaration-track:dd61eb1220a0d507aff7fc8eb20c3e74c312cc47f73a1d956b95f56ba4d5afd8` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/instance--279e1e5d55b06480cdecdd23.md) | 150 | `declaration-track:279e1e5d55b06480cdecdd2366397ecfb1da3dc2c9c0f3dcc2e9a83b90f3f05e` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/instance--c9c5ab70a0b4710f7575f40e.md) | 154 | `declaration-track:c9c5ab70a0b4710f7575f40ee78d036942e0bbda9f6a042762b52b5eb9f1e85b` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/instance--d2a0f00f3ac783262e7ba334.md) | 156 | `declaration-track:d2a0f00f3ac783262e7ba33422ed976da66bf234f8fb00f3ef5d4fd156fcc92d` |
| 30 | `theorem` | [sym_one](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/sym-one--2ff178f0435cf248b6a9334a.md) | 159 | `result-track:2ff178f0435cf248b6a9334aa15bb1fa944a5231e0f7dbf1154e9bd28883951a` |
| 31 | `theorem` | [unsym_one](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/unsym-one--b68817e1cb89d2b6eb0e46a7.md) | 165 | `result-track:b68817e1cb89d2b6eb0e46a77eef38f4c5c831815b360866bece1b4375d73eb0` |
| 32 | `theorem` | [sym_add](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/sym-add--b4323c4a5f3eb358cbb08797.md) | 171 | `result-track:b4323c4a5f3eb358cbb0879772c21756a95025ea92c8696d62638cd4139cbc89` |
| 33 | `theorem` | [unsym_add](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/unsym-add--1e19f68e8c871f9c23c59d97.md) | 176 | `result-track:1e19f68e8c871f9c23c59d9798ecad3f3aecb29666f69d3c3a5497b967c6bfac` |
| 34 | `theorem` | [sym_sub](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/sym-sub--e838329df8546e8fb72fddbd.md) | 181 | `result-track:e838329df8546e8fb72fddbd00cb18e6f0e21d1638ec3dcec72a527f44e48a42` |
| 35 | `theorem` | [unsym_sub](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/unsym-sub--1fe60b32c526da8a824496cc.md) | 186 | `result-track:1fe60b32c526da8a824496cc98cf33e3ca7f4e6784f29a38ac9bdf7456485516` |
| 36 | `theorem` | [sym_neg](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/sym-neg--273b3bad8a9bf6358a88bec6.md) | 191 | `result-track:273b3bad8a9bf6358a88bec646e035b4d9d55003e6b4e8c45e44547988bdbb53` |
| 37 | `theorem` | [unsym_neg](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/unsym-neg--6d8bea9229dd857ec9c74a01.md) | 196 | `result-track:6d8bea9229dd857ec9c74a010a2a6e15806876d4370d2bdbf16579abae63e1be` |
| 38 | `theorem` | [mul_def](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/mul-def--f82c89038a9f8831256ac394.md) | 200 | `result-track:f82c89038a9f8831256ac394c4a5617fe9a41af51ce038c5605b800f9585d01a` |
| 39 | `theorem` | [unsym_mul](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/unsym-mul--6f99f9202b222405559222f4.md) | 204 | `result-track:6f99f9202b222405559222f4eda2435684b6aaccadae91949c65a37eca935c56` |
| 40 | `theorem` | [sym_mul_sym](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/sym-mul-sym--b62a028a6ff56871271e0498.md) | 208 | `result-track:b62a028a6ff56871271e04983caba355eda65384172d5b80fe2b5fdf2c68dbff` |
| 41 | `theorem` | [sym_inv](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/sym-inv--d80835b292e2ba1024d068a5.md) | 215 | `result-track:d80835b292e2ba1024d068a53792a29c0691d5a3340fea27ec97711b7b124ec0` |
| 42 | `theorem` | [unsym_inv](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/unsym-inv--5034cefedd7b461dea7cda10.md) | 221 | `result-track:5034cefedd7b461dea7cda1060ab952ae92667545464a7369f26c7f8be6424fe` |
| 43 | `theorem` | [sym_smul](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/sym-smul--bab1fa91678d55d5099647ec.md) | 226 | `result-track:bab1fa91678d55d5099647ecfaaf1a67cd58ca910366b02de5cbede5ac3ccb8a` |
| 44 | `theorem` | [unsym_smul](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/unsym-smul--ef825b25305114d3084300d7.md) | 231 | `result-track:ef825b25305114d3084300d723816b5e030b9c8f2af68d4b18d7e1b68a99a4a3` |
| 45 | `theorem` | [unsym_eq_one_iff](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/unsym-eq-one-iff--a41e338e4b7bddb6c14eb4b0.md) | 236 | `result-track:a41e338e4b7bddb6c14eb4b03d3169e1becbe8061e33e763f6d61143c1c74807` |
| 46 | `theorem` | [sym_eq_one_iff](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/sym-eq-one-iff--af689e066b176b518f1f388a.md) | 242 | `result-track:af689e066b176b518f1f388a1b60b1204ff58c06911947561ff242d6895b270d` |
| 47 | `theorem` | [unsym_ne_one_iff](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/unsym-ne-one-iff--af04d399e49713cdf4796766.md) | 248 | `result-track:af04d399e49713cdf47967666f1aec3a5d1cbd2cc7313b88c27cc00478ad7812` |
| 48 | `theorem` | [sym_ne_one_iff](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/sym-ne-one-iff--f3cf0bd3e844cd431ad6dfcb.md) | 254 | `result-track:f3cf0bd3e844cd431ad6dfcb6174171995f089bb9c3b929969b6ed29f2c20966` |
| 49 | `instance` | [addCommSemigroup](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/addcommsemigroup--e7cadc9c6799337c7f29f559.md) | 259 | `declaration-track:e7cadc9c6799337c7f29f5597ca948cd45e3d18187a06a645129c42ce454f03a` |
| 50 | `instance` | [addMonoid](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/addmonoid--4afe6bda806c89c5e4200b2b.md) | 262 | `declaration-track:4afe6bda806c89c5e4200b2b3403dd0e28034ce4506e4335c4c3b7887438cd1c` |
| 51 | `instance` | [addGroup](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/addgroup--8ca16e243b647eb49838e7a1.md) | 265 | `declaration-track:8ca16e243b647eb49838e7a169bb75fda5c8b5e8abf40c8e637cbf47fc8b4f84` |
| 52 | `instance` | [addCommMonoid](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/addcommmonoid--6b6fe0ba3fde6ca52a9bbc9d.md) | 269 | `declaration-track:6b6fe0ba3fde6ca52a9bbc9d03c625f52c1e56f9ae515fede3e18cc5a9925b1b` |
| 53 | `instance` | [addCommGroup](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/addcommgroup--36a8ffaff4ce17b92d45e5c3.md) | 272 | `declaration-track:36a8ffaff4ce17b92d45e5c38acd903c266f9c9c0b8d73da2872fa2a6cad10b1` |
| 54 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/instance--cc8ab100ed577851183c659c.md) | 275 | `declaration-track:cc8ab100ed577851183c659c7b8bd62e43ddc03659b2b21530ee9e4c4e472373` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/instance--7eca5fd8f19c52007697a908.md) | 278 | `declaration-track:7eca5fd8f19c52007697a90817be0741a4eed810139bbd12acc02cb20863f82f` |
| 56 | `theorem` | [invOf_sym](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/invof-sym--a5b1a3a36331a16802b4b59d.md) | 287 | `result-track:a5b1a3a36331a16802b4b59d2169875332527489bcc1ff202ff7ac2db57fad0b` |
| 57 | `instance` | [nonAssocSemiring](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/nonassocsemiring--cfbcb8764de0b5091161b081.md) | 292 | `declaration-track:cfbcb8764de0b5091161b081d2277a25fbb8422b6b5f0ae31e991e9fe0427838` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/instance--224464e03ac81d61bc37e61a.md) | 321 | `declaration-track:224464e03ac81d61bc37e61a0b8a02982b2923b221f7b5b49932f09c3a4256be` |
| 59 | `theorem` | [unsym_mul_self](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/unsym-mul-self--1b18edd092b0c2703be0871f.md) | 327 | `result-track:1b18edd092b0c2703be0871ff1776c69a89785d95ab45d76db9bf9cb3a90e74e` |
| 60 | `theorem` | [sym_mul_self](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/sym-mul-self--3d265c175ebdd91a873307bc.md) | 331 | `result-track:3d265c175ebdd91a873307bcd7ac2554aeff7138bf3a1225d1c6f3ad3a523367` |
| 61 | `theorem` | [mul_comm](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/mul-comm--c8e47d6581844ea33b63cbc8.md) | 335 | `result-track:c8e47d6581844ea33b63cbc83d66573b34fd7262c949c7e4dfccf1d8ec0d8482` |
| 62 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/declarations/instance--5eb714991d0f0aa12b15f086.md) | 340 | `declaration-track:5eb714991d0f0aa12b15f086d281b14798b6b48e1449323f25de1d4b63643ac3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
