# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Lucas.Variant0d3f658cee7c702005752f76aa16985cc1245e1fb40101c38893a231a135319a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e2b98c077fcf1b6d2d01d67445e96b4eb97a90f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Lucas/Variant0d3f658cee7c702005752f76aa16985cc1245e1fb40101c38893a231a135319a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Lucas/Variant0d3f658cee7c702005752f76aa16985cc1245e1fb40101c38893a231a135319a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Lucas/Variant0d3f658cee7c702005752f76aa16985cc1245e1fb40101c38893a231a135319a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e2b98c077fcf1b6d2d01d67445e96b4eb97a90f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Lucas/Variant0d3f658cee7c702005752f76aa16985cc1245e1fb40101c38893a231a135319a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Lucas/Variant0d3f658cee7c702005752f76aa16985cc1245e1fb40101c38893a231a135319a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [choose_modEq_choose_mod_mul_choose_div](../../../../../mathematics/Algebra/CommutativeAlgebra/Lucas/Variant0d3f658cee7c702005752f76aa16985cc1245e1fb40101c38893a231a135319a.lean/declarations/choose-modeq-choose-mod-mul-choose-div--e51b010250698da05605e029.md) | 34 | `result-track:e51b010250698da05605e0299d62868fd3f922da0f224eac79726dc0556a8462` |
| 2 | `theorem` | [choose_modEq_choose_mod_mul_choose_div_nat](../../../../../mathematics/Algebra/CommutativeAlgebra/Lucas/Variant0d3f658cee7c702005752f76aa16985cc1245e1fb40101c38893a231a135319a.lean/declarations/choose-modeq-choose-mod-mul-choose-div-nat--356ac6cc20855ed213535e82.md) | 64 | `result-track:356ac6cc20855ed213535e82ace2471c21527495159918b7d51db54a020ff0c0` |
| 3 | `theorem` | [choose_modEq_choose_mul_prod_range_choose](../../../../../mathematics/Algebra/CommutativeAlgebra/Lucas/Variant0d3f658cee7c702005752f76aa16985cc1245e1fb40101c38893a231a135319a.lean/declarations/choose-modeq-choose-mul-prod-range-choose--59f9ad2441938db356ad9747.md) | 71 | `result-track:59f9ad2441938db356ad97477336d141f02d8111eff8bbd0d7215b2299aec0a1` |
| 4 | `theorem` | [choose_modEq_prod_range_choose](../../../../../mathematics/Algebra/CommutativeAlgebra/Lucas/Variant0d3f658cee7c702005752f76aa16985cc1245e1fb40101c38893a231a135319a.lean/declarations/choose-modeq-prod-range-choose--a16c5cefc44c48f9a38e0b2c.md) | 84 | `result-track:a16c5cefc44c48f9a38e0b2c5891a6530c31d82bb9027f49c16d95c18b8b223f` |
| 5 | `theorem` | [choose_modEq_prod_range_choose_nat](../../../../../mathematics/Algebra/CommutativeAlgebra/Lucas/Variant0d3f658cee7c702005752f76aa16985cc1245e1fb40101c38893a231a135319a.lean/declarations/choose-modeq-prod-range-choose-nat--5896bf9c8b15175c7f04241e.md) | 92 | `result-track:5896bf9c8b15175c7f04241ed5e01daf96ec4b53aa7a4f92196eaf019b36a3de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
