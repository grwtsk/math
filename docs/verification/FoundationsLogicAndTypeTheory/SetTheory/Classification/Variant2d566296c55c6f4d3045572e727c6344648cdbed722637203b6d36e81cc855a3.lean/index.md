# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Classification.Variant2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f1f3fc45759efe865f01dc243fad9e954489bf4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f1f3fc45759efe865f01dc243fad9e954489bf4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AlgebraicIndependent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Cardinal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Cardinal` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Algebra` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cardinal_mk_le_sigma_polynomial](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3.lean/declarations/cardinal-mk-le-sigma-polynomial--bf9f37648fab7a2481b527f7.md) | 42 | `result-track:bf9f37648fab7a2481b527f7d15d53c49d84788dceeb9298f86f9e8db325fbc2` |
| 2 | `theorem` | [cardinal_mk_le_max](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3.lean/declarations/cardinal-mk-le-max--6af8e8e525353fa21b63f3d7.md) | 65 | `result-track:6af8e8e525353fa21b63f3d7ae35674e24a502a751a42f6fc67a5b1bae2fb667` |
| 3 | `theorem` | [isAlgClosure_of_transcendence_basis](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3.lean/declarations/isalgclosure-of-transcendence-basis--15b05e50d41dd36db179e55e.md) | 102 | `result-track:15b05e50d41dd36db179e55e51cb3e341d8df9b9efe677ed096af992f7b0f545` |
| 4 | `def` | [equivOfTranscendenceBasis](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3.lean/declarations/equivoftranscendencebasis--54df5d031e0b619985122b8e.md) | 114 | `declaration-track:54df5d031e0b619985122b8e035d6b3bc10edfb521c5b5296f521f1c9acbaf09` |
| 5 | `theorem` | [cardinal_le_max_transcendence_basis](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3.lean/declarations/cardinal-le-max-transcendence-basis--ab9dab1dc159dc4dff056fca.md) | 142 | `result-track:ab9dab1dc159dc4dff056fca5fcc1f44c6941af348cb09e11756bf441e941451` |
| 6 | `theorem` | [cardinal_eq_cardinal_transcendence_basis_of_aleph0_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3.lean/declarations/cardinal-eq-cardinal-transcendence-basis-of-aleph0-lt--04cc612583c6e7c72fbde7e5.md) | 155 | `result-track:04cc612583c6e7c72fbde7e5ae49c28f8e8ab985da8ffd6d1b2d3f630f74f3f7` |
| 7 | `theorem` | [ringEquivOfCardinalEqOfCharZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3.lean/declarations/ringequivofcardinaleqofcharzero--b0a40e19778c3224fa47076a.md) | 177 | `result-track:b0a40e19778c3224fa47076a9bdce7d054474d97c0b988db392b6299d77fa312` |
| 8 | `theorem` | [ringEquivOfCardinalEqOfCharP](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3.lean/declarations/ringequivofcardinaleqofcharp--875d902822c952a450046bef.md) | 191 | `result-track:875d902822c952a450046bef2aecdf81b60817dab04fe158b4cde7592f7b901d` |
| 9 | `theorem` | [ringEquivOfCardinalEqOfCharEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant2d566296c55c6f4d3045572e727c6344648cdbed722637203b6d36e81cc855a3.lean/declarations/ringequivofcardinaleqofchareq--fc7acf0441ed450920631fb4.md) | 210 | `result-track:fc7acf0441ed450920631fb40a93ee5f26542ec28fea1f8408c354febd38252a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
