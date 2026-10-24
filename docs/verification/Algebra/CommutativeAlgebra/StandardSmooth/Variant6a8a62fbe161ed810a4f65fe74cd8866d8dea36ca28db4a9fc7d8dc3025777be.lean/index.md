# Verification target: GRWTSK.Algebra.CommutativeAlgebra.StandardSmooth.Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5634a50ef6b2782e793ee91cffc13932494112a9",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5634a50ef6b2782e793ee91cffc13932494112a9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsStandardSmooth](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/isstandardsmooth--8c1f0f7eee837233e1042f04.md) | 73 | `declaration-track:8c1f0f7eee837233e1042f041a119c4023178ab4055dc8b7a77fd113eb341d6a` |
| 2 | `lemma` | [SubmersivePresentation.isStandardSmooth](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/submersivepresentation-isstandardsmooth--6c19ad6278fe2cc162502edb.md) | 79 | `result-track:6c19ad6278fe2cc162502edbb08de228fe6616af3c7fdb8237a27dcf2adaf223` |
| 3 | `def` | [IsStandardSmooth.relativeDimension](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/isstandardsmooth-relativedimension--3157eb041af77d09f5d17ff3.md) | 91 | `declaration-track:3157eb041af77d09f5d17ff338734d4de88c4a2adc744d7563db54a50e818e10` |
| 4 | `class` | [IsStandardSmoothOfRelativeDimension](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/isstandardsmoothofrelativedimension--b49c7e9966eba980bb3c1017.md) | 99 | `declaration-track:b49c7e9966eba980bb3c1017ff3d99582e381b4de2b1ddb3a17b9385452b403b` |
| 5 | `lemma` | [SubmersivePresentation.isStandardSmoothOfRelativeDimension](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/submersivepresentation-isstandardsmoothofrelativedimension--758c8e68c3c53f733b89e28a.md) | 104 | `result-track:758c8e68c3c53f733b89e28a40f703ce86f48a52727e3ba7d04426d99deb2e9a` |
| 6 | `lemma` | [IsStandardSmoothOfRelativeDimension.isStandardSmooth](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/isstandardsmoothofrelativedimension-isstandardsmooth--4d44a324113aa02c024675ba.md) | 113 | `result-track:4d44a324113aa02c024675ba74d5c869f311327582e18db4972bd4003dd47a74` |
| 7 | `lemma` | [IsStandardSmoothOfRelativeDimension.of_algebraMap_bijective](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/isstandardsmoothofrelativedimension-of-algebramap-bijective--eda6dbdb683bd5665ee2f7e5.md) | 118 | `result-track:eda6dbdb683bd5665ee2f7e5785ef6e8ca72310878602c38ecf6c0edb4ed81b8` |
| 8 | `instance` | [IsStandardSmoothOfRelativeDimension.id](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/isstandardsmoothofrelativedimension-id--8b058a06320121a7480f2fed.md) | 125 | `declaration-track:8b058a06320121a7480f2fedcc481af3481d24c61904b86e25fb3fa9f75bab41` |
| 9 | `lemma` | [IsStandardSmoothOfRelativeDimension.mvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/isstandardsmoothofrelativedimension-mvpolynomial--5fc6bf60a06bb18ea8f724f7.md) | 132 | `result-track:5fc6bf60a06bb18ea8f724f766293f5e9e3f226ce7c99281f0b7a908ed560f88` |
| 10 | `instance` | [IsStandardSmoothOfRelativeDimension.mvPolynomial_fin](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/isstandardsmoothofrelativedimension-mvpolynomial-fin--30f92813222d9ebf3f883916.md) | 139 | `declaration-track:30f92813222d9ebf3f883916ca9c2c63c5c02779ebc89f4719bbba00ef298178` |
| 11 | `instance` | [IsStandardSmooth.mvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/isstandardsmooth-mvpolynomial--8dc4ceb0c78e964c2639d165.md) | 144 | `declaration-track:8dc4ceb0c78e964c2639d165cdc67ea18a360509c9fcca18b5196f80cf93ae7c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/instance--98049c634da6adaf4dd04c30.md) | 148 | `declaration-track:98049c634da6adaf4dd04c3090b316d277b7c180c2fc5356a3e0988705333052` |
| 13 | `lemma` | [IsStandardSmooth.of_algEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/isstandardsmooth-of-algequiv--2b8c2aae8a2ece0c70d0dca3.md) | 153 | `result-track:2b8c2aae8a2ece0c70d0dca30afac4abe6519cb23a3ce32d53ddef71a6be66ef` |
| 14 | `lemma` | [IsStandardSmoothOfRelativeDimension.of_algEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/isstandardsmoothofrelativedimension-of-algequiv--59ccede87827f48a5ed9790a.md) | 158 | `result-track:59ccede87827f48a5ed9790a02e169653e7343b17376607dba2163ab98cde8e5` |
| 15 | `lemma` | [IsStandardSmooth.trans](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/isstandardsmooth-trans--15821f0fb5165ba826e7c2ae.md) | 168 | `result-track:15821f0fb5165ba826e7c2ae1c77be9cff625ef48fb5da3959435a68a3c80f26` |
| 16 | `lemma` | [IsStandardSmoothOfRelativeDimension.trans](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/isstandardsmoothofrelativedimension-trans--6e04d59da19932829926db4c.md) | 175 | `result-track:6e04d59da19932829926db4c0b746f2e91665c5bd86dc0ae6530843cf2413c67` |
| 17 | `lemma` | [IsStandardSmooth.localization_away](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/isstandardsmooth-localization-away--14fd6061a4fc001be84982ae.md) | 186 | `result-track:14fd6061a4fc001be84982ae5417a5a117b4b13f12b1264957ff0b1b44c13bf2` |
| 18 | `lemma` | [IsStandardSmoothOfRelativeDimension.localization_away](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/isstandardsmoothofrelativedimension-localization-away--42b3c2786e6903e82d688f99.md) | 190 | `result-track:42b3c2786e6903e82d688f995d9bfce1e397949df5b136a98e9742191d4fc15b` |
| 19 | `instance` | [IsStandardSmooth.baseChange](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/isstandardsmooth-basechange--5bac228284d62d3792afb5c1.md) | 199 | `declaration-track:5bac228284d62d3792afb5c1e1485e416f6fd21e5b2f917e1c621e20b6752bd7` |
| 20 | `instance` | [IsStandardSmoothOfRelativeDimension.baseChange](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/isstandardsmoothofrelativedimension-basechange--a60703dbe535c196cd26159f.md) | 205 | `declaration-track:a60703dbe535c196cd26159fb0a5382bc11abfb207fbd575a78e8d86e71ef204` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/instance--242c236bcd18bf4407dbbce3.md) | 215 | `declaration-track:242c236bcd18bf4407dbbce378aafa85e40fdff60e5d135ab79dd925db07df9c` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/declarations/instance--48a70bd2cd69dd11db8197ce.md) | 219 | `declaration-track:48a70bd2cd69dd11db8197ceb28f45f7ca9f3afe6da63063ce5b1da194485686` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
