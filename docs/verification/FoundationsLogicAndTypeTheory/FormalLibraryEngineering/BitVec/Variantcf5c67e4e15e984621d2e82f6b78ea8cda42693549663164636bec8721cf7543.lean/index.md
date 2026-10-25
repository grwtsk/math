# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitVec.Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29a009eb183a4dcb6821eed77363dbe585185407",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29a009eb183a4dcb6821eed77363dbe585185407`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind` — import line 8; external provider; requires a separately pinned dependency.
- `Init.Data.BitVec.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.LitValues` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.ToExpr` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Simp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkBVLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean/declarations/mkbvlit--8ab65842beb24d0875ba2d37.md) | 35 | `declaration-track:8ab65842beb24d0875ba2d378953a5f250a5773b8d9abedbddae9900fe1bb386` |
| 2 | `def` | [mkBoolLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean/declarations/mkboollit--d3209d7c870b8ce0c4901ecf.md) | 39 | `declaration-track:d3209d7c870b8ce0c4901ecf0f47b1e7ab59e2730e75eca96326ec953b4bc73c` |
| 3 | `def` | [getBV?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean/declarations/getbv--3f35bbfc90a3f1e103905b0d.md) | 43 | `declaration-track:3f35bbfc90a3f1e103905b0dbcca51b4324c54472588c179cab5a9786ecc447d` |
| 4 | `def` | [unaryOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean/declarations/unaryop--3303b2bde76a8e0a82b8e9b6.md) | 50 | `declaration-track:3303b2bde76a8e0a82b8e9b6c8258b0dd3559ffd6b148678175a49ede0af00ff` |
| 5 | `def` | [binOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean/declarations/binop--9d5cb6aeb96f0c35c34f40df.md) | 64 | `declaration-track:9d5cb6aeb96f0c35c34f40dfaa4e89a0184cbfd54643773ad867203473a0cee8` |
| 6 | `def` | [unaryBV](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean/declarations/unarybv--729146e2776a3e403a5ac82f.md) | 77 | `declaration-track:729146e2776a3e403a5ac82f04f008c8715bfe9317f6a3a99dfee142c7d25255` |
| 7 | `def` | [extendBV](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean/declarations/extendbv--02c17b4d26614f9b87a7b464.md) | 85 | `declaration-track:02c17b4d26614f9b87a7b4644c29eed719f27dbcf4f0a5bab223beb8dfbb3ed8` |
| 8 | `def` | [extractBV](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean/declarations/extractbv--f4931c30908d5ae3bcec8bc9.md) | 94 | `declaration-track:f4931c30908d5ae3bcec8bc9f4a5a20fd835659df8943c81950dc7fbd232e153` |
| 9 | `def` | [binBV](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean/declarations/binbv--8b183a6729e3241bd297ead0.md) | 105 | `declaration-track:8b183a6729e3241bd297ead0766406902792033f15f5bd9ed9d8c9b6b1f4b240` |
| 10 | `def` | [shiftBV](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean/declarations/shiftbv--308c623c833ecd576e6a4fb2.md) | 117 | `declaration-track:308c623c833ecd576e6a4fb2ab86f284af5c4b95b28f016a7a71734ad89ea119` |
| 11 | `def` | [getBitBV](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean/declarations/getbitbv--2f2d0ee7c54ecd17fe69ec3c.md) | 126 | `declaration-track:2f2d0ee7c54ecd17fe69ec3c11c5cbb718ef47efe90b6c5bf015cb4cd11a790f` |
| 12 | `def` | [hShiftBV](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean/declarations/hshiftbv--0a597241220bc5ccb9d40c84.md) | 212 | `declaration-track:0a597241220bc5ccb9d40c8409fd9ae7cd68d65671261261b20fee5df47e363f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
