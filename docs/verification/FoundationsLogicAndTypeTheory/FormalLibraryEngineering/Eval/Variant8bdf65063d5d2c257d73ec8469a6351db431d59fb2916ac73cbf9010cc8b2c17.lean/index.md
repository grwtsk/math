# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Variant8bdf65063d5d2c257d73ec8469a6351db431d59fb2916ac73cbf9010cc8b2c17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47093bf878447aa38a00d9061606763e7b74b8b8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant8bdf65063d5d2c257d73ec8469a6351db431d59fb2916ac73cbf9010cc8b2c17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant8bdf65063d5d2c257d73ec8469a6351db431d59fb2916ac73cbf9010cc8b2c17.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant8bdf65063d5d2c257d73ec8469a6351db431d59fb2916ac73cbf9010cc8b2c17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47093bf878447aa38a00d9061606763e7b74b8b8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant8bdf65063d5d2c257d73ec8469a6351db431d59fb2916ac73cbf9010cc8b2c17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant8bdf65063d5d2c257d73ec8469a6351db431d59fb2916ac73cbf9010cc8b2c17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.AD.Transcendental` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DualEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant8bdf65063d5d2c257d73ec8469a6351db431d59fb2916ac73cbf9010cc8b2c17.lean/declarations/dualenv--000e1e0b03b18d85c5ae2974.md) | 34 | `declaration-track:000e1e0b03b18d85c5ae2974e6cd210e8939aeee10bb76b6162e1a1496ea38c3` |
| 2 | `def` | [evalDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant8bdf65063d5d2c257d73ec8469a6351db431d59fb2916ac73cbf9010cc8b2c17.lean/declarations/evaldual--74fd6b83c507a563402a3d5a.md) | 44 | `declaration-track:74fd6b83c507a563402a3d5a71e0a6f6908c628790ed979f53e7bf37f875dd85` |
| 3 | `def` | [evalDual?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant8bdf65063d5d2c257d73ec8469a6351db431d59fb2916ac73cbf9010cc8b2c17.lean/declarations/evaldual--80860a0e4cf4fb5a73426ea2.md) | 76 | `declaration-track:80860a0e4cf4fb5a73426ea22b0218af5029cf320910bfba34ec3b28be2c6e4a` |
| 4 | `def` | [evalDual?1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant8bdf65063d5d2c257d73ec8469a6351db431d59fb2916ac73cbf9010cc8b2c17.lean/declarations/evaldual-1--9987e8809a6d7cd0b55bed8d.md) | 151 | `declaration-track:9987e8809a6d7cd0b55bed8d6cccf5c0da09e4d703fe3e8a6459a4db6d7f88c2` |
| 5 | `def` | [mkDualEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant8bdf65063d5d2c257d73ec8469a6351db431d59fb2916ac73cbf9010cc8b2c17.lean/declarations/mkdualenv--30a1388dd30eba5c0389383f.md) | 157 | `declaration-track:30a1388dd30eba5c0389383f08be8503e291250b189f830b0e9a66158f00b2ff` |
| 6 | `def` | [evalWithDeriv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant8bdf65063d5d2c257d73ec8469a6351db431d59fb2916ac73cbf9010cc8b2c17.lean/declarations/evalwithderiv--45be254c9a60056816f5f192.md) | 161 | `declaration-track:45be254c9a60056816f5f192eca045cd4c66fea07282fccadad32f199e9c2b91` |
| 7 | `def` | [derivInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant8bdf65063d5d2c257d73ec8469a6351db431d59fb2916ac73cbf9010cc8b2c17.lean/declarations/derivinterval--6a730e6b0544bf39ec67eb12.md) | 165 | `declaration-track:6a730e6b0544bf39ec67eb12262f4c6ac57d1328095b508d40c7472532d25073` |
| 8 | `def` | [evalWithDeriv1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant8bdf65063d5d2c257d73ec8469a6351db431d59fb2916ac73cbf9010cc8b2c17.lean/declarations/evalwithderiv1--db3f304b1d945ad3cf46928c.md) | 169 | `declaration-track:db3f304b1d945ad3cf46928c90679eb1de6b6bb8f19820a8b8fcfa97d0325580` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
