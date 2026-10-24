# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticSource.Variant130d94aa7c7b2d8209fc29e889946f776ab0364c6aa496bdc5bc16cbd3a2dd3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8c1635e544e1bfecb81410d4a0e7aab0750ee38",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticSource/Variant130d94aa7c7b2d8209fc29e889946f776ab0364c6aa496bdc5bc16cbd3a2dd3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSource/Variant130d94aa7c7b2d8209fc29e889946f776ab0364c6aa496bdc5bc16cbd3a2dd3f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSource/Variant130d94aa7c7b2d8209fc29e889946f776ab0364c6aa496bdc5bc16cbd3a2dd3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8c1635e544e1bfecb81410d4a0e7aab0750ee38`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticSource/Variant130d94aa7c7b2d8209fc29e889946f776ab0364c6aa496bdc5bc16cbd3a2dd3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ArithmeticSource/Variant130d94aa7c7b2d8209fc29e889946f776ab0364c6aa496bdc5bc16cbd3a2dd3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.DiscrepancyTrace` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Prismatic.ArithmeticEnhancement` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ArithmeticEnhancement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSource/Variant130d94aa7c7b2d8209fc29e889946f776ab0364c6aa496bdc5bc16cbd3a2dd3f.lean/declarations/arithmeticenhancement--d2004933f71ccc44afc921f4.md) | 16 | `declaration-track:d2004933f71ccc44afc921f442395ebce4cd595473b4a3b1cc7c19774cf7005f` |
| 2 | `structure` | [ArithmeticSource](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSource/Variant130d94aa7c7b2d8209fc29e889946f776ab0364c6aa496bdc5bc16cbd3a2dd3f.lean/declarations/arithmeticsource--45f0e931456cc5ebba0080d1.md) | 19 | `declaration-track:45f0e931456cc5ebba0080d16ab01ebac0dff641bd07b6f5ce27c2b873d76010` |
| 3 | `structure` | [ReducedArithmeticSource](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSource/Variant130d94aa7c7b2d8209fc29e889946f776ab0364c6aa496bdc5bc16cbd3a2dd3f.lean/declarations/reducedarithmeticsource--74cbde31f41718dd8e4128a3.md) | 28 | `declaration-track:74cbde31f41718dd8e4128a38cfed3218281da3ecea4a1668f2920e0b92e765a` |
| 4 | `def` | [invariant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSource/Variant130d94aa7c7b2d8209fc29e889946f776ab0364c6aa496bdc5bc16cbd3a2dd3f.lean/declarations/invariant--45919e8c95b52c44ac0c82de.md) | 36 | `declaration-track:45919e8c95b52c44ac0c82ded78f197d3dfb282fde0e18333bf47846b30e7413` |
| 5 | `def` | [reduced](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSource/Variant130d94aa7c7b2d8209fc29e889946f776ab0364c6aa496bdc5bc16cbd3a2dd3f.lean/declarations/reduced--c412669d30b0ee829e61f885.md) | 41 | `declaration-track:c412669d30b0ee829e61f8857155fc83dbc8974d263441c85be4c7097185aac2` |
| 6 | `theorem` | [invariant_reduced_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSource/Variant130d94aa7c7b2d8209fc29e889946f776ab0364c6aa496bdc5bc16cbd3a2dd3f.lean/declarations/invariant-reduced-eq-zero--364128b4f1e5d571cc263552.md) | 46 | `result-track:364128b4f1e5d571cc2635526d1b2daf636cfaa51fcf55a3a7654d437e8755c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
