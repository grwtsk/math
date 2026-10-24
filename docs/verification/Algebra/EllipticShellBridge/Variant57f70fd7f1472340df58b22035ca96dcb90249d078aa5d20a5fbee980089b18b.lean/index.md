# Verification target: GRWTSK.Algebra.EllipticShellBridge.Variant57f70fd7f1472340df58b22035ca96dcb90249d078aa5d20a5fbee980089b18b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e73304afc1ffeef864a54c45b738b9c5e89bb21",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/EllipticShellBridge/Variant57f70fd7f1472340df58b22035ca96dcb90249d078aa5d20a5fbee980089b18b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/EllipticShellBridge/Variant57f70fd7f1472340df58b22035ca96dcb90249d078aa5d20a5fbee980089b18b.lean/index.md) · [Full source](../../../../mathematics/Algebra/EllipticShellBridge/Variant57f70fd7f1472340df58b22035ca96dcb90249d078aa5d20a5fbee980089b18b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e73304afc1ffeef864a54c45b738b9c5e89bb21`.

Source path: `GRWTSK/Algebra/EllipticShellBridge/Variant57f70fd7f1472340df58b22035ca96dcb90249d078aa5d20a5fbee980089b18b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/EllipticShellBridge/Variant57f70fd7f1472340df58b22035ca96dcb90249d078aa5d20a5fbee980089b18b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Arithmetic.HeisenbergExtension` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Cellular.HeatQuantizedTorsion` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Monodromy.Representation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LoopPhaseMatchesWeil](../../../../mathematics/Algebra/EllipticShellBridge/Variant57f70fd7f1472340df58b22035ca96dcb90249d078aa5d20a5fbee980089b18b.lean/declarations/loopphasematchesweil--00d939c153885f35a5d998de.md) | 29 | `declaration-track:00d939c153885f35a5d998de24e39f429317994e0c427fadbafcad9d1c0f0196` |
| 2 | `structure` | [ShellWeilCompatibility](../../../../mathematics/Algebra/EllipticShellBridge/Variant57f70fd7f1472340df58b22035ca96dcb90249d078aa5d20a5fbee980089b18b.lean/declarations/shellweilcompatibility--4a420857ef77c623a60febe2.md) | 42 | `declaration-track:4a420857ef77c623a60febe271d65d9dbebaf8a972b2eec7fcba47abccff6ab4` |
| 3 | `theorem` | [shell_weil_compatible](../../../../mathematics/Algebra/EllipticShellBridge/Variant57f70fd7f1472340df58b22035ca96dcb90249d078aa5d20a5fbee980089b18b.lean/declarations/shell-weil-compatible--d8ea7d9e87f55704852fac26.md) | 58 | `result-track:d8ea7d9e87f55704852fac260384bce9392e74a2a7cb0396fb334076e241aae0` |
| 4 | `structure` | [ShellHeisenbergRepresentation](../../../../mathematics/Algebra/EllipticShellBridge/Variant57f70fd7f1472340df58b22035ca96dcb90249d078aa5d20a5fbee980089b18b.lean/declarations/shellheisenbergrepresentation--09be0a1165b41a3692e2fe26.md) | 69 | `declaration-track:09be0a1165b41a3692e2fe26e7ed30f020ee2205078cf5c1d051619739c0cbb1` |
| 5 | `structure` | [SelectedShellTwistGroup](../../../../mathematics/Algebra/EllipticShellBridge/Variant57f70fd7f1472340df58b22035ca96dcb90249d078aa5d20a5fbee980089b18b.lean/declarations/selectedshelltwistgroup--4b5a8ba24e9cd53edf6e7a33.md) | 84 | `declaration-track:4b5a8ba24e9cd53edf6e7a33aa1abd04c97babfaa4e739f9460f46ea123fb3ab` |
| 6 | `def` | [SurjectiveOntoSelectedShellTwists](../../../../mathematics/Algebra/EllipticShellBridge/Variant57f70fd7f1472340df58b22035ca96dcb90249d078aa5d20a5fbee980089b18b.lean/declarations/surjectiveontoselectedshelltwists--1731f968330ac2cd05e3b2a9.md) | 89 | `declaration-track:1731f968330ac2cd05e3b2a92fc3792f1de7d780c70568a2c62f9d44daf84582` |
| 7 | `theorem` | [selected_shell_twist_has_preimage](../../../../mathematics/Algebra/EllipticShellBridge/Variant57f70fd7f1472340df58b22035ca96dcb90249d078aa5d20a5fbee980089b18b.lean/declarations/selected-shell-twist-has-preimage--bc603eae933eeaf0df639754.md) | 98 | `result-track:bc603eae933eeaf0df639754cf8d3d7c654bce2f0288b25b381405322ef2a413` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
