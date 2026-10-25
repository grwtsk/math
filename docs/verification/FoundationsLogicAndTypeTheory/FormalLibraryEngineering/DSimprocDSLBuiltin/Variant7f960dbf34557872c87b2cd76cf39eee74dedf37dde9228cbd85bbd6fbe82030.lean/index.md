# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DSimprocDSLBuiltin.Variant7f960dbf34557872c87b2cd76cf39eee74dedf37dde9228cbd85bbd6fbe82030

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "173327ff37a38d1004cba76cd1088455c3421ffb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant7f960dbf34557872c87b2cd76cf39eee74dedf37dde9228cbd85bbd6fbe82030.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant7f960dbf34557872c87b2cd76cf39eee74dedf37dde9228cbd85bbd6fbe82030.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant7f960dbf34557872c87b2cd76cf39eee74dedf37dde9228cbd85bbd6fbe82030.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `173327ff37a38d1004cba76cd1088455c3421ffb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant7f960dbf34557872c87b2cd76cf39eee74dedf37dde9228cbd85bbd6fbe82030.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant7f960dbf34557872c87b2cd76cf39eee74dedf37dde9228cbd85bbd6fbe82030.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Grind.DSimprocDSL` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Sym.DSimp.DSimprocDSL` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.DSimp.Reduce` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.DSimp.DSimproc` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.DSimp.EvalGround` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [elabGround](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant7f960dbf34557872c87b2cd76cf39eee74dedf37dde9228cbd85bbd6fbe82030.lean/declarations/elabground--83e2342014ca63e86205a4c3.md) | 27 | `declaration-track:83e2342014ca63e86205a4c328dcc848a2a724578584d016943e794bd4885655` |
| 2 | `def` | [elabZetaDeltaAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant7f960dbf34557872c87b2cd76cf39eee74dedf37dde9228cbd85bbd6fbe82030.lean/declarations/elabzetadeltaall--240e319d6f181d854ff896ad.md) | 31 | `declaration-track:240e319d6f181d854ff896ad7dd69d982dd778c327db3c71b183df51e9338658` |
| 3 | `def` | [elabZeta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant7f960dbf34557872c87b2cd76cf39eee74dedf37dde9228cbd85bbd6fbe82030.lean/declarations/elabzeta--da4050d17e2400aca9a9c55e.md) | 35 | `declaration-track:da4050d17e2400aca9a9c55e8c32bea092b02e4bb7a7cee1803289eb23813311` |
| 4 | `def` | [elabBeta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant7f960dbf34557872c87b2cd76cf39eee74dedf37dde9228cbd85bbd6fbe82030.lean/declarations/elabbeta--4e632363e17a21b4cc4eef28.md) | 39 | `declaration-track:4e632363e17a21b4cc4eef28fd90ff7356f090f4a36504e85c46ce3c5b0f7568` |
| 5 | `def` | [elabReduceMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant7f960dbf34557872c87b2cd76cf39eee74dedf37dde9228cbd85bbd6fbe82030.lean/declarations/elabreducematch--baf6d751dea03e55871acc6e.md) | 43 | `declaration-track:baf6d751dea03e55871acc6ed6bbac5d412e278244824144a83311a1001c5c78` |
| 6 | `def` | [elabProj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant7f960dbf34557872c87b2cd76cf39eee74dedf37dde9228cbd85bbd6fbe82030.lean/declarations/elabproj--cb328056544cd0627aa6ca4c.md) | 47 | `declaration-track:cb328056544cd0627aa6ca4cc5ae1075153c78970e99701b8a80389afa2e2e32` |
| 7 | `def` | [elabNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant7f960dbf34557872c87b2cd76cf39eee74dedf37dde9228cbd85bbd6fbe82030.lean/declarations/elabnone--14b71b5f1853e8eda4c3611b.md) | 51 | `declaration-track:14b71b5f1853e8eda4c3611b3c9061271322eef7564f605ceea87642946222b1` |
| 8 | `def` | [elabDSimprocAndThen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant7f960dbf34557872c87b2cd76cf39eee74dedf37dde9228cbd85bbd6fbe82030.lean/declarations/elabdsimprocandthen--cf4e358d8215bb046f4ae872.md) | 55 | `declaration-track:cf4e358d8215bb046f4ae87248c6efd74d3655dc3e0621b2167c535da79822e4` |
| 9 | `def` | [elabDSimprocOrElse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant7f960dbf34557872c87b2cd76cf39eee74dedf37dde9228cbd85bbd6fbe82030.lean/declarations/elabdsimprocorelse--5e60a0e06e9169706ebf97a6.md) | 62 | `declaration-track:5e60a0e06e9169706ebf97a61c9fecf606b1d09c286bfe9142098da827d8a79d` |
| 10 | `def` | [elabDSimprocParen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant7f960dbf34557872c87b2cd76cf39eee74dedf37dde9228cbd85bbd6fbe82030.lean/declarations/elabdsimprocparen--58b9d920425b99e66addfb80.md) | 69 | `declaration-track:58b9d920425b99e66addfb80466c25e66ab72d857009a7a462050428c39a2e32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
