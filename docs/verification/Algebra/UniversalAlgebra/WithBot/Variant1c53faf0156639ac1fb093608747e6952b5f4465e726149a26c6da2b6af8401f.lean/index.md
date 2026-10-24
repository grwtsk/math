# Verification target: GRWTSK.Algebra.UniversalAlgebra.WithBot.Variant1c53faf0156639ac1fb093608747e6952b5f4465e726149a26c6da2b6af8401f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8b7f390f37ad6e9acc88172338fe91c475403a4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithBot/Variant1c53faf0156639ac1fb093608747e6952b5f4465e726149a26c6da2b6af8401f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant1c53faf0156639ac1fb093608747e6952b5f4465e726149a26c6da2b6af8401f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant1c53faf0156639ac1fb093608747e6952b5f4465e726149a26c6da2b6af8401f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8b7f390f37ad6e9acc88172338fe91c475403a4`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithBot/Variant1c53faf0156639ac1fb093608747e6952b5f4465e726149a26c6da2b6af8401f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithBot/Variant1c53faf0156639ac1fb093608747e6952b5f4465e726149a26c6da2b6af8401f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Canonical` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.WithTop` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Nat` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant1c53faf0156639ac1fb093608747e6952b5f4465e726149a26c6da2b6af8401f.lean/declarations/instance--c233fd027ac5dd2851a75caa.md) | 22 | `declaration-track:c233fd027ac5dd2851a75caa77cad96f3deb4527cd976e942933c7d5c496f2a3` |
| 2 | `theorem` | [add_eq_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant1c53faf0156639ac1fb093608747e6952b5f4465e726149a26c6da2b6af8401f.lean/declarations/add-eq-zero-iff--2c9e25af7c25852b5e74373e.md) | 26 | `result-track:2c9e25af7c25852b5e74373e54f1b0f65e7dac058e023fee1f6690bd26a70ac8` |
| 3 | `theorem` | [add_eq_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant1c53faf0156639ac1fb093608747e6952b5f4465e726149a26c6da2b6af8401f.lean/declarations/add-eq-one-iff--c81764a27b7d8f0ac8e338f4.md) | 33 | `result-track:c81764a27b7d8f0ac8e338f46c0f8e8194ed84df99faacc72d1c13040421fcd3` |
| 4 | `theorem` | [add_eq_two_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant1c53faf0156639ac1fb093608747e6952b5f4465e726149a26c6da2b6af8401f.lean/declarations/add-eq-two-iff--c00272d863374b20bf41b147.md) | 40 | `result-track:c00272d863374b20bf41b1477c2c5a9b32aab7fa8abfff5785d779fc4310b43b` |
| 5 | `theorem` | [add_eq_three_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant1c53faf0156639ac1fb093608747e6952b5f4465e726149a26c6da2b6af8401f.lean/declarations/add-eq-three-iff--85d145caa28943f98d5c651a.md) | 48 | `result-track:85d145caa28943f98d5c651a007779129c2ddb6c6e70cf42e7ddcba3b3d81d7f` |
| 6 | `theorem` | [coe_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant1c53faf0156639ac1fb093608747e6952b5f4465e726149a26c6da2b6af8401f.lean/declarations/coe-nonneg--91493efe615ae42a8dd9a873.md) | 56 | `result-track:91493efe615ae42a8dd9a873e3f138642e2de7e63fd9eb7d3e4593ab3689ba29` |
| 7 | `theorem` | [lt_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant1c53faf0156639ac1fb093608747e6952b5f4465e726149a26c6da2b6af8401f.lean/declarations/lt-zero-iff--195bb3e7cf8752f3dc2fd180.md) | 61 | `result-track:195bb3e7cf8752f3dc2fd18077591008ad77c2c426ecf36089ce681cf429e0e7` |
| 8 | `theorem` | [one_le_iff_zero_lt](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant1c53faf0156639ac1fb093608747e6952b5f4465e726149a26c6da2b6af8401f.lean/declarations/one-le-iff-zero-lt--18d1fdccf909b9e84c113d0b.md) | 63 | `result-track:18d1fdccf909b9e84c113d0b948a8ef79ae57a680f7295ccb6a0b52687c28dce` |
| 9 | `theorem` | [lt_one_iff_le_zero](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant1c53faf0156639ac1fb093608747e6952b5f4465e726149a26c6da2b6af8401f.lean/declarations/lt-one-iff-le-zero--b392114f7b7d46f6eef897b6.md) | 70 | `result-track:b392114f7b7d46f6eef897b663f643d4dadd4e307691ef2bb3e49c288f586f76` |
| 10 | `theorem` | [add_one_le_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant1c53faf0156639ac1fb093608747e6952b5f4465e726149a26c6da2b6af8401f.lean/declarations/add-one-le-of-lt--5bea64c905dd86978360cfe5.md) | 73 | `result-track:5bea64c905dd86978360cfe592d298180220fbd44dbbe7ed7820c90eec0f6e8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
