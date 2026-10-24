# Verification target: GRWTSK.Algebra.UniversalAlgebra.Ineq.Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8408a243882f1964899fbd265c107962c6c3ed6e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8408a243882f1964899fbd265c107962c6c3ed6e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.Eq` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Invertible` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.WithTop` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Cast` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inferOrderedSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/declarations/inferorderedsemiring--562023af719732f6b251de7a.md) | 24 | `declaration-track:562023af719732f6b251de7a08d7db34a4b849d24524e1d4129368e64ecff9a0` |
| 2 | `def` | [inferOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/declarations/inferorderedring--2db0419c860abb6cb5d77a5b.md) | 35 | `declaration-track:2db0419c860abb6cb5d77a5b0635cd97dd4455b19e41d03b41cda96668796ba1` |
| 3 | `def` | [inferLinearOrderedField](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/declarations/inferlinearorderedfield--7ef6915c426086560bea3b98.md) | 46 | `declaration-track:7ef6915c426086560bea3b98f8af50f83efd30aa432a966e7f7e62b5864b5ad6` |
| 4 | `theorem` | [isNat_le_true](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/declarations/isnat-le-true--bfb0db24571fddfe6e6f3731.md) | 57 | `result-track:bfb0db24571fddfe6e6f37313bac6eb7b3c02827422331ae09835912fcb3c299` |
| 5 | `theorem` | [isNat_lt_false](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/declarations/isnat-lt-false--8b54aed2434c9e18abcb9e77.md) | 61 | `result-track:8b54aed2434c9e18abcb9e77f399316f8c83ede169310d315596133280dfc5e3` |
| 6 | `theorem` | [isRat_le_true](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/declarations/israt-le-true--69a828eab991b101d17abf87.md) | 65 | `result-track:69a828eab991b101d17abf8791953d14e2e9d7f2e64e65167443b5e0b669a856` |
| 7 | `theorem` | [isRat_lt_true](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/declarations/israt-lt-true--feccb8328691b597eafe2964.md) | 77 | `result-track:feccb8328691b597eafe2964c0652325f29406e1db1f5fadcfbe16c3fd5bd826` |
| 8 | `theorem` | [isRat_le_false](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/declarations/israt-le-false--5c2e434941694743b824907c.md) | 89 | `result-track:5c2e434941694743b824907cc27e22108c01a29ed8376765ac3d9ef981fed854` |
| 9 | `theorem` | [isRat_lt_false](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/declarations/israt-lt-false--760ba320df1c1a8621a4bd21.md) | 94 | `result-track:760ba320df1c1a8621a4bd21f10da6963df15147688bce8e9d044f55e4c077e3` |
| 10 | `theorem` | [isNat_lt_true](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/declarations/isnat-lt-true--c24173566b3fcde580a3c9c0.md) | 101 | `result-track:c24173566b3fcde580a3c9c06cb4fe46047446f8f8d1187e01bd6d249509d18e` |
| 11 | `theorem` | [isNat_le_false](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/declarations/isnat-le-false--72a39f50472aeb8661ae6816.md) | 107 | `result-track:72a39f50472aeb8661ae68168265b3268ca42174a4eea4a149cba1d9e7e66d24` |
| 12 | `theorem` | [isInt_le_true](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/declarations/isint-le-true--aeb8a98634039b3551953110.md) | 112 | `result-track:aeb8a98634039b3551953110cf9fe726cccc1ebd53fdb598e5af9430d7edf65b` |
| 13 | `theorem` | [isInt_lt_true](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/declarations/isint-lt-true--067bce002f34f13b598d0c37.md) | 116 | `result-track:067bce002f34f13b598d0c37908207afd6ed001e23612a8a7bf8da1c9ec19651` |
| 14 | `theorem` | [isInt_le_false](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/declarations/isint-le-false--eb4306bcbef661b9c42c1bea.md) | 121 | `result-track:eb4306bcbef661b9c42c1bea4f92ba7b093b3931a103e8c85a0823c8b771739f` |
| 15 | `theorem` | [isInt_lt_false](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/declarations/isint-lt-false--dcf645ccb990c7fe930b55a7.md) | 126 | `result-track:dcf645ccb990c7fe930b55a72ad39ba2497ad5f39ebefdf80573db5040839eb1` |
| 16 | `def` | [evalLE](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/declarations/evalle--9a2373fca1635d4a0520dc7c.md) | 133 | `declaration-track:9a2373fca1635d4a0520dc7c954c3a257bf96f17f0bc26e83fa7999abc53b558` |
| 17 | `def` | [evalLT](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/declarations/evallt--9f95f09c4ddbafd306d3537f.md) | 197 | `declaration-track:9f95f09c4ddbafd306d3537f6f22d579c094379b8483f79bd8cc40a19faac843` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
