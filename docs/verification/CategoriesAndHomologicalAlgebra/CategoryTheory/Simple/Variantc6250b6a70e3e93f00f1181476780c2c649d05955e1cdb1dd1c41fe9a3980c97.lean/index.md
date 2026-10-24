# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Simple.Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65849f9a17fccd23882c21da43a4ceac424fe78d",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65849f9a17fccd23882c21da43a4ceac424fe78d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.Lattice` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/simple--f21b29b33f9d3323376df655.md) | 52 | `declaration-track:f21b29b33f9d3323376df655390fe698866b3ee1a5848c94ff55a4d8edff1976` |
| 2 | `theorem` | [isIso_of_mono_of_nonzero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/isiso-of-mono-of-nonzero--1f5ea25e050bcdec397ef050.md) | 57 | `result-track:1f5ea25e050bcdec397ef050cd102b29bc49c2e18a1453806d7a93ae7c9755b4` |
| 3 | `theorem` | [Simple.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/simple-of-iso--c98c1ef8bdde6295a28bd5cd.md) | 61 | `result-track:c98c1ef8bdde6295a28bd5cdf795c496ef159662137e1e37b55f87c894e93511` |
| 4 | `theorem` | [Simple.iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/simple-iff-of-iso--59770a53658338f85821aee1.md) | 81 | `result-track:59770a53658338f85821aee1b6e64be96f94c29110315d4c474b2903f1253fb8` |
| 5 | `theorem` | [kernel_zero_of_nonzero_from_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/kernel-zero-of-nonzero-from-simple--2d6d159ed783b164fc765782.md) | 85 | `result-track:2d6d159ed783b164fc7657822b404f6381178e073a0a2b8a18004f9b77e202da` |
| 6 | `theorem` | [epi_of_nonzero_to_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/epi-of-nonzero-to-simple--bf1be2afd1135d81a4ddd99e.md) | 97 | `result-track:bf1be2afd1135d81a4ddd99e098ab891636ec880ea4cdb878309768bb52483fd` |
| 7 | `theorem` | [mono_to_simple_zero_of_not_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/mono-to-simple-zero-of-not-iso--5676d6ec0d34264910e3aa23.md) | 104 | `result-track:5676d6ec0d34264910e3aa23700665881b111d5e45776dceee20f0340f02cc10` |
| 8 | `theorem` | [id_nonzero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/id-nonzero--46b8f235415181be82079e2e.md) | 111 | `result-track:46b8f235415181be82079e2e2c888f3ebc02823b8904a6058f959ef4a27db01e` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/instance--556fff4a3658ef2304550b29.md) | 115 | `declaration-track:556fff4a3658ef2304550b29839cdeba3abd19098957c53b4c2db3dc68b039a0` |
| 10 | `theorem` | [Simple.not_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/simple-not-iszero--597810c989bda8eb7603bdb5.md) | 120 | `result-track:597810c989bda8eb7603bdb5f4a8b7db0f1c89e55d3da822c2aa0f9a57a43421` |
| 11 | `theorem` | [zero_not_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/zero-not-simple--66fa00aa88a1221ecdf1761e.md) | 131 | `result-track:66fa00aa88a1221ecdf1761ea1af9241eb1fbf5c5788480b07f112ba229e3860` |
| 12 | `theorem` | [simple_of_cosimple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/simple-of-cosimple--05a13bd7bafd769adefdf73e.md) | 146 | `result-track:05a13bd7bafd769adefdf73e5aba6f15950995e3cc2754430dbf58e5a14480bc` |
| 13 | `theorem` | [isIso_of_epi_of_nonzero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/isiso-of-epi-of-nonzero--62ea5d762d0e7bd0657463eb.md) | 164 | `result-track:62ea5d762d0e7bd0657463eb9de4b89787645cf1279c378d061c0ac3ab591793` |
| 14 | `theorem` | [cokernel_zero_of_nonzero_to_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/cokernel-zero-of-nonzero-to-simple--c7db126e11e516e73d178c46.md) | 171 | `result-track:c7db126e11e516e73d178c4656c8dc29edc85a7e9a20159666662c56309306b9` |
| 15 | `theorem` | [epi_from_simple_zero_of_not_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/epi-from-simple-zero-of-not-iso--d174f6121acfc46ba82a0952.md) | 179 | `result-track:d174f6121acfc46ba82a095232e09d5f431db1895bdee43f87c1b185df2d8b44` |
| 16 | `theorem` | [Biprod.isIso_inl_iff_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/biprod-isiso-inl-iff-iszero--dd0ceea3472e8fbdbef59fb3.md) | 194 | `result-track:dd0ceea3472e8fbdbef59fb34e6507a287797c4c606efc402c36abe6913e820f` |
| 17 | `theorem` | [indecomposable_of_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/indecomposable-of-simple--842b2bd0cc63e9a93f4f479d.md) | 206 | `result-track:842b2bd0cc63e9a93f4f479de7b454f390fd58e41d3bbd3c0a87d38150d830ca` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/instance--6145cd7707be8ebbdb50644e.md) | 226 | `declaration-track:6145cd7707be8ebbdb50644e555528ddc8c2466484bc7645eb1d6fc9c921ecca` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/instance--9f9b17c77c034760b71faa4f.md) | 229 | `declaration-track:9f9b17c77c034760b71faa4fb81878471067b9bb7952cb93c40820efe165b987` |
| 20 | `theorem` | [simple_of_isSimpleOrder_subobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/simple-of-issimpleorder-subobject--7dac22c924ce8e7b1d263d90.md) | 238 | `result-track:7dac22c924ce8e7b1d263d90b10ff280dd1f05a3a3c6552925ee8d1717ca4fc3` |
| 21 | `theorem` | [simple_iff_subobject_isSimpleOrder](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/simple-iff-subobject-issimpleorder--29ad6848fa1b9a581c2effc5.md) | 253 | `result-track:29ad6848fa1b9a581c2effc576d5890f48d947cf1f77e4c4c1225545a764d7a7` |
| 22 | `theorem` | [subobject_simple_iff_isAtom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/declarations/subobject-simple-iff-isatom--0fffd20b0e9294ed58d68ebc.md) | 262 | `result-track:0fffd20b0e9294ed58d68ebc6edac8b2a1f7d1be432493ea86e7b39a402ae512` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
