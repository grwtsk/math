# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant31ee46efc4821d50642473c94b138a7cad1350bb2fb0c141321b1f3b724279aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5e4cc9c85779785f80023d152a609254cad0a0f",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant31ee46efc4821d50642473c94b138a7cad1350bb2fb0c141321b1f3b724279aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant31ee46efc4821d50642473c94b138a7cad1350bb2fb0c141321b1f3b724279aa.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant31ee46efc4821d50642473c94b138a7cad1350bb2fb0c141321b1f3b724279aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5e4cc9c85779785f80023d152a609254cad0a0f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant31ee46efc4821d50642473c94b138a7cad1350bb2fb0c141321b1f3b724279aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant31ee46efc4821d50642473c94b138a7cad1350bb2fb0c141321b1f3b724279aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorial.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Order` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_factorial_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant31ee46efc4821d50642473c94b138a7cad1350bb2fb0c141321b1f3b724279aa.lean/declarations/prod-factorial-pos--42c4ea9dd53ca1ccc9dea561.md) | 29 | `result-track:42c4ea9dd53ca1ccc9dea561a0c393aa2de04d7c3f6ec3eaa3a4184656fa52b1` |
| 2 | `theorem` | [prod_factorial_dvd_factorial_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant31ee46efc4821d50642473c94b138a7cad1350bb2fb0c141321b1f3b724279aa.lean/declarations/prod-factorial-dvd-factorial-sum--0aaa45840e2fa91d7671680d.md) | 33 | `result-track:0aaa45840e2fa91d7671680d6463967edd1c54470321877dda22013a3e2c9f8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
