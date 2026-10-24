# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OmegaCompletePartialOrder.Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f13d2e16c9b9a48bbb579cef05357451e515e349",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f13d2e16c9b9a48bbb579cef05357451e515e349`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.OmegaCompletePartialOrder` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ωCPO](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/declarations/cpo--4175efe71c8d633c26640818.md) | 33 | `declaration-track:4175efe71c8d633c26640818b9e9a843ec512c8e9cdcf31ee2ed525e25b4b1f3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/declarations/instance--521af38a8c839a1a45b06f1b.md) | 44 | `declaration-track:521af38a8c839a1a45b06f1bff85c6b9b9a8b51340cbb8496a8c47cac7ed67d8` |
| 3 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/declarations/of--748312f07449a9cea54179e6.md) | 48 | `declaration-track:748312f07449a9cea54179e6944ad46126df95f9e76ffd8904220d412748f7f2` |
| 4 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/declarations/coe-of--63681290cc0e7fb841d47dac.md) | 51 | `result-track:63681290cc0e7fb841d47dacfbace05bea8a2213903de94662e273c10094ae7a` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/declarations/instance--15503864bcc804dae28f56aa.md) | 54 | `declaration-track:15503864bcc804dae28f56aa84e02131d7418d25cf2ca9b7e74229457e0c7ce2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/declarations/instance--f93221a0886373c6918cb55b.md) | 59 | `declaration-track:f93221a0886373c6918cb55bd56e420b3bb08f59f8a58f8af0c745ef6a2acff0` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/declarations/instance--af0ddb5160855f09cf4458d3.md) | 63 | `declaration-track:af0ddb5160855f09cf4458d3963436caf8111286fba4998218a0d356bcd3d73f` |
| 8 | `def` | [product](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/declarations/product--2b1fd2d788468019cbe275e8.md) | 73 | `declaration-track:2b1fd2d788468019cbe275e8e57ff79aaf3375d5cbe98237709a38cb03b02c20` |
| 9 | `def` | [isProduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/declarations/isproduct--2847a9f384d26a1f7a8508b0.md) | 77 | `declaration-track:2847a9f384d26a1f7a8508b027a719f2d1caaec216b2d5da76f3e1976a46e778` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/declarations/instance--c85b44f68318462a6722a355.md) | 88 | `declaration-track:c85b44f68318462a6722a355c4aa515729463281fd942771128889e10f42d8f5` |
| 11 | `instance` | [omegaCompletePartialOrderEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/declarations/omegacompletepartialorderequalizer--a055be552d6cd6d6bc6ffbf0.md) | 93 | `declaration-track:a055be552d6cd6d6bc6ffbf01927f5f1924c1f11c652f2421a9dce7f1938f049` |
| 12 | `def` | [equalizerι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/declarations/equalizer--7d232da801b62d10d74eaebd.md) | 105 | `declaration-track:7d232da801b62d10d74eaebdc72fcc801a2328130c401013b3d79fc32afd9bc6` |
| 13 | `def` | [equalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/declarations/equalizer--1bf3557786f7aa2fd49c0396.md) | 110 | `declaration-track:1bf3557786f7aa2fd49c0396c1ccbd6b2656ae0fedc1c8c725ef18da64e62874` |
| 14 | `def` | [isEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/declarations/isequalizer--456686e7ebb2bf05a391b052.md) | 115 | `declaration-track:456686e7ebb2bf05a391b05272211c824b3a8a910978b1ac36a64ea05a685116` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/declarations/instance--795ce57229f29e8e477c624f.md) | 126 | `declaration-track:795ce57229f29e8e477c624f8e5cb9e783a9846af082129170e4989329474763` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/declarations/instance--1ddad6ec7d5528cfe1e4ffa6.md) | 129 | `declaration-track:1ddad6ec7d5528cfe1e4ffa66ea97fbfc86b286be4937d550b777d18a816708f` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/declarations/instance--df33a2edfd86c48eebaa153b.md) | 132 | `declaration-track:df33a2edfd86c48eebaa153bfeb05bef766ee236dac6f94f4f56a669c69933f4` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OmegaCompletePartialOrder/Variant90d41fafaf54218cbebbd19d05b4379de688940f221aee5bc8018529a91e106f.lean/declarations/instance--85091f6166d0ee5abecfbb07.md) | 135 | `declaration-track:85091f6166d0ee5abecfbb077b86725f8d3ddffd9e8a76c18060b2de97c2c3ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
