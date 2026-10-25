# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "958785cbd78c2dd6e71ca6ae9af50cb3888cfd49",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `958785cbd78c2dd6e71ca6ae9af50cb3888cfd49`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean.json)

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
| 1 | `structure` | [SimpTheoremInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean/declarations/simptheoreminfo--1f28d04ebe878158e8ce77ab.md) | 37 | `declaration-track:1f28d04ebe878158e8ce77abe37b7bfe2a405c8b9cfdc5492a0543c4a24cd4e0` |
| 2 | `def` | [isCondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean/declarations/iscondition--f615aa752de8365f8aaa8d7a.md) | 47 | `declaration-track:f615aa752de8365f8aaa8d7aa3b6e169e7be431a8c0477bbb3b085198f191550` |
| 3 | `def` | [withSimpTheoremInfos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean/declarations/withsimptheoreminfos--611f67525cb9f17a4d203664.md) | 53 | `declaration-track:611f67525cb9f17a4d203664485309870d1f3ce2447c3fc4dc892cbf42b93937` |
| 4 | `register_option` | [linter.simpNF.respectTransparency](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean/declarations/linter-simpnf-respecttransparency--1eb78840e808e0ecc715fb8a.md) | 76 | `declaration-track:1eb78840e808e0ecc715fb8addd1e501e664052fecc82880426ac849d4a71492` |
| 5 | `def` | [isSimpEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean/declarations/issimpeq--47c5fbedaf6732371ace439c.md) | 84 | `declaration-track:47c5fbedaf6732371ace439c6713d4b30925f2b9f36656a4e6baf4ba7f8a528c` |
| 6 | `def` | [checkAllSimpTheoremInfos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean/declarations/checkallsimptheoreminfos--6304f28ac379972fdb5d8184.md) | 98 | `declaration-track:6304f28ac379972fdb5d81845fa88834bae5de081370f1642dd4819f55ed9c69` |
| 7 | `def` | [isSimpTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean/declarations/issimptheorem--8191bef1916b1c803b9caf19.md) | 107 | `declaration-track:8191bef1916b1c803b9caf19234fbd9339d89f855b393ea797045da980f3f0c9` |
| 8 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpTheoremInfo.Variant3e84fcdc00aed39d17f193a8a15ac732defe4949a34eccdea317a3b98cc729cb.Lean.Meta.DiscrTree.elements](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-simpt--105c54a2b42c65853c27952c.md) | 112 | `declaration-track:105c54a2b42c65853c27952c379785bdc4dc5c2f2e72b2a998207efdcb71bb40` |
| 9 | `def` | [decorateError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean/declarations/decorateerror--286906e42a9e2e1d4b897586.md) | 121 | `declaration-track:286906e42a9e2e1d4b89758660396c3124831d341033d0eeb1ea4faba99373d0` |
| 10 | `def` | [formatLemmas](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean/declarations/formatlemmas--5300ee14428658653a693de2.md) | 125 | `declaration-track:5300ee14428658653a693de2b2b337dec307b3c13e94fd90c6a2ec0e1aa9964a` |
| 11 | `def` | [simpNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean/declarations/simpnf--1a177f7094096f0265b9be66.md) | 137 | `declaration-track:1a177f7094096f0265b9be66c3bf8882b37b530bc81942f73b4db350b5121d48` |
| 12 | `def` | [Expr.eqOrIff?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean/declarations/expr-eqoriff--0ceff745a588d37da892c166.md) | 281 | `declaration-track:0ceff745a588d37da892c1660b687317eb2d83ede0ad98651ca0728e992bd952` |
| 13 | `def` | [simpComm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean/declarations/simpcomm--305d70f1f3b41b512ce3458e.md) | 288 | `declaration-track:305d70f1f3b41b512ce3458e55fbc4208601cbd5df2d0eacf38037293aa85bb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
