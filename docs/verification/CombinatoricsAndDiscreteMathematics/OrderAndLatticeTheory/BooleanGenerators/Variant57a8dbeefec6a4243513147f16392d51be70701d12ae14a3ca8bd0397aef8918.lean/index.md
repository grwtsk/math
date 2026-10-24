# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BooleanGenerators.Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "911acfb805f698202739ab7777a0d734c0c3062e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `911acfb805f698202739ab7777a0d734c0c3062e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.CompactlyGenerated.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BooleanGenerators](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean/declarations/booleangenerators--47e56bbc7b274e3546781e43.md) | 61 | `declaration-track:47e56bbc7b274e3546781e4347ccaa8164e83e0982e580ca974b9b714b29d6ba` |
| 2 | `lemma` | [mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean/declarations/mono--c1af3e09b1f8fe688babb1b6.md) | 74 | `result-track:c1af3e09b1f8fe688babb1b6258415915f618995df73a345f8b36977e627158a` |
| 3 | `lemma` | [atomistic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean/declarations/atomistic--de376e3b059b3b40a140ccc4.md) | 80 | `result-track:de376e3b059b3b40a140ccc44925593c90c3cb2c93751c9287261f2004cb2620` |
| 4 | `lemma` | [isAtomistic_of_sSup_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean/declarations/isatomistic-of-ssup-eq-top--dbb124b0cbe4d35a15979d03.md) | 109 | `result-track:dbb124b0cbe4d35a15979d03e6e730679ead55bf5cac50bc5e5f004ed56a77f8` |
| 5 | `lemma` | [mem_of_isAtom_of_le_sSup_atoms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean/declarations/mem-of-isatom-of-le-ssup-atoms--803eedddc0ab43b0189bbb17.md) | 115 | `result-track:803eedddc0ab43b0189bbb173cc9bb6eb5e7be69af4ded5e98766b7100e2b616` |
| 6 | `lemma` | [sSup_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean/declarations/ssup-inter--4b7b8a219243e55f7158b568.md) | 126 | `result-track:4b7b8a219243e55f7158b5684c4b49c1c5714c326816d1a4817eb6ba80abbbea` |
| 7 | `def` | [distribLattice_of_sSup_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean/declarations/distriblattice-of-ssup-eq-top--1fc5c3704f8100cbf309fd76.md) | 146 | `declaration-track:1fc5c3704f8100cbf309fd7600de4844169bd54b0e4abc21bccb525fb6955c3f` |
| 8 | `lemma` | [complementedLattice_of_sSup_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean/declarations/complementedlattice-of-ssup-eq-top--e505b668fe580e06c006e796.md) | 159 | `result-track:e505b668fe580e06c006e796b067ed79f9703e5d4365ccb231175fb8042371da` |
| 9 | `def` | [booleanAlgebra_of_sSup_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean/declarations/booleanalgebra-of-ssup-eq-top--238e798930fff2d48b7f2240.md) | 167 | `declaration-track:238e798930fff2d48b7f2240c779d91b1f56dfeaf050dee82488d28114e587ee` |
| 10 | `lemma` | [sSup_le_sSup_iff_of_atoms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean/declarations/ssup-le-ssup-iff-of-atoms--bc8bec4a31cc27558fcbaead.md) | 172 | `result-track:bc8bec4a31cc27558fcbaead943513d316c4380bd0fbd7d36b41542deae875cf` |
| 11 | `lemma` | [eq_atoms_of_sSup_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean/declarations/eq-atoms-of-ssup-eq-top--a76a6c777d8c07c50133165e.md) | 179 | `result-track:a76a6c777d8c07c50133165e9c66caad52f2ff90aafd528bf08e62cc58c0040d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
