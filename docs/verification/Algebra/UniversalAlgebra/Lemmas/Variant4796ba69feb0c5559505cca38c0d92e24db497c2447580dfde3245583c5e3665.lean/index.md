# Verification target: GRWTSK.Algebra.UniversalAlgebra.Lemmas.Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c74e509b1eb6464010a49e38d769d0961afbe87d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c74e509b1eb6464010a49e38d769d0961afbe87d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Lemmas/Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.Simpa` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Tactic.Lint.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Int.Order` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ZeroLEOne` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupPower.Order` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lt_irrefl](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665.lean/declarations/lt-irrefl--8c50deceaa102844395b016a.md) | 26 | `result-track:8c50deceaa102844395b016aa1d44a8b7738b001e819c22700e38b4d0c454663` |
| 2 | `theorem` | [eq_of_eq_of_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665.lean/declarations/eq-of-eq-of-eq--6c7a3d76fbde1c8abe7ea3b8.md) | 28 | `result-track:6c7a3d76fbde1c8abe7ea3b8473fe400b97feb51caf0eeefb7be38d160890887` |
| 3 | `theorem` | [le_of_eq_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665.lean/declarations/le-of-eq-of-le--239670ed4b9f1fb541b47238.md) | 31 | `result-track:239670ed4b9f1fb541b47238d0e8fee19e563b8b81362bbdf69e91b8e2168b70` |
| 4 | `theorem` | [lt_of_eq_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665.lean/declarations/lt-of-eq-of-lt--55195370e49eb05ea39a2a2b.md) | 34 | `result-track:55195370e49eb05ea39a2a2bf4447f9287d4aa7c15e717f9be055a67f8cc3d46` |
| 5 | `theorem` | [le_of_le_of_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665.lean/declarations/le-of-le-of-eq--dbb252e58573af59416db136.md) | 37 | `result-track:dbb252e58573af59416db136609e1227b7a3c19fd87e0e4c9a6c76c0a47f98e3` |
| 6 | `theorem` | [lt_of_lt_of_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665.lean/declarations/lt-of-lt-of-eq--91b3d9c5740c332fa6e9c1fb.md) | 40 | `result-track:91b3d9c5740c332fa6e9c1fbf92c0ec9b5f4d05ee7945302391eb3b305a5615e` |
| 7 | `theorem` | [mul_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665.lean/declarations/mul-neg--d788dee6727a565e88865f50.md) | 43 | `result-track:d788dee6727a565e88865f5045336f004707f612cb72020a5343cae89a5be67a` |
| 8 | `theorem` | [mul_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665.lean/declarations/mul-nonpos--1d2daf255792287856185811.md) | 47 | `result-track:1d2daf255792287856185811d8f4481c321dc1dce63b663dea218d740160df5f` |
| 9 | `theorem` | [mul_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665.lean/declarations/mul-eq--c8815aa0c8472a750db08bb4.md) | 53 | `result-track:c8815aa0c8472a750db08bb4f7d198a63216b1ac561e16218dce45747e544fca` |
| 10 | `lemma` | [eq_of_not_lt_of_not_gt](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665.lean/declarations/eq-of-not-lt-of-not-gt--52f3f1a1d7eaefcfb85c0a3e.md) | 56 | `result-track:52f3f1a1d7eaefcfb85c0a3e04edd13205b5476a9e3a3e5ec111153a7219dbc9` |
| 11 | `lemma` | [mul_zero_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665.lean/declarations/mul-zero-eq--425eeb65839c948274983ec8.md) | 61 | `result-track:425eeb65839c948274983ec88eb75ae3aa3f058f45ab0860093aaacece6b376e` |
| 12 | `lemma` | [zero_mul_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665.lean/declarations/zero-mul-eq--2fb1f9c4df1c427cc6a02e45.md) | 67 | `result-track:2fb1f9c4df1c427cc6a02e45511ed9078b14be97499a402d71efbaa9de04fcdb` |
| 13 | `theorem` | [lt_zero_of_zero_gt](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665.lean/declarations/lt-zero-of-zero-gt--148d2f6dc7cecbb3a9f306c1.md) | 78 | `result-track:148d2f6dc7cecbb3a9f306c1c1e679cc2b023a18dcd7582c316eec2998216609` |
| 14 | `theorem` | [le_zero_of_zero_ge](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4796ba69feb0c5559505cca38c0d92e24db497c2447580dfde3245583c5e3665.lean/declarations/le-zero-of-zero-ge--278f1cf4e9d5c860b3f8872c.md) | 80 | `result-track:278f1cf4e9d5c860b3f8872cb5933edbed147aeb2d8b83c57a9dd5e8a3ac9a9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
