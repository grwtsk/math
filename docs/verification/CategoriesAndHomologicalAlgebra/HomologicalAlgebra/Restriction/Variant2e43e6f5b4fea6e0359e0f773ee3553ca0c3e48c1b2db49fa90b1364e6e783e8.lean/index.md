# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Restriction.Variant2e43e6f5b4fea6e0359e0f773ee3553ca0c3e48c1b2db49fa90b1364e6e783e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f7a1998507e0958a870eb62fbb03fa0a4fe72c9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variant2e43e6f5b4fea6e0359e0f773ee3553ca0c3e48c1b2db49fa90b1364e6e783e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variant2e43e6f5b4fea6e0359e0f773ee3553ca0c3e48c1b2db49fa90b1364e6e783e8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variant2e43e6f5b4fea6e0359e0f773ee3553ca0c3e48c1b2db49fa90b1364e6e783e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f7a1998507e0958a870eb62fbb03fa0a4fe72c9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variant2e43e6f5b4fea6e0359e0f773ee3553ca0c3e48c1b2db49fa90b1364e6e783e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variant2e43e6f5b4fea6e0359e0f773ee3553ca0c3e48c1b2db49fa90b1364e6e783e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Additive` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restriction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variant2e43e6f5b4fea6e0359e0f773ee3553ca0c3e48c1b2db49fa90b1364e6e783e8.lean/declarations/restriction--0525e054b04bc2902757a182.md) | 39 | `declaration-track:0525e054b04bc2902757a182f63a11237d5d4ec6985e5ee59ad690bf896b8406` |
| 2 | `def` | [restrictionXIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variant2e43e6f5b4fea6e0359e0f773ee3553ca0c3e48c1b2db49fa90b1364e6e783e8.lean/declarations/restrictionxiso--33bf3f7e626333a885f0ed76.md) | 45 | `declaration-track:33bf3f7e626333a885f0ed7629a75cd1b509bb61e9dded21c5e1504b0379108d` |
| 3 | `lemma` | [restriction_d_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variant2e43e6f5b4fea6e0359e0f773ee3553ca0c3e48c1b2db49fa90b1364e6e783e8.lean/declarations/restriction-d-eq--68d33e913d3edd3f0359394f.md) | 50 | `result-track:68d33e913d3edd3f0359394fb2058dab793eba39384dea7c1ca3cab926cc2ca0` |
| 4 | `def` | [restrictionMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variant2e43e6f5b4fea6e0359e0f773ee3553ca0c3e48c1b2db49fa90b1364e6e783e8.lean/declarations/restrictionmap--ebaeb17f6058dce6488cb877.md) | 60 | `declaration-track:ebaeb17f6058dce6488cb8779c50fb0fc2b0d52d077300810e9c25ec9f9d1c0a` |
| 5 | `lemma` | [restrictionMap_f'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variant2e43e6f5b4fea6e0359e0f773ee3553ca0c3e48c1b2db49fa90b1364e6e783e8.lean/declarations/restrictionmap-f--4f1cba949fcd04a53b57ba5b.md) | 64 | `result-track:4f1cba949fcd04a53b57ba5b256175fd152fedf5c2e6a30abd2748c1ffe8e211` |
| 6 | `lemma` | [restrictionMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variant2e43e6f5b4fea6e0359e0f773ee3553ca0c3e48c1b2db49fa90b1364e6e783e8.lean/declarations/restrictionmap-id--abcf32f7265ca204e41c4dd1.md) | 73 | `result-track:abcf32f7265ca204e41c4dd117d516ba5f53351d89c7451972308c4cdbbcc7b0` |
| 7 | `lemma` | [restrictionMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variant2e43e6f5b4fea6e0359e0f773ee3553ca0c3e48c1b2db49fa90b1364e6e783e8.lean/declarations/restrictionmap-comp--5719daa3b357068a221d8856.md) | 76 | `result-track:5719daa3b357068a221d8856ebd4b7bcf2ffacdc4f8f9a90c000681ca3200157` |
| 8 | `def` | [restrictionFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variant2e43e6f5b4fea6e0359e0f773ee3553ca0c3e48c1b2db49fa90b1364e6e783e8.lean/declarations/restrictionfunctor--7f69c8ac2c4a869ad0a63e90.md) | 88 | `declaration-track:7f69c8ac2c4a869ad0a63e90462c6a2b38b18e7a17ef65e3e263cdc4616f298b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variant2e43e6f5b4fea6e0359e0f773ee3553ca0c3e48c1b2db49fa90b1364e6e783e8.lean/declarations/instance--70a9f9f0fdcb46a151c8e92c.md) | 93 | `declaration-track:70a9f9f0fdcb46a151c8e92c69cec5819fb9210a0646f72830ca5a9626cd005a` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variant2e43e6f5b4fea6e0359e0f773ee3553ca0c3e48c1b2db49fa90b1364e6e783e8.lean/declarations/instance--54b80ddd59ade3eb415b67a9.md) | 95 | `declaration-track:54b80ddd59ade3eb415b67a95c127ab3a43fee4a724c294f62bc99091867f8f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
