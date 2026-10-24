# Verification target: GRWTSK.Algebra.LinearAlgebra.Pairing.Variant6852120e8040d51436475349deb670d9bf5cee4c46a9b9830e5d64f0b67df294

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1613b9eeb36d890d46fde50975f8351c64431ccd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pairing/Variant6852120e8040d51436475349deb670d9bf5cee4c46a9b9830e5d64f0b67df294.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6852120e8040d51436475349deb670d9bf5cee4c46a9b9830e5d64f0b67df294.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6852120e8040d51436475349deb670d9bf5cee4c46a9b9830e5d64f0b67df294.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1613b9eeb36d890d46fde50975f8351c64431ccd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pairing/Variant6852120e8040d51436475349deb670d9bf5cee4c46a9b9830e5d64f0b67df294.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pairing/Variant6852120e8040d51436475349deb670d9bf5cee4c46a9b9830e5d64f0b67df294.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.ExteriorPower.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorPower.Pairing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toTensorPower](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6852120e8040d51436475349deb670d9bf5cee4c46a9b9830e5d64f0b67df294.lean/declarations/totensorpower--f405b38640f6159de300d1ed.md) | 26 | `declaration-track:f405b38640f6159de300d1eda6eb1f9ece78bd206f9906212a840c5054ea7962` |
| 2 | `lemma` | [toTensorPower_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6852120e8040d51436475349deb670d9bf5cee4c46a9b9830e5d64f0b67df294.lean/declarations/totensorpower-apply-multi--2e481b163f9089544d06bf81.md) | 32 | `result-track:2e481b163f9089544d06bf81cedd6bb0d56a11f46105366bf3b035d54a99ff34` |
| 3 | `def` | [alternatingMapToDual](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6852120e8040d51436475349deb670d9bf5cee4c46a9b9830e5d64f0b67df294.lean/declarations/alternatingmaptodual--82fcd8e9da5f9ab67a82e86e.md) | 41 | `declaration-track:82fcd8e9da5f9ab67a82e86e6c3af6ddd64b5061dce37fcdff1bf25b6ebdc43d` |
| 4 | `theorem` | [alternatingMapToDual_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6852120e8040d51436475349deb670d9bf5cee4c46a9b9830e5d64f0b67df294.lean/declarations/alternatingmaptodual-apply-multi--6983256b1b469293d20b4a15.md) | 54 | `result-track:6983256b1b469293d20b4a15e5f09675011ce96e5ea8784549ef2bfc201251d8` |
| 5 | `def` | [pairingDual](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6852120e8040d51436475349deb670d9bf5cee4c46a9b9830e5d64f0b67df294.lean/declarations/pairingdual--3decc5cbe76313066d41eb9e.md) | 61 | `declaration-track:3decc5cbe76313066d41eb9e00a261c6e6613e558cd498c997bde92aed67e806` |
| 6 | `lemma` | [pairingDual_ιMulti_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6852120e8040d51436475349deb670d9bf5cee4c46a9b9830e5d64f0b67df294.lean/declarations/pairingdual-multi-multi--1f1098e615b6df671d90d9c2.md) | 68 | `result-track:1f1098e615b6df671d90d9c2f9d3c1db3ff013226e125ac27264a0f656c35cd4` |
| 7 | `lemma` | [pairingDual_apply_apply_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6852120e8040d51436475349deb670d9bf5cee4c46a9b9830e5d64f0b67df294.lean/declarations/pairingdual-apply-apply-eq-one--d337e943d64b6f38514e31b7.md) | 89 | `result-track:d337e943d64b6f38514e31b7a322d2c57c39052db86b3571c3e232db8d092b20` |
| 8 | `lemma` | [pairingDual_apply_apply_eq_one_zero](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6852120e8040d51436475349deb670d9bf5cee4c46a9b9830e5d64f0b67df294.lean/declarations/pairingdual-apply-apply-eq-one-zero--27041f0949561b70044ff323.md) | 102 | `result-track:27041f0949561b70044ff323c8217bf54a37751690f6382672435e4f27ce88d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
