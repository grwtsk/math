# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ComplexEulerProductFinite.Variantcf1d038845529c86e024747763b4ad51a424828e5b209239697947a60b960a91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "821b20220191c2851962d78d0ce3bed618a56035",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantcf1d038845529c86e024747763b4ad51a424828e5b209239697947a60b960a91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantcf1d038845529c86e024747763b4ad51a424828e5b209239697947a60b960a91.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantcf1d038845529c86e024747763b4ad51a424828e5b209239697947a60b960a91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `821b20220191c2851962d78d0ce3bed618a56035`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantcf1d038845529c86e024747763b4ad51a424828e5b209239697947a60b960a91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantcf1d038845529c86e024747763b4ad51a424828e5b209239697947a60b960a91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.ComplexZetaHalfPlane` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.PrimeExhaustion` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.SmoothNumberReindexing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteZetaEulerFactorComplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantcf1d038845529c86e024747763b4ad51a424828e5b209239697947a60b960a91.lean/declarations/finitezetaeulerfactorcomplex--7220eb044e41a14dd1b23bf0.md) | 25 | `declaration-track:7220eb044e41a14dd1b23bf0b7718c291f3837759db27a70386a6ce2a028105e` |
| 2 | `def` | [finiteZetaEulerProductComplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantcf1d038845529c86e024747763b4ad51a424828e5b209239697947a60b960a91.lean/declarations/finitezetaeulerproductcomplex--f450909dc26ee375c34ef5ed.md) | 31 | `declaration-track:f450909dc26ee375c34ef5ed5d0547571f39689ce09728f31348e8b418d8ffbd` |
| 3 | `theorem` | [finiteZetaEulerProductComplex_expands_boundedSmoothNumbers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantcf1d038845529c86e024747763b4ad51a424828e5b209239697947a60b960a91.lean/declarations/finitezetaeulerproductcomplex-expands-boundedsmoothnumbers--62a7e6b5f5882965df86bc1b.md) | 37 | `result-track:62a7e6b5f5882965df86bc1b4e7b3ad77e5fcb1317aaa3ee59049b435ca7566f` |
| 4 | `def` | [zetaEulerApproxComplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantcf1d038845529c86e024747763b4ad51a424828e5b209239697947a60b960a91.lean/declarations/zetaeulerapproxcomplex--4d95fc31995058ec095e849f.md) | 53 | `declaration-track:4d95fc31995058ec095e849f15c6fd4e47d761808dda56cfc919ab6d5c223877` |
| 5 | `theorem` | [zetaEulerApproxComplex_expands_boundedSmoothNumbers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantcf1d038845529c86e024747763b4ad51a424828e5b209239697947a60b960a91.lean/declarations/zetaeulerapproxcomplex-expands-boundedsmoothnumbers--7f7650f80113c3bc2b6466ec.md) | 58 | `result-track:7f7650f80113c3bc2b6466ec7a6cd932501ca3466231c9ac87472793822da9f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
