# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoidalComp.Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "316faec90eedffd076d1f15e885c8630fd60feb7",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `316faec90eedffd076d1f15e885c8630fd60feb7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Category` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MonoidalCoherence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean/declarations/monoidalcoherence--49dbdfa552d2c0b1f5b8aa0a.md) | 48 | `declaration-track:49dbdfa552d2c0b1f5b8aa0a11ef5a9c378adc7360855735f6ae5be65210d9e4` |
| 2 | `abbrev` | [monoidalIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean/declarations/monoidaliso--916085fe0fc04b8b93e98c7c.md) | 58 | `declaration-track:916085fe0fc04b8b93e98c7c94c03296c8bc03a7fa05720fcd4bfd193a4aaaca` |
| 3 | `def` | [monoidalComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean/declarations/monoidalcomp--3b778399a2488ab9aadbe7c4.md) | 62 | `declaration-track:3b778399a2488ab9aadbe7c46e80f5e6c83d5f193857b9fed34c6a1859732a4a` |
| 4 | `def` | [monoidalIsoComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean/declarations/monoidalisocomp--3d9073d4c0df51a85c1308a2.md) | 71 | `declaration-track:3d9073d4c0df51a85c1308a20b7d798e2efaa0d55fbbfc2369e27e05d2292fa7` |
| 5 | `instance` | [refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean/declarations/refl--21a2a9023ce99f0fb020131a.md) | 83 | `declaration-track:21a2a9023ce99f0fb020131a71708ebdf326041ba08426c20992403de06559a8` |
| 6 | `instance` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean/declarations/whiskerleft--2cbca6e4871b6e27e467245b.md) | 86 | `declaration-track:2cbca6e4871b6e27e467245ba3233e38874001420c300d830671cf2d58e3a97e` |
| 7 | `instance` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean/declarations/whiskerright--e979539580877af08c278dda.md) | 91 | `declaration-track:e979539580877af08c278dda044a5d764c3c8de4672bfe2bcb4ee560b67f7244` |
| 8 | `instance` | [tensor_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean/declarations/tensor-right--b71b14378e89df962e134f0f.md) | 96 | `declaration-track:b71b14378e89df962e134f0f1f6512e56e9a59a94468f62a90b66d00e53db999` |
| 9 | `instance` | [tensor_right'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean/declarations/tensor-right--2e14b55a1f6478713a3c9d95.md) | 101 | `declaration-track:2e14b55a1f6478713a3c9d9508579a8815882060d04042d691f7b5b382e1b6ec` |
| 10 | `instance` | [left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean/declarations/left--b2f52964aeca5e5fa746d565.md) | 106 | `declaration-track:b2f52964aeca5e5fa746d565f957b428772b23c8d763df9d6bfe7558d0bb8e5f` |
| 11 | `instance` | [left'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean/declarations/left--98c66aa1595f2cc1b2fcb2b4.md) | 111 | `declaration-track:98c66aa1595f2cc1b2fcb2b43fb9deaf0c0c7bff8652ae1d1bba9527e9570723` |
| 12 | `instance` | [right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean/declarations/right--496eee94d55b79064b4c65ac.md) | 116 | `declaration-track:496eee94d55b79064b4c65acce60e5afb82703d459720072f029d7b9207c2a2f` |
| 13 | `instance` | [right'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean/declarations/right--7d32b31478f478e177e2a54e.md) | 121 | `declaration-track:7d32b31478f478e177e2a54e4316067015886a4bb54a65104e15642e5f120b68` |
| 14 | `instance` | [assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean/declarations/assoc--78a3ee3691975b72b3860a10.md) | 126 | `declaration-track:78a3ee3691975b72b3860a10a2646a79f79a156e31639c80141983a1bd8270b3` |
| 15 | `instance` | [assoc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean/declarations/assoc--90d51d2f4766b6f98b2e80d2.md) | 131 | `declaration-track:90d51d2f4766b6f98b2e80d278ebdb78e0f56036a646dd8fb9f99baaa7b92dcc` |
| 16 | `lemma` | [monoidalComp_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoidalComp/Variant5da815b8c62703dee76ea86370b4337662369edf3ae58ffcd9c91460fc0e16c4.lean/declarations/monoidalcomp-refl--1040a52bc6bc36f582c15938.md) | 137 | `result-track:1040a52bc6bc36f582c15938f80fb019be206e25db4609e2571cb96ae0fcd13d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
