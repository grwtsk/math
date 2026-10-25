# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToExpr.Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29dddd0d4e6f32053ce6df4eb297cd5ebb13afa9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29dddd0d4e6f32053ce6df4eb297cd5ebb13afa9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LevelMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean/declarations/levelmap--537256eb5a747d1cde899d18.md) | 18 | `declaration-track:537256eb5a747d1cde899d1896195a654da2b82143835c512fc7bedde0cf14fc` |
| 2 | `def` | [_root_.Lean.FVarId.toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean/declarations/root-lean-fvarid-toexpr--cf9f37d8371b7d7118e3f502.md) | 20 | `declaration-track:cf9f37d8371b7d7118e3f502fc52796de7c6311b2d8fad90d005db827bbfe6f7` |
| 3 | `def` | [_root_.Lean.Expr.abstract'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean/declarations/root-lean-expr-abstract--971e70f49ec3a7e33e541406.md) | 25 | `declaration-track:971e70f49ec3a7e33e541406a003aac0bdbd76d51e4a0d93b55df3614f750b73` |
| 4 | `abbrev` | [ToExprM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean/declarations/toexprm--04fcd4b057f5bcea4e6c5172.md) | 39 | `declaration-track:04fcd4b057f5bcea4e6c5172b28c2c2f69239d489fbe2b9d0cf5f4e9c90052df` |
| 5 | `def` | [mkLambdaM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean/declarations/mklambdam--ae13b4821ad0cb6cb177942f.md) | 41 | `declaration-track:ae13b4821ad0cb6cb177942f78fe4e0bc3c82c6bf0ed24f9fe61163e51ee060b` |
| 6 | `abbrev` | [_root_.Lean.FVarId.toExprM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean/declarations/root-lean-fvarid-toexprm--0e2ce362e2d7c1511cb954f4.md) | 52 | `declaration-track:0e2ce362e2d7c1511cb954f4499bbfcb433afac4162fddb0cf22bdbb6953a2b8` |
| 7 | `def` | [abstractM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean/declarations/abstractm--5ba19efeb424faa73d3e2fba.md) | 55 | `declaration-track:5ba19efeb424faa73d3e2fba0ae2826328e908290b1b3a9a49ecf2f781399de3` |
| 8 | `def` | [withFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean/declarations/withfvar--5e45995d9ebc09065e8d9f6a.md) | 58 | `declaration-track:5e45995d9ebc09065e8d9f6ad0a49f9471e10f8eba3c9d92eb83615601500820` |
| 9 | `def` | [withParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean/declarations/withparams--74529541afee9b47e85e5fcb.md) | 63 | `declaration-track:74529541afee9b47e85e5fcbb7596d18f7c6c1763dcccff7066293c3ebccdfe8` |
| 10 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean/declarations/run--9ed43c91b4aa89de20f31a59.md) | 72 | `declaration-track:9ed43c91b4aa89de20f31a59daeca3ffaa5eb974c265f7f6261967d636c26db4` |
| 11 | `def` | [run'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean/declarations/run--42babd5d4dca508506e38dca.md) | 75 | `declaration-track:42babd5d4dca508506e38dcade5ebf4cdc607992646a9afc9a0de299d94cf5b3` |
| 12 | `def` | [Arg.toExprM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean/declarations/arg-toexprm--6bb2a4a9ad8639dfc94aaa79.md) | 83 | `declaration-track:6bb2a4a9ad8639dfc94aaa7979fc66c062a22797838836024ef9ed9111201a0d` |
| 13 | `def` | [FunDecl.toExprM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean/declarations/fundecl-toexprm--272650abc4d189457bb7e592.md) | 87 | `declaration-track:272650abc4d189457bb7e59295409c702a90ef162cd7b1b2b0c0a5de8ca45ad8` |
| 14 | `def` | [Code.toExprM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean/declarations/code-toexprm--b6ff17684ad44b815b00b726.md) | 90 | `declaration-track:b6ff17684ad44b815b00b726d12f798650b5d0b758fc76a1c710fbda73ab853e` |
| 15 | `def` | [Code.toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean/declarations/code-toexpr--dec78ab2f58e57380920d40e.md) | 146 | `declaration-track:dec78ab2f58e57380920d40e5a6a268848e3ede148da2db892d3278d3b043eba` |
| 16 | `def` | [FunDecl.toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant25afd6455091c0c4fbb95bacbe8394b5af3d765c3807e1ab99b322836a6e3103.lean/declarations/fundecl-toexpr--6452716a4f76e8ccf8018f7e.md) | 149 | `declaration-track:6452716a4f76e8ccf8018f7e7d0e44190673f3fb6cb670a99e47811f7e9a6de7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
