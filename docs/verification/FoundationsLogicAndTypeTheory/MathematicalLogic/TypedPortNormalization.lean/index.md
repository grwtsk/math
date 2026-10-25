# Verification target: GRWTSK.Logic.TypedPortNormalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3eb5b66bb309c6d2f2d261adb79940794d33f13",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/TypedPortNormalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3eb5b66bb309c6d2f2d261adb79940794d33f13`.

Source path: `GRWTSK/Logic/TypedPortNormalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/TypedPortNormalization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Expr](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/expr--8e10a99ee2be79afa2c72150.md) | 10 | `declaration-track:8e10a99ee2be79afa2c721500c643a72925d261927c121475db70352c9bcb7d2` |
| 2 | `inductive` | [NormalPath](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/normalpath--9bd8a047d4f9e1c1d4bc476d.md) | 16 | `declaration-track:9bd8a047d4f9e1c1d4bc476df939641dd8dffe93472c76c6cfd978e410836ac7` |
| 3 | `def` | [append](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/append--d4a85307382819cfd824e893.md) | 25 | `declaration-track:d4a85307382819cfd824e893e88428b4c2b6712ebe60e27fc0dc14b778424d1c` |
| 4 | `theorem` | [nil_append](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/nil-append--18a5ab2f90301aafe63a1d16.md) | 31 | `result-track:18a5ab2f90301aafe63a1d16b83ce6216780b677ef8c0a26b0eb1c09cc46ba85` |
| 5 | `theorem` | [append_nil](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/append-nil--f60d3dad5be9691bb25c6bf9.md) | 35 | `result-track:f60d3dad5be9691bb25c6bf9c7c5ff15dddc576a5009eee432a570b55dfc8f3e` |
| 6 | `theorem` | [append_assoc](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/append-assoc--b231232f1afb205304e77bb1.md) | 42 | `result-track:b231232f1afb205304e77bb1c04e61c0d39deb737673dd284b9152a8e385e55d` |
| 7 | `def` | [normalize](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/normalize--d9f05eb5f2e50ef8d4439b89.md) | 57 | `declaration-track:d9f05eb5f2e50ef8d4439b8902b628564513293686f8509bededa39ce9c44910` |
| 8 | `def` | [toExpr](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/toexpr--87cf360053939a6a8da7e292.md) | 69 | `declaration-track:87cf360053939a6a8da7e2924d422939e12d3ca980b6afbc1372811f91c91c17` |
| 9 | `theorem` | [normalize_toExpr](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/normalize-toexpr--da042d73106d2ddedff5893a.md) | 74 | `result-track:da042d73106d2ddedff5893accf6b9a1e740d0708ab306729f3f78a9569fcdda` |
| 10 | `def` | [normalForm](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/normalform--314c256cf0ed6eda1700dab0.md) | 87 | `declaration-track:314c256cf0ed6eda1700dab0826cafecab19d9372aac34d04e228cc1c13b9710` |
| 11 | `theorem` | [normalForm_idempotent](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/normalform-idempotent--70177969dd5a44533964d46b.md) | 91 | `result-track:70177969dd5a44533964d46b0f7a05780f7322dc3eb09c782b50a15ea4318fe1` |
| 12 | `structure` | [Semantics](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/semantics--310a89fb8718b0b8170fff4f.md) | 98 | `declaration-track:310a89fb8718b0b8170fff4fec6796fdd3ad051de61900dfa2483aa090997bc3` |
| 13 | `def` | [eval](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/eval--0ca66f93a2cf27ed6ab6042f.md) | 107 | `declaration-track:0ca66f93a2cf27ed6ab6042f86cf1e0deb4ecd5c0068c5d25ff938ed0c520356` |
| 14 | `theorem` | [eval_append](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/eval-append--941e6f81b99af739d3cbb330.md) | 113 | `result-track:941e6f81b99af739d3cbb330f0b5ff09b51b6010e9185abab255f56e1f70c9ec` |
| 15 | `def` | [eval](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/eval--eaae2edfad63241606e839f6.md) | 128 | `declaration-track:eaae2edfad63241606e839f6461259320e6307294c59ce9d1fdb4499ac16ef13` |
| 16 | `theorem` | [eval_normalize](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/eval-normalize--a86d2c809629819e942c62bf.md) | 135 | `result-track:a86d2c809629819e942c62bfc90300a669cfdea74721c03dca5f14d236a8bf60` |
| 17 | `theorem` | [eval_toExpr](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/eval-toexpr--95cdacebb4608d83d6e8ef0c.md) | 151 | `result-track:95cdacebb4608d83d6e8ef0c260741d53a568d8f00df2c55a3d148aeb7ab1d4c` |
| 18 | `theorem` | [eval_normalForm](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/eval-normalform--a94e3564d23197e2ebb5ee74.md) | 165 | `result-track:a94e3564d23197e2ebb5ee7470bfab6f6bca1cc48af7b64e26f49eef99a40a0b` |
| 19 | `def` | [bind](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/bind--f77751faca0cadf9f7902c68.md) | 180 | `declaration-track:f77751faca0cadf9f7902c688b2b9725f157914d7cd58976027c07d475b0b713` |
| 20 | `def` | [atomSubstitution](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/atomsubstitution--280a0b6cb94fb00f9da92486.md) | 187 | `declaration-track:280a0b6cb94fb00f9da924864c8c941c3b5e0623af636b22abac72ad26317331` |
| 21 | `theorem` | [bind_atomSubstitution](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/bind-atomsubstitution--679d405043a5358a8aedff97.md) | 191 | `result-track:679d405043a5358a8aedff9796235e00d014ea669b0de9717052f1d820965cd2` |
| 22 | `theorem` | [bind_bind](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/bind-bind--fdf3e4b38cfced0cea793ecf.md) | 199 | `result-track:fdf3e4b38cfced0cea793ecfc65e1c53830b85135c6a67704de8148fd1409399` |
| 23 | `def` | [substitute](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/substitute--2d3fec60375c447c218f40ca.md) | 217 | `declaration-track:2d3fec60375c447c218f40cafc7f715f7c248962923de1cedeb0a08041e122ea` |
| 24 | `theorem` | [eval_bind](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/declarations/eval-bind--4a7a978daacdb7e1ed04ade4.md) | 231 | `result-track:4a7a978daacdb7e1ed04ade47e9891fc205e378de79fbd4fce5aff68f982a2bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
