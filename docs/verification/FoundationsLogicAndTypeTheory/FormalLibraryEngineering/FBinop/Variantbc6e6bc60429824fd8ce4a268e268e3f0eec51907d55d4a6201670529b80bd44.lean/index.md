# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FBinop.Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9374966843f5519fdfe32c92a41e76a0cb9819db",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9374966843f5519fdfe32c92a41e76a0cb9819db`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.App` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.BuiltinNotation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ToExpr` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean/declarations/initialize--df065edecf31c7549bd4ab53.md) | 41 | `declaration-track:df065edecf31c7549bd4ab538398ba8bc9731407079c5d66ce4a53cda40cfa73` |
| 2 | `inductive` | [Tree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean/declarations/tree--79a08bd140906c429d245338.md) | 48 | `declaration-track:79a08bd140906c429d245338868b6bd7b979fcf9acc848c85dbefcdddefc76b2` |
| 3 | `def` | [toTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean/declarations/totree--51ef627cdee4e3cce043ee09.md) | 59 | `declaration-track:51ef627cdee4e3cce043ee0904d61df997f3b888942e9fc5132df5660b01ecb9` |
| 4 | `structure` | [SRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean/declarations/srec--a88360c04bfbd0c38418f279.md) | 92 | `declaration-track:a88360c04bfbd0c38418f2799b4c01f2dd456213c6f7bbecbfe91b0e87a20c16` |
| 5 | `def` | [extractS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean/declarations/extracts--88bd4148eb345626021d3453.md) | 101 | `declaration-track:88bd4148eb345626021d3453dba819b5be9d9336b8822835dfb5d77c64b58131` |
| 6 | `def` | [applyS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean/declarations/applys--cee75be031e1c0690fc389f2.md) | 123 | `declaration-track:cee75be031e1c0690fc389f207514c153e8ebd02d160cb2655854e70d4d6a48d` |
| 7 | `def` | [hasCoeS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean/declarations/hascoes--7a9d92e40afac9e52dd93caf.md) | 135 | `declaration-track:7a9d92e40afac9e52dd93caf9701765fb19f2727a0c0f75e2342cc9c59dd8eb7` |
| 8 | `structure` | [AnalyzeResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean/declarations/analyzeresult--2c1a5faedcd84ac22b99df7a.md) | 146 | `declaration-track:2c1a5faedcd84ac22b99df7a8f1fbcc9d88ac4e8fdf4b1d86c78e8b8751d8652` |
| 9 | `def` | [analyze](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean/declarations/analyze--8620aa0d63081f6bd78bcd38.md) | 152 | `declaration-track:8620aa0d63081f6bd78bcd384ff1790f36ebafb593b6e5d05869224d8fb8a747` |
| 10 | `def` | [mkBinOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean/declarations/mkbinop--f9d1e835a151b8c2287a8317.md) | 186 | `declaration-track:f9d1e835a151b8c2287a83177093233d30be6b008faad43317921d82d7473364` |
| 11 | `def` | [toExprCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean/declarations/toexprcore--ffa08210e4d3231411684143.md) | 191 | `declaration-track:ffa08210e4d3231411684143450186f1dfdfe7f9fcc3081de46d66b482e74857` |
| 12 | `def` | [applyCoe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean/declarations/applycoe--65f73b7ef998f149af12761b.md) | 206 | `declaration-track:65f73b7ef998f149af12761bfbe05fa7d7e18743fdb296d41ff7b5e94cafa65b` |
| 13 | `def` | [toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean/declarations/toexpr--e2a13dc8fba6ba563415f87b.md) | 238 | `declaration-track:e2a13dc8fba6ba563415f87bcf7634d1f91f7ba4e7bb67912c1c0e212eb9cc4a` |
| 14 | `def` | [elabBinOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variantbc6e6bc60429824fd8ce4a268e268e3f0eec51907d55d4a6201670529b80bd44.lean/declarations/elabbinop--6c46d750b02eeef7e5824ea3.md) | 250 | `declaration-track:6c46d750b02eeef7e5824ea3f51c9ef6e885d49b00266ac320e213a9bd5ba86a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
