# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "339ac8c5f92cb61a60379348c2b35f80e2febade",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `339ac8c5f92cb61a60379348c2b35f80e2febade`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Units` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.End` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Nat.noZeroSMulDivisors](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean/declarations/nat-nozerosmuldivisors--76eb9e7838d17139ff315402.md) | 27 | `result-track:76eb9e7838d17139ff3154020f8d8c65aadaeb998a091a7a383353a32d289be1` |
| 2 | `theorem` | [two_nsmul_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean/declarations/two-nsmul-eq-zero--fab87e3794375cc3049e4145.md) | 32 | `result-track:fab87e3794375cc3049e414594e08054392700e28092fa82fb53aaf0d9f34ff8` |
| 3 | `theorem` | [CharZero.of_module](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean/declarations/charzero-of-module--0bc4827a9a10cb2ac9312f3e.md) | 45 | `result-track:0bc4827a9a10cb2ac9312f3e3662066371efef74d29cab49f2408f47e7d0a0eb` |
| 4 | `theorem` | [smul_right_injective](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean/declarations/smul-right-injective--dc3e6bdf4442cefd6f5c918e.md) | 59 | `result-track:dc3e6bdf4442cefd6f5c918e7d06fa66d6e3f7b69a49df0c3020af369d44ccf9` |
| 5 | `theorem` | [smul_right_inj](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean/declarations/smul-right-inj--4bef2d15fc7d1039c123e45f.md) | 63 | `result-track:4bef2d15fc7d1039c123e45f009e8e1797d2b44ab0227c89bbe001b142fa1614` |
| 6 | `theorem` | [self_eq_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean/declarations/self-eq-neg--fc25cd489b376b22f6a32ac5.md) | 71 | `result-track:fc25cd489b376b22f6a32ac51106153c1c8a7a17cdf4e7bb385f9e81011dc8b2` |
| 7 | `theorem` | [neg_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean/declarations/neg-eq-self--03da3b2e222ed224d9f26c06.md) | 76 | `result-track:03da3b2e222ed224d9f26c06dd512be6166801cb837394d48d77598cd5c167a0` |
| 8 | `theorem` | [self_ne_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean/declarations/self-ne-neg--728f5a232962d4306ec709ca.md) | 81 | `result-track:728f5a232962d4306ec709ca323a66345fc471eb0ee1a594676b94d17e54642b` |
| 9 | `theorem` | [neg_ne_self](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean/declarations/neg-ne-self--36cd6e71c3d13d6db628500e.md) | 86 | `result-track:36cd6e71c3d13d6db628500e7473e22ab12bb71271717cc43fc1c17034706f7c` |
| 10 | `theorem` | [smul_left_injective](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean/declarations/smul-left-injective--e1460e2cba726aafe65bb67c.md) | 104 | `result-track:e1460e2cba726aafe65bb67cc55c17d321cf522c39c211f084724c03c5167e5f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean/declarations/instance--c30215a6fe2e978189d59cd9.md) | 116 | `declaration-track:c30215a6fe2e978189d59cd90180f222b4f3111cfc0edf077d7eae106b1c691f` |
| 12 | `theorem` | [NoZeroSMulDivisors.int_of_charZero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean/declarations/nozerosmuldivisors-int-of-charzero--08f6094bf9ba328b3fe2e424.md) | 121 | `result-track:08f6094bf9ba328b3fe2e4243fbbdc04fcfa8efa403a6d539cb93edfc443b74f` |
| 13 | `theorem` | [CharZero.of_noZeroSMulDivisors](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean/declarations/charzero-of-nozerosmuldivisors--8a9f893f7bf56c821d148d23.md) | 128 | `result-track:8a9f893f7bf56c821d148d236c73b14340d8aad178edc78be5d757d1a78281f8` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean/declarations/instance--4f1c8f9ccf2d44ceca3efa21.md) | 134 | `declaration-track:4f1c8f9ccf2d44ceca3efa2173974a725838f81f711228e6a29a76c96e2e884b` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean/declarations/instance--3561bd2dc04d7706c489d641.md) | 145 | `declaration-track:3561bd2dc04d7706c489d641d577dd938eefc6076ec81ea8aebd79a312096f0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
