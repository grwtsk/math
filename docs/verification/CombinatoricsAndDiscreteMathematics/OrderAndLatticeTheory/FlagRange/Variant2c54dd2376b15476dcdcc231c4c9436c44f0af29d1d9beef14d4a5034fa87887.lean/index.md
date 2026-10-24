# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FlagRange.Variant2c54dd2376b15476dcdcc231c4c9436c44f0af29d1d9beef14d4a5034fa87887

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f7a346185a8b709f3d24e834a2eec0ec52acfe0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variant2c54dd2376b15476dcdcc231c4c9436c44f0af29d1d9beef14d4a5034fa87887.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variant2c54dd2376b15476dcdcc231c4c9436c44f0af29d1d9beef14d4a5034fa87887.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variant2c54dd2376b15476dcdcc231c4c9436c44f0af29d1d9beef14d4a5034fa87887.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f7a346185a8b709f3d24e834a2eec0ec52acfe0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variant2c54dd2376b15476dcdcc231c4c9436c44f0af29d1d9beef14d4a5034fa87887.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variant2c54dd2376b15476dcdcc231c4c9436c44f0af29d1d9beef14d4a5034fa87887.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Cover` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Chain` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsMaxChain.range_fin_of_covby](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variant2c54dd2376b15476dcdcc231c4c9436c44f0af29d1d9beef14d4a5034fa87887.lean/declarations/ismaxchain-range-fin-of-covby--eb65ad447e4a2999437b1590.md) | 39 | `result-track:eb65ad447e4a2999437b15908475dbb44c23f9f57f5ac720d20512aa86a30f20` |
| 2 | `def` | [Flag.rangeFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variant2c54dd2376b15476dcdcc231c4c9436c44f0af29d1d9beef14d4a5034fa87887.lean/declarations/flag-rangefin--b1d205e42e276e2c084b6d55.md) | 59 | `declaration-track:b1d205e42e276e2c084b6d556b47bdbdc947b0432775aa55bbe68244f7fb37d5` |
| 3 | `theorem` | [Flag.mem_rangeFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variant2c54dd2376b15476dcdcc231c4c9436c44f0af29d1d9beef14d4a5034fa87887.lean/declarations/flag-mem-rangefin--d18a74978d1ec2c034a3bf84.md) | 65 | `result-track:d18a74978d1ec2c034a3bf84b669fc2ad4849d5fd3e2eac495ddbaacac3137ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
