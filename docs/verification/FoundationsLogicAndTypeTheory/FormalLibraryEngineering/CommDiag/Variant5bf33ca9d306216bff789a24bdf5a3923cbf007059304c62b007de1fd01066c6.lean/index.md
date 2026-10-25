# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CommDiag.Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abd2ed23e564526ffd971d06f1164962d4411fb9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abd2ed23e564526ffd971d06f1164962d4411fb9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProofWidgets.Component.PenroseDiagram` — import line 6; external provider; requires a separately pinned dependency.
- `ProofWidgets.Presentation.Expr` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.Lean.Expr.app7?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean/declarations/root-lean-expr-app7--34f175a366d37f08c00a1782.md) | 16 | `declaration-track:34f175a366d37f08c00a1782dc3e31faeb56388247335471dec0a623461f4726` |
| 2 | `def` | [homType?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean/declarations/homtype--9b300d40f2a5a736696e465f.md) | 39 | `declaration-track:9b300d40f2a5a736696e465f41e86f226a89074f130aa1984f1dd51eec372b7a` |
| 3 | `def` | [homComp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean/declarations/homcomp--1e8429e5441ca0bacf1b0f79.md) | 44 | `declaration-track:1e8429e5441ca0bacf1b0f79e7c098e4fb7c22970e412a72e69f7af10f268d59` |
| 4 | `abbrev` | [ExprEmbeds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean/declarations/exprembeds--205ffd6f61b4feb5af845105.md) | 49 | `declaration-track:205ffd6f61b4feb5af845105471f741f365d8cb1be971366a4ef46bae6a32fd4` |
| 5 | `def` | [mkCommDiag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean/declarations/mkcommdiag--a5e8a506ada74ced79dbdcd1.md) | 56 | `declaration-track:a5e8a506ada74ced79dbdcd11f2327860e51184302efcdd6e9151b3d3cbd6dba` |
| 6 | `def` | [subTriangle](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean/declarations/subtriangle--10cb8f00c95bf4af5856fd7d.md) | 76 | `declaration-track:10cb8f00c95bf4af5856fd7d8dee4d10f8ee45306f4aaca3900363c28944123b` |
| 7 | `def` | [commTriangleM?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean/declarations/commtrianglem--285c39549e899d735dc8d95a.md) | 80 | `declaration-track:285c39549e899d735dc8d95a0ca1e061dbd5ff3d450bfb21bdc7f454d0ce7e16` |
| 8 | `def` | [commutativeTrianglePresenter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean/declarations/commutativetrianglepresenter--b4560211ab3e0f3f0c23a6ea.md) | 98 | `declaration-track:b4560211ab3e0f3f0c23a6ea97cc5d019e580974308c3138b5ff1ef01b665213` |
| 9 | `def` | [subSquare](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean/declarations/subsquare--9b1bd398742b3ea76b7175bd.md) | 116 | `declaration-track:9b1bd398742b3ea76b7175bd6d6b0e3150f2972e54a4b5e7d04d6afb68845d2c` |
| 10 | `def` | [commSquareM?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean/declarations/commsquarem--406adef56d6d1739c353e3fd.md) | 119 | `declaration-track:406adef56d6d1739c353e3fd57d8e4fe5f48b97306ad02d0bc5455ecb85f8e34` |
| 11 | `def` | [commutativeSquarePresenter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean/declarations/commutativesquarepresenter--fe3f85a0bc378219d1702a0a.md) | 132 | `declaration-track:fe3f85a0bc378219d1702a0a22dc03218c4b7859df27414889c7c11810fd055b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
