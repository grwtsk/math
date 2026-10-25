# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variant2577303a9b5108f7c5a6a7b7f16ed520818045465a9b3137571af4d832f19dba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f6dceffc58dbdfb9b41114e7d56c9bd65778738",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant2577303a9b5108f7c5a6a7b7f16ed520818045465a9b3137571af4d832f19dba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant2577303a9b5108f7c5a6a7b7f16ed520818045465a9b3137571af4d832f19dba.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant2577303a9b5108f7c5a6a7b7f16ed520818045465a9b3137571af4d832f19dba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f6dceffc58dbdfb9b41114e7d56c9bd65778738`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant2577303a9b5108f7c5a6a7b7f16ed520818045465a9b3137571af4d832f19dba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant2577303a9b5108f7c5a6a7b7f16ed520818045465a9b3137571af4d832f19dba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Simp.SimpTheorems` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Eqns` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [addSymSimpTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant2577303a9b5108f7c5a6a7b7f16ed520818045465a9b3137571af4d832f19dba.lean/declarations/addsymsimptheorem--9ec23d3535e1efcac69a2546.md) | 25 | `declaration-track:9ec23d3535e1efcac69a2546fdddbccec82d88e662b2b8d8925608bb5a3fad2a` |
| 2 | `def` | [mkSymSimpAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant2577303a9b5108f7c5a6a7b7f16ed520818045465a9b3137571af4d832f19dba.lean/declarations/mksymsimpattr--4194f23cf82842f5ae3a221c.md) | 34 | `declaration-track:4194f23cf82842f5ae3a221c79b935ec3c2d4bd1d05f933e0a9b61a1aeaf7197` |
| 3 | `def` | [registerSymSimpAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant2577303a9b5108f7c5a6a7b7f16ed520818045465a9b3137571af4d832f19dba.lean/declarations/registersymsimpattr--7a0b0db96116c8f89e8349c9.md) | 70 | `declaration-track:7a0b0db96116c8f89e8349c9e96bb9e3d03ff5699e6ad855cceeabfdb515ca2a` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant2577303a9b5108f7c5a6a7b7f16ed520818045465a9b3137571af4d832f19dba.lean/declarations/builtin-initialize--d4c42ac8dfc5539d1021ca62.md) | 77 | `declaration-track:d4c42ac8dfc5539d1021ca62d4a002c407b036a7da408b3e8108cbac5e6941e7` |
| 5 | `def` | [getSymSimpTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant2577303a9b5108f7c5a6a7b7f16ed520818045465a9b3137571af4d832f19dba.lean/declarations/getsymsimptheorems--e3e4bc7334698389ae5461a4.md) | 79 | `declaration-track:e3e4bc7334698389ae5461a45e613e05ae024c50865ce151eb54c5dcd3bf9bf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
