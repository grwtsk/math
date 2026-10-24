# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Units.Variantfd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0385c6dd5919b8dccd762894ae75f38177bda84e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Units/Variantfd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantfd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantfd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0385c6dd5919b8dccd762894ae75f38177bda84e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Units/Variantfd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Units/Variantfd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Int.Units` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [UnitsInt.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantfd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88.lean/declarations/unitsint-fintype--b1e3bf94210f4095521c8b7b.md) | 19 | `declaration-track:b1e3bf94210f4095521c8b7b076ef803582da10954edd481198cae12ac0a17a2` |
| 2 | `theorem` | [UnitsInt.univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantfd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88.lean/declarations/unitsint-univ--db2cd06f1590e799d4b34768.md) | 23 | `result-track:db2cd06f1590e799d4b34768809c897939db9b127486bd14a865aa57ebd53b58` |
| 3 | `theorem` | [Fintype.card_units_int](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantfd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88.lean/declarations/fintype-card-units-int--4b21ca8a8c176600aecec45a.md) | 26 | `result-track:4b21ca8a8c176600aecec45ac6f5392d469c1aece8e75a86fed1d7194591c05e` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantfd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88.lean/declarations/instance--4bcecb593d78ed0369cd1e60.md) | 28 | `declaration-track:4bcecb593d78ed0369cd1e6034e38e554ee3dbe21fea761200ea403bf2b59793` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantfd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88.lean/declarations/instance--fdf2589a28f98202ebe36fe8.md) | 31 | `declaration-track:fdf2589a28f98202ebe36fe830e17f6b9d096a3980799c603b322b1a80281a14` |
| 6 | `theorem` | [Nat.card_units](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantfd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88.lean/declarations/nat-card-units--b2ea7f399ee3b4ebcd4b736d.md) | 35 | `result-track:b2ea7f399ee3b4ebcd4b736d5eaa72b0a2fbd3139dfeeaa2be0adf0eef0ef265` |
| 7 | `theorem` | [Nat.card_eq_card_units_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantfd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88.lean/declarations/nat-card-eq-card-units-add-one--d0c0947cee1372cc18fe93a8.md) | 43 | `result-track:d0c0947cee1372cc18fe93a84a14badd679731d1bcd7bde169173f62be46a503` |
| 8 | `theorem` | [Fintype.card_units](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantfd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88.lean/declarations/fintype-card-units--2bf685f4a4a22588652fd318.md) | 47 | `result-track:2bf685f4a4a22588652fd3181c6fbea27d30124d13f7b09608754a9938c4c9e8` |
| 9 | `theorem` | [Fintype.card_eq_card_units_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantfd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88.lean/declarations/fintype-card-eq-card-units-add-one--f33d62395fc5083f5e4e84be.md) | 51 | `result-track:f33d62395fc5083f5e4e84beb11364dc665d782032ae45013c16defd4747b157` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
