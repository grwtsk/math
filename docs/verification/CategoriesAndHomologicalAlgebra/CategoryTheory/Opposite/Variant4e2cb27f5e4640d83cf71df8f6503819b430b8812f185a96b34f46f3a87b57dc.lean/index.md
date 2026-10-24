# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f664e87c9275b58f18b4608ba38f7d24961d245",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f664e87c9275b58f18b4608ba38f7d24961d245`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/declarations/instance--3fc54e7a650c9fcb9921cfe6.md) | 29 | `declaration-track:3fc54e7a650c9fcb9921cfe6047693533080a44acc146e5847ae48b261412d55` |
| 2 | `instance` | [moduleEndLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/declarations/moduleendleft--c4a843c401909437ac1d144b.md) | 34 | `declaration-track:c4a843c401909437ac1d144bc47b7700a7a942526fbb24d0ff07f5d548762a6d` |
| 3 | `theorem` | [unop_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/declarations/unop-add--21f7dddaaa70fe79562dcf17.md) | 41 | `result-track:21f7dddaaa70fe79562dcf176a6142da450c0709fda3a1aaf8f199af1264499f` |
| 4 | `theorem` | [unop_zsmul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/declarations/unop-zsmul--10a5a1a0129c1da89b7a717d.md) | 45 | `result-track:10a5a1a0129c1da89b7a717d0d74d55e9b22d52617b0ef017e9399293a8869a5` |
| 5 | `theorem` | [unop_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/declarations/unop-neg--c865a81cc14fc0babdd75800.md) | 49 | `result-track:c865a81cc14fc0babdd75800b319dcc37be6888a89c6b787ae8d2a258e671b84` |
| 6 | `theorem` | [op_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/declarations/op-add--a41600e9f03457e8fefd0b7e.md) | 53 | `result-track:a41600e9f03457e8fefd0b7e2db0cba5c1ef6bc0ac3b6b15c551841f354402fc` |
| 7 | `theorem` | [op_zsmul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/declarations/op-zsmul--3acdcb07d33a159494d4812a.md) | 57 | `result-track:3acdcb07d33a159494d4812a9b269cb552ab40db314eed5ac81ce5eb91df7908` |
| 8 | `theorem` | [op_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/declarations/op-neg--b3d692c34bc113d9234bafdc.md) | 61 | `result-track:b3d692c34bc113d9234bafdcbea49fb70747a70cbb5be8cd51ca7dff9cff2011` |
| 9 | `def` | [unopHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/declarations/unophom--29cb12149b032214ebfa82c7.md) | 68 | `declaration-track:29cb12149b032214ebfa82c74153cd8d29f49fc474c299275cda26435f3c7ec4` |
| 10 | `theorem` | [unop_sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/declarations/unop-sum--a213b78353f09c7882c34ebf.md) | 72 | `result-track:a213b78353f09c7882c34ebfeddaaa8e78626eea0936df930ec9d3896710a390` |
| 11 | `def` | [opHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/declarations/ophom--767a0de05509e7cd53557e45.md) | 78 | `declaration-track:767a0de05509e7cd53557e45be4407f3044cb2c03cf3d22f520ecd2adf212c03` |
| 12 | `theorem` | [op_sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/declarations/op-sum--b70c035a95d97a02aaf2b3ea.md) | 82 | `result-track:b70c035a95d97a02aaf2b3eac80ae77b6718e44f547cfe08f111e0d91346daa3` |
| 13 | `def` | [Preadditive.homSelfLinearEquivEndMulOpposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/declarations/preadditive-homselflinearequivendmulopposite--76c1248a99d59ac8505a262d.md) | 88 | `declaration-track:76c1248a99d59ac8505a262d9e818bb82e25a7c041b7bfa422a17eb1d7f9d0da` |
| 14 | `instance` | [Functor.op_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/declarations/functor-op-additive--48d04b387e130d4a0bd702b1.md) | 98 | `declaration-track:48d04b387e130d4a0bd702b183dccdd1fbf7857ea97325330d023a439ad75557` |
| 15 | `instance` | [Functor.rightOp_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/declarations/functor-rightop-additive--91769efed1f52fdaa49e1528.md) | 100 | `declaration-track:91769efed1f52fdaa49e15289393c60b31a85bdffe56d2ae5aa5d456fdf1eab2` |
| 16 | `instance` | [Functor.leftOp_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/declarations/functor-leftop-additive--548d38d41703f474727115ae.md) | 102 | `declaration-track:548d38d41703f474727115ae307d050720648abe033e59dc0a7d070615cd798d` |
| 17 | `instance` | [Functor.unop_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant4e2cb27f5e4640d83cf71df8f6503819b430b8812f185a96b34f46f3a87b57dc.lean/declarations/functor-unop-additive--0c28a02a7431b906894aff65.md) | 104 | `declaration-track:0c28a02a7431b906894aff65e211dab4b4390e17855a6deba00b2ab1263e22ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
