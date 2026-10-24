# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant7683880e20a00932862ebe54491a1c6c1794462ca61778498c50f95943d321fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45b4068aa1eeaef4384cb6c0e9d07c9cbab13790",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7683880e20a00932862ebe54491a1c6c1794462ca61778498c50f95943d321fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7683880e20a00932862ebe54491a1c6c1794462ca61778498c50f95943d321fb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7683880e20a00932862ebe54491a1c6c1794462ca61778498c50f95943d321fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45b4068aa1eeaef4384cb6c0e9d07c9cbab13790`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7683880e20a00932862ebe54491a1c6c1794462ca61778498c50f95943d321fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7683880e20a00932862ebe54491a1c6c1794462ca61778498c50f95943d321fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorial.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [monotone_factorial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7683880e20a00932862ebe54491a1c6c1794462ca61778498c50f95943d321fb.lean/declarations/monotone-factorial--58c101d5332645f95d166812.md) | 25 | `result-track:58c101d5332645f95d166812e123e98055560752954868adcd16525518abce01` |
| 2 | `theorem` | [prod_factorial_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7683880e20a00932862ebe54491a1c6c1794462ca61778498c50f95943d321fb.lean/declarations/prod-factorial-pos--47e4e5d94150bf48bacc3aa6.md) | 29 | `result-track:47e4e5d94150bf48bacc3aa64d9602092e5cd7f5e96d74e8702a6e68d4c691dd` |
| 3 | `theorem` | [prod_factorial_dvd_factorial_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7683880e20a00932862ebe54491a1c6c1794462ca61778498c50f95943d321fb.lean/declarations/prod-factorial-dvd-factorial-sum--232a5cb1ea01fa7175036ecd.md) | 31 | `result-track:232a5cb1ea01fa7175036ecd18e8720ed0ad7923862251561073decd93df6530` |
| 4 | `theorem` | [ascFactorial_eq_prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7683880e20a00932862ebe54491a1c6c1794462ca61778498c50f95943d321fb.lean/declarations/ascfactorial-eq-prod-range--f1385fdb72b7c77ea330e73f.md) | 37 | `result-track:f1385fdb72b7c77ea330e73f8177fc5dc01372615d99561a7ceeb0612762cea3` |
| 5 | `theorem` | [descFactorial_eq_prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7683880e20a00932862ebe54491a1c6c1794462ca61778498c50f95943d321fb.lean/declarations/descfactorial-eq-prod-range--82aabec720d720e9364d8f4d.md) | 41 | `result-track:82aabec720d720e9364d8f4d93e08ec52e0051ebea34d0b3e76d808357721728` |
| 6 | `lemma` | [factorial_coe_dvd_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant7683880e20a00932862ebe54491a1c6c1794462ca61778498c50f95943d321fb.lean/declarations/factorial-coe-dvd-prod--5ec6cc4c9fa31fccfcd46d93.md) | 46 | `result-track:5ec6cc4c9fa31fccfcd46d93a8eb2fa5ce9a2765731323bc9969178b17338d27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
