# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Order.Taxonomy.Core

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e328e390d757621e07186b97f8ff61c6134de35",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Order/Taxonomy/Core.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e328e390d757621e07186b97f8ff61c6134de35`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Order/Taxonomy/Core.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Order/Taxonomy/Core.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.Order.Taxonomy.Address`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Taxonomy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/declarations/taxonomy--fad873142bf61b352c77023f.md) | 16 | `declaration-track:fad873142bf61b352c77023f1c4442402f6cb3188ee7a8da01ed205b3e7b3326` |
| 2 | `structure` | [Taxonomy.Node](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/declarations/taxonomy-node--93958cda0430a18c5e0bf7cb.md) | 25 | `declaration-track:93958cda0430a18c5e0bf7cb60de0ea968f108d081f76d7bd803af04fcdba70c` |
| 3 | `theorem` | [Taxonomy.Node.eq_of_val_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/declarations/taxonomy-node-eq-of-val-eq--10beb449c46626e860a3351c.md) | 29 | `result-track:10beb449c46626e860a3351c1f53a94c614c2d9084ef1ad968776fb851dbcd35` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/declarations/instance--80698de43ae7b203477aef04.md) | 38 | `declaration-track:80698de43ae7b203477aef04131d08b92250b7f3054e97499f0198bec1e48304` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/declarations/instance--a6f4e7cb970b4915490e69b2.md) | 44 | `declaration-track:a6f4e7cb970b4915490e69b2887d769a0b6b9292297760ab6af96aae4f77808e` |
| 6 | `def` | [Taxonomy.lca](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/declarations/taxonomy-lca--18015494d6ff18d7b272193d.md) | 49 | `declaration-track:18015494d6ff18d7b272193d4eeb9b31d2a300f4f718461116ce58516bd9d915` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/declarations/instance--8ce3541ad0bb88a228c20de1.md) | 52 | `declaration-track:8ce3541ad0bb88a228c20de17c648d74e8eb2ee6b03c03ebb489a22b7d0813e6` |
| 8 | `theorem` | [Taxonomy.ancestors_chain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/declarations/taxonomy-ancestors-chain--60b20ce45cb1112ef5ee4d0c.md) | 60 | `result-track:60b20ce45cb1112ef5ee4d0cacd628a12d088de46352fadfca70b2b6ddd53fef` |
| 9 | `def` | [ofPaths](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/declarations/ofpaths--6d967780dd374a26ddc06b5c.md) | 65 | `declaration-track:6d967780dd374a26ddc06b5cc1d202cdb3a1c694bfdbb0a1f93a8cf28533bfcd` |
| 10 | `def` | [ClosedPaths](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/declarations/closedpaths--9d18f98515686193f649c0d9.md) | 81 | `declaration-track:9d18f98515686193f649c0d99f2b1e71b390a2668aee8efb733951ad0e91c99a` |
| 11 | `def` | [checkClosed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/declarations/checkclosed--84bd6e4b3b5cfa69ca0a9a76.md) | 85 | `declaration-track:84bd6e4b3b5cfa69ca0a9a76687efee42ce6f21749161a297391e00152df5884` |
| 12 | `theorem` | [checkClosed_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/declarations/checkclosed-sound--b97d2cce6ab218f67b3b0307.md) | 89 | `result-track:b97d2cce6ab218f67b3b03077c109263663f9a5bf0f3a2b83952da0459a0ef34` |
| 13 | `theorem` | [ofPaths_exact](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/declarations/ofpaths-exact--6e4970669f5bf093681cf595.md) | 96 | `result-track:6e4970669f5bf093681cf595597ca24e60dcb3fca09ca795a0f8ec0d2d78214e` |
| 14 | `structure` | [FinitePresentation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/declarations/finitepresentation--06e82d44432dc765d6404af2.md) | 107 | `declaration-track:06e82d44432dc765d6404af28ca04a8546399bd7b503d3ad7e19edde4d55529a` |
| 15 | `theorem` | [finite_representation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/declarations/finite-representation--a4807b22476b543ee5578c19.md) | 112 | `result-track:a4807b22476b543ee5578c197e74206e590175f09d07aaeea8dde06f2d3e4523` |
| 16 | `def` | [representationOrderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/declarations/representationorderiso--5f012f8ddbdec508ded1d680.md) | 123 | `declaration-track:5f012f8ddbdec508ded1d68046121df864f559122545a5daaec9f33a23b72580` |
| 17 | `def` | [RadixBounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/declarations/radixbounded--c12ba83c45c2c1d548fffaf9.md) | 132 | `declaration-track:c12ba83c45c2c1d548fffaf9524d288bec1d8d318192a1c1855e88fb472e1d37` |
| 18 | `def` | [rootAddress](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/declarations/rootaddress--268865e0aa911d8fcdaafc59.md) | 136 | `declaration-track:268865e0aa911d8fcdaafc5932b5254cb481e06d75d3503fee747d1e6a7acfa7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
