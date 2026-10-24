# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6187eb412ed2119d158bc56671d4324085bf1f5d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6187eb412ed2119d158bc56671d4324085bf1f5d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.While` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [updateTokens](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean/declarations/updatetokens--f2e7e0a70c36761d29382461.md) | 29 | `declaration-track:f2e7e0a70c36761d2938246145e5a120ae5a6bc09bc6d4a556e7acc03571042f` |
| 2 | `structure` | [ModuleParserState](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean/declarations/moduleparserstate--d89cdb98bf2cb43b6e672cd7.md) | 36 | `declaration-track:d89cdb98bf2cb43b6e672cd7044b16f29da1932d663f1edebb98993b70aff96c` |
| 3 | `def` | [mkErrorMessage](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean/declarations/mkerrormessage--fcb93e2a3f22c9cdc694a9de.md) | 46 | `declaration-track:fcb93e2a3f22c9cdc694a9dee22581372eebe59cf0caa805e3b3e125888f640b` |
| 4 | `def` | [setStartOfFileLeading](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean/declarations/setstartoffileleading--4419e0f811b93a1783e70d46.md) | 77 | `declaration-track:4419e0f811b93a1783e70d46d622be1d4326c9bb6b637232c69353e21b673413` |
| 5 | `def` | [parseHeader](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean/declarations/parseheader--43aa823c077a49a15eae2721.md) | 83 | `declaration-track:43aa823c077a49a15eae272103fa2783087260b8b9def056f3a9713e73b4a221` |
| 6 | `def` | [mkEOI](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean/declarations/mkeoi--0ce2c7e208bf33ff09337e85.md) | 122 | `declaration-track:0ce2c7e208bf33ff09337e859c7e5ae72912ea6c0042d18f07ad2e83e20127a8` |
| 7 | `def` | [isTerminalCommand](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean/declarations/isterminalcommand--6b4d03f116167fb66127890e.md) | 127 | `declaration-track:6b4d03f116167fb66127890e383421f662838c2eda2cab8114a4227a7fff1e31` |
| 8 | `def` | [consumeInput](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean/declarations/consumeinput--c80d02f882240b77086e36b2.md) | 130 | `declaration-track:c80d02f882240b77086e36b22a976e4c2571a3489130770881b72dbe0ce9cd7e` |
| 9 | `def` | [topLevelCommandParserFn](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean/declarations/toplevelcommandparserfn--3cae3ae349ebb42385834f9e.md) | 137 | `declaration-track:3cae3ae349ebb42385834f9e9d1e9e1969d791ee62491e2bbbddee79d3df9aa7` |
| 10 | `def` | [parseCommand](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean/declarations/parsecommand--a97dc571fc8dedb6f5044c41.md) | 143 | `declaration-track:a97dc571fc8dedb6f5044c41ea13cf2cb34ecf2543ab6702403c21f49b045ae8` |
| 11 | `def` | [testParseModuleAux](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean/declarations/testparsemoduleaux--1b2974656ee0791d1170a968.md) | 190 | `declaration-track:1b2974656ee0791d1170a968cd78ef80df79b34932a774f91b665f7185808c6c` |
| 12 | `def` | [testParseModule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean/declarations/testparsemodule--c248cddf2e5edd86af6e999a.md) | 204 | `declaration-track:c248cddf2e5edd86af6e999a0a5cb587913a96bc38900be4608fe938f9b565ee` |
| 13 | `def` | [testParseFile](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean/declarations/testparsefile--84d7afa17de9c5db09e49ff6.md) | 211 | `declaration-track:84d7afa17de9c5db09e49ff6025021f72df2b4ae818b60a288715ebd511b827d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
