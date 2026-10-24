# Verification target: GRWTSK.Algebra.UniversalAlgebra.Prime.Variant6915377d1927859d4887fdbdadfb63f9bcfe9fbc3192f4e3663227f14d5ad7f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2b984db7e4bf0a1a8c72968844cb7a7eda511b5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Prime/Variant6915377d1927859d4887fdbdadfb63f9bcfe9fbc3192f4e3663227f14d5ad7f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Prime/Variant6915377d1927859d4887fdbdadfb63f9bcfe9fbc3192f4e3663227f14d5ad7f7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Prime/Variant6915377d1927859d4887fdbdadfb63f9bcfe9fbc3192f4e3663227f14d5ad7f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2b984db7e4bf0a1a8c72968844cb7a7eda511b5`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Prime/Variant6915377d1927859d4887fdbdadfb63f9bcfe9fbc3192f4e3663227f14d5ad7f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Prime/Variant6915377d1927859d4887fdbdadfb63f9bcfe9fbc3192f4e3663227f14d5ad7f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Divisibility.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Prime.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Units` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_eq_mul_prime_prod](../../../../../mathematics/Algebra/UniversalAlgebra/Prime/Variant6915377d1927859d4887fdbdadfb63f9bcfe9fbc3192f4e3663227f14d5ad7f7.lean/declarations/mul-eq-mul-prime-prod--0ad1023b84ea57d42a2dead6.md) | 35 | `result-track:0ad1023b84ea57d42a2dead6487dd9c658ee15a588512453db719cdc1e2a0e25` |
| 2 | `theorem` | [mul_eq_mul_prime_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Prime/Variant6915377d1927859d4887fdbdadfb63f9bcfe9fbc3192f4e3663227f14d5ad7f7.lean/declarations/mul-eq-mul-prime-pow--0b69ad2512226d3e836b7e19.md) | 57 | `result-track:0b69ad2512226d3e836b7e1973bd209face1b7e0a1db52e75783dcabf99247d6` |
| 3 | `theorem` | [Prime.neg](../../../../../mathematics/Algebra/UniversalAlgebra/Prime/Variant6915377d1927859d4887fdbdadfb63f9bcfe9fbc3192f4e3663227f14d5ad7f7.lean/declarations/prime-neg--8da11013a2eaccc7f03ed8ff.md) | 70 | `result-track:8da11013a2eaccc7f03ed8ff37a7411b5a422f968de2e4c788d2e92a30f6ef4e` |
| 4 | `theorem` | [Prime.abs](../../../../../mathematics/Algebra/UniversalAlgebra/Prime/Variant6915377d1927859d4887fdbdadfb63f9bcfe9fbc3192f4e3663227f14d5ad7f7.lean/declarations/prime-abs--ef6b2fb44bbf637d795f2916.md) | 74 | `result-track:ef6b2fb44bbf637d795f29163c5bbfc0ba55041032398f0edbd3d76687282d33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
