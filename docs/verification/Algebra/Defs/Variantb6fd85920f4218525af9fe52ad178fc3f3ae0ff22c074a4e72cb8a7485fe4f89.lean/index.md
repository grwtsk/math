# Verification target: GRWTSK.Algebra.Defs.Variantb6fd85920f4218525af9fe52ad178fc3f3ae0ff22c074a4e72cb8a7485fe4f89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e3ff32a6e472464e717ec783f35379d6223d6f8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantb6fd85920f4218525af9fe52ad178fc3f3ae0ff22c074a4e72cb8a7485fe4f89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variantb6fd85920f4218525af9fe52ad178fc3f3ae0ff22c074a4e72cb8a7485fe4f89.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variantb6fd85920f4218525af9fe52ad178fc3f3ae0ff22c074a4e72cb8a7485fe4f89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e3ff32a6e472464e717ec783f35379d6223d6f8`.

Source path: `GRWTSK/Algebra/Defs/Variantb6fd85920f4218525af9fe52ad178fc3f3ae0ff22c074a4e72cb8a7485fe4f89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantb6fd85920f4218525af9fe52ad178fc3f3ae0ff22c074a4e72cb8a7485fe4f89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharZero.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCommRing](../../../../mathematics/Algebra/Defs/Variantb6fd85920f4218525af9fe52ad178fc3f3ae0ff22c074a4e72cb8a7485fe4f89.lean/declarations/instcommring--b47f11f47d4c3bffd0943f1f.md) | 31 | `declaration-track:b47f11f47d4c3bffd0943f1f23950584b19e221161a41f5389238d59b3a9b3ca` |
| 2 | `instance` | [instCancelCommMonoidWithZero](../../../../mathematics/Algebra/Defs/Variantb6fd85920f4218525af9fe52ad178fc3f3ae0ff22c074a4e72cb8a7485fe4f89.lean/declarations/instcancelcommmonoidwithzero--5cbcbd24cccee83182d91072.md) | 50 | `declaration-track:5cbcbd24cccee83182d9107272023ac563a78d69f67370de21bc73474723428f` |
| 3 | `instance` | [instCharZero](../../../../mathematics/Algebra/Defs/Variantb6fd85920f4218525af9fe52ad178fc3f3ae0ff22c074a4e72cb8a7485fe4f89.lean/declarations/instcharzero--d9cb9b2beb0927c073152bc1.md) | 53 | `declaration-track:d9cb9b2beb0927c073152bc1f9c204a476cbc2d85e263c58a3836da0f7252ea7` |
| 4 | `instance` | [instMulDivCancelClass](../../../../mathematics/Algebra/Defs/Variantb6fd85920f4218525af9fe52ad178fc3f3ae0ff22c074a4e72cb8a7485fe4f89.lean/declarations/instmuldivcancelclass--9afd14e62236d350dc8dbe0e.md) | 55 | `declaration-track:9afd14e62236d350dc8dbe0e5d7e747d3f51446598c11755e2723c328f76ffc1` |
| 5 | `lemma` | [cast_mul](../../../../mathematics/Algebra/Defs/Variantb6fd85920f4218525af9fe52ad178fc3f3ae0ff22c074a4e72cb8a7485fe4f89.lean/declarations/cast-mul--af3a769a438ac14c7e43911c.md) | 58 | `result-track:af3a769a438ac14c7e43911cd5e8aa492d7c148f2434896a4a5ea9b341716a90` |
| 6 | `lemma` | [cast_mul_eq_zsmul_cast](../../../../mathematics/Algebra/Defs/Variantb6fd85920f4218525af9fe52ad178fc3f3ae0ff22c074a4e72cb8a7485fe4f89.lean/declarations/cast-mul-eq-zsmul-cast--a03a6295c977ffb28a0fa82a.md) | 68 | `result-track:a03a6295c977ffb28a0fa82a77b192a9209a943eb1b978b982505d14be76b140` |
| 7 | `lemma` | [cast_pow](../../../../mathematics/Algebra/Defs/Variantb6fd85920f4218525af9fe52ad178fc3f3ae0ff22c074a4e72cb8a7485fe4f89.lean/declarations/cast-pow--b3eba1628f4ef7523b43fdc3.md) | 73 | `result-track:b3eba1628f4ef7523b43fdc310326dc86af731c1b8732177ac958dc233b23ae1` |
| 8 | `instance` | [instCommSemiring](../../../../mathematics/Algebra/Defs/Variantb6fd85920f4218525af9fe52ad178fc3f3ae0ff22c074a4e72cb8a7485fe4f89.lean/declarations/instcommsemiring--5c5cca3e9b8db88b34ca4fa0.md) | 84 | `declaration-track:5c5cca3e9b8db88b34ca4fa0a15f349895645d880c0241e8ea6770a277967d82` |
| 9 | `instance` | [instSemiring](../../../../mathematics/Algebra/Defs/Variantb6fd85920f4218525af9fe52ad178fc3f3ae0ff22c074a4e72cb8a7485fe4f89.lean/declarations/instsemiring--954bef1c58a02d7a936f48d7.md) | 85 | `declaration-track:954bef1c58a02d7a936f48d785639e530bfaf7010b494dfe936510fa047b3571` |
| 10 | `instance` | [instRing](../../../../mathematics/Algebra/Defs/Variantb6fd85920f4218525af9fe52ad178fc3f3ae0ff22c074a4e72cb8a7485fe4f89.lean/declarations/instring--a4870148027fcf6282df09a0.md) | 86 | `declaration-track:a4870148027fcf6282df09a00f1f3f5c4187dbde961b2bbb711a7c1a21daa379` |
| 11 | `instance` | [instDistrib](../../../../mathematics/Algebra/Defs/Variantb6fd85920f4218525af9fe52ad178fc3f3ae0ff22c074a4e72cb8a7485fe4f89.lean/declarations/instdistrib--eb5586659de32aee09d91c7c.md) | 87 | `declaration-track:eb5586659de32aee09d91c7c9909e681a577cf916638f3e16b20774ba1b50c0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
