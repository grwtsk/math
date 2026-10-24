# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d1a45466b2acc57db2752acbd883ff234e2541a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d1a45466b2acc57db2752acbd883ff234e2541a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Int` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GradedMonoid` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GradedMulAction` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsFiltration](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08.lean/declarations/isfiltration--e93ee0a4f23618a4b5eaa13d.md) | 44 | `declaration-track:e93ee0a4f23618a4b5eaa13d11dd1cd9b3c19a1a6d194c5629721f385fd49082` |
| 2 | `lemma` | [IsFiltration.F_lt_le_F](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08.lean/declarations/isfiltration-f-lt-le-f--372a0772fbe3e42949ab3dd8.md) | 49 | `result-track:372a0772fbe3e42949ab3dd8e06a468d62697fdd366d4633edbdee73bbd22889` |
| 3 | `lemma` | [IsFiltration.mk_int](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08.lean/declarations/isfiltration-mk-int--e33ae82ee40a90f4f0715712.md) | 54 | `result-track:e33ae82ee40a90f4f071571290d1e2644ce8fba3f4097298e2d7b3f099ac2fac` |
| 4 | `class` | [IsRingFiltration](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08.lean/declarations/isringfiltration--ace800624bf6799982c54ec4.md) | 70 | `declaration-track:ace800624bf6799982c54ec42be5e10e082080da94d734dd0784acc35cb6d740` |
| 5 | `lemma` | [IsRingFiltration.mk_int](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08.lean/declarations/isringfiltration-mk-int--c25ea26fbd8e62d6b1facd2b.md) | 74 | `result-track:c25ea26fbd8e62d6b1facd2b2004dd10b5ca9ad86374510dceb1e8dba04ea62d` |
| 6 | `class` | [IsModuleFiltration](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08.lean/declarations/ismodulefiltration--668116bc8553c9ddb2192c2c.md) | 90 | `declaration-track:668116bc8553c9ddb2192c2ca3a229778442a5f12e3469cf98ac55d412fc2917` |
| 7 | `lemma` | [IsModuleFiltration.mk_int](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08.lean/declarations/ismodulefiltration-mk-int--a49b7782e3ec868a7037a85a.md) | 95 | `result-track:a49b7782e3ec868a7037a85a4b1e510ed1abb15e8feec7a46624a657fb4c34dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
