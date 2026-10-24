# Verification target: GRWTSK.Algebra.Invertible.Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f683c961857307f836994b6673dd58a3493eaa5a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f683c961857307f836994b6673dd58a3493eaa5a`.

Source path: `GRWTSK/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Invertible.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Invertible.ne_zero](../../../../mathematics/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean/declarations/invertible-ne-zero--80729ef12c906bb1268311b0.md) | 21 | `result-track:80729ef12c906bb1268311b08e88df01b7cbe78c153a7041944f9d16effd9edd` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean/declarations/instance--efeacd040133478103733918.md) | 28 | `declaration-track:efeacd0401334781037339187101b92071b13bad3bd81e9433e0d907933ca7de` |
| 3 | `theorem` | [Ring.inverse_invertible](../../../../mathematics/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean/declarations/ring-inverse-invertible--1e6de2dfce8e403717d56d05.md) | 37 | `result-track:1e6de2dfce8e403717d56d057b6a0dee23b5e5de5475fd8861c31bf3bfe68a27` |
| 4 | `def` | [invertibleOfNonzero](../../../../mathematics/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean/declarations/invertibleofnonzero--04a0ec71e5bb0706822cfcaf.md) | 46 | `declaration-track:04a0ec71e5bb0706822cfcafd684656f7aba4feae660d965e09122027650bc17` |
| 5 | `theorem` | [invOf_eq_inv](../../../../mathematics/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean/declarations/invof-eq-inv--4f16ee3f68ec6c3caaa62d85.md) | 50 | `result-track:4f16ee3f68ec6c3caaa62d8583205f402b93fda9d59a6c3679114f04bbd9db59` |
| 6 | `theorem` | [inv_mul_cancel_of_invertible](../../../../mathematics/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean/declarations/inv-mul-cancel-of-invertible--a1dccbc05433c18a53a42b44.md) | 54 | `result-track:a1dccbc05433c18a53a42b446a2aff1245ec6dab604db875c6e6aba2fc2afda6` |
| 7 | `theorem` | [mul_inv_cancel_of_invertible](../../../../mathematics/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean/declarations/mul-inv-cancel-of-invertible--21b7c70a35e12e8d96911b15.md) | 58 | `result-track:21b7c70a35e12e8d96911b15b4f99684518a1b4cac19eb1993cb7a2000504f9f` |
| 8 | `def` | [invertibleInv](../../../../mathematics/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean/declarations/invertibleinv--f71d33e5a81d765951cf869b.md) | 62 | `declaration-track:f71d33e5a81d765951cf869bd52b6da727c0ab647552e6ad47469823182c5c86` |
| 9 | `theorem` | [div_mul_cancel_of_invertible](../../../../mathematics/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean/declarations/div-mul-cancel-of-invertible--2b4b2d47f55df9652a55e21f.md) | 66 | `result-track:2b4b2d47f55df9652a55e21fe08011b6b03d450b03fd460ffd17697d7733394e` |
| 10 | `theorem` | [mul_div_cancel_of_invertible](../../../../mathematics/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean/declarations/mul-div-cancel-of-invertible--140788d7086f20c4d106a334.md) | 70 | `result-track:140788d7086f20c4d106a3347fd34cedd808d11fd41538d38aadcbc27ccfb393` |
| 11 | `theorem` | [div_self_of_invertible](../../../../mathematics/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean/declarations/div-self-of-invertible--f3b009d5ab4ae0523bd85cd8.md) | 74 | `result-track:f3b009d5ab4ae0523bd85cd8cde7b7978406e553411f759c50128b1256c5de58` |
| 12 | `def` | [invertibleDiv](../../../../mathematics/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean/declarations/invertiblediv--f856bbf508c9ec95efd77aab.md) | 78 | `declaration-track:f856bbf508c9ec95efd77aab9182ee2bcb1597f3edaea2649c655902c583cb7a` |
| 13 | `theorem` | [invOf_div](../../../../mathematics/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean/declarations/invof-div--ab852763794a198a93178c12.md) | 81 | `result-track:ab852763794a198a93178c12bb340ca9e7f93b6174626af09e26a2b3ed218ba4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
