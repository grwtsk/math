# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AC.Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a9994eafd980f68b3c9d54be33bec8eda1599be",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a9994eafd980f68b3c9d54be33bec8eda1599be`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.AC.Main` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/mktype--ec40d5857eb3569f215428b0.md) | 30 | `declaration-track:ec40d5857eb3569f215428b00866b04a05750d4c5a32cbb996da90e0fe24c6e0` |
| 2 | `def` | [mkInstMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/mkinstmul--dfc936cdaf77acb16c2c69f3.md) | 32 | `declaration-track:dfc936cdaf77acb16c2c69f3c26d6bc4ffa49e45e51666cc2cba3cdbede34925` |
| 3 | `def` | [mkInstHMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/mkinsthmul--a593b3123f363ce0f87b6146.md) | 34 | `declaration-track:a593b3123f363ce0f87b614670fe549fbf3d331cab004170f38465f688a65a23` |
| 4 | `def` | [mkBitVecLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/mkbitveclit--56c358dd5a5e55cca49b238b.md) | 40 | `declaration-track:56c358dd5a5e55cca49b238b6dd3c5b648a334dd881908bb1fd83884c2b89382` |
| 5 | `abbrev` | [VarIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/varindex--5754458cb8c9b52025b56d51.md) | 47 | `declaration-track:5754458cb8c9b52025b56d5151b715423854d31bcbdbf1cd8081972d81f68ceb` |
| 6 | `inductive` | [Op](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/op--2c33d5d139fdfb9b3db1b9e1.md) | 50 | `declaration-track:2c33d5d139fdfb9b3db1b9e12ea3417b044f002c16b6643d85995fab9684b9ca` |
| 7 | `def` | [ofExpr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/ofexpr--f328c7b3def6e19c96225080.md) | 58 | `declaration-track:f328c7b3def6e19c96225080bc3308f6ad34b754914f5a68f17f5dfd8c5d4c1a` |
| 8 | `def` | [ofApp2?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/ofapp2--3d780bffe033d1eacc8ca040.md) | 70 | `declaration-track:3d780bffe033d1eacc8ca040f11a3f063ea49a8b2983bdbe8e1af483ac9e4ebd` |
| 9 | `def` | [toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/toexpr--7f6872f9e2b0d9c8c487bcfe.md) | 74 | `declaration-track:7f6872f9e2b0d9c8c487bcfe6db14589820491fcc304f8aa773ff760f8db02f2` |
| 10 | `def` | [neutralElement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/neutralelement--d1e0e6efe7e97db912a4d1c3.md) | 81 | `declaration-track:d1e0e6efe7e97db912a4d1c31d6b879a1d033d0a3ecc9181c74e94f4f5367fce` |
| 11 | `def` | [isSameKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/issamekind--c5f0ced4cbdcebbe912201b1.md) | 90 | `declaration-track:c5f0ced4cbdcebbe912201b1a114fc7325a1c392d7d5693f47e18d40820695b4` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/instance--2a78bb927a970f5a1595e8e9.md) | 95 | `declaration-track:2a78bb927a970f5a1595e8e9005e71051c0d090df92ba8235246fb8a29eaf9d5` |
| 13 | `structure` | [VarState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/varstate--18f091906e37910e01d6a3ea.md) | 100 | `declaration-track:18f091906e37910e01d6a3eaa2e909fa8050451f6c2ad124fd325886caa7bc8a` |
| 14 | `abbrev` | [CoefficientsMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/coefficientsmap--73986704e5d13de06601d6a6.md) | 123 | `declaration-track:73986704e5d13de06601d6a6be6e7fb74f2a584e98d548d884579c50d250abf0` |
| 15 | `abbrev` | [VarStateM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/varstatem--70adb628b629457a7b4db980.md) | 127 | `declaration-track:70adb628b629457a7b4db980af36377debf2825eea432024e81346237f85b0bc` |
| 16 | `def` | [VarStateM.run'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/varstatem-run--902135d5ada0bab5cd78a8a9.md) | 129 | `declaration-track:902135d5ada0bab5cd78a8a980cf3b3c9052610e3ef85aa6b8f1d26d7ef401a0` |
| 17 | `def` | [VarStateM.exprToVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/varstatem-exprtovar--b96242ba0cdc2b26f40300cd.md) | 138 | `declaration-track:b96242ba0cdc2b26f40300cd55f0b13fe209ba1c1e95629b9422c48d6fce9977` |
| 18 | `def` | [VarStateM.varToExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/varstatem-vartoexpr--6ff257c522b57882b9734e9a.md) | 150 | `declaration-track:6ff257c522b57882b9734e9a5ea32f0c8952f9fd13958ef5b5c1c6617fefcc97` |
| 19 | `def` | [VarStateM.computeCoefficients](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/varstatem-computecoefficients--c9bbcbcf5130b488174729fc.md) | 172 | `declaration-track:c9bbcbcf5130b488174729fc22afe49b668706756d7ff09631295183b3653886` |
| 20 | `structure` | [SharedCoefficients](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/sharedcoefficients--71a32a1159bbd2c8ab3fc86d.md) | 190 | `declaration-track:71a32a1159bbd2c8ab3fc86dcb116ae09925463832f663253a64f2d14c676f50` |
| 21 | `def` | [SharedCoefficients.compute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/sharedcoefficients-compute--9dbd0f4c2b6130d3ede8252f.md) | 204 | `declaration-track:9dbd0f4c2b6130d3ede8252fd9a2bf5432dd67c748db582b28d64d720ed1ee1c` |
| 22 | `def` | [CoefficientsMap.toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/coefficientsmap-toexpr--1108479b5317b8ef346a1ab4.md) | 225 | `declaration-track:1108479b5317b8ef346a1ab4671b9b4af4910e1d088a42619cd3775c7ca7ab03` |
| 23 | `def` | [proveEqualityByAC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/proveequalitybyac--d5e8e6e560877133b9841f86.md) | 247 | `declaration-track:d5e8e6e560877133b9841f86512fe072181ebaa2215e50d6fc5b64079a0f2107` |
| 24 | `def` | [canonicalizeWithSharing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/canonicalizewithsharing--a2c4a0ed3228f4f7d403cd91.md) | 268 | `declaration-track:a2c4a0ed3228f4f7d403cd91f681ba45d3d43cdb65602eeeaa76430f992a0c71` |
| 25 | `def` | [bvAcNfpost](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/bvacnfpost--fdbd7b1d177a222891711e64.md) | 312 | `declaration-track:fdbd7b1d177a222891711e641d2d592f9442ff796688929ba30c07e2cb2f9bf0` |
| 26 | `def` | [bvAcNfTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/bvacnftarget--61245c63136dd350eb3d2dc7.md) | 333 | `declaration-track:61245c63136dd350eb3d2dc7783d3fd4a63f7750df06c4228544f68d4a3ab3c9` |
| 27 | `def` | [bvAcNfHypMeta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/bvacnfhypmeta--76e3064b7a6128b200c6d265.md) | 344 | `declaration-track:76e3064b7a6128b200c6d2653d40a0182f677cfcd0bd3aeb3e96011d4c35f050` |
| 28 | `def` | [bvAcNormalizePass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/declarations/bvacnormalizepass--164c347c228d092e84df2b78.md) | 355 | `declaration-track:164c347c228d092e84df2b78a38a09a75bafe2bdac276c8127eaacd3d8ee3300` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
