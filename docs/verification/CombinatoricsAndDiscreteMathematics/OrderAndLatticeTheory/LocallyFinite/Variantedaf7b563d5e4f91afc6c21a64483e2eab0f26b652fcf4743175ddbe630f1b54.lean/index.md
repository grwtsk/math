# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LocallyFinite.Variantedaf7b563d5e4f91afc6c21a64483e2eab0f26b652fcf4743175ddbe630f1b54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c6711bd058d9f50330104c4b9a5c800aaa7df39",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LocallyFinite/Variantedaf7b563d5e4f91afc6c21a64483e2eab0f26b652fcf4743175ddbe630f1b54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LocallyFinite/Variantedaf7b563d5e4f91afc6c21a64483e2eab0f26b652fcf4743175ddbe630f1b54.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LocallyFinite/Variantedaf7b563d5e4f91afc6c21a64483e2eab0f26b652fcf4743175ddbe630f1b54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c6711bd058d9f50330104c4b9a5c800aaa7df39`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LocallyFinite/Variantedaf7b563d5e4f91afc6c21a64483e2eab0f26b652fcf4743175ddbe630f1b54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LocallyFinite/Variantedaf7b563d5e4f91afc6c21a64483e2eab0f26b652fcf4743175ddbe630f1b54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Closure` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Finite.upperClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LocallyFinite/Variantedaf7b563d5e4f91afc6c21a64483e2eab0f26b652fcf4743175ddbe630f1b54.lean/declarations/finite-upperclosure--b0d71a38d37956c0bab90362.md) | 21 | `result-track:b0d71a38d37956c0bab90362c75b3899e375b91efdf1d0210fad258452fab59f` |
| 2 | `theorem` | [Finite.lowerClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LocallyFinite/Variantedaf7b563d5e4f91afc6c21a64483e2eab0f26b652fcf4743175ddbe630f1b54.lean/declarations/finite-lowerclosure--dbaa22cf698f933526ed89ae.md) | 26 | `result-track:dbaa22cf698f933526ed89aee1839cfc3b33875d4493afd8c5291a812a90d6cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
