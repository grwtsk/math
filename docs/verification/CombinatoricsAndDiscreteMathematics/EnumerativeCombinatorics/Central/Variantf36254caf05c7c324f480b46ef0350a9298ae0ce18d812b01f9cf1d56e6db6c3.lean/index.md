# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Central.Variantf36254caf05c7c324f480b46ef0350a9298ae0ce18d812b01f9cf1d56e6db6c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00d3754742e46e22a4bd47a163ef7153a8aa16b1",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantf36254caf05c7c324f480b46ef0350a9298ae0ce18d812b01f9cf1d56e6db6c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantf36254caf05c7c324f480b46ef0350a9298ae0ce18d812b01f9cf1d56e6db6c3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantf36254caf05c7c324f480b46ef0350a9298ae0ce18d812b01f9cf1d56e6db6c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00d3754742e46e22a4bd47a163ef7153a8aa16b1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantf36254caf05c7c324f480b46ef0350a9298ae0ce18d812b01f9cf1d56e6db6c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantf36254caf05c7c324f480b46ef0350a9298ae0ce18d812b01f9cf1d56e6db6c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantf36254caf05c7c324f480b46ef0350a9298ae0ce18d812b01f9cf1d56e6db6c3.lean/declarations/centralbinom--b1496d2323ac821d4bee089d.md) | 32 | `declaration-track:b1496d2323ac821d4bee089d8ff372de4e411a62678798263c4fc5eb665fc69c` |
| 2 | `theorem` | [centralBinom_eq_two_mul_choose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantf36254caf05c7c324f480b46ef0350a9298ae0ce18d812b01f9cf1d56e6db6c3.lean/declarations/centralbinom-eq-two-mul-choose--f732ffec6f4a0adc4598ce4e.md) | 35 | `result-track:f732ffec6f4a0adc4598ce4eec56a35008d85dbcfcf9d09ebeac25fd8ab02b55` |
| 3 | `theorem` | [centralBinom_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantf36254caf05c7c324f480b46ef0350a9298ae0ce18d812b01f9cf1d56e6db6c3.lean/declarations/centralbinom-pos--85e895d7284c85a103597502.md) | 38 | `result-track:85e895d7284c85a103597502cf0f6671b691d10511fcfd03cd5883bfbfb581d8` |
| 4 | `theorem` | [centralBinom_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantf36254caf05c7c324f480b46ef0350a9298ae0ce18d812b01f9cf1d56e6db6c3.lean/declarations/centralbinom-ne-zero--e2ddbe9a4380128956134876.md) | 41 | `result-track:e2ddbe9a4380128956134876f8482cd40f77ca9f7cd7fd071ef97e3c56826ee0` |
| 5 | `theorem` | [centralBinom_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantf36254caf05c7c324f480b46ef0350a9298ae0ce18d812b01f9cf1d56e6db6c3.lean/declarations/centralbinom-zero--d6c45599dabb5e1f95860b20.md) | 45 | `result-track:d6c45599dabb5e1f95860b20a1d38e2fdcbf7fc5aa5a9443b0ba95991f66b0af` |
| 6 | `theorem` | [choose_le_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantf36254caf05c7c324f480b46ef0350a9298ae0ce18d812b01f9cf1d56e6db6c3.lean/declarations/choose-le-centralbinom--085786870f03ff3548ce0ef2.md) | 50 | `result-track:085786870f03ff3548ce0ef2dbca610f78d41eaa0b20bebe798c0abbb13ac683` |
| 7 | `theorem` | [two_le_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantf36254caf05c7c324f480b46ef0350a9298ae0ce18d812b01f9cf1d56e6db6c3.lean/declarations/two-le-centralbinom--88804833e95297fc73572af8.md) | 55 | `result-track:88804833e95297fc73572af85fa42ed749b50bb09ceb8b490703044f216c4bbb` |
| 8 | `theorem` | [succ_mul_centralBinom_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantf36254caf05c7c324f480b46ef0350a9298ae0ce18d812b01f9cf1d56e6db6c3.lean/declarations/succ-mul-centralbinom-succ--30d874438303a4a03319d6da.md) | 63 | `result-track:30d874438303a4a03319d6da8a990ba10d5809a15beffc5a24826febf8a520c2` |
| 9 | `theorem` | [four_pow_lt_mul_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantf36254caf05c7c324f480b46ef0350a9298ae0ce18d812b01f9cf1d56e6db6c3.lean/declarations/four-pow-lt-mul-centralbinom--84821017c72e3107099a75a0.md) | 78 | `result-track:84821017c72e3107099a75a07631d8ce7dda32149380490ab20ee2fb5efaa591` |
| 10 | `theorem` | [four_pow_le_two_mul_self_mul_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantf36254caf05c7c324f480b46ef0350a9298ae0ce18d812b01f9cf1d56e6db6c3.lean/declarations/four-pow-le-two-mul-self-mul-centralbinom--8d89a531526a6c89310c7ee9.md) | 94 | `result-track:8d89a531526a6c89310c7ee9024161424d6ca36767659216ebbc244500999ce5` |
| 11 | `theorem` | [two_dvd_centralBinom_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantf36254caf05c7c324f480b46ef0350a9298ae0ce18d812b01f9cf1d56e6db6c3.lean/declarations/two-dvd-centralbinom-succ--b7c095f59c3e951203e6c366.md) | 106 | `result-track:b7c095f59c3e951203e6c36689294514a6e92a09ad5c08d5c96239a36e924a85` |
| 12 | `theorem` | [two_dvd_centralBinom_of_one_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantf36254caf05c7c324f480b46ef0350a9298ae0ce18d812b01f9cf1d56e6db6c3.lean/declarations/two-dvd-centralbinom-of-one-le--fb9c59d38bdad12dbb31b6a3.md) | 111 | `result-track:fb9c59d38bdad12dbb31b6a3ddb12f94910ba38b15925f13b5a82d17f983a49c` |
| 13 | `theorem` | [succ_dvd_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantf36254caf05c7c324f480b46ef0350a9298ae0ce18d812b01f9cf1d56e6db6c3.lean/declarations/succ-dvd-centralbinom--2b4a7992fa179bb10b1c95be.md) | 117 | `result-track:2b4a7992fa179bb10b1c95be7aef3d889ff52470e0932f5d1650950511bd6dc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
