# Verification target: GRWTSK.Algebra.BinaryCarry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c17d116861d36c4ae20624c803c06819686c8ecd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/BinaryCarry.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/BinaryCarry.lean/index.md) · [Full source](../../../mathematics/Algebra/BinaryCarry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c17d116861d36c4ae20624c803c06819686c8ecd`.

Source path: `GRWTSK/Algebra/BinaryCarry.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/BinaryCarry.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [carry](../../../mathematics/Algebra/BinaryCarry.lean/declarations/carry--68204fe57b31c0bd6f81af50.md) | 14 | `declaration-track:68204fe57b31c0bd6f81af50e40824869907758b3b5315a60d6c901b7a6123e8` |
| 2 | `def` | [bit](../../../mathematics/Algebra/BinaryCarry.lean/declarations/bit--8c33b7a133d1251a14a9e0cd.md) | 18 | `declaration-track:8c33b7a133d1251a14a9e0cde3b1f6772ff9c42b7df796254286181aea598d1c` |
| 3 | `def` | [prefix](../../../mathematics/Algebra/BinaryCarry.lean/declarations/prefix--ca01adc7e7074573b18d8cee.md) | 21 | `declaration-track:ca01adc7e7074573b18d8ceec9ed9e2e2940039dec5c3d09e8a7def1a4010f56` |
| 4 | `theorem` | [local_identity](../../../mathematics/Algebra/BinaryCarry.lean/declarations/local-identity--374422c2ddaee5a2834db209.md) | 26 | `result-track:374422c2ddaee5a2834db2093c995589208f02e96c06846a855b65606500f37e` |
| 5 | `theorem` | [bit_lt_two](../../../mathematics/Algebra/BinaryCarry.lean/declarations/bit-lt-two--19d9dc4325e1a50db99c8c44.md) | 32 | `result-track:19d9dc4325e1a50db99c8c44e4d33a5e7b3f52fceb35a6bafe40964fecbcad08` |
| 6 | `theorem` | [carry_le_one](../../../mathematics/Algebra/BinaryCarry.lean/declarations/carry-le-one--3299a908592ac3b000f39a7a.md) | 34 | `result-track:3299a908592ac3b000f39a7a9552db4f5ce8b4b2dc35bb8de7ea11d84b69c803` |
| 7 | `theorem` | [input_digit_split](../../../mathematics/Algebra/BinaryCarry.lean/declarations/input-digit-split--b8af0d7d865f683773a6a681.md) | 45 | `result-track:b8af0d7d865f683773a6a681f6303c090b5de8c867bcb77bca0010c02f5e78e6` |
| 8 | `theorem` | [prefix_identity](../../../mathematics/Algebra/BinaryCarry.lean/declarations/prefix-identity--ad785547fe609fd0880c5d8d.md) | 71 | `result-track:ad785547fe609fd0880c5d8de5bb53342b2d176f1d5c7130afea335f1902ab30` |
| 9 | `theorem` | [hankel_index](../../../mathematics/Algebra/BinaryCarry.lean/declarations/hankel-index--c5e6722ad07e12f1e8fffb65.md) | 82 | `result-track:c5e6722ad07e12f1e8fffb658c528d9be1487835767e1a066c9dc739142b9281` |
| 10 | `theorem` | [coefficient_return](../../../mathematics/Algebra/BinaryCarry.lean/declarations/coefficient-return--6b64d7fdf331284ca0f864ad.md) | 87 | `result-track:6b64d7fdf331284ca0f864adb0ffe9cb2220a57b1082c236a76d0c360084f840` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
