# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BoundedDirichletConvolution.Variant2c118fc7a49912b832f176f1c790f5304a0323a7bfb4b36c3a768d00686ec32f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "834cde36a459f1a2eb79e2b56a00ae1814ac9013",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant2c118fc7a49912b832f176f1c790f5304a0323a7bfb4b36c3a768d00686ec32f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant2c118fc7a49912b832f176f1c790f5304a0323a7bfb4b36c3a768d00686ec32f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant2c118fc7a49912b832f176f1c790f5304a0323a7bfb4b36c3a768d00686ec32f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `834cde36a459f1a2eb79e2b56a00ae1814ac9013`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant2c118fc7a49912b832f176f1c790f5304a0323a7bfb4b36c3a768d00686ec32f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant2c118fc7a49912b832f176f1c790f5304a0323a7bfb4b36c3a768d00686ec32f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.DirichletPolynomialProduct` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundedDivisorPairs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant2c118fc7a49912b832f176f1c790f5304a0323a7bfb4b36c3a768d00686ec32f.lean/declarations/boundeddivisorpairs--d01602e03f6d853a69dde369.md) | 17 | `declaration-track:d01602e03f6d853a69dde369210ebabc20581941b7d8c9a1e3a84e3c4c9e2819` |
| 2 | `theorem` | [mem_boundedDivisorPairs_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant2c118fc7a49912b832f176f1c790f5304a0323a7bfb4b36c3a768d00686ec32f.lean/declarations/mem-boundeddivisorpairs-iff--586ef7b724dedcd16cba57b0.md) | 22 | `result-track:586ef7b724dedcd16cba57b051b9681cb11ac87c4dd8c22d2ba64146ef886a24` |
| 3 | `theorem` | [boundedDirichletConv_eq_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant2c118fc7a49912b832f176f1c790f5304a0323a7bfb4b36c3a768d00686ec32f.lean/declarations/boundeddirichletconv-eq-sum--0e44e579a2f43bfc48041cdb.md) | 28 | `result-track:0e44e579a2f43bfc48041cdb6c0ca8872198fc609aa8b9b07cfcc946dae8a226` |
| 4 | `def` | [pairProductByValue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant2c118fc7a49912b832f176f1c790f5304a0323a7bfb4b36c3a768d00686ec32f.lean/declarations/pairproductbyvalue--cb34442a19b9196ecd7ccb32.md) | 38 | `declaration-track:cb34442a19b9196ecd7ccb324a244b59c1580b48dcdc76b14ef0ab6ce74be824` |
| 5 | `theorem` | [pairProductByValue_eq_boundedDirichletConv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant2c118fc7a49912b832f176f1c790f5304a0323a7bfb4b36c3a768d00686ec32f.lean/declarations/pairproductbyvalue-eq-boundeddirichletconv--63122f8137c506ca82e7d603.md) | 46 | `result-track:63122f8137c506ca82e7d603d38c47571858c6dbe5ac985c6ceab4b6f6df8db6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
