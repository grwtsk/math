# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NatAntidiagonal.Variant96851f1d8917cc29832ff535ad4e2c46d30752d9035c64c069205b4d3a111a57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f63dd31dee517552218b1bb7ce26a106309bb76f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant96851f1d8917cc29832ff535ad4e2c46d30752d9035c64c069205b4d3a111a57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant96851f1d8917cc29832ff535ad4e2c46d30752d9035c64c069205b4d3a111a57.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant96851f1d8917cc29832ff535ad4e2c46d30752d9035c64c069205b4d3a111a57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f63dd31dee517552218b1bb7ce26a106309bb76f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant96851f1d8917cc29832ff535ad4e2c46d30752d9035c64c069205b4d3a111a57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant96851f1d8917cc29832ff535ad4e2c46d30752d9035c64c069205b4d3a111a57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.NatAntidiagonal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_antidiagonal_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant96851f1d8917cc29832ff535ad4e2c46d30752d9035c64c069205b4d3a111a57.lean/declarations/prod-antidiagonal-succ--094fcda175e93cf33cd6914f.md) | 33 | `result-track:094fcda175e93cf33cd6914feadff6233e562d8dc9bd47ff0dfbbd945e3e682e` |
| 2 | `theorem` | [sum_antidiagonal_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant96851f1d8917cc29832ff535ad4e2c46d30752d9035c64c069205b4d3a111a57.lean/declarations/sum-antidiagonal-succ--ecf1df8ce566cd53c5edba3c.md) | 38 | `result-track:ecf1df8ce566cd53c5edba3c76f1533754deb97140b3da1d8dd50629b931de73` |
| 3 | `theorem` | [prod_antidiagonal_swap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant96851f1d8917cc29832ff535ad4e2c46d30752d9035c64c069205b4d3a111a57.lean/declarations/prod-antidiagonal-swap--5f7a1cefc540056b1d2ee34c.md) | 44 | `result-track:5f7a1cefc540056b1d2ee34cbce7aee0913f18411c67fe148bd0f782ce2ea70c` |
| 4 | `theorem` | [prod_antidiagonal_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant96851f1d8917cc29832ff535ad4e2c46d30752d9035c64c069205b4d3a111a57.lean/declarations/prod-antidiagonal-succ--ad599c66e0864579d43554d6.md) | 50 | `result-track:ad599c66e0864579d43554d699222074c2c04331f1e93e30f74975c4e920db32` |
| 5 | `theorem` | [sum_antidiagonal_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant96851f1d8917cc29832ff535ad4e2c46d30752d9035c64c069205b4d3a111a57.lean/declarations/sum-antidiagonal-succ--3345b735e5ef5b1b26b242ac.md) | 56 | `result-track:3345b735e5ef5b1b26b242acf8b7bc23c2f8f5a0ecf6c2c1fcf1f08860acf6b4` |
| 6 | `theorem` | [prod_antidiagonal_subst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant96851f1d8917cc29832ff535ad4e2c46d30752d9035c64c069205b4d3a111a57.lean/declarations/prod-antidiagonal-subst--12c4490089e1c5c6497f5f94.md) | 62 | `result-track:12c4490089e1c5c6497f5f943ce45e451a139376d9f7012fb17e9b59ac6e84e9` |
| 7 | `theorem` | [prod_antidiagonal_eq_prod_range_succ_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant96851f1d8917cc29832ff535ad4e2c46d30752d9035c64c069205b4d3a111a57.lean/declarations/prod-antidiagonal-eq-prod-range-succ-mk--b6af97f97bf5f643dc719dce.md) | 69 | `result-track:b6af97f97bf5f643dc719dce810c2f441c50208af0e7c82c6098580451ccce11` |
| 8 | `theorem` | [prod_antidiagonal_eq_prod_range_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant96851f1d8917cc29832ff535ad4e2c46d30752d9035c64c069205b4d3a111a57.lean/declarations/prod-antidiagonal-eq-prod-range-succ--aafbf981c477fb5c3a8c7c49.md) | 79 | `result-track:aafbf981c477fb5c3a8c7c495e9e67b3f2e19d3fe0db6096c3501143a792b2af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
