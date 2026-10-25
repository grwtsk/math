# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.A82c7e19a94fed8eb.Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67e519975f3d85ed5b39144901c0d9eac302a60f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67e519975f3d85ed5b39144901c0d9eac302a60f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Oracle.Naming.Evidence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `MathDiscovery.Atom.IdAtoms.A_8cebf9493d0b1cd2` — import line 9; external provider; requires a separately pinned dependency.
- `MathDiscovery.Core.IdAtoms.A_ac5db8f52326a0f1` — import line 10; external provider; requires a separately pinned dependency.
- `MathDiscovery.Oracle.Naming.EventAtoms.A_b682f481daef9a4c` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NamingStateKind](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean/declarations/namingstatekind--e57396fed43f5969a8d52da9.md) | 26 | `declaration-track:e57396fed43f5969a8d52da9e022abf30b04c582a62f18c68c7f55939d4ccb34` |
| 2 | `inductive` | [NamingEventKind](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean/declarations/namingeventkind--294a9509d5232ce26beb1fc1.md) | 39 | `declaration-track:294a9509d5232ce26beb1fc1e75bd1f3e110ee05fc3d83bb4f657c55233c6693` |
| 3 | `inductive` | [NamingActor](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean/declarations/namingactor--e2c40b9d92258f290eff449e.md) | 52 | `declaration-track:e2c40b9d92258f290eff449ee9e0a0e06a794125e292aee0538fe2f620906a86` |
| 4 | `structure` | [NamingVertex](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean/declarations/namingvertex--5a2292a5bcce218e2ab6674d.md) | 59 | `declaration-track:5a2292a5bcce218e2ab6674d3667c19cb5e6bd08f0d74435a42a87c1efe761af` |
| 5 | `structure` | [NamingEdge](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean/declarations/namingedge--d6e650b48fe21d39ed3e9157.md) | 65 | `declaration-track:d6e650b48fe21d39ed3e915725035c34f4f510f781db5223905e7d72bc1a7cbb` |
| 6 | `structure` | [NamingSquare](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean/declarations/namingsquare--cc07b61edbb67ddee98595c7.md) | 74 | `declaration-track:cc07b61edbb67ddee98595c7215294c5fa36f07d6d01d371cb3c678f67f92dd3` |
| 7 | `def` | [NamingSquare.topEdge](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean/declarations/namingsquare-topedge--67a0a4b45d672c0bfbf7d4f6.md) | 82 | `declaration-track:67a0a4b45d672c0bfbf7d4f6afdca372405bc6f483a7ac72b10dd5c23fce4ce6` |
| 8 | `def` | [NamingSquare.rightEdge](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean/declarations/namingsquare-rightedge--89336ab59ae459ebf470b679.md) | 91 | `declaration-track:89336ab59ae459ebf470b679fefe4d2faaf303cbf9fce150844a837d4c5db505` |
| 9 | `def` | [NamingSquare.bottomEdge](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean/declarations/namingsquare-bottomedge--6fbfe8f4b38b46f81ef98977.md) | 100 | `declaration-track:6fbfe8f4b38b46f81ef98977ec77956d841ca8985c9c37c20f59adec74134a3e` |
| 10 | `def` | [NamingSquare.leftEdge](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean/declarations/namingsquare-leftedge--7d8c31996797889a1afb6e79.md) | 109 | `declaration-track:7d8c31996797889a1afb6e79f308990766de1cb671c8200a324b7a16c48af7b9` |
| 11 | `def` | [NamingSquare.Valid](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean/declarations/namingsquare-valid--8bc144c53232ad6039e648da.md) | 118 | `declaration-track:8bc144c53232ad6039e648da6ff685a2be4fda0bb4b766cd8e518ad546c33d0d` |
| 12 | `structure` | [NamingEventComplex](../../../../mathematics/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean/declarations/namingeventcomplex--fdb5282d77180ce0e7659596.md) | 123 | `declaration-track:fdb5282d77180ce0e765959699bf1e6fea365fb00d1f43b7cdc3f164bb49f253` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
