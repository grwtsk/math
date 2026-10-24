# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Lemmas.Variant548339185ab224cce61b217d2a90beabe4ca96741c36428ca81cc9a0aa1f7e10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ade395f935da6e5a07377b033b4fa4d13295a9b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant548339185ab224cce61b217d2a90beabe4ca96741c36428ca81cc9a0aa1f7e10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant548339185ab224cce61b217d2a90beabe4ca96741c36428ca81cc9a0aa1f7e10.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant548339185ab224cce61b217d2a90beabe4ca96741c36428ca81cc9a0aa1f7e10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ade395f935da6e5a07377b033b4fa4d13295a9b`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant548339185ab224cce61b217d2a90beabe4ca96741c36428ca81cc9a0aa1f7e10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Lemmas/Variant548339185ab224cce61b217d2a90beabe4ca96741c36428ca81cc9a0aa1f7e10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Nonneg.Field` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cast_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant548339185ab224cce61b217d2a90beabe4ca96741c36428ca81cc9a0aa1f7e10.lean/declarations/cast-pow--da243dc58ac28939d147a423.md) | 26 | `result-track:da243dc58ac28939d147a423e64e0987ec847cd12d3402a518f2d4c140a5d1ec` |
| 2 | `theorem` | [cast_inv_nat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant548339185ab224cce61b217d2a90beabe4ca96741c36428ca81cc9a0aa1f7e10.lean/declarations/cast-inv-nat--4a8d4c1bb3e227f7f819f345.md) | 31 | `result-track:4a8d4c1bb3e227f7f819f3457f94c303070d81e7496d3bc137cccb2b3787fcc8` |
| 3 | `theorem` | [cast_inv_int](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant548339185ab224cce61b217d2a90beabe4ca96741c36428ca81cc9a0aa1f7e10.lean/declarations/cast-inv-int--bcb79a9dc6bff5c4f0b64d3c.md) | 38 | `result-track:bcb79a9dc6bff5c4f0b64d3c236eebaa6e3e3669672d43c3ae1604e7f7e07c50` |
| 4 | `theorem` | [cast_nnratCast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant548339185ab224cce61b217d2a90beabe4ca96741c36428ca81cc9a0aa1f7e10.lean/declarations/cast-nnratcast--ab5c1adb7b3896d720d9af03.md) | 44 | `result-track:ab5c1adb7b3896d720d9af03757881233236f71522a17f32b6e75b976c0177dc` |
| 5 | `theorem` | [cast_ofScientific](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant548339185ab224cce61b217d2a90beabe4ca96741c36428ca81cc9a0aa1f7e10.lean/declarations/cast-ofscientific--f942cb40a3a23dad13e0caf2.md) | 55 | `result-track:f942cb40a3a23dad13e0caf2866a5437071b57b76417cefd89ae393d78c8786e` |
| 6 | `theorem` | [cast_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant548339185ab224cce61b217d2a90beabe4ca96741c36428ca81cc9a0aa1f7e10.lean/declarations/cast-pow--3939a3bd2951b40b01b53a50.md) | 64 | `result-track:3939a3bd2951b40b01b53a5044d1033ce7cc7f67e0401573f75f488a9413dfb5` |
| 7 | `theorem` | [cast_zpow_of_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant548339185ab224cce61b217d2a90beabe4ca96741c36428ca81cc9a0aa1f7e10.lean/declarations/cast-zpow-of-ne-zero--4de909346a2325917d447629.md) | 69 | `result-track:4de909346a2325917d44762916bcfc679945c1f44d1433f1879b6e51559fc7f3` |
| 8 | `theorem` | [Nonneg.coe_ofScientific](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant548339185ab224cce61b217d2a90beabe4ca96741c36428ca81cc9a0aa1f7e10.lean/declarations/nonneg-coe-ofscientific--2b9d73a3b6f8f908a6d1a80a.md) | 78 | `result-track:2b9d73a3b6f8f908a6d1a80a8c835a4a9f4d643839e6799e22b8092903b564b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
