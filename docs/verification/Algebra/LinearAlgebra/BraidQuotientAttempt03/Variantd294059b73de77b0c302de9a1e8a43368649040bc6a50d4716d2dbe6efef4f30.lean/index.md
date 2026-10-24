# Verification target: GRWTSK.Algebra.LinearAlgebra.BraidQuotientAttempt03.Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca16fe2280ebe8210cf9fd28d4cfc0b5ca8dc1ba",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca16fe2280ebe8210cf9fd28d4cfc0b5ca8dc1ba`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.PresentedGroup` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braidRelator](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/braidrelator--a1cbf4287d499fabe805d9fe.md) | 14 | `declaration-track:a1cbf4287d499fabe805d9fe7f4b8f563e8f644504864049ba221d12e1b60dec` |
| 2 | `def` | [braidRelations](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/braidrelations--2a900fc9929d0fc874cdc805.md) | 18 | `declaration-track:2a900fc9929d0fc874cdc8056cba6d700fea8ad2cf8a0ad7b0143342ed92730b` |
| 3 | `abbrev` | [B3](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/b3--edc663b846f0a352e53693a9.md) | 20 | `declaration-track:edc663b846f0a352e53693a9279b5a1216b7f0f90f64e21bcf2c1c0828fe3f1a` |
| 4 | `def` | [sigma1](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/sigma1--1e7576f1d78861b83eb2a55a.md) | 22 | `declaration-track:1e7576f1d78861b83eb2a55a600898983d0bc98036116cb0e866816386aae136` |
| 5 | `def` | [sigma2](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/sigma2--40cfbbcb7e88d79055d7e2d5.md) | 24 | `declaration-track:40cfbbcb7e88d79055d7e2d5b553904298d770a28a18356ed57f4f2e3d8df5ff` |
| 6 | `theorem` | [braid_relation](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/braid-relation--d35370ea7713e7ea9c52d9ca.md) | 26 | `result-track:d35370ea7713e7ea9c52d9ca5f2f2672844a60461a36b889f8518375c642c19e` |
| 7 | `def` | [upperGenerator](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/uppergenerator--53e9223c1cd182d3f0c9a344.md) | 34 | `declaration-track:53e9223c1cd182d3f0c9a344c4aef11c3624db2eac183099187eac3332805007` |
| 8 | `def` | [lowerGenerator](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/lowergenerator--99f1d2175729ad8ef58bbcdc.md) | 37 | `declaration-track:99f1d2175729ad8ef58bbcdc4d265ac7ef11fa79ad9b096cbd94cbdba8ef254e` |
| 9 | `theorem` | [matrix_braid_relation](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/matrix-braid-relation--99d475a65c4f885e78663e24.md) | 40 | `result-track:99d475a65c4f885e78663e242f76bf798a05b465109b97ceaa0fe7d69306b4a9` |
| 10 | `def` | [generatorMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/generatormatrix--aff1ae3647d9601509e93c09.md) | 50 | `declaration-track:aff1ae3647d9601509e93c09a3fc0f2f87d1cee6a29297f958d44ee64f2e0d87` |
| 11 | `theorem` | [matrix_relator_identity](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/matrix-relator-identity--d8987cc8d4a147383822aeb5.md) | 52 | `result-track:d8987cc8d4a147383822aeb5fa5221c6b831cc88f82592a681aaac75e7732fc7` |
| 12 | `def` | [matrixRepresentation](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/matrixrepresentation--5296d4d8828b02cd0b8de5a5.md) | 62 | `declaration-track:5296d4d8828b02cd0b8de5a55b0c7ae9c3b5c28c189ae711b07a887e484bc492` |
| 13 | `theorem` | [matrixRepresentation_sigma1](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/matrixrepresentation-sigma1--111677983524fa63d6a03407.md) | 65 | `result-track:111677983524fa63d6a0340757046adc2b8a152a11a47ed5075455bbb2603056` |
| 14 | `theorem` | [matrixRepresentation_sigma2](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/matrixrepresentation-sigma2--9319cf4fb6a8537e4743cc25.md) | 68 | `result-track:9319cf4fb6a8537e4743cc256e2b0029ccdca7ed4491b63fd66b849cf8b906ca` |
| 15 | `def` | [generatorExponent](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/generatorexponent--214c5dbdfa9ce3ffc72251d9.md) | 72 | `declaration-track:214c5dbdfa9ce3ffc72251d9c35c4f6c87b762c1e5fddea468416b66e6a588cc` |
| 16 | `theorem` | [exponent_relator_identity](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/exponent-relator-identity--b59ffbe02203ec78d14a4bfb.md) | 74 | `result-track:b59ffbe02203ec78d14a4bfb786966f3df01e0879439433a1b4715a6abf1ff3b` |
| 17 | `def` | [exponentHom](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/exponenthom--f3685cfad4f4c4c14b69d933.md) | 82 | `declaration-track:f3685cfad4f4c4c14b69d9331cdc62d53b0889cb86336348398c49c7c2849946` |
| 18 | `theorem` | [exponentHom_sigma1](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/exponenthom-sigma1--cdc781cdd74da9c0d0da40a9.md) | 85 | `result-track:cdc781cdd74da9c0d0da40a9868cac067ce1522e0cad838409323863bb6868b2` |
| 19 | `theorem` | [exponentHom_sigma2](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/exponenthom-sigma2--67922587b80039dd799bf0f7.md) | 88 | `result-track:67922587b80039dd799bf0f755ae9e13979daa01e1e53bb243d6785dfce8a627` |
| 20 | `def` | [lostBraid](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/lostbraid--7b8f3292f1a2145c8ea20abe.md) | 92 | `declaration-track:7b8f3292f1a2145c8ea20abe92be17fe97939bd5a55f83568745618ba82d1905` |
| 21 | `theorem` | [generator_product_matrix](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/generator-product-matrix--ea5ed32070a0e6abba2ff03d.md) | 94 | `result-track:ea5ed32070a0e6abba2ff03d3712ac78a3939e8beb36c3ddc3a5f7dd5fccbc38` |
| 22 | `theorem` | [generator_product_sixth](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/generator-product-sixth--a5ce19b46e50044521cc1d8e.md) | 102 | `result-track:a5ce19b46e50044521cc1d8e59a469aea7f1ad2ed731b8da659895f08b0752c9` |
| 23 | `theorem` | [lostBraid_matrix_identity](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/lostbraid-matrix-identity--31d01c1f04f64dcd2796287b.md) | 110 | `result-track:31d01c1f04f64dcd2796287ba7e7ed4732d1ed2271af86adcf54564e9bd01f6f` |
| 24 | `theorem` | [lostBraid_exponent](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/lostbraid-exponent--92041ba7996fef25a12e8f58.md) | 114 | `result-track:92041ba7996fef25a12e8f5834414653397e17c2fd4f028aa1e50bccfaf4e54c` |
| 25 | `theorem` | [lostBraid_ne_one](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/lostbraid-ne-one--b81a0efde552c2022ffb6889.md) | 117 | `result-track:b81a0efde552c2022ffb6889ba62500a70d62383fb8f2564050f6f3ee4a0d809` |
| 26 | `theorem` | [matrixRepresentation_not_injective](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variantd294059b73de77b0c302de9a1e8a43368649040bc6a50d4716d2dbe6efef4f30.lean/declarations/matrixrepresentation-not-injective--790e8b98d28b74a05aaa2a2e.md) | 123 | `result-track:790e8b98d28b74a05aaa2a2e255237c5719d03912e7dbff6263a105187e67ab0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
