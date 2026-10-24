# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Units.Variant7544665221c2192105811cd509bf18ef3581a2b98e22be006a93ad205257d1b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e6c91bdca5e28fb08fd8d6071e3a6fd30e746bf",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant7544665221c2192105811cd509bf18ef3581a2b98e22be006a93ad205257d1b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant7544665221c2192105811cd509bf18ef3581a2b98e22be006a93ad205257d1b5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant7544665221c2192105811cd509bf18ef3581a2b98e22be006a93ad205257d1b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e6c91bdca5e28fb08fd8d6071e3a6fd30e746bf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant7544665221c2192105811cd509bf18ef3581a2b98e22be006a93ad205257d1b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant7544665221c2192105811cd509bf18ef3581a2b98e22be006a93ad205257d1b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Hom.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.MinMax` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant7544665221c2192105811cd509bf18ef3581a2b98e22be006a93ad205257d1b5.lean/declarations/instance--36eb0a2ac84f6abf47b02567.md) | 19 | `declaration-track:36eb0a2ac84f6abf47b0256728902c90668e04fb07b1d83c5cc1a759bd5eee0a` |
| 2 | `theorem` | [val_le_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant7544665221c2192105811cd509bf18ef3581a2b98e22be006a93ad205257d1b5.lean/declarations/val-le-val--9dcac863e4d8efd048618aee.md) | 23 | `result-track:9dcac863e4d8efd048618aee20ca5b3a0ea437f4eed03a2b0eda9e1739a710ba` |
| 3 | `theorem` | [val_lt_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant7544665221c2192105811cd509bf18ef3581a2b98e22be006a93ad205257d1b5.lean/declarations/val-lt-val--77edde3a5355ed18bb8de5a0.md) | 27 | `result-track:77edde3a5355ed18bb8de5a0629a88e365dcc73a62a2c83db864198fe74736db` |
| 4 | `instance` | [instPartialOrderUnits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant7544665221c2192105811cd509bf18ef3581a2b98e22be006a93ad205257d1b5.lean/declarations/instpartialorderunits--64068ea4b10aab4b4b009659.md) | 31 | `declaration-track:64068ea4b10aab4b4b0096596d007b760aab5baa1879f36b63231adcada6b4e3` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant7544665221c2192105811cd509bf18ef3581a2b98e22be006a93ad205257d1b5.lean/declarations/instance--cb258dadcb6cb05c13f8a861.md) | 35 | `declaration-track:cb258dadcb6cb05c13f8a86102e2633f1e9f6b5bf71faab9278928416943c9f7` |
| 6 | `def` | [orderEmbeddingVal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant7544665221c2192105811cd509bf18ef3581a2b98e22be006a93ad205257d1b5.lean/declarations/orderembeddingval--e13437f2d4c83117171cefa9.md) | 41 | `declaration-track:e13437f2d4c83117171cefa9639a0644b4aeb8e64e537f1412463a249775af0f` |
| 7 | `theorem` | [max_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant7544665221c2192105811cd509bf18ef3581a2b98e22be006a93ad205257d1b5.lean/declarations/max-val--6ff56e72fac61a350bd5cdf1.md) | 45 | `result-track:6ff56e72fac61a350bd5cdf17c6c3a18222a701a9fc8d5b976eee0bf52affaf7` |
| 8 | `theorem` | [min_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant7544665221c2192105811cd509bf18ef3581a2b98e22be006a93ad205257d1b5.lean/declarations/min-val--16f5d36d9b994436a935f103.md) | 49 | `result-track:16f5d36d9b994436a935f1039f40142fa73929c3f486a5185854e69f451eb13a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
