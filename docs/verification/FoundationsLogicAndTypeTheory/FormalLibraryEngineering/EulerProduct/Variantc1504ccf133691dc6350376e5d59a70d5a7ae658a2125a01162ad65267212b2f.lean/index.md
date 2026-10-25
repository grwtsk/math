# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EulerProduct.Variantc1504ccf133691dc6350376e5d59a70d5a7ae658a2125a01162ad65267212b2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "731da1f0ff4cf87a914ad279f965fa75f528590e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variantc1504ccf133691dc6350376e5d59a70d5a7ae658a2125a01162ad65267212b2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variantc1504ccf133691dc6350376e5d59a70d5a7ae658a2125a01162ad65267212b2f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variantc1504ccf133691dc6350376e5d59a70d5a7ae658a2125a01162ad65267212b2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `731da1f0ff4cf87a914ad279f965fa75f528590e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variantc1504ccf133691dc6350376e5d59a70d5a7ae658a2125a01162ad65267212b2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variantc1504ccf133691dc6350376e5d59a70d5a7ae658a2125a01162ad65267212b2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.DirichletSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Number.EulerProduct` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InfiniteEulerProductAuthority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variantc1504ccf133691dc6350376e5d59a70d5a7ae658a2125a01162ad65267212b2f.lean/declarations/infiniteeulerproductauthority--4ebc03d1f5e93b15cad15e57.md) | 22 | `declaration-track:4ebc03d1f5e93b15cad15e57245353a564c9d7782bb730e4763ff1b0630065f2` |
| 2 | `theorem` | [infinite_euler_product_requires_authority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variantc1504ccf133691dc6350376e5d59a70d5a7ae658a2125a01162ad65267212b2f.lean/declarations/infinite-euler-product-requires-authority--bd1043c284ac63794f1be4f9.md) | 31 | `result-track:bd1043c284ac63794f1be4f903d935fe753a3f739f6481de22cfed2aa339f225` |
| 3 | `def` | [FiniteEulerWindowProvesInfiniteEulerProduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variantc1504ccf133691dc6350376e5d59a70d5a7ae658a2125a01162ad65267212b2f.lean/declarations/finiteeulerwindowprovesinfiniteeulerproduct--8a5f780709cbbfe67950686d.md) | 41 | `declaration-track:8a5f780709cbbfe67950686d803668ef44fd427a91ea4f9b19f44d97fbe9c2cd` |
| 4 | `theorem` | [finite_euler_window_not_infinite_product](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variantc1504ccf133691dc6350376e5d59a70d5a7ae658a2125a01162ad65267212b2f.lean/declarations/finite-euler-window-not-infinite-product--ab71fc5588f16e61bf2918e1.md) | 45 | `result-track:ab71fc5588f16e61bf2918e1c412b0cff74b6e6c53fc2a8e02c8dd43bcb19054` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
