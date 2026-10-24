# Verification target: GRWTSK.Algebra.LinearAlgebra.Quotient.Variant8dbf18e987210fbde1fd9f6b174942b9522027519c787f5fac12fe059b95f1a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f343de3e2d8cc07af364639f7d5229b3f4421507",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant8dbf18e987210fbde1fd9f6b174942b9522027519c787f5fac12fe059b95f1a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8dbf18e987210fbde1fd9f6b174942b9522027519c787f5fac12fe059b95f1a8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8dbf18e987210fbde1fd9f6b174942b9522027519c787f5fac12fe059b95f1a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f343de3e2d8cc07af364639f7d5229b3f4421507`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variant8dbf18e987210fbde1fd9f6b174942b9522027519c787f5fac12fe059b95f1a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variant8dbf18e987210fbde1fd9f6b174942b9522027519c787f5fac12fe059b95f1a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Quotient` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotIdealMapEquivTensorQuotAux](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8dbf18e987210fbde1fd9f6b174942b9522027519c787f5fac12fe059b95f1a8.lean/declarations/quotidealmapequivtensorquotaux--fde18a6ce9d4ee2cd5278387.md) | 36 | `declaration-track:fde18a6ce9d4ee2cd52783874c77de2a0e8877405fb4f3e41e8829d53cc1a9fb` |
| 2 | `lemma` | [quotIdealMapEquivTensorQuotAux_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8dbf18e987210fbde1fd9f6b174942b9522027519c787f5fac12fe059b95f1a8.lean/declarations/quotidealmapequivtensorquotaux-mk--744f62b1c932171351fe1e4a.md) | 45 | `result-track:744f62b1c932171351fe1e4aa56dbc4dde88aa4910cea5fbc7da67dd31324b5c` |
| 3 | `def` | [quotIdealMapEquivTensorQuot](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8dbf18e987210fbde1fd9f6b174942b9522027519c787f5fac12fe059b95f1a8.lean/declarations/quotidealmapequivtensorquot--316c8698eb7f0e6e95d37b65.md) | 50 | `declaration-track:316c8698eb7f0e6e95d37b650d27dd1f6cff621e24f2f4bee1971af9abedc22a` |
| 4 | `lemma` | [quotIdealMapEquivTensorQuot_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8dbf18e987210fbde1fd9f6b174942b9522027519c787f5fac12fe059b95f1a8.lean/declarations/quotidealmapequivtensorquot-mk--f6cccee7f2d62616e4a0eb26.md) | 60 | `result-track:f6cccee7f2d62616e4a0eb268961570746291902030ab7adf9929798c09d8ee4` |
| 5 | `lemma` | [quotIdealMapEquivTensorQuot_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8dbf18e987210fbde1fd9f6b174942b9522027519c787f5fac12fe059b95f1a8.lean/declarations/quotidealmapequivtensorquot-symm-tmul--5f5deeee885fee2f693a5010.md) | 65 | `result-track:5f5deeee885fee2f693a50100334ec4ef22821c10f5f91ee2a6fbfb1640304c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
