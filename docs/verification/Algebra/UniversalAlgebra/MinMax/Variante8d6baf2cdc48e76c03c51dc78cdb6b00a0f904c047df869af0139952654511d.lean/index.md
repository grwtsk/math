# Verification target: GRWTSK.Algebra.UniversalAlgebra.MinMax.Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bed522780484ad6db6c9bd3a838f991b007cc15",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bed522780484ad6db6c9bd3a838f991b007cc15`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [fn_min_mul_fn_max](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean/declarations/fn-min-mul-fn-max--5df5880c77f65098f473d852.md) | 32 | `result-track:5df5880c77f65098f473d85270709929bd1cb1b6f20171b8b65b23e26c8e3b92` |
| 2 | `lemma` | [fn_max_mul_fn_min](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean/declarations/fn-max-mul-fn-min--93feeb8b05e9f2c205bb7442.md) | 36 | `result-track:93feeb8b05e9f2c205bb7442e3a8a04bb9ea984aaaffeeaa1e9df6b8f702fddc` |
| 3 | `lemma` | [min_mul_max](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean/declarations/min-mul-max--5b94e94debf50b89e2997366.md) | 42 | `result-track:5b94e94debf50b89e29973661954a935e5314264a3625751249ff9c670afeb66` |
| 4 | `lemma` | [max_mul_min](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean/declarations/max-mul-min--7e6f6cf2e052f486cd23d53c.md) | 45 | `result-track:7e6f6cf2e052f486cd23d53ceba3d19eec1aa6707fc7e3f60643549f16d64514` |
| 5 | `theorem` | [min_mul_mul_left](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean/declarations/min-mul-mul-left--3c1843080a62bd3e607eabd7.md) | 62 | `result-track:3c1843080a62bd3e607eabd7b72ad6575da9c6bce2802560d5e1e761864a802b` |
| 6 | `theorem` | [max_mul_mul_left](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean/declarations/max-mul-mul-left--d4b9e793ce3939b3d6b8e3ea.md) | 66 | `result-track:d4b9e793ce3939b3d6b8e3ea84f1ebe0aec3316830c91ea4c6677f353af8c23a` |
| 7 | `theorem` | [min_mul_mul_right](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean/declarations/min-mul-mul-right--15700e73910cf811367b7414.md) | 76 | `result-track:15700e73910cf811367b7414075b78f00399f86547d1fff96150c2d060bd4446` |
| 8 | `theorem` | [max_mul_mul_right](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean/declarations/max-mul-mul-right--e2c021ea8344a5e064bb3384.md) | 80 | `result-track:e2c021ea8344a5e064bb3384e0a620a284d9811ce58da4ef5ecd580a476bb81c` |
| 9 | `theorem` | [lt_or_lt_of_mul_lt_mul](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean/declarations/lt-or-lt-of-mul-lt-mul--82cedcf433df222dd7ddd98f.md) | 86 | `result-track:82cedcf433df222dd7ddd98fc7cb269d338ada3c3e3af9faa29d2952886996d6` |
| 10 | `theorem` | [le_or_lt_of_mul_le_mul](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean/declarations/le-or-lt-of-mul-le-mul--f76c793c385887f2acdd44d4.md) | 92 | `result-track:f76c793c385887f2acdd44d4d8b5ebb52ed21bfc171ae9f6f60300f4546dd0a1` |
| 11 | `theorem` | [lt_or_le_of_mul_le_mul](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean/declarations/lt-or-le-of-mul-le-mul--a1c8098efc5e63a021c8dff1.md) | 98 | `result-track:a1c8098efc5e63a021c8dff1aebfde7d1d90bfe65468ae3eeb27612372b06968` |
| 12 | `theorem` | [le_or_le_of_mul_le_mul](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean/declarations/le-or-le-of-mul-le-mul--6264dd857c097900b5ce7294.md) | 104 | `result-track:6264dd857c097900b5ce72946238f5b9609f32b21315b4af33bc56d7139dab95` |
| 13 | `theorem` | [mul_lt_mul_iff_of_le_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean/declarations/mul-lt-mul-iff-of-le-of-le--2250d66490a32149775f3d3b.md) | 110 | `result-track:2250d66490a32149775f3d3b195b09db15df8d3f6ff44cba9bab2f336dda7cd7` |
| 14 | `theorem` | [min_le_mul_of_one_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean/declarations/min-le-mul-of-one-le-right--2476354785a3f98923707685.md) | 124 | `result-track:2476354785a3f98923707685808f885eddb93e9bb7b79d881e845c9f943cdcaf` |
| 15 | `theorem` | [min_le_mul_of_one_le_left](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean/declarations/min-le-mul-of-one-le-left--be8e3eef313dc0980bc795a4.md) | 129 | `result-track:be8e3eef313dc0980bc795a4f7df61be91e824922f4d85cd42a96d2bcc26ffb1` |
| 16 | `theorem` | [max_le_mul_of_one_le](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variante8d6baf2cdc48e76c03c51dc78cdb6b00a0f904c047df869af0139952654511d.lean/declarations/max-le-mul-of-one-le--314eeb6630b5c06cdd9460ca.md) | 134 | `result-track:314eeb6630b5c06cdd9460caedd91c11c590a6d0401ab41b7978c81adb8244a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
