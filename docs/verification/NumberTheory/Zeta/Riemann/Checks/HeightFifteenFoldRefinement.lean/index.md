# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenFoldRefinement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edc1be933ca30255d48587cd8e5e72cf259eea17",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edc1be933ca30255d48587cd8e5e72cf259eea17`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalJetStateFold`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenBlockDecomposition`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [state](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/declarations/state--60cb6ff2ee9690681de5f0f9.md) | 27 | `declaration-track:60cb6ff2ee9690681de5f0f98d241f67f7a6102bd9d3c2c7950ab116626fbbf1` |
| 2 | `def` | [foldedImageAt](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/declarations/foldedimageat--e1e5169de03a95bc62b1e492.md) | 32 | `declaration-track:e1e5169de03a95bc62b1e4928f14d866c5c10e04dc04bd2a1be2c8c84bd0f290` |
| 3 | `theorem` | [foldedImageAt_eq](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/declarations/foldedimageat-eq--f372040d2d8759e4d6e966a6.md) | 40 | `result-track:f372040d2d8759e4d6e966a6b7ad456765bbdbdc77a19a4dce13b83ed6596695` |
| 4 | `def` | [foldedImage](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/declarations/foldedimage--dbae5830e7058ca11485766a.md) | 44 | `declaration-track:dbae5830e7058ca11485766ad565056971d7ee5273415dda207ae33747ff671f` |
| 5 | `theorem` | [foldedImage_eq](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/declarations/foldedimage-eq--eb2bcf47078552aebf8f736c.md) | 47 | `result-track:eb2bcf47078552aebf8f736cd418d5808fd46ef1059c82b7780c1452af1b749e` |
| 6 | `def` | [test](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/declarations/test--411aac9fe338003ab56800d7.md) | 52 | `declaration-track:411aac9fe338003ab56800d7a3f7507b73b668aa3478f50e2d7eba2826ecaf6c` |
| 7 | `def` | [term](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/declarations/term--7c26d661df124944e8715637.md) | 63 | `declaration-track:7c26d661df124944e87156376f06aa34b0f01ac300a98ca6e3abdfe332e6ee26` |
| 8 | `theorem` | [test_eq](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/declarations/test-eq--1dc2da1f9aaaad4e2c6e8596.md) | 66 | `result-track:1dc2da1f9aaaad4e2c6e8596fb55a1a6ecc7e4fe310768615cc568bc50da430a` |
| 9 | `theorem` | [term_eq](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/declarations/term-eq--36de913010b90a196fb7a93e.md) | 72 | `result-track:36de913010b90a196fb7a93ee179137c7201a25914c52da66d4d862ecb2132db` |
| 10 | `theorem` | [chunk_eq](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/declarations/chunk-eq--73f5b79c2877d3ae510ba152.md) | 75 | `result-track:73f5b79c2877d3ae510ba1522d4def8de53c4ce8a0a3aa74d3fdc4cd6620d517` |
| 11 | `def` | [FoldBlockObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/declarations/foldblockobligations--bf1a9bab47366ad029054eb2.md) | 82 | `declaration-track:bf1a9bab47366ad029054eb2595770372c9a721ef17f85ef1154201d80b1bb4b` |
| 12 | `def` | [verifyExpected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/declarations/verifyexpected--eeb0b701d113a4743b680d99.md) | 85 | `declaration-track:eeb0b701d113a4743b680d9988caf0057ed8954c7ab64738cb41a43d75ff0214` |
| 13 | `theorem` | [obligations_iff](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/declarations/obligations-iff--4565187ad957af7b3ef650da.md) | 88 | `result-track:4565187ad957af7b3ef650da0e893027131ae635f7c8deb33589057cc35e89e8` |
| 14 | `theorem` | [verifyExpected_eq](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/declarations/verifyexpected-eq--3fefb066045f0a5a32b8cb0b.md) | 94 | `result-track:3fefb066045f0a5a32b8cb0bb3f98a3ffeb14c7466f20ca10d579bebeaa0cbe4` |
| 15 | `theorem` | [success_of_fold_blocks](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/declarations/success-of-fold-blocks--64919c144574920cf3d5e328.md) | 99 | `result-track:64919c144574920cf3d5e3289900012812729e7abf9bd595a391db7c844f39a1` |
| 16 | `theorem` | [success_of_verified](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/declarations/success-of-verified--9058cbfb0ed323d96e8a9879.md) | 102 | `result-track:9058cbfb0ed323d96e8a9879955005f988831a47d57628ff0ceae480db860c93` |
| 17 | `theorem` | [count_one_of_fold_blocks](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/declarations/count-one-of-fold-blocks--9df1053c4e350236380dbdd9.md) | 105 | `result-track:9df1053c4e350236380dbdd9eedfd43dafa197095e0d996d36aadeaf9d0cc051` |
| 18 | `theorem` | [complete_pair_of_fold_blocks](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/declarations/complete-pair-of-fold-blocks--baaf0af0c7aa043cef31c003.md) | 109 | `result-track:baaf0af0c7aa043cef31c003622e6da5da2587e584b90e2423fa51aa0e80f9db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
