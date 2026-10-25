# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Alias.Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87bbf2aba4295b65bf356d235f90be173a08e000",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87bbf2aba4295b65bf356d235f90be173a08e000`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.DeclarationRange` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Compiler.NoncomputableAttr` — import line 8; external provider; requires a separately pinned dependency.
- `Std.CodeAction.Deprecated` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AliasInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean/declarations/aliasinfo--7e8dd81fb189075980f782c9.md) | 24 | `declaration-track:7e8dd81fb189075980f782c90078b677f7ed9390924d10cead22d409e9ddf1d0` |
| 2 | `def` | [AliasInfo.name](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean/declarations/aliasinfo-name--8b286366af5846357f541c99.md) | 34 | `declaration-track:8b286366af5846357f541c9998b533c4b6851160efce27dd103035c05513c6cd` |
| 3 | `def` | [AliasInfo.toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean/declarations/aliasinfo-tostring--5ee5c0240c8a9511e72ae247.md) | 40 | `declaration-track:5ee5c0240c8a9511e72ae2474d960be073fe4e94c883da0117cef04cd5396425` |
| 4 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean/declarations/initialize--e4c78ee9a77fad470d36b6f3.md) | 47 | `declaration-track:e4c78ee9a77fad470d36b6f3ab6b6c4d1c740bad4e908d174defe311fd5b1932` |
| 5 | `def` | [getAliasInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean/declarations/getaliasinfo--949918bac4a95a1802606d68.md) | 54 | `declaration-track:949918bac4a95a1802606d68abfc28573b1093ffe9e878592cd38b5ccb4466e5` |
| 6 | `def` | [setAliasInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean/declarations/setaliasinfo--ca736c5100bc99a3e54f65fc.md) | 58 | `declaration-track:ca736c5100bc99a3e54f65fcb5c9e882d2ea452993ba0cbb8c973d13d465ed7f` |
| 7 | `def` | [setDeprecatedTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean/declarations/setdeprecatedtarget--6b59531e0624b0eb09ec87d4.md) | 62 | `declaration-track:6b59531e0624b0eb09ec87d4339efdba2718e69c0932fd6bc26e407b72a6f6bb` |
| 8 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean/declarations/elab--28aa141a939d5b43afb002c4.md) | 80 | `declaration-track:28aa141a939d5b43afb002c46ceb93f435a5ba12bd5ef751aa6846ac78b29ec1` |
| 9 | `def` | [mkIffMpApp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean/declarations/mkiffmpapp--a1fe6e8ad69ad9227bdcae7a.md) | 132 | `declaration-track:a1fe6e8ad69ad9227bdcae7a6fd23a665cca6a86f07dfee060d3a34b52952ee2` |
| 10 | `def` | [addSide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean/declarations/addside--d7acee17ee8cdef501aa161c.md) | 139 | `declaration-track:d7acee17ee8cdef501aa161c5dcacae25dcac8514d78fdf04f6b4424ca68de63` |
| 11 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean/declarations/elab--0f1d2fb73077b2103976ed18.md) | 164 | `declaration-track:0f1d2fb73077b2103976ed18b8389e594a39179ef8178a5787ed7150aabc9069` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
