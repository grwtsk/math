# Verification target: GRWTSK.Algebra.DiscreteValuationRing.Variantc4ac176b2642b5091e6780b5e2c887aa1cf201630bdef4c8c025194b1e4f53cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "511e717d8c5ac2fdba195964cb60eb1928c3823c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DiscreteValuationRing/Variantc4ac176b2642b5091e6780b5e2c887aa1cf201630bdef4c8c025194b1e4f53cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DiscreteValuationRing/Variantc4ac176b2642b5091e6780b5e2c887aa1cf201630bdef4c8c025194b1e4f53cf.lean/index.md) · [Full source](../../../../mathematics/Algebra/DiscreteValuationRing/Variantc4ac176b2642b5091e6780b5e2c887aa1cf201630bdef4c8c025194b1e4f53cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `511e717d8c5ac2fdba195964cb60eb1928c3823c`.

Source path: `GRWTSK/Algebra/DiscreteValuationRing/Variantc4ac176b2642b5091e6780b5e2c887aa1cf201630bdef4c8c025194b1e4f53cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DiscreteValuationRing/Variantc4ac176b2642b5091e6780b5e2c887aa1cf201630bdef4c8c025194b1e4f53cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Domain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.MulCoeff` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DiscreteValuationRing.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../mathematics/Algebra/DiscreteValuationRing/Variantc4ac176b2642b5091e6780b5e2c887aa1cf201630bdef4c8c025194b1e4f53cf.lean/declarations/macro-rules--b737c6344bb27a57fc4bad6a.md) | 33 | `declaration-track:b737c6344bb27a57fc4bad6a18133f60d1581462bf2921d8c9312c14faeaf8c0` |
| 2 | `def` | [succNthValUnits](../../../../mathematics/Algebra/DiscreteValuationRing/Variantc4ac176b2642b5091e6780b5e2c887aa1cf201630bdef4c8c025194b1e4f53cf.lean/declarations/succnthvalunits--6d64c04bf835eae4f62c7b01.md) | 46 | `declaration-track:6d64c04bf835eae4f62c7b0130156faaae4a042a1ba736b9fe41c3f10005a7ff` |
| 3 | `def` | [inverseCoeff](../../../../mathematics/Algebra/DiscreteValuationRing/Variantc4ac176b2642b5091e6780b5e2c887aa1cf201630bdef4c8c025194b1e4f53cf.lean/declarations/inversecoeff--4795eec321b027f5d5fce465.md) | 55 | `declaration-track:4795eec321b027f5d5fce465c3bd4511cf633dc16ab040a7a4570c2fd1d22689` |
| 4 | `def` | [mkUnit](../../../../mathematics/Algebra/DiscreteValuationRing/Variantc4ac176b2642b5091e6780b5e2c887aa1cf201630bdef4c8c025194b1e4f53cf.lean/declarations/mkunit--3b31aaafc2966a7108a604aa.md) | 63 | `declaration-track:3b31aaafc2966a7108a604aa7c2a9c2fed5518bf9d94ffe6c134d64be3a9dacc` |
| 5 | `theorem` | [coe_mkUnit](../../../../mathematics/Algebra/DiscreteValuationRing/Variantc4ac176b2642b5091e6780b5e2c887aa1cf201630bdef4c8c025194b1e4f53cf.lean/declarations/coe-mkunit--227978953aa7c66ab62aa152.md) | 80 | `result-track:227978953aa7c66ab62aa1526274733b010467c57e4df8a3dc57d7f5d187fbdb` |
| 6 | `theorem` | [isUnit_of_coeff_zero_ne_zero](../../../../mathematics/Algebra/DiscreteValuationRing/Variantc4ac176b2642b5091e6780b5e2c887aa1cf201630bdef4c8c025194b1e4f53cf.lean/declarations/isunit-of-coeff-zero-ne-zero--435e25ef375f6309de0cad75.md) | 90 | `result-track:435e25ef375f6309de0cad757132d02a98fa5d033c9eff34f935e8fe5349ea9f` |
| 7 | `theorem` | [irreducible](../../../../mathematics/Algebra/DiscreteValuationRing/Variantc4ac176b2642b5091e6780b5e2c887aa1cf201630bdef4c8c025194b1e4f53cf.lean/declarations/irreducible--88042b759d55478499d3f89b.md) | 98 | `result-track:88042b759d55478499d3f89b584f9335a4d8d07c2b9e87d9f9d5447232b45ece` |
| 8 | `theorem` | [exists_eq_pow_p_mul](../../../../mathematics/Algebra/DiscreteValuationRing/Variantc4ac176b2642b5091e6780b5e2c887aa1cf201630bdef4c8c025194b1e4f53cf.lean/declarations/exists-eq-pow-p-mul--889a84a718bf69ca5d9835fe.md) | 123 | `result-track:889a84a718bf69ca5d9835fe57207482b65ce5a8469e2d65f1e5a50a5cd9e603` |
| 9 | `theorem` | [exists_eq_pow_p_mul'](../../../../mathematics/Algebra/DiscreteValuationRing/Variantc4ac176b2642b5091e6780b5e2c887aa1cf201630bdef4c8c025194b1e4f53cf.lean/declarations/exists-eq-pow-p-mul--79e9bc155b6fcffbc3c7605d.md) | 147 | `result-track:79e9bc155b6fcffbc3c7605dae200a10edc20941aee5c6c80484e985a16b3ebe` |
| 10 | `theorem` | [discreteValuationRing](../../../../mathematics/Algebra/DiscreteValuationRing/Variantc4ac176b2642b5091e6780b5e2c887aa1cf201630bdef4c8c025194b1e4f53cf.lean/declarations/discretevaluationring--2f6717f244f73c91b5f1da7f.md) | 163 | `result-track:2f6717f244f73c91b5f1da7f3abd6607c9cff9f4b6b736e7bf73c828d058c742` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
