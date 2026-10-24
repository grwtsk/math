# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SplitEqualizer.Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb8dbca8e4086dd7c531938e31159ac55632a8e3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb8dbca8e4086dd7c531938e31159ac55632a8e3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSplitEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223.lean/declarations/issplitequalizer--f20e3a944d433e9791c6e030.md) | 69 | `declaration-track:f20e3a944d433e9791c6e0306ec126cd223b7dd356c02b72366faea3cbdce68d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223.lean/declarations/instance--c02af3a668eb0433f4e1187b.md) | 83 | `declaration-track:c02af3a668eb0433f4e1187bc795ff7f5d1211e11020c00c080d3947db3f11b3` |
| 3 | `def` | [IsSplitEqualizer.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223.lean/declarations/issplitequalizer-map--dabf8d6c0d73f25a642c1f3d.md) | 96 | `declaration-track:dabf8d6c0d73f25a642c1f3dc97e5e82d3eb11e7b29cbac77568bc3193686b95` |
| 4 | `def` | [IsSplitEqualizer.asFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223.lean/declarations/issplitequalizer-asfork--b60521d35704e9a02a91f0d1.md) | 111 | `declaration-track:b60521d35704e9a02a91f0d13cc563edda1c4f6d628c44838606b769d34087b1` |
| 5 | `theorem` | [IsSplitEqualizer.asFork_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223.lean/declarations/issplitequalizer-asfork--7bf4a75bcd5a7f09cdee5394.md) | 115 | `result-track:7bf4a75bcd5a7f09cdee53942276419c44303fe795853d68d6e8625639068cfc` |
| 6 | `def` | [IsSplitEqualizer.isEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223.lean/declarations/issplitequalizer-isequalizer--d0a90e31be63c578c7829588.md) | 122 | `declaration-track:d0a90e31be63c578c78295887707482a25212ef6ffc1ba4160717e0dc3dfd506` |
| 7 | `class` | [HasSplitEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223.lean/declarations/hassplitequalizer--14dab63900dce7e687fb1f03.md) | 136 | `declaration-track:14dab63900dce7e687fb1f037157c82775592325dbeb529775415c54124a6ceb` |
| 8 | `abbrev` | [Functor.IsCosplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223.lean/declarations/functor-iscosplitpair--636e2707b58a3d24f93d366a.md) | 144 | `declaration-track:636e2707b58a3d24f93d366acae7ed01fe60029c7f796f1a8ecb98ec26af5b57` |
| 9 | `def` | [HasSplitEqualizer.equalizerOfSplit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223.lean/declarations/hassplitequalizer-equalizerofsplit--43cb58bf2d0847b3e4333861.md) | 148 | `declaration-track:43cb58bf2d0847b3e4333861dad0d44e1cc68f4e3eb76cc73ff38217c421ca7f` |
| 10 | `def` | [HasSplitEqualizer.equalizerι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223.lean/declarations/hassplitequalizer-equalizer--3be59149303c367cb3e4e616.md) | 152 | `declaration-track:3be59149303c367cb3e4e616d55bd72793ad533541f0a04e27945be27e4b5e28` |
| 11 | `def` | [HasSplitEqualizer.isSplitEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223.lean/declarations/hassplitequalizer-issplitequalizer--5c2156450959c682a04d9de1.md) | 157 | `declaration-track:5c2156450959c682a04d9de180df6dd3d881b15d58ef18666f2bc6892ec65485` |
| 12 | `instance` | [map_is_cosplit_pair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223.lean/declarations/map-is-cosplit-pair--587ff2a9af3ba2aff9c1e37a.md) | 162 | `declaration-track:587ff2a9af3ba2aff9c1e37a85cc3463700669b0f207332e34bdf5c8235ff896` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant52232990e62d950b5c3f9076795508aaf0c82e8feab97f3fffbc3679e920e223.lean/declarations/instance--636fcaa7d6b751dcdce043ad.md) | 169 | `declaration-track:636fcaa7d6b751dcdce043ad1a7448816aae87fc0616209a98ed2c07f3aab90c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
